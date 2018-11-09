CREATE TYPE persona.TAfastamentoFuncionarioNovo AS (
     IdAfastamento uuid
   , Funcionario text
   , Empresa text
   , Data date
   , Dias integer
   , TipoHistorico character varying(3)
   , Descricao character varying(255)
	
);
