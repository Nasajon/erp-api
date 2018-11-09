CREATE TYPE persona.TFuncionarioAlterarDadosEstrangeiro AS (
     Funcionario text
   , Empresa text
   , CasadoComBrasileiro boolean
   , TemFilhoBrasileiro boolean
   , DataChegadaPais date
   , DataNaturalizacao date
   , NumeroNaturalizacao character varying(30)
	
);
