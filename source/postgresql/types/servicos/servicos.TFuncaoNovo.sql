CREATE TYPE servicos.TFuncaoNovo AS (
     Funcao uuid
   , GrupoEmpresarial text
   , Cargo text
   , Codigo character varying(30)
   , Descricao character varying(150)
   , Bloqueado boolean
   , CriadoPor text
	
);
