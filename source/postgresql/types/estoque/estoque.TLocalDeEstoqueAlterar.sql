CREATE TYPE estoque.TLocalDeEstoqueAlterar AS (
     idlocaldeestoque uuid
   , codigo character varying(30)
   , nome character varying(80)
   , tipo integer
	
);
