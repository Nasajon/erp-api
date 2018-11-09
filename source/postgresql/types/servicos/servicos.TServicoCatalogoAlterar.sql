CREATE TYPE servicos.TServicoCatalogoAlterar AS (
     servicocatalogo uuid
   , codigo character varying(30)
   , descricao character varying(150)
   , catalogooferta uuid
   , tipo integer
   , id_grupo uuid
	
);
