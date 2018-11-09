unit api.testcase.model.financas.ItemRateioFinanceiro;

interface

	uses
      TestFramework,
      Uni,
      udmConexao,
      api.model.recibo,
      uConst
  , api.model.financas.itemrateiofinanceiro
    	
	;

type TTestItemRateioFinanceiro = class(TTestCase)

  strict private

    var m_ItemRateioFinanceiro : TItemRateioFinanceiro;
    
  protected

    procedure SetUp; override;
    
  published

    procedure doTeste();
    
end;

	

implementation
  uses SysUtils, DateUtils;

procedure TTestItemRateioFinanceiro.SetUP;
begin
  m_ItemRateioFinanceiro := TItemRateioFinanceiro.Create();
  m_ItemRateioFinanceiro.ClassificacaoFinanceira := 'DC791DED-426E-48D7-8B0F-9695D0DDFE64';
  m_ItemRateioFinanceiro.CentroCusto := '120F2A41-41A5-437E-8BFB-310741849949';
  m_ItemRateioFinanceiro.Valor := 0;
  m_ItemRateioFinanceiro.Projeto := '6E57A677-F956-4A05-AD47-5ED0F2889E65';
  m_ItemRateioFinanceiro.Discriminacao := '001';
  m_ItemRateioFinanceiro.BemPatrimonial := '486DA57B-46EE-45F5-BA32-0ACB74EF1ECF';
  m_ItemRateioFinanceiro.RATEIOFINANCEIRO := '1B49A3C2-BF9F-4062-B270-0F37E72C2F7F';
end;

procedure TTestItemRateioFinanceiro.doTeste();
  var t_recibo : TRecibo;
begin
  t_recibo := m_ItemRateioFinanceiro.execute(dmConexao.Conexao);
  if t_recibo.codigo <> c_recibo_ok
    then raise exception.Create( t_recibo.mensagem );
end;

	

initialization
  RegisterTest(TTestItemRateioFinanceiro.Suite);
   

end.
