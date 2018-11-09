program nsjMDAAPI;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  ActiveX,
  mda.adapter.syntax in '..\source\mda.adapter.syntax.pas',
  mda.constants in '..\source\mda.constants.pas',
  mda.enum in '..\source\mda.enum.pas',
  mda.helpers in '..\source\mda.helpers.pas',
  mda.models in '..\source\mda.models.pas',
  mda.strategy.syntax in '..\source\mda.strategy.syntax.pas',
  mda.transformation in '..\source\mda.transformation.pas',
  mda.types in '..\source\mda.types.pas',
  mda.utils in '..\source\mda.utils.pas',
  mda.xmlbinding in '..\source\mda.xmlbinding.pas',
  mda.adapter.syntax.delphi in '..\source\mda.adapter.syntax.delphi.pas',
  mda.adapter.syntax.php in '..\source\mda.adapter.syntax.php.pas',
  mda.adapter.syntax.json in '..\source\mda.adapter.syntax.json.pas',
  mda.adapter.sql.postgresql in '..\source\mda.adapter.sql.postgresql.pas',
  mda.adapter.pageHTML in '..\source\mda.adapter.pageHTML.pas';

var t_Retorno: TMDAErro;

begin
  ActiveX.CoInitialize(nil);
  try
    try
      t_Retorno := TMDATransformation.iniciar();
      if t_Retorno.comErro
        then raise Exception.Create(t_Retorno.mensagem);
    except on E: Exception
      do Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ActiveX.CoUninitialize();
  end;
end.
