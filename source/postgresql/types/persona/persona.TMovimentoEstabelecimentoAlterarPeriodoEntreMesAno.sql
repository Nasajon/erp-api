CREATE TYPE persona.TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno AS (
     IdMovimento uuid
   , Rubrica text
   , Estabelecimento text
   , Empresa text
   , MesInicial integer
   , MesFinal integer
   , AnoInicial integer
   , AnoFinal integer
	
);
