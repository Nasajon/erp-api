CREATE TYPE persona.TMovimentoSindicatoAlterarDadosGerais AS (
     IdMovimento uuid
   , Rubrica text
   , Sindicato text
   , Empresa text
   , Ordem integer
   , CalculaNoFim boolean
   , Invisivel boolean
   , BaseParaCalculo numeric(20,6)
	
);
