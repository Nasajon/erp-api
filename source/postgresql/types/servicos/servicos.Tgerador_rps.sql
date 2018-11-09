CREATE TYPE servicos.Tgerador_rps AS (
     estabelecimento uuid
   , lancamento date
   , tipo_tributacao integer
   , regime_especial integer
   , incentivador_cultural integer
   , codigo_servico uuid
   , usuario uuid
   , discriminacao_servicos character varying(5000)
   , itens_faturamento servicos.tgerador_rps_item_faturamento[]
   , clientes servicos.tgerador_rps_cliente[]
   , pagamentos ns.tpagamentosemparcela[]
   , parcelas ns.tparcela[]
   , rateios financas.TItemRateioFinanceiro[]
   , template_rps uuid
	
);
