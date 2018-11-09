unit servicos.testcase.api_projetofuncaodetalhe;

interface

uses
  TestFramework,
  udmConexao,
  api.model.recibo,
  uConst,
  uErro,
  api.model.servicos.projetofuncaodetalhe,
  api.testcase.nsjtestcase,
  uHelper,
  uHelperGuid,
  ucBancoFuncoes;

type
  TTest_APIProjetoFuncaoDetalhe = class(TNsjTestCase)

    strict private

    protected

//      procedure SetUp; override;

    published

      procedure inclusaoAgrupador();
      procedure inclusaoEPI();
      procedure inclusaoBeneficio();
      procedure inclusaoFormacaoSalarial();
      procedure exclusaoByFuncao();
  end;

implementation

{ TTest_APIProjetoFuncaoDetalhe }

procedure TTest_APIProjetoFuncaoDetalhe.inclusaoAgrupador;

  var t_chamadaAPI: TProjetoFuncaoDetalheNovoAgrupador;
  var t_recibo: TRecibo;

begin
  t_chamadaAPI := TProjetoFuncaoDetalheNovoAgrupador.Create();
	t_chamadaAPI.Funcao := 'NSJTC01';
	t_chamadaAPI.GrupoEmpresarial := 'NSJTC01';
	t_chamadaAPI.Codigo := 'AGP001';
	t_chamadaAPI.Descricao := 'Agrupador 1';

  t_recibo := t_chamadaAPI.execute(dmConexao.Conexao);

  Self.validaRecibo(t_recibo);
end;

procedure TTest_APIProjetoFuncaoDetalhe.inclusaoBeneficio;

  var t_chamadaAPI: TProjetoFuncaoDetalheNovoBeneficio;
  var t_recibo: TRecibo;

begin
  t_chamadaAPI := TProjetoFuncaoDetalheNovoBeneficio.Create();
	t_chamadaAPI.Funcao := 'NSJTC01';
	t_chamadaAPI.GrupoEmpresarial := 'NSJTC01';
	t_chamadaAPI.Empresa := 'NSJTC01';
	t_chamadaAPI.Registro := '0001';
	t_chamadaAPI.PeriodicidadeTipo := 1;
	t_chamadaAPI.PeriodicidadeIntervalo := 5;
	t_chamadaAPI.Agrupador := 'NSJTC01';

  t_recibo := t_chamadaAPI.execute(dmConexao.Conexao);

  Self.validaRecibo(t_recibo);
end;

procedure TTest_APIProjetoFuncaoDetalhe.inclusaoEPI;

  var t_chamadaAPI: TProjetoFuncaoDetalheNovoEPI;
  var t_recibo: TRecibo;

begin
  t_chamadaAPI := TProjetoFuncaoDetalheNovoEPI.Create();
	t_chamadaAPI.Funcao := 'NSJTC01';
	t_chamadaAPI.GrupoEmpresarial := 'NSJTC01';
	t_chamadaAPI.Registro := 'NSJTC01';
	t_chamadaAPI.Unidade := 'KG';
	t_chamadaAPI.Quantidade := 123.5;
	t_chamadaAPI.ValorUnitario := 1.6;
	t_chamadaAPI.PeriodicidadeTipo := 1;
	t_chamadaAPI.PeriodicidadeIntervalo := 5;
	t_chamadaAPI.Agrupador := 'NSJTC01';

  t_recibo := t_chamadaAPI.execute(dmConexao.Conexao);

  Self.validaRecibo(t_recibo);
end;

procedure TTest_APIProjetoFuncaoDetalhe.inclusaoFormacaoSalarial;

  var t_chamadaAPI: TProjetoFuncaoDetalheNovoFormacaoSalarial;
  var t_recibo: TRecibo;

begin
  t_chamadaAPI := TProjetoFuncaoDetalheNovoFormacaoSalarial.Create();
	t_chamadaAPI.Funcao := 'NSJTC01';
	t_chamadaAPI.GrupoEmpresarial := 'NSJTC01';
	t_chamadaAPI.Empresa := 'NSJTC01';
	t_chamadaAPI.Registro := '0002';
	t_chamadaAPI.PeriodicidadeTipo := 0;
	t_chamadaAPI.PeriodicidadeIntervalo := 5;
	t_chamadaAPI.Agrupador := 'NSJTC01';

  t_recibo := t_chamadaAPI.execute(dmConexao.Conexao);

  Self.validaRecibo(t_recibo);
end;

procedure TTest_APIProjetoFuncaoDetalhe.exclusaoByFuncao;

  var t_chamadaAPI: TProjetoFuncaoDetalheDeleteByFuncao;
  var t_recibo: TRecibo;

begin
  t_chamadaAPI := TProjetoFuncaoDetalheDeleteByFuncao.Create();
	t_chamadaAPI.Funcao := 'NSJTC01';
	t_chamadaAPI.GrupoEmpresarial := 'NSJTC01';

  t_recibo := t_chamadaAPI.execute(dmConexao.Conexao);

  Self.validaRecibo(t_recibo);
end;

initialization
  RegisterTest(TTest_APIProjetoFuncaoDetalhe.Suite);

end.
