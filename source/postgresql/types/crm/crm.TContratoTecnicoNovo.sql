CREATE TYPE crm.TContratoTecnicoNovo AS (
     Identificador uuid
   , GrupoEmpresarial text
   , Empresa text
   , Estabelecimento text
   , Negocio text
   , Cliente text
   , Codigo character varying(60)
   , Descricao character varying(255)
   , InicioVigencia date
   , FimVigencia date
   , Ativo boolean
	
);
