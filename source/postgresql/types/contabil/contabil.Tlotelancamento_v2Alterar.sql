CREATE TYPE contabil.Tlotelancamento_v2Alterar AS (
     lancamento uuid
   , data date
   , numero character varying(12)
   , contadebito text
   , contacredito text
   , centrodecusto text
   , indicadorlancamentofcont integer
   , pessoa text
   , historico text
   , valor numeric(20,2)
	
);
