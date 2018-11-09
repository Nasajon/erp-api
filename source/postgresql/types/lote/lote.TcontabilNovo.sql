CREATE TYPE lote.TcontabilNovo AS (
     lote uuid
   , codigo character varying(8)
   , descricao character varying(50)
   , datainicio date
   , datafim date
   , conta uuid
   , usuario integer
   , ano integer
	
);
