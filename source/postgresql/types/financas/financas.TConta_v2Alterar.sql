CREATE TYPE financas.TConta_v2Alterar AS (
     Conta text
   , Codigo character varying(30)
   , Nome character varying(150)
   , Estabelecimento ns.TEstabelecimento
   , TipoConta text
   , Banco financas.TBancoNovo
   , NomeAgencia character varying(150)
   , NumeroAgencia character varying(30)
   , DvNumeroAgencia character varying(1)
   , NumeroConta character varying(30)
   , DvNumeroConta character varying(1)
   , NomeTitular character varying(150)
   , LimiteFechamento date
   , Bloqueada boolean
   , ConsideraSaldoNoFluxoCaixa boolean
	
);
