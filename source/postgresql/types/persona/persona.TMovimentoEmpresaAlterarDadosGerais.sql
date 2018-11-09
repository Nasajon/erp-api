CREATE TYPE persona.TMovimentoEmpresaAlterarDadosGerais AS (
     IdMovimento uuid
   , Rubrica text
   , Empresa text
   , Ordem integer
   , CalculaNoFim boolean
   , Invisivel boolean
   , BaseParaCalculo numeric(20,6)
	
);
