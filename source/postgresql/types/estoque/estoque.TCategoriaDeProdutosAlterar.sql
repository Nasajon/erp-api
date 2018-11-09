CREATE TYPE estoque.TCategoriaDeProdutosAlterar AS (
     id text
   , descricao character varying(150)
   , categoriasuperior text
   , figuratributaria text
   , ncm text
   , controlaestoque boolean
   , quantidademinima numeric(20,2)
   , quantidademaxima numeric(20,2)
   , quantidadealerta numeric(20,2)
   , dimensaohorizontal uuid
   , dimensaovertical uuid
   , completarcodigoproduto boolean
   , sigla character varying(10)
   , classificacaofinanceiracompra uuid
   , classificacaofinanceiravenda uuid
	
);
