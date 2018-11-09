unit servicos.testcase.api_tipoprojeto;

interface

uses
  TestFramework,
  Uni,
  udmConexao,
  ucBancoFuncoes,
  api.model.recibo,
  uConst,
  uErro,
  uHelper,
  uHelperGUID,
  api.model.servicos.tipoprojeto,
  api.testcase.nsjtestcase;

const
  cSchema = 'servicos';
  cLocateFunction = 'api_locate_tipoprojeto';

type
  TTest_APITipoProjeto = class(TNsjTestCase)

    strict private

      var m_TipoProjetoNovo: TTipoProjetoNovo;
      var m_TipoProjetoAlterar: TTipoProjetoAlterar;
      var m_TipoProjetoExcluir: TTipoProjetoExcluir;

    protected

    published

      procedure testeInclusao();
      procedure testeAlteracao();
      procedure testeExclusao();

  end;

implementation

{ TTest_APITipoProjeto }

procedure TTest_APITipoProjeto.testeAlteracao;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_TipoProjetoAlterar := TTipoProjetoAlterar.Create;
  m_TipoProjetoAlterar.tipoprojeto := 'NSJTIPOPROJETO0001';
  m_TipoProjetoAlterar.codigo := 'NSJTIPOPROJETO0002';
  m_TipoProjetoAlterar.descricao := 'Tipo Projeto Desc 00001 update';
  m_TipoProjetoAlterar.grupoempresarial := 'NSJTC01';

  t_recibo := m_TipoProjetoAlterar.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'NSJTIPOPROJETO0002'.Quoted() + '::text,' + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

procedure TTest_APITipoProjeto.testeExclusao;

  var t_recibo: TRecibo;
  var t_id: TGUID;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_TipoProjetoExcluir := TTipoProjetoExcluir.Create;
  m_TipoProjetoExcluir.tipoprojeto := 'NSJTIPOPROJETO0001EXCLUIR';
  m_TipoProjetoExcluir.grupoempresarial := 'NSJTC01';

  t_recibo := m_TipoProjetoExcluir.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  t_id := 'c7d00cfc-b4c2-4507-b584-b3f9e7aac5f5'.ToGuid();

  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    t_id.ToString().Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema);

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno = TGUID.Empty), 'Função locate encontrou o registro que deveria ter sido excluído.');
end;

procedure TTest_APITipoProjeto.testeInclusao;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_TipoProjetoNovo := TTipoProjetoNovo.Create;
  m_TipoProjetoNovo.codigo := 'TIPOPROJ0001';
  m_TipoProjetoNovo.descricao := 'Tipo Projeto Desc 00001';
  m_TipoProjetoNovo.grupoempresarial := 'NSJTC01';

  t_recibo := m_TipoProjetoNovo.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'TIPOPROJ0001'.Quoted() + '::text,' + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

initialization
  RegisterTest(TTest_APITipoProjeto.Suite);

end.
