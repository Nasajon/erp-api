CREATE TYPE persona.TMovimentoFuncionarioNovo AS (
     IdMovimento uuid
   , Rubrica text
   , Conjunto text
   , Funcionario text
   , Empresa text
   , Lotacao text
   , CalculaNoFim boolean
   , Invisivel boolean
   , BaseParaCalculo numeric(20,6)
	
);
