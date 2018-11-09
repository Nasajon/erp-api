CREATE TYPE persona.TLotacaoNovo AS (
     IdLotacao uuid
   , Empresa text
   , Estabelecimento text
   , Codigo character varying(20)
   , Nome character varying(60)
   , CodigoAgenteNocivo character varying(1)
	
);
