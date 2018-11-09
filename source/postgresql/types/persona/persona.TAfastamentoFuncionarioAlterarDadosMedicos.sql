CREATE TYPE persona.TAfastamentoFuncionarioAlterarDadosMedicos AS (
     IdAfastamento uuid
   , Data date
   , Funcionario text
   , Empresa text
   , Medico text
   , CID character varying(5)
   , TipoAcidenteTransito integer
	
);
