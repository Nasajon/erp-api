CREATE TYPE servicos.TProjetoFuncaoAlterar AS (
     Identificador text
   , GrupoEmpresarial text
   , Empresa text
   , Cargo text
   , Codigo character varying(30)
   , Descricao character varying(150)
   , Bloqueado boolean
	
);
