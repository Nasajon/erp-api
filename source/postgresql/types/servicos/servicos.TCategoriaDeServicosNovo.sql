CREATE TYPE servicos.TCategoriaDeServicosNovo AS (
     id uuid
   , codigo character varying(30)
   , descricao character varying(150)
   , completarcodigoservico boolean
   , sigla character varying(10)
   , categoriasuperior text
	
);
