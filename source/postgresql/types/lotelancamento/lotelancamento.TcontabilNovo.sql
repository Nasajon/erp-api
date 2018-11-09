CREATE TYPE lotelancamento.TcontabilNovo AS (
     lancamento uuid
   , numero integer
   , ano date
   , debito uuid
   , credito uuid
   , historico character varying()
   , valor numeric(20,2)
	
);
