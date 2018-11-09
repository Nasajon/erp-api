CREATE TYPE persona.TMovimentoLotacaoAlterarPeriodoEntreMesAno AS (
     IdMovimento uuid
   , Rubrica text
   , Lotacao text
   , Empresa text
   , MesInicial integer
   , MesFinal integer
   , AnoInicial integer
   , AnoFinal integer
	
);
