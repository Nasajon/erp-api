unit ns.testcase.api_empresa;

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
  api.model.ns.empresa,
  api.testcase.nsjtestcase;

const
  cSchema = 'ns';
  cLocateFunction = 'api_locate_empresa';

type
  TTest_APIEmpresa = class(TNsjTestCase)

    strict private

      var m_EmpresaNovo: TEmpresaNovo;
      var m_EmpresaAlterarDadosGerais: TEmpresaAlterarDadosGerais;
      var m_EmpresaAlterarDadosFolha: TEmpresaAlterarDadosFolha;
      var m_EmpresaAlterarDadosFolhaPublica: TEmpresaAlterarDadosFolhaEmpresaPublica;
      var m_EmpresaAlterarDadosFolhaFilantropica: TEmpresaAlterarDadosFolhaEmpresaFilantropica;
      var m_EmpresaAlterarDadosContato: TEmpresaAlterarDadosContato;
      var m_EmpresaExcluir: TEmpresaExcluir;
      var m_EmpresaInativar: TEmpresaInativarEmpresa;

    protected

    published

      procedure testeInclusao();
      procedure testeAlteracaoDadosGerais();
      procedure testeAlteracaoDadosFolha();
      procedure testeAlteracaoDadosContato();
      procedure testeInativarEmpresa();

  end;

implementation

{ TTest_APIEmpresa }

procedure TTest_APIEmpresa.testeAlteracaoDadosContato;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_EmpresaAlterarDadosContato := TEmpresaAlterarDadosContato.Create;
  m_EmpresaAlterarDadosContato.empresa := '2f9f2f50-102d-44ef-96a2-26edc543341c';
  m_EmpresaAlterarDadosContato.nome := 'nome contato';
  m_EmpresaAlterarDadosContato.cpf := '99999999999';
  m_EmpresaAlterarDadosContato.dddtelefonefixo := '21';
  m_EmpresaAlterarDadosContato.telefonefixo := '20401721';
  m_EmpresaAlterarDadosContato.dddtelefonecelular := '21';
  m_EmpresaAlterarDadosContato.telefonecelular := '974112054';
  m_EmpresaAlterarDadosContato.dddfax := '21';
  m_EmpresaAlterarDadosContato.fax := '20401722';
  m_EmpresaAlterarDadosContato.email := 'nasajon@nasajon.com.br';

  t_recibo := m_EmpresaAlterarDadosContato.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'NSJTC01'.Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

procedure TTest_APIEmpresa.testeAlteracaoDadosFolha;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_EmpresaAlterarDadosFolha := TEmpresaAlterarDadosFolha.Create;
  m_EmpresaAlterarDadosFolha.Empresa := 'NSJTC01';
  m_EmpresaAlterarDadosFolha.codigocnae := '1811302';
  m_EmpresaAlterarDadosFolha.codigonaturezajuridica := '1023';
  m_EmpresaAlterarDadosFolha.formapagamento := 'C';
  m_EmpresaAlterarDadosFolha.tipocooperativa := 0;
  m_EmpresaAlterarDadosFolha.construtora := 1;
  m_EmpresaAlterarDadosFolha.pontoeletronico := 1;
  m_EmpresaAlterarDadosFolha.possuimultiplastabelasrubrica := True;
  m_EmpresaAlterarDadosFolha.situacaopj := 1;
  m_EmpresaAlterarDadosFolha.situacaopf := 0;

  t_recibo := m_EmpresaAlterarDadosFolha.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'NSJTC01'.Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

procedure TTest_APIEmpresa.testeAlteracaoDadosGerais;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_EmpresaAlterarDadosGerais := TEmpresaAlterarDadosGerais.Create;
  m_EmpresaAlterarDadosGerais.Empresa := 'NSJTC01';
  m_EmpresaAlterarDadosGerais.grupoempresarial := 'NSJTC01';
  m_EmpresaAlterarDadosGerais.codigo := 'NSJTC01';
  m_EmpresaAlterarDadosGerais.identificacao := '0';
  m_EmpresaAlterarDadosGerais.razaosocial := 'Teste update razaosocial empresa NSJTC01';
  m_EmpresaAlterarDadosGerais.descricao   := 'Teste update descricao empresa NSJTC01';
  m_EmpresaAlterarDadosGerais.codigocnae  := '17419';
  m_EmpresaAlterarDadosGerais.inicioexercicio := Now();

  t_recibo := m_EmpresaAlterarDadosGerais.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'NSJTC01'.Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

procedure TTest_APIEmpresa.testeInativarEmpresa;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_EmpresaInativar := TEmpresaInativarEmpresa.Create;
  m_EmpresaInativar.empresa := '2f9f2f50-102d-44ef-96a2-26edc543341c';
  m_EmpresaInativar.inativa := True;

  t_recibo := m_EmpresaInativar.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);
end;

procedure TTest_APIEmpresa.testeInclusao;

  var t_recibo: TRecibo;
  var t_erro: TpErro;
  var t_retorno: TGUID;

begin
  m_EmpresaNovo := TEmpresaNovo.Create;
  m_EmpresaNovo.codigo := 'EMPRESA0001TESTE';
  m_EmpresaNovo.descricao := 'EMPRESA Desc 00001';
  m_EmpresaNovo.grupoempresarial := 'NSJTC01';
  m_EmpresaNovo.razaosocial := 'Razao social 0001';
  m_EmpresaNovo.identificacao := '0';

  t_recibo := m_EmpresaNovo.execute(dmConexao.Conexao);
  validaRecibo(t_recibo);

  // Verificando se o registro existe de fato no banco
  t_erro := BancoFuncoes().Locate_API(
    cLocateFunction,
    'EMPRESA0001TESTE'.Quoted() + '::text, ' + 'NSJTC01'.Quoted() + '::text',
    t_retorno,
    cSchema
  );

  Self.validaTpErro(t_erro);

  Self.Check((t_retorno <> TGUID.Empty), 'Função locate retornou um GUID nulo.');
end;

initialization
  RegisterTest(TTest_APIEmpresa.Suite);

end.
