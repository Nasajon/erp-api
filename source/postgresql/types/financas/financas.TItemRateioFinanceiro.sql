CREATE TYPE financas.TItemRateioFinanceiro AS (
     ClassificacaoFinanceira text
   , CentroCusto text
   , Valor numeric(20,2)
   , Projeto text
   , Discriminacao character varying(200)
   , BemPatrimonial text
   , RATEIOFINANCEIRO uuid
   , ItemContrato uuid
   , ID_ESTABELECIMENTO_REEMBOLSO uuid
   , id_owner uuid
	
);
