CREATE TYPE servicos.TSerieRPSAlterar AS (
     Estabelecimento text
   , Serie character varying(3)
   , SubSerie character varying(2)
   , Situacao integer
   , Padrao boolean
   , NumeroInicial integer
   , NumeroFinal integer
   , ProximoNumero integer
	
);
