CREATE TYPE servicos.TCategoriaDeServicosAlterar AS (
     id text
   , descricao character varying(150)
   , categoriasuperior text
   , completarcodigoservico boolean
   , sigla character varying(10)
	
);
