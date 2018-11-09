CREATE TYPE persona.TAfastamentoFuncionarioAlterarDadosGerais AS (
     IdAfastamento uuid
   , Data date
   , Funcionario text
   , Empresa text
   , DataNova date
   , Dias integer
   , TipoHistorico character varying(3)
   , Descricao character varying(255)
	
);
