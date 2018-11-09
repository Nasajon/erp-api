CREATE TYPE persona.TNivelCargoNovo AS (
     IdNivel uuid
   , Cargo text
   , Empresa text
   , Codigo character varying(8)
   , Data date
   , ValorSalario numeric(20,6)
   , Observacao character varying(100)
	
);
