CREATE TYPE ns.TSolicitacaoAlteracaoEnderecoNovo AS (
     Solicitacao uuid
   , Conteudo persona.TFuncionarioSolicitacaoAlteracaoEndereco
   , Status integer
   , FuncionarioNome character varying(80)
   , FuncionarioCodigo character varying(6)
   , FuncionarioDepartamento character varying(40)
   , FuncionarioCargo character varying(50)
   , FuncionarioFoto character varying(100)
   , Empresa text
   , Data date
   , Tipo character varying(5)
   , Rascunho boolean
   , Solicitante character varying(64)
   , Fila uuid
   , Tenant integer
   , Colaborador uuid
   , UsuarioDestino character varying(64)
	
);
