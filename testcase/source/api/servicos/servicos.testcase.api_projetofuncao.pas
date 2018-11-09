unit servicos.testcase.api_projetofuncao;

interface

uses
  TestFramework,
  udmConexao,
  api.model.recibo,
  uConst,
  uErro,
  api.model.servicos.projetofuncao,
  api.testcase.nsjtestcase,
  uHelper,
  uHelperGuid,
  ucBancoFuncoes;

type
  TTest_APIProjetoFuncao = class(TNsjTestCase)

    strict private

      var m_idFuncao2: TGUID;

      var m_funcaoNova: TProjetoFuncaoNovo;
      var m_funcaoAlterar: TProjetoFuncaoAlterar;
      var m_funcaoExcluir: TProjetoFuncaoExcluir;

    protected

//      procedure SetUp; override;

    published

      procedure locateByCodigo();
      procedure locateByID();
      procedure inclusao();
      procedure inclusaoComID();
      procedure alteracao();
      procedure exclusao();
  end;

implementation

{ TTestacessoestabelecimentoNovo }

procedure TTest_APIProjetoFuncao.inclusao;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  Self.m_funcaoNova := TProjetoFuncaoNovo.Create();
  Self.m_funcaoNova.grupoempresarial := 'NSJTC01';
	Self.m_funcaoNova.Empresa := 'NSJTC01';
	Self.m_funcaoNova.Cargo := 'NSJT';
	Self.m_funcaoNova.Codigo := 'FUNC001';
	Self.m_funcaoNova.Descricao := 'Nova função';
	Self.m_funcaoNova.Bloqueado := False;
	Self.m_funcaoNova.CriadoPor := 'MESTRE';

  t_recibo := Self.m_funcaoNova.execute(dmConexao.Conexao);

  Self.validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    'api_locate_funcao',
    'FUNC001'.Quoted() + '::text,' + 'NSJTC01'.Quoted() + '::text',
    t_retorno
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

procedure TTest_APIProjetoFuncao.inclusaoComID;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_idFuncao2.generate();

  Self.m_funcaoNova := TProjetoFuncaoNovo.Create();
  Self.m_funcaoNova.Identificador := m_idFuncao2.ToString();
  Self.m_funcaoNova.grupoempresarial := 'NSJTC01';
	Self.m_funcaoNova.Empresa := 'NSJTC01';
	Self.m_funcaoNova.Cargo := 'NSJT';
	Self.m_funcaoNova.Codigo := 'FUNC002';
	Self.m_funcaoNova.Descricao := 'Nova função 2';
	Self.m_funcaoNova.Bloqueado := False;
	Self.m_funcaoNova.CriadoPor := 'MESTRE';

  t_recibo := Self.m_funcaoNova.execute(dmConexao.Conexao);

  Self.validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    'api_locate_funcao',
    'FUNC002'.Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text',
    t_retorno
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

procedure TTest_APIProjetoFuncao.alteracao;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  Self.m_funcaoAlterar := TProjetoFuncaoAlterar.Create();
  Self.m_funcaoAlterar.Identificador := 'NSJTC01';
  Self.m_funcaoAlterar.GrupoEmpresarial := 'NSJTC01';
  Self.m_funcaoAlterar.Empresa := 'NSJTC01';
  Self.m_funcaoAlterar.Cargo := 'NSJT';
  Self.m_funcaoAlterar.Codigo := 'FUNC003';
  Self.m_funcaoAlterar.Descricao := '';
  Self.m_funcaoAlterar.Bloqueado := TRUE;

  t_recibo := Self.m_funcaoAlterar.execute(dmConexao.Conexao);

  Self.validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    'api_locate_funcao',
    'FUNC003'.Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text',
    t_retorno
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

procedure TTest_APIProjetoFuncao.exclusao;

  var t_recibo: TRecibo;
  var t_id: TGUID;
  var t_retorno: TGUID;
  var t_erro: TpErro;

begin
  Self.m_funcaoExcluir := TProjetoFuncaoExcluir.Create();
	Self.m_funcaoExcluir.Identificador := 'NSJTC01';
	Self.m_funcaoExcluir.GrupoEmpresarial := 'NSJTC01';

  t_recibo := Self.m_funcaoExcluir.execute(dmConexao.Conexao);

  Self.validaRecibo(t_recibo);

  // Verificando se o registro foi realmente excluído:
  t_id := '9879efea-54f6-4f8f-93d7-64c525cdc1c1'.ToGuid();

  t_erro := BancoFuncoes().Locate_API(
    'api_locate_funcao',
    t_id.ToString().Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text',
    t_retorno);

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno = TGUID.Empty), 'Função locate encontrou o registro que deveria ter sido excluído.');
end;

procedure TTest_APIProjetoFuncao.locateByID();

  var t_id: TGUID;
  var t_retorno: TGUID;
  var t_erro: TpErro;

begin
  t_id := '9879efea-54f6-4f8f-93d7-64c525cdc1c1'.ToGuid();

  t_erro := BancoFuncoes().Locate_API(
    'api_locate_funcao',
    t_id.ToString().Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text',
    t_retorno
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_id = t_retorno), 'Função locate retonou ID diferente do procurado.');
end;

procedure TTest_APIProjetoFuncao.locateByCodigo();

  var t_id: TGUID;
  var t_retorno: TGUID;
  var t_erro: TpErro;

begin
  t_id := '9879efea-54f6-4f8f-93d7-64c525cdc1c1'.ToGuid();

  t_erro := BancoFuncoes().Locate_API(
    'api_locate_funcao',
    'NSJTC01'.Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text',
    t_retorno
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_id = t_retorno), 'Função locate retonou ID diferente do procurado.');
end;

initialization
  RegisterTest(TTest_APIProjetoFuncao.Suite);

end.
