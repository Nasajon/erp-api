CREATE TYPE financas.TContaAlterar AS (
     Conta text
   , Codigo character varying(30)
   , Nome character varying(150)
   , TipoConta text
   , Estabelecimento ns.TEstabelecimento
	
);
