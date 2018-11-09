CREATE TYPE estoque.TAcordosFornecimentoProdutosNovo AS (
     Identificador uuid
   , GrupoEmpresarial text
   , Empresa text
   , Estabelecimento text
   , ContratoTecnico text
   , Cliente text
   , Modelo_LocalDeUso text
   , Codigo character varying(60)
   , Descricao character varying(255)
   , InicioVigencia date
   , FimVigencia date
   , Ativo boolean
	
);
