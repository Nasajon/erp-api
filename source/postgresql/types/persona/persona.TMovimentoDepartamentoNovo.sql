CREATE TYPE persona.TMovimentoDepartamentoNovo AS (
     IdMovimento uuid
   , Rubrica text
   , Departamento text
   , Estabelecimento text
   , Empresa text
   , Ordem integer
   , CalculaNoFim boolean
   , Invisivel boolean
   , BaseParaCalculo numeric(20,6)
	
);
