CREATE TYPE financas.TContaNovo AS (
     Id uuid
   , Codigo character varying(30)
   , Nome character varying(150)
   , TipoConta text
   , Estabelecimento ns.TEstabelecimento
	
);
