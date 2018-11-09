CREATE TYPE persona.TMovimentoFuncionarioAlterarDadosGerais AS (
     IdMovimento uuid
   , Rubrica text
   , Conjunto text
   , Funcionario text
   , Empresa text
   , Lotacao text
   , LotacaoNova text
   , CalculaNoFim boolean
   , Invisivel boolean
   , BaseParaCalculo numeric(20,6)
	
);
