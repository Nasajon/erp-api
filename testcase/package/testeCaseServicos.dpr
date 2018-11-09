program testeCaseServicos;

{$IFDEF Release}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  uTransaction,
  DUnitTestRunner,
  Vcl.Forms,
  uConst,
  uErro,
  udmConexao,
  ucBancoFuncoes,
  System.UITypes,
  servicos.testcase.api_projetofuncao in '..\source\api\servicos\servicos.testcase.api_projetofuncao.pas',
  servicos.testcase.api_projetofuncaodetalhe in '..\source\api\servicos\servicos.testcase.api_projetofuncaodetalhe.pas',
  api.testcase.formulariodatabase in '..\source\util\api.testcase.formulariodatabase.pas' {frmDataBase},
  api.testcase.nsjtestcase in '..\source\util\api.testcase.nsjtestcase.pas',
  servicos.testcase.api_projeto in '..\source\api\servicos\servicos.testcase.api_projeto.pas',
  servicos.testcase.api_projetohistorico in '..\source\api\servicos\servicos.testcase.api_projetohistorico.pas',
  servicos.testcase.api_tipoprojeto in '..\source\api\servicos\servicos.testcase.api_tipoprojeto.pas';

// Variáveis locais:
  var frmBD : TfrmDataBase;

  var t_server_adress : string;
  var t_server_port : integer;
  var t_database_name : string;
  var t_database_username : string;
  var t_database_userpassword : string;

  const c_provider = 'PostgreSQL';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

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

//    ucBancoFuncoes.BancoFuncoes().Executar_Usuario_ValidarLogin(0, 'MESTRE', '999999');
    DUnitTestRunner.RunRegisteredTests;
  finally
    dmConexao.Free;
  end;
end.
