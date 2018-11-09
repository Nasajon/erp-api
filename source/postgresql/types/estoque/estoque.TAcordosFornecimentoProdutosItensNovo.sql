CREATE TYPE estoque.TAcordosFornecimentoProdutosItensNovo AS (
     Identificador uuid
   , GrupoEmpresarial text
   , Empresa text
   , Estabelecimento text
   , Unidade text
   , Item text
   , AcordosFornecimentoProdutos text
   , Tipo_Fornecimento text
   , Quantidade numeric(20,2)
   , Valor_Unitario numeric(20,2)
   , Recorrencia numeric(20,2)
	
);
