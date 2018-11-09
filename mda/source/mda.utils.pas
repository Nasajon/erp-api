unit mda.utils;

interface

uses
  mda.constants,

  Rtti,
  typinfo,

  Classes,
  System.SysUtils;

  type
    TUtils = class sealed

      public

        /// <summary>
        /// Retorna o diretório dos XMLs de Modelo
        /// </summary>
        class function getDirXML(): String;

        /// <summary>
        ///   Retorna o diretório para salvar os arquivos de código fonte
        /// </summary>
        class function getDirSyntaxeCodeModel(): String;
        class function getDirSyntaxeCodeTestModel(): String;
        class function getDirSyntaxeCodeController(): String;

        /// <summary>
        ///   Retorna o diretório para salvar os arquivos de sql - Types
        /// </summary>
        class function getDirSyntaxeSQLType(
          const a_sistema: String
        ): String;

        /// <summary>
        ///   Diretório do HTML
        /// </summary>
        class function getDirPage(): String;

        /// <summary>
        ///   Diretório do HTML - Tópicos
        /// </summary>
        class function getDirPageFileFormat(
          const a_Sistema: String
        ): String;

        /// <summary>
        ///   Retorna o diretório para salvar os arquivos de JSON
        /// </summary>
        class function getDirSyntaxeFileFormat(
          const a_sistema: String
        ): String;

        /// <summary>
        ///   Retorna o diretório para salvar os arquivos de sql - Functions
        /// </summary>
        class function getDirSyntaxeSQLFunction(
          const a_sistema: String
        ): String;

        /// <summary>
        ///   Lista todos os XMLs de Modelo
        /// </summary>
        class function findFiles(
          const a_Dir: String;
          const a_Extensao: String = 'xml'
        ): TStringList;

        /// <summary>
        ///   Converte um objeto na sintaxe SQL json para passar por parâmetro para a função
        /// </summary>
        class function MontaParametrosSQL(const Objeto: TObject; ObjetoPai, Quoted, ObjetoDoPai : Boolean): String;

    end;

implementation

{ TUtils }

class function TUtils.findFiles(
  const a_Dir: String;
  const a_Extensao: String = 'xml'
): TStringList;

  var SR: TSearchRec;
  var DirList: TStringList;
  var IsFound: Boolean;
  var i: integer;
  var StartDir: String;

begin
  Result := TStringList.Create();
  try
    StartDir := a_Dir;
    IsFound := FindFirst(a_Dir + '/*.' + a_Extensao, faAnyFile-faDirectory, SR) = 0;
    while IsFound
      do begin
        Result.Add(a_Dir + '/' + SR.Name);
        IsFound := FindNext(SR) = 0;
      end;
  finally
    FindClose(SR);
  end;
end;

class function TUtils.getDirPage: String;
begin
  Result := '..\..\source\' + ParamStr(mda.constants.c_Param_Syntaxe_Page) + '\';
  if not System.SysUtils.DirectoryExists(Result)
    then System.SysUtils.CreateDir(Result);
end;

class function TUtils.getDirPageFileFormat(
  const a_Sistema: String): String;
begin
  Result := Self.getDirPage() + a_Sistema + '\';
  if not System.SysUtils.DirectoryExists(Result)
    then System.SysUtils.CreateDir(Result);
end;

class function TUtils.getDirSyntaxeCodeController(): String;
begin
  Result := '..\..\source\' + ParamStr(mda.constants.c_Param_Syntaxe_Code) + '\src\controller\';
  if not System.SysUtils.DirectoryExists(Result)
    then System.SysUtils.CreateDir(Result);
end;

class function TUtils.getDirSyntaxeCodeModel(): String;
begin
  Result := '..\..\source\' + ParamStr(mda.constants.c_Param_Syntaxe_Code) + '\src\model\';
  if not System.SysUtils.DirectoryExists(Result)
    then System.SysUtils.CreateDir(Result);
end;

class function TUtils.getDirSyntaxeCodeTestModel: String;
begin
  Result := '..\..\source\' + ParamStr(mda.constants.c_Param_Syntaxe_Code) + '\src\test\testcase\model\';
  if not System.SysUtils.DirectoryExists(Result)
    then System.SysUtils.CreateDir(Result);
end;

class function TUtils.getDirSyntaxeFileFormat(const a_sistema: String): String;
begin
  Result := '..\..\source\' + ParamStr(mda.constants.c_Param_Syntaxe_FileFormat) + '\' + a_sistema + '\';
  if not System.SysUtils.DirectoryExists(Result)
    then System.SysUtils.CreateDir(Result);
end;

class function TUtils.getDirSyntaxeSQLFunction(
  const a_sistema: String
): String;
begin
  Result := '..\..\source\' + ParamStr(mda.constants.c_Param_Syntaxe_SQL) + '\functions\' + a_sistema + '\';
  if not System.SysUtils.DirectoryExists(Result)
    then System.SysUtils.CreateDir(Result);
end;

class function TUtils.getDirSyntaxeSQLType(
  const a_sistema: String
): String;
begin
  Result := '..\..\source\' + ParamStr(mda.constants.c_Param_Syntaxe_SQL) + '\types\' + a_sistema + '\';
  if not System.SysUtils.DirectoryExists(Result)
    then System.SysUtils.CreateDir(Result);
end;

class function TUtils.getDirXML: String;
begin
  Result := ParamStr(mda.constants.c_Param_Dir_XML);
end;

class function TUtils.MontaParametrosSQL(const Objeto: TObject; ObjetoPai, Quoted, ObjetoDoPai: Boolean): String;
var
  RType: TRttiType;
  RProperty: TRttiProperty;
  Valor, Valor2: TValue;
  ValorStr: String;
  BoolResult: Boolean;
  RMetodo: TRttiMethod;
  bytes: TBytes;
  bytes_arr: TArray<TBytes>;
  uints: TArray<UINT32>;
  I: Integer;

begin
    Result := '';

    If not Assigned(Objeto)
       Then
           Exit;


    RType := TRttiContext.Create.GetType(Objeto.ClassType);


    For RProperty in Rtype.GetDeclaredProperties
      Do Begin
             Valor := RProperty.GetValue(Objeto);

             Case RProperty.PropertyType.TypeKind Of

               tkInteger,
               tkInt64 : ValorStr := IntToStr(Valor.AsInt64) + ',';
               tkFloat : ValorStr := 'to_number(' + #39+ FloatToStr(Valor.AsCurrency) + #39 + ',' +#39+'99999D99'+#39+ '),';

               tkString,
               tkChar,
               tkWChar,
               tkLString,
               tkWString,
               tkUString : Begin
                                If Quoted
                                   Then ValorStr := QuotedStr (Valor.AsString) + ','
                                   Else ValorStr :=  Valor.AsString + ',';
                           End;

               tkEnumeration: Begin
                                  If Valor.TryAsType<Boolean>(BoolResult)
                                     Then ValorStr := BoolToStr(BoolResult, True)
                                     Else ValorStr := GetEnumName(Valor.TypeInfo, RProperty.GetValue(Objeto).AsOrdinal);
                              End;

               tkClass: begin
                             RMetodo := RProperty.PropertyType.GetMethod('ToArray');

                             If Assigned(RMetodo)
                                Then Begin
                                         If ObjetoPai
                                            Then ValorStr := #39+ '{'
                                            Else
                                                 If ObjetoDoPai
                                                    Then ValorStr := '"{'
                                                    Else ValorStr := '\"{';

                                         Valor2 := RMetodo.Invoke(Valor, []);
                                         Assert(Valor2.IsArray);

                                         for I := 0 to Valor2.GetArrayLength - 1
                                            Do Begin
                                                   If ObjetoPai
                                                      Then ValorStr := ValorStr + '{"(' + MontaParametrosSQL(Valor2.GetArrayElement(I).AsObject, False, False, False)
                                                      Else
                                                           If ObjetoDoPai
                                                              Then ValorStr := ValorStr + '""(' + MontaParametrosSQL(Valor2.GetArrayElement(I).AsObject, False, False, False)
                                                              Else ValorStr := ValorStr + '\"\"(' + MontaParametrosSQL(Valor2.GetArrayElement(I).AsObject, False, False, False);


                                                   Delete (ValorStr, Length(ValorStr), 1);

                                                   If ObjetoPai
                                                      Then ValorStr := ValorStr + ')"},'
                                                      Else
                                                           If ObjetoDoPai
                                                              Then ValorStr := ValorStr + ')",'
                                                              Else ValorStr := ValorStr + ')\",';
                                               End;

                                         Delete (ValorStr, Length(ValorStr), 1);

                                         If ObjetoPai
                                            Then ValorStr := ValorStr + '}' + #39+ ','
                                            Else
                                                 If ObjetoDoPai
                                                    Then ValorStr := ValorStr + '"}",'
                                                    Else ValorStr := ValorStr + '\"}\",';
                                     End
                                Else Begin
                                          If ObjetoPai
                                             Then ValorStr := #39 + '(' + MontaParametrosSQL(Valor.AsObject, False, False, True)
                                             Else Begin
                                                      If ObjetoDoPai
                                                         Then ValorStr := '"(' + MontaParametrosSQL(Valor.AsObject, False, False, False)
                                                         Else ValorStr := '\"(' + MontaParametrosSQL(Valor.AsObject, False, False, False);
                                                  End;

                                          Delete (ValorStr, Length(ValorStr), 1);

                                          If ObjetoPai
                                             Then ValorStr := ValorStr + ')' +#39+ ','
                                             Else Begin
                                                       If ObjetoDoPai
                                                          Then ValorStr := ValorStr + ')"' + ','
                                                          Else ValorStr := ValorStr + ')\"' + ',';
                                                  End
                                     End;
                        End;
               tkUnknown: ;
               tkSet: ;
               tkMethod: ;
               tkVariant: ;
               tkArray: ;
               tkRecord: ;
               tkInterface: ;
               tkClassRef: ;
               tkPointer: ;
               tkProcedure: ;
             end;

             Result := Result + ValorStr;
           end;

    If ObjetoPai
       Then Begin
                Delete(Result, Length(Result), 1);
                Result := '((' + Result + '))';
            End;
end;

end.
