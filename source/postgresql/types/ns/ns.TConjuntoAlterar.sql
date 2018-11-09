CREATE TYPE ns.TConjuntoAlterar AS (
     Conjunto text
   , Codigo character varying(30)
   , Descricao character varying(150)
   , Cadastro integer
   , Estabelecimentos ns.TEstabelecimento[]
	
);
