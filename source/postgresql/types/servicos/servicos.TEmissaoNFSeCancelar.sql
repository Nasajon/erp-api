CREATE TYPE servicos.TEmissaoNFSeCancelar AS (
     AtributoEstabelecimento character varying(1024)
   , AtributoRPS character varying(1024)
   , AtributoSerie character varying(1024)
   , AtributoMotivo character varying(1024)
   , AtributoCodigoMotivo integer
   , AtributoCertificado character varying(1024)
   , AtributoUsuario text
	
);
