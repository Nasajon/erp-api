unit servicos.testcase.api_projetohistorico;

interface

uses
  SysUtils,
  TestFramework,
  Uni,
  udmConexao,
  ucBancoFuncoes,
  api.model.recibo,
  uConst,
  uHelper,
  uHelperGUID,
  api.model.servicos.projetohistorico,
  api.testcase.nsjtestcase;

type
  TTest_APIProjetoHistorico = class(TNsjTestCase)

    strict private

      var m_projetoHistoricoNovo: TProjetoHistoricoNovo;
    protected

    published

      procedure testeInclusao();
      procedure testeInclusaoViaUUID();

  end;

implementation


{ TTest_APIProjetoHistorico }

procedure TTest_APIProjetoHistorico.testeInclusao;

  var t_recibo: TRecibo;

begin
  m_projetoHistoricoNovo := TProjetoHistoricoNovo.Create;

  m_projetoHistoricoNovo.projeto          := 'NSJPROJ0001';
  m_projetoHistoricoNovo.estabelecimento  := 'NSJTC01';
  m_projetoHistoricoNovo.empresa          := 'NSJTC01';
  m_projetoHistoricoNovo.grupoempresarial := 'NSJTC01';
  m_projetoHistoricoNovo.data             := Now();
  m_projetoHistoricoNovo.usuario          := 'MESTRE';
  m_projetoHistoricoNovo.historico        := 'Teste de API do projeto';

  t_recibo := m_projetoHistoricoNovo.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);
end;

procedure TTest_APIProjetoHistorico.testeInclusaoViaUUID;

  var t_recibo: TRecibo;

begin
  m_projetoHistoricoNovo := TProjetoHistoricoNovo.Create;

  m_projetoHistoricoNovo.historico        := '5EFEF9FA-DF32-407A-A84D-AADA12AB7C01';
  m_projetoHistoricoNovo.projeto          := '9880080e-2588-44b2-b4c1-69f4440b795c';
  m_projetoHistoricoNovo.data             := Now();
  m_projetoHistoricoNovo.usuario          := 'MESTRE';
  m_projetoHistoricoNovo.historico        := 'Teste de API do projeto';

  t_recibo := m_projetoHistoricoNovo.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

end;

initialization
  RegisterTest(TTest_APIProjetoHistorico.Suite);

end.
