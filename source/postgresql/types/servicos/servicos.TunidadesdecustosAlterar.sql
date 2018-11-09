CREATE TYPE servicos.TunidadesdecustosAlterar AS (
     unidadedecustodecusto uuid
   , codigo character varying(30)
   , descricao character varying(150)
   , valor character varying(150)
   , updated_by character varying()
	
);
