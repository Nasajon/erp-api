CREATE TYPE persona.TProcessoNovo AS (
     IdProcesso uuid
   , Empresa text
   , Numero character varying(20)
   , DataAbertura date
   , Descricao character varying(100)
   , CodigoVara character varying(2)
   , CodigoMunicipioVara character varying(8)
   , Tipo integer
   , Autor integer
   , Motivo integer
	
);
