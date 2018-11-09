CREATE TYPE persona.TMovimentoEstabelecimentoAlterarDadosGerais AS (
     IdMovimento uuid
   , Rubrica text
   , Estabelecimento text
   , Empresa text
   , Ordem integer
   , CalculaNoFim boolean
   , Invisivel boolean
   , BaseParaCalculo numeric(20,6)
	
);
