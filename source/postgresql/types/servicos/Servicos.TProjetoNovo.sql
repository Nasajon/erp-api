CREATE TYPE Servicos.TProjetoNovo AS (
     Projeto uuid
   , Estabelecimento text
   , Empresa text
   , GrupoEmpresarial text
   , Pessoa text
   , TipoProjeto text
   , Codigo character varying(30)
   , Descricao character varying(150)
   , Observacao text
   , DataCriacao timestamp
   , CriadoPor text
   , Situacao integer
	
);
