unit ns.testcase.api_grupoempresarial;

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
  api.model.ns.grupoempresarial,
  api.testcase.nsjtestcase;

const
  cSchema = 'ns';
  cLocateFunction = 'api_locate_grupoempresarial';

type
  TTest_APIGrupoEmpresarial = class(TNsjTestCase)

    strict private

      var m_GrupoEmpresarialNovo: TGrupoEmpresarialNovo;
      var m_GrupoEmpresarialAlterar: TGrupoEmpresarialAlterar;
      var m_GrupoEmpresarialExcluir: TGrupoEmpresarialExcluir;

    protected

    published

      procedure testeInclusao();
      procedure testeAlteracao();
      procedure testeExclusao();

  end;

implementation

{ TTest_APIGrupoEmpresarial }

procedure TTest_APIGrupoEmpresarial.testeAlteracao;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_GrupoEmpresarialAlterar := TGrupoEmpresarialAlterar.Create;
  m_GrupoEmpresarialAlterar.descricao := 'Tipo Projeto Desc 00001 update';
  m_GrupoEmpresarialAlterar.grupoempresarial := 'NSJTC01';

  t_recibo := m_GrupoEmpresarialAlterar.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

procedure TTest_APIGrupoEmpresarial.testeExclusao;

  var t_recibo: TRecibo;
  var t_id: TGUID;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_GrupoEmpresarialExcluir := TGrupoEmpresarialExcluir.Create;
  m_GrupoEmpresarialExcluir.grupoempresarial := 'NSJTC02EXCLUIR';

  t_recibo := m_GrupoEmpresarialExcluir.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  t_id := '6e23d85e-3a1f-40ef-8c5b-54b3a990e8cc'.ToGuid();

  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    t_id.ToString().Quoted() + '::text',
    t_retorno,
    cSchema);

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno = TGUID.Empty), 'Função locate encontrou o registro que deveria ter sido excluído.');
end;

procedure TTest_APIGrupoEmpresarial.testeInclusao;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_GrupoEmpresarialNovo := TGrupoEmpresarialNovo.Create;
  m_GrupoEmpresarialNovo.codigo := 'GRUPO0001TESTE';
  m_GrupoEmpresarialNovo.descricao := 'Grupo empresarial Desc 00001';

  t_recibo := m_GrupoEmpresarialNovo.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'GRUPO0001TESTE'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

initialization
  RegisterTest(TTest_APIGrupoEmpresarial.Suite);

end.
