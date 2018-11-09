unit mda.strategy.syntax;

interface

uses
  mda.constants,
  mda.adapter.syntax,
  mda.adapter.syntax.delphi,
  mda.adapter.syntax.php,
  mda.adapter.sql.postgresql,
  mda.adapter.syntax.json,
  mda.adapter.pageHTML,

  System.SysUtils;

  type
    TStrategySyntax = class

      public

        class function getSyntax(): IAdapterSyntax;
        class function getSyntaxSQL(): IAdapterSyntax;
        class function getSyntaxFileFormat(): IAdapterSyntax;

        class function getSyntaxPage(): IAdapterSyntaxPage;

    end;

implementation

{ TSyntaxStrategy }

class function TStrategySyntax.getSyntax: IAdapterSyntax;
begin
  if UpperCase(ParamStr(mda.constants.c_Param_Syntaxe_Code)) = 'DELPHI'
    then Result := TAdapterDelphi.Create()
  else if UpperCase(ParamStr(mda.constants.c_Param_Syntaxe_Code)) = 'PHP'
    then Result := TAdapterPHP.Create();
end;

class function TStrategySyntax.getSyntaxFileFormat: IAdapterSyntax;
begin
  if UpperCase(ParamStr(mda.constants.c_Param_Syntaxe_FileFormat)) = 'JSON'
    then Result := TAdapterJSON.Create();
end;

class function TStrategySyntax.getSyntaxPage: IAdapterSyntaxPage;
begin
  if UpperCase(ParamStr(mda.constants.c_Param_Syntaxe_Page)) = 'HTML'
    then Result := TAdapterHTML.Create();
end;

class function TStrategySyntax.getSyntaxSQL: IAdapterSyntax;
begin
  if UpperCase(ParamStr(mda.constants.c_Param_Syntaxe_SQL)) = 'POSTGRESQL'
    then Result := TAdapterPostgreSQL.Create();
end;

end.
