CREATE TYPE ns.TPendenciaAdministrativaNovo AS (
     Id uuid
   , Sistema integer
   , Tipo integer
   , Situacao integer
   , LinkId uuid
   , LinkType integer
   , CriadoPor text
   , ResolvidoPor text
   , DataResolucao date
   , Observacao character varying(300)
   , GrupoEmpresarial text
   , Empresa text
   , Estabelecimento text
   , DataCriacao date
	
);
