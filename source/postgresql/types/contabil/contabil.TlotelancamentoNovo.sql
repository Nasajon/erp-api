CREATE TYPE contabil.TlotelancamentoNovo AS (
     lancamento uuid
   , data date
   , ano integer
   , contadebito text
   , contacredito text
   , historico text
   , numero character varying(12)
   , valor numeric(20,2)
   , estabelecimento text
   , lote text
	
);
