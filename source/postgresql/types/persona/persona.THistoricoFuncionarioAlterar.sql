CREATE TYPE persona.THistoricoFuncionarioAlterar AS (
     IdHistorico uuid
   , Funcionario text
   , Empresa text
   , Data date
   , Descricao date
   , TipoHistorico character varying(3)
	
);
