unit ns.testcase.api_estabelecimento;

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
  uHelperGUID,
  api.model.ns.estabelecimento,
  api.testcase.nsjtestcase;

const
  cSchema = 'ns';
  cLocateFunction = 'api_locate_estabelecimento_v2';

type
  TTest_APIEstabelecimento = class(TNsjTestCase)

    strict private

      var m_EstabelecimentoNovo: TEstabelecimentoNovo;
      var m_EstabelecimentoAlterarDadosGerais: TEstabelecimentoAlterarDadosGerais;
      var m_EstabelecimentoAlterarDadosFolha: TEstabelecimentoAlterarDadosFolha;
      var m_EstabelecimentoAlterarDadosEndereco: TEstabelecimentoAlterarDadosEndereco;
      var m_EstabelecimentoExcluir : TEstabelecimentoExcluir_v2;

    protected

    published

      procedure testeInclusao();
      procedure testeAlteracaoDadosGerais();
      procedure testeAlteracaoDadosFolha();
      procedure testeAlteracaoDadosEndereco();
      procedure testeExclusao();

  end;

implementation

{ TTest_APIEstabelecimento }

procedure TTest_APIEstabelecimento.testeAlteracaoDadosEndereco;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_EstabelecimentoAlterarDadosEndereco := TEstabelecimentoAlterarDadosEndereco.Create;

  m_EstabelecimentoAlterarDadosEndereco.estabelecimento := 'NSJTC01';
  m_EstabelecimentoAlterarDadosEndereco.empresa := 'NSJTC01';
  m_EstabelecimentoAlterarDadosEndereco.codigomunicipio := '1100031';
  m_EstabelecimentoAlterarDadosEndereco.tipologradouro := 'BL';
  m_EstabelecimentoAlterarDadosEndereco.logradouro := 'Rua 2';
  m_EstabelecimentoAlterarDadosEndereco.numero := '002';
  m_EstabelecimentoAlterarDadosEndereco.complemento :='proximo do fim';
  m_EstabelecimentoAlterarDadosEndereco.bairro := 'Santa Cruz';
  m_EstabelecimentoAlterarDadosEndereco.cep := '23551478';
  m_EstabelecimentoAlterarDadosEndereco.cidade := 'Rio de Janeiro';
  m_EstabelecimentoAlterarDadosEndereco.caixapostal := '145621';
  m_EstabelecimentoAlterarDadosEndereco.ufcaixapostal := 'RJ';
  m_EstabelecimentoAlterarDadosEndereco.cepcaixapostal := '12325471';
  m_EstabelecimentoAlterarDadosEndereco.email := 'nasajon@nasajon.com.br';
  m_EstabelecimentoAlterarDadosEndereco.site := 'www.nasajon.com.br';
  m_EstabelecimentoAlterarDadosEndereco.dddtelefone := '21';
  m_EstabelecimentoAlterarDadosEndereco.telefone := '21232045';
  m_EstabelecimentoAlterarDadosEndereco.dddfax := '21';
  m_EstabelecimentoAlterarDadosEndereco.fax := '235465789';

  t_recibo := m_EstabelecimentoAlterarDadosEndereco.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'NSJTC01'.Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text,'  + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

procedure TTest_APIEstabelecimento.testeAlteracaoDadosFolha;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_EstabelecimentoAlterarDadosFolha := TEstabelecimentoAlterarDadosFolha.Create;
  m_EstabelecimentoAlterarDadosFolha.estabelecimento := 'NSJTC01';
  m_EstabelecimentoAlterarDadosFolha.empresa := 'NSJTC01';
  m_EstabelecimentoAlterarDadosFolha.codigofpas := '515';
  m_EstabelecimentoAlterarDadosFolha.codigoterceiros := '666';
  m_EstabelecimentoAlterarDadosFolha.codigocnae := '1742702';
  m_EstabelecimentoAlterarDadosFolha.numeroproprietarios := 3;
  m_EstabelecimentoAlterarDadosFolha.numerofamiliares := 3;
  m_EstabelecimentoAlterarDadosFolha.porte := 2;
  m_EstabelecimentoAlterarDadosFolha.capitalsocial := 2000000;
  m_EstabelecimentoAlterarDadosFolha.fazpartepat := False;
  m_EstabelecimentoAlterarDadosFolha.pagapis := True;
  m_EstabelecimentoAlterarDadosFolha.centralizacontribuicaosindical := True;
  m_EstabelecimentoAlterarDadosFolha.sindicato := '92eb0700-43a7-4b94-886e-91da417058a5';
  m_EstabelecimentoAlterarDadosFolha.numerocontadepositofgts := '043012';
  m_EstabelecimentoAlterarDadosFolha.agenciadepositofgts := '0d740e6a-9d6f-4a9d-982e-55421c9b4dbf';

  t_recibo := m_EstabelecimentoAlterarDadosFolha.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'NSJTC01'.Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text,'  + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

procedure TTest_APIEstabelecimento.testeAlteracaoDadosGerais;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_EstabelecimentoAlterarDadosGerais := TEstabelecimentoAlterarDadosGerais.Create;
  m_EstabelecimentoAlterarDadosGerais.estabelecimento := 'NSJTC01';
  m_EstabelecimentoAlterarDadosGerais.empresa := 'NSJTC01';
  m_EstabelecimentoAlterarDadosGerais.codigo := 'NSJTC01';
  m_EstabelecimentoAlterarDadosGerais.descricao := 'descricao update dados gerais.';
  m_EstabelecimentoAlterarDadosGerais.identificacao := '1';
  m_EstabelecimentoAlterarDadosGerais.inscricaoestadual := '123456';
  m_EstabelecimentoAlterarDadosGerais.inscricaomunicipal := '123456789';
  m_EstabelecimentoAlterarDadosGerais.nomefantasia := 'estabelecimento 00001';
  m_EstabelecimentoAlterarDadosGerais.cei := '45654';
  m_EstabelecimentoAlterarDadosGerais.datainicioatividades := Now() - 30;
  m_EstabelecimentoAlterarDadosGerais.datafinalatividades := Now()+ 100;
  m_EstabelecimentoAlterarDadosGerais.codigocnae := '0899101';
  m_EstabelecimentoAlterarDadosGerais.inicioexercicio := Now() - 300;

  t_recibo := m_EstabelecimentoAlterarDadosGerais.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

    // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'NSJTC01'.Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text,'  + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

procedure TTest_APIEstabelecimento.testeExclusao;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;
  var t_id: TGUID;

begin
  m_EstabelecimentoExcluir := TEstabelecimentoExcluir_v2.Create;
  m_EstabelecimentoExcluir.estabelecimento  := 'NSJTC01EXCLUIR';
  m_EstabelecimentoExcluir.grupoempresarial := 'NSJTC01';
  m_EstabelecimentoExcluir.empresa := 'NSJTC01';

  t_recibo := m_EstabelecimentoExcluir.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  t_id := 'c4b6f561-792d-487a-8a82-9d6eb2f1b57c'.ToGuid();

  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    t_id.ToString().Quoted() + '::text, NULL::text, NULL::text',
    t_retorno,
    cSchema);

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno = TGUID.Empty), 'Função locate encontrou o registro que deveria ter sido excluído.');

end;

procedure TTest_APIEstabelecimento.testeInclusao;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_EstabelecimentoNovo := TEstabelecimentoNovo.Create;
  m_EstabelecimentoNovo.codigo := 'ESTAB_0001TESTE';
  m_EstabelecimentoNovo.empresa := 'NSJTC01';
  m_EstabelecimentoNovo.descricao := 'estabelecimento desc 00001';
  m_EstabelecimentoNovo.identificacao := '0';
  m_EstabelecimentoNovo.inscricaoestadual := '123456';
  m_EstabelecimentoNovo.inscricaomunicipal := '123456789';
  m_EstabelecimentoNovo.nomefantasia := 'estabelecimento 00001';
  m_EstabelecimentoNovo.cei := '45654';
  m_EstabelecimentoNovo.datainicioatividades := Now();
  m_EstabelecimentoNovo.datafinalatividades := Now();

  t_recibo := m_EstabelecimentoNovo.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'ESTAB_0001TESTE'.Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text,'  + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

initialization
  RegisterTest(TTest_APIEstabelecimento.Suite);

end.
