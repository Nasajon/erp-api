CREATE TYPE servicos.TProjetoFuncaoNovo AS (
     Identificador uuid
   , GrupoEmpresarial text
   , Empresa text
   , Cargo text
   , Codigo character varying(30)
   , Descricao character varying(150)
   , Bloqueado boolean
   , CriadoPor text
	
);
