CREATE TYPE persona.TMovimentoEmpresaAlterarPeriodoEntreMesAno AS (
     IdMovimento uuid
   , Rubrica text
   , Empresa text
   , MesInicial integer
   , MesFinal integer
   , AnoInicial integer
   , AnoFinal integer
	
);
