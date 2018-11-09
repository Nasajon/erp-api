unit servicos.testcase.api_projeto;

interface

uses
  SysUtils,
  TestFramework,
  Uni,
  udmConexao,
  ucBancoFuncoes,
  api.model.recibo,
  uConst,
  uErro,
  uHelper,
  api.model.servicos.projeto,
  api.testcase.nsjtestcase;

const
  cSchema = 'servicos';
  cLocateFunction = 'api_locate_projeto';

type
  TTest_APIProjeto = class(TNsjTestCase)

    strict private

      var m_ProjetoNovo: TProjetoNovo;
      var m_ProjetoAlterar: TProjetoAlterar;
      var m_ProjetoExcluir: TProjetoExcluir;
    protected

    published

      procedure testeInclusao();
      procedure testeAlteracao();
      procedure testeExclusao();

  end;

implementation

{ TTest_APIProjeto }

procedure TTest_APIProjeto.testeAlteracao;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_ProjetoAlterar := TProjetoAlterar.Create;

  m_ProjetoAlterar.estabelecimento  := 'NSJTC01';
  m_ProjetoAlterar.empresa          := 'NSJTC01';
  m_ProjetoAlterar.grupoempresarial := 'NSJTC01';
  m_ProjetoAlterar.pessoa           := 'NSJTC01';
  m_ProjetoAlterar.tipoprojeto      := 'NSJTIPOPROJETO0001';
  m_ProjetoAlterar.projeto          := 'NSJPROJ0001';
  m_ProjetoAlterar.codigo           := 'NSJPROJ0001';
//  m_ProjetoAlterar.descricao        := 'PROJ0001 descricao alterada';
  m_ProjetoAlterar.observacao       := 'PROJ0001 obs alterada';
  m_ProjetoAlterar.situacao         := 3;

  t_recibo := m_ProjetoAlterar.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'NSJPROJ0001'.Quoted() + '::text,' + 'NSJTC01'.Quoted() + '::text,' +
    'NSJTC01'.Quoted() + '::text,' + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

procedure TTest_APIProjeto.testeExclusao;

  var t_recibo: TRecibo;
  var t_id: TGUID;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_ProjetoExcluir := TProjetoExcluir.Create;

  m_ProjetoExcluir.projeto          := 'NSJPROJ0001';
  m_ProjetoExcluir.estabelecimento  := 'NSJTC01';
  m_ProjetoExcluir.empresa          := 'NSJTC01';
  m_ProjetoExcluir.grupoempresarial := 'NSJTC01';

  t_recibo := m_ProjetoExcluir.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  t_id := '9880080e-2588-44b2-b4c1-69f4440b795c'.ToGuid();

  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'NSJPROJ0001TESTE'.Quoted() + '::text,' + 'NSJTC01'.Quoted() + '::text,' +
    'NSJTC01'.Quoted() + '::text,' + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno = TGUID.Empty), 'Função locate encontrou o registro que deveria ter sido excluído.');
end;

procedure TTest_APIProjeto.testeInclusao;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_ProjetoNovo := TProjetoNovo.Create;

  m_ProjetoNovo.estabelecimento  := 'NSJTC01';
  m_ProjetoNovo.empresa          := 'NSJTC01';
  m_ProjetoNovo.grupoempresarial := 'NSJTC01';
  m_ProjetoNovo.pessoa           := 'NSJTC01';
  m_ProjetoNovo.tipoprojeto      := 'NSJTIPOPROJETO0001';
  m_ProjetoNovo.codigo           := 'NSJPROJ0001TESTE';
//  m_ProjetoNovo.descricao        := 'PROJ0001 descricao';
  m_ProjetoNovo.observacao       := 'PROJ0001 obs';
  m_ProjetoNovo.criadopor        := 'MESTRE';
  m_ProjetoNovo.datacriacao      := Now();
  m_ProjetoNovo.situacao         := 1;

  t_recibo := m_ProjetoNovo.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'NSJPROJ0001TESTE'.Quoted() + '::text,' + 'NSJTC01'.Quoted() + '::text,' +
    'NSJTC01'.Quoted() + '::text,' + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

initialization
  RegisterTest(TTest_APIProjeto.Suite);

end.
