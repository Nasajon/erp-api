CREATE TYPE persona.TEstagiarioAlterarDadosEstrangeiro AS (
     Estagiario text
   , Empresa text
   , CasadoComBrasileiro boolean
   , TemFilhoBrasileiro boolean
   , DataChegadaPais date
   , DataNaturalizacao date
   , NumeroNaturalizacao character varying(30)
	
);
