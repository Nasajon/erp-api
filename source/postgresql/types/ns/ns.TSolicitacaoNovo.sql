CREATE TYPE ns.TSolicitacaoNovo AS (
     Solicitacao uuid
   , Status integer
   , FuncionarioNome character varying(80)
   , FuncionarioCodigo character varying(6)
   , FuncionarioDepartamento character varying(40)
   , FuncionarioCargo character varying(50)
   , Solicitante character varying(64)
   , FuncionarioFoto character varying(100)
   , Empresa text
   , Data date
   , Rascunho boolean
   , Tenant integer
   , Fila uuid
   , Colaborador uuid
   , Conteudo text
   , UsuarioDestino character varying(64)
   , Tipo character varying(5)
	
);
