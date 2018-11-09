CREATE TYPE estoque.TUnidadeNovo AS (
     idunidade uuid
   , codigo character varying(6)
   , descricao character varying(40)
   , decimais integer
   , idgrupo uuid
	
);
