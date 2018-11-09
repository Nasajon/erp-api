CREATE TYPE servicos.TFuncaoAlterar AS (
     Funcao text
   , GrupoEmpresarial text
   , Cargo text
   , Codigo character varying(30)
   , Descricao character varying(150)
   , Bloqueado boolean
	
);
