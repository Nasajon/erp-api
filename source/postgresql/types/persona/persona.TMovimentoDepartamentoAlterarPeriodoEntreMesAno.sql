CREATE TYPE persona.TMovimentoDepartamentoAlterarPeriodoEntreMesAno AS (
     IdMovimento uuid
   , Rubrica text
   , Departamento text
   , Estabelecimento text
   , Empresa text
   , MesInicial integer
   , MesFinal integer
   , AnoInicial integer
   , AnoFinal integer
	
);
