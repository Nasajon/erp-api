CREATE TYPE estoque.TLocalDeEstoqueNovo AS (
     idlocaldeestoque uuid
   , estabelecimento uuid
   , codigo character varying(30)
   , nome character varying(80)
   , tipo integer
	
);
