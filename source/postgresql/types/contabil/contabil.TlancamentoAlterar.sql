CREATE TYPE contabil.TlancamentoAlterar AS (
     lancamento uuid
   , data date
   , numero integer
   , contadebito text
   , contacredito text
   , centrodecusto text
   , indicadorlancamentofcont integer
   , pessoa text
   , historico text
   , valor numeric(20,2)
	
);
