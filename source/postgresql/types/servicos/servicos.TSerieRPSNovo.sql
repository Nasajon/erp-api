CREATE TYPE servicos.TSerieRPSNovo AS (
     Estabelecimento text
   , Serie character varying(3)
   , SubSerie character varying(2)
   , Padrao boolean
   , NumeroInicial integer
   , NumeroFinal integer
   , ProximoNumero integer
	
);
