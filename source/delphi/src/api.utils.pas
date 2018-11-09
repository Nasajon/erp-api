unit api.utils;

interface

uses
  Rtti,
  typinfo,
  uManipuladorGUID,
  uHelper,
  Classes,
  System.SysUtils,
  CodificarDescodificar;

const coCaracterParaFilhoArray = '\\""';
const coCaracterParaFilho = '\\""';

  type
    TUtils = class sealed

      public

        /// <summary>
        ///   Converte um objeto na sintaxe SQL json para passar por parâmetro para a função
        /// </summary>
        class function MontaParametrosSQL(
          const Objeto: TObject;
          const ObjetoPai: Boolean = True;
          const Quoted: Boolean = True;
          const ObjetoDoPai: Boolean = True;
          const CaracterFilhoDoPaiArray: string = coCaracterParaFilhoArray;  //Campo Criado para carácter de complemento que define filho inicio ou fim do filhos,
          const CaracterFilhoDoPai: string = coCaracterParaFilho;        //desse modo pode incrementar permitindo filhos infinitos ou seja Objetos dentro de Objetos.
          const TipoComplexo: Boolean = False
        ): string;

    end;


implementation

{ TUtils }

class function TUtils.MontaParametrosSQL(
  const Objeto: TObject;
  const ObjetoPai: Boolean = True;
  const Quoted: Boolean = True;
  const ObjetoDoPai: Boolean = True;
  const CaracterFilhoDoPaiArray: string = coCaracterParaFilhoArray;
  const CaracterFilhoDoPai: string = coCaracterParaFilho;
  const TipoComplexo: Boolean = False
): string;
var
  RType: TRttiType;
  RProperty: TRttiProperty;
  Valor, Valor2: TValue;
  ValorStr: string;
  BoolResult: Boolean;
  RMetodo: TRttiMethod;
  bytes: TBytes;
  bytes_arr: TArray<TBytes>;
  uints: TArray<UINT32>;
  I: Integer;
  CaracterFilhoDoPaiArray_Aux: string;
  CaracterFilhoDoPai_Aux: string;
  Aux: string;
begin
  CaracterFilhoDoPaiArray_Aux := CaracterFilhoDoPaiArray;
  CaracterFilhoDoPai_Aux := CaracterFilhoDoPai;
  Result := '';

  if not Assigned(Objeto) then
    Exit;

  RType := TRttiContext.Create.GetType(Objeto.ClassType);

  for RProperty in Rtype.GetDeclaredProperties do
  begin
    Valor := RProperty.GetValue(Objeto);

    case RProperty.PropertyType.TypeKind Of

      tkInteger,
      tkInt64: ValorStr := IntToStr(Valor.AsInt64) + ',';
      tkFloat:
        begin
          if UpperCase(Valor.TypeInfo.Name) = 'TDATE' then
            ValorStr := DateToStr(Valor.AsCurrency) + ','
          else if UpperCase(Valor.TypeInfo.Name) = 'TDATETIME' then
            ValorStr := DateTimeToStr(Valor.AsCurrency) + ','
          else
            ValorStr := Valor.AsCurrency.FormatToSQL() + ',';
        end;

      tkString,
      tkChar,
      tkWChar,
      tkLString,
      tkWString,
      tkUString:
        begin
           (* If Quoted
               Then ValorStr := QuotedStr (Valor.AsString) + ','
               Else  ValorStr := Valor.AsString + ', ';
           *)
           Aux := Valor.AsString;

           if ((UpperCase(Objeto.ClassName) = 'TUSUARIONOVO') or (UpperCase(Objeto.ClassName) = 'TUSUARIOALTERAR')) and (UpperCase(RProperty.Name) = 'SENHA') then
             Aux := Codificar(Aux);

           if (Pos('(', Aux) > 0) or (Pos(')', Aux) > 0) or (Pos(',', Aux) > 0) then
           begin
             if TipoComplexo then
               ValorStr := '""' + Aux + '"",'
             else if not ObjetoDoPai then
               ValorStr := '\\""' + Aux + '\\"",'
             else
               ValorStr := '"' + Aux + '",'
           end
           else
             ValorStr := Aux + ',';
        end;

      tkEnumeration:
        begin
          if Valor.TryAsType<Boolean>(BoolResult) then
            ValorStr := BoolToStr(BoolResult, True) + ','
          else ValorStr := GetEnumName(Valor.TypeInfo, RProperty.GetValue(Objeto).AsOrdinal) + ',';
        end;

      tkClass:
        begin
          RMetodo := RProperty.PropertyType.GetMethod('ToArray');

          if Assigned(RMetodo) then
          begin
            Valor2 := RMetodo.Invoke(Valor, []);
            Assert(Valor2.IsArray);

            if ObjetoPai then
            begin
              if Valor2.GetArrayLength = 0 then
                ValorStr :={ #39+ }'{'
              else
                ValorStr := '"{';
            end
            else if ObjetoDoPai then
              ValorStr := '""{'
            else
            begin
              ValorStr := CaracterFilhoDoPaiArray_Aux + '{';
              CaracterFilhoDoPaiArray_Aux := CaracterFilhoDoPaiArray_Aux + coCaracterParaFilhoArray;
            end;

            for I := 0 to Valor2.GetArrayLength - 1 do
            begin
              if ObjetoPai then
                ValorStr := ValorStr + '""(' + MontaParametrosSQL(Valor2.GetArrayElement(I).AsObject, False, False, False, coCaracterParaFilhoArray)
              else if ObjetoDoPai then
                ValorStr := ValorStr + coCaracterParaFilhoArray +'(' + MontaParametrosSQL(Valor2.GetArrayElement(I).AsObject, False, False, False)
              else
                ValorStr := ValorStr + CaracterFilhoDoPaiArray_Aux + '(' + MontaParametrosSQL(Valor2.GetArrayElement(I).AsObject, False, False, False, CaracterFilhoDoPaiArray_Aux + coCaracterParaFilhoArray);

              Delete (ValorStr, Length(ValorStr), 1);

              if ObjetoPai then
                ValorStr := ValorStr + ')"",'
              else if ObjetoDoPai then
                ValorStr := ValorStr + ')' + coCaracterParaFilhoArray + ','
              else
                ValorStr := ValorStr + ')' + CaracterFilhoDoPaiArray_Aux + ',';
            end;

            if Copy(ValorStr, Length(ValorStr), 1) = ',' then
              Delete (ValorStr, Length(ValorStr), 1);

            if ObjetoPai then
            begin
              if Valor2.GetArrayLength = 0 then
                ValorStr := ValorStr + '},' //+ #39+ ','
              else
                ValorStr := ValorStr + '}",';
            end
            else If ObjetoDoPai then
              ValorStr := ValorStr + '}"",'
            else
             ValorStr := ValorStr + '}' + CaracterFilhoDoPai + ',';
          end
          else
          begin
            if ObjetoPai then
              ValorStr := '"(' + MontaParametrosSQL(Valor.AsObject, False, False, True, coCaracterParaFilhoArray, coCaracterParaFilho, True)
            else
            begin
              if ObjetoDoPai then
                ValorStr := '""(' + MontaParametrosSQL(Valor.AsObject, False, False, False, coCaracterParaFilhoArray, coCaracterParaFilho, True)
              else
                ValorStr := CaracterFilhoDoPai_Aux + '(' + MontaParametrosSQL(Valor.AsObject, False, False, False, CaracterFilhoDoPaiArray_Aux, CaracterFilhoDoPai_Aux + CaracterFilhoDoPai_Aux, True);
            end;

            Delete (ValorStr, Length(ValorStr), 1);

            if ObjetoPai then
              ValorStr := ValorStr + ')",'
            else
            begin
              if ObjetoDoPai then
                ValorStr := ValorStr + ')""' + ','
              else
                ValorStr := ValorStr + ')' + CaracterFilhoDoPai + ',';
            end
          end;
        end;

      tkUnknown: ;
      tkSet: ;
      tkMethod: ;
      tkVariant: ;
      tkArray: ;
      tkRecord:
        begin
          if UpperCase(Valor.TypeInfo.Name) = 'TGUID' then
            ValorStr := TManipuladorGUID.ToString(Valor.AsType<TGUID>) + ',';
        end;

      tkInterface: ;
      tkClassRef: ;
      tkPointer: ;
      tkProcedure: ;
    end;

    Result := Result + ValorStr;
  end;

  if ObjetoPai then
  begin
    Delete(Result, Length(Result), 1);
    Result := QuotedStr('(' + Result + ')');
  end;
end;

end.
