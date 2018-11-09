CREATE TYPE persona.TItemFaixaNovo AS (
     IdItem uuid
   , Faixa text
   , DataInicioValidade date
   , ValorFinal numeric(20,6)
   , Percentual numeric(20,6)
   , ValorConstante numeric(20,6)
	
);
