CREATE TYPE contabil.TlancamentoNovo AS (
     lancamento uuid
   , tipo integer
   , data date
   , numero integer
   , contadebito text
   , contacredito text
   , centrodecusto text
   , indicadorlancamentofcont integer
   , pessoa text
   , historico text
   , valor numeric(20,2)
   , estabelecimento text
   , ano integer
   , usuario text
   , nomemaquina character varying(50)
   , datainclusao date
   , contabilizacao uuid
   , bemocorrencia uuid
   , lote text
	
);
