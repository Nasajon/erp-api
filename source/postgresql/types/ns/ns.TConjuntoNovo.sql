CREATE TYPE ns.TConjuntoNovo AS (
     Conjunto uuid
   , Codigo character varying(30)
   , Descricao character varying(150)
   , Cadastro integer
   , Estabelecimentos ns.TEstabelecimento[]
	
);
