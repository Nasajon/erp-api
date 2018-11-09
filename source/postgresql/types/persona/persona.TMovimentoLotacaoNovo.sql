CREATE TYPE persona.TMovimentoLotacaoNovo AS (
     IdMovimento uuid
   , Rubrica text
   , Lotacao text
   , Empresa text
   , Ordem integer
   , CalculaNoFim boolean
   , Invisivel boolean
   , BaseParaCalculo numeric(20,6)
	
);
