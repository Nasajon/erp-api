CREATE TYPE persona.TMovimentoEmpresaNovo AS (
     IdMovimento uuid
   , Rubrica text
   , Empresa text
   , Ordem integer
   , CalculaNoFim boolean
   , Invisivel boolean
   , BaseParaCalculo numeric(20,6)
	
);
