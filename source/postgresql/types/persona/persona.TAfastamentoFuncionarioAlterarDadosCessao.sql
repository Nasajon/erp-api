CREATE TYPE persona.TAfastamentoFuncionarioAlterarDadosCessao AS (
     IdAfastamento uuid
   , Data date
   , Funcionario text
   , Empresa text
   , CNPJEmpresaCessionaria character varying(14)
   , Onus integer
	
);
