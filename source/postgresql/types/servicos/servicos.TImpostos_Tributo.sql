CREATE TYPE servicos.TImpostos_Tributo AS (
     tipo integer
   , tributado boolean
   , base numeric(20,2)
   , aliquota numeric(20,2)
   , valor numeric(20,2)
	
);
