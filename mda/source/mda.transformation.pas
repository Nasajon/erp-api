unit mda.transformation;

interface

uses
  Classes,

  mda.types,
  mda.helpers,
  mda.utils,
  mda.models,
  mda.enum,

  mda.strategy.syntax,

  System.SysUtils,

  mda.constants;

  type
    TMDATransformation = class

      public

        class function iniciar(): TMDAErro;

    end;

implementation

{ TMDATransformation }

class function TMDATransformation.iniciar: TMDAErro;

  var t_Key: tpSistemas;

  function parserToObject(
    const a_Modulo: String
  ): TMDAErro;

  var t_XMLs: TStringList;
  var t_XML: String;
  var t_API: TAPI;

  begin
    try
      t_XMLs := TUtils.findFiles(TUtils.getDirXML() + a_Modulo);
    except on E: Exception
      do raise Exception.Create(E.Message);
    end;

    if not Assigned(t_XMLs)
      then Exit();

    try
      for t_XML in t_XMLs
        do begin
          Writeln(t_XML);
          t_API := TAPI.Create();
          try
            try
              Result := t_API.loadFromFile(t_XML);

              if Result.comErro
                then begin
                   raise Exception.Create(Result.mensagem);
                end;

              Result := TStrategySyntax.getSyntax().gerarCodigoFonte(t_API);
              if not Result.comErro
                then begin
                  Result := TStrategySyntax.getSyntaxSQL().gerarCodigoFonte(t_API);
                  if not Result.comErro
                    then begin
                      Result := TStrategySyntax.getSyntaxFileFormat().gerarCodigoFonte(t_API);
                    end;
                end;
            finally
              t_API.Free();
            end;
          except on E: Exception do
           begin
              Writeln(E.Message);
              Sleep(3000);
           end;
          end;
        end;
    finally
      t_XMLs.Free();
    end;
  end;

begin
  Result.init();

  Result := TStrategySyntax.getSyntax().gerarCodigoFonte(nil);
  if Result.comErro
    then Exit();

  for t_Key := Low(mda.enum.tpSistemas) to High(mda.enum.tpSistemas)
    do begin
      try
        Result := parserToObject(mda.constants.cSistemasStr[t_Key]);
      except on E: Exception
        do begin
          Result.comErro := True;
          Result.mensagem := E.Message;
        end;
      end;
      if Result.comErro
        then Break;
    end;

  // Gerar documento principal
  if not Result.comErro
    then Result := TStrategySyntax.getSyntaxPage().gerarCodigoFonte();
end;

end.
