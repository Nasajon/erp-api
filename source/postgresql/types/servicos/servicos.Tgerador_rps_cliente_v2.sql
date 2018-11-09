CREATE TYPE servicos.Tgerador_rps_cliente_v2 AS (
     id uuid
   , itens_faturamento servicos.tgerador_rps_item_faturamento[]
   , pagamentos ns.tpagamentosemparcela[]
   , parcelas ns.tparcela[]
   , rateios financas.TItemRateioFinanceiro[]
	
);
