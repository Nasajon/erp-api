CREATE TYPE ns.TDocumentoFiscal AS (
     DocumentoFiscal uuid
   , ChaveAcesso character varying(44)
   , Estabelecimento ns.TEstabelecimento
   , Valor numeric(15,2)
   , Emissao date
   , DataSaida date
   , Tipo integer
	
);
