CREATE TYPE persona.TInstituicaoNovo AS (
     IdInstituicao uuid
   , Tipo integer
   , Codigo character varying(10)
   , Nome character varying(70)
   , CNPJ character varying(18)
	
);
