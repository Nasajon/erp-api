CREATE TYPE persona.TRubricaNovo AS (
     idRubrica text
   , Conjuntos text[]
   , Codigo character varying(6)
   , Nome character varying(100)
   , Tipo integer
   , Categoria integer
   , Calculo integer
   , Unidade integer
   , Percentual numeric(20,6)
	
);
