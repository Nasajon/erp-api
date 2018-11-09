CREATE TYPE persona.TMovimentoFuncionarioAlterarPeriodoEntreMesAno AS (
     IdMovimento uuid
   , Rubrica text
   , Conjunto text
   , Funcionario text
   , Empresa text
   , Lotacao text
   , MesInicial integer
   , MesFinal integer
   , AnoInicial integer
   , AnoFinal integer
	
);
