CREATE TYPE persona.TMovimentoSindicatoAlterarPeriodoEntreMesAno AS (
     IdMovimento uuid
   , Rubrica text
   , Sindicato text
   , Empresa text
   , MesInicial integer
   , MesFinal integer
   , AnoInicial integer
   , AnoFinal integer
	
);
