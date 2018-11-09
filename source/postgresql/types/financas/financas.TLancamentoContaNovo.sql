CREATE TYPE financas.TLancamentoContaNovo AS (
     Id uuid
   , Conta financas.TConta_v2Novo
   , Data date
   , Documento character varying(30)
   , Sinal integer
   , Valor numeric(20,2)
   , RateioFinanceiro financas.TItemRateioFinanceiro[]
   , Contabilizar boolean
   , Historico character varying(1024)
	
);
