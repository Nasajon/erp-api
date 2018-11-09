CREATE TYPE servicos.Timportacao_rateio AS (
     Discriminacao character varying(200)
   , ClassificacaoFinanceira text
   , CentroCusto text
   , Projeto text
   , Valor numeric(20,2)
   , Percentual numeric(20,2)
	
);
