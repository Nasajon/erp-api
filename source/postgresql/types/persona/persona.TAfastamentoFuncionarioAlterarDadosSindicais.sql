CREATE TYPE persona.TAfastamentoFuncionarioAlterarDadosSindicais AS (
     IdAfastamento uuid
   , Data date
   , Funcionario text
   , Empresa text
   , Sindicato text
   , Onus character varying(5)
	
);
