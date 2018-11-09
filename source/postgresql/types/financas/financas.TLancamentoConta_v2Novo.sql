CREATE TYPE financas.TLancamentoConta_v2Novo AS (
     Id uuid
   , Estabelecimento text
   , Conta text
   , Data date
   , DataCompetencia date
   , Documento character varying(30)
   , Historico character varying(1024)
   , Sinal integer
   , Valor numeric(20,2)
   , ImprimeCheque boolean
   , VersoCheque character varying(1024)
   , Favorecido character varying(150)
   , Contabilizar boolean
   , RateioFinanceiro financas.TItemRateioFinanceiro[]
	
);
