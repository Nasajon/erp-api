program nsjApi_Test;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  System.UITypes,
  udmConexao,
  api.test.view.formulariodatabase in '..\src\test\view\api.test.view.formulariodatabase.pas' {frmDataBase},
  api.test.controller in '..\src\test\controller\api.test.controller.pas'
//$(uses)
  ;

var frmBD : TfrmDataBase;

  var t_server_adress : string;
  var t_server_port : integer;
  var t_database_name : string;
  var t_database_username : string;
  var t_database_userpassword : string;

  const c_provider = 'PostgreSQL';

{$R *.RES}
begin
  frmBD := TfrmDataBase.Create(Nil);
  try
    frmBD.ShowModal;

    If frmBD.ModalResult <> mrOk
       Then Exit;

    t_server_adress := frmBD.getServerAdress();
    t_server_port := frmBD.getServerPort();
    t_database_name := frmBD.getDataBaseName();
    t_database_username := frmBD.getDataBaseUser();
    t_database_userpassword := frmBD.getDataBasePassword();
  finally
     frmBD.Free;
  end;

  dmConexao := TdmConexao.Create(nil);
  Try
    dmConexao.Conexao.Disconnect;
    dmConexao.Conexao.Server := t_server_adress;
    dmConexao.Conexao.Port := t_server_port;
    dmConexao.Conexao.Database := t_database_name;
    dmConexao.Conexao.Username := t_database_username;
    dmConexao.Conexao.Password := t_database_userpassword;
    dmConexao.Conexao.ProviderName := c_provider;
    dmConexao.Conexao.Connect;

    DUnitTestRunner.RunRegisteredTests;
  finally
    dmConexao.Free;
  end;
end.

