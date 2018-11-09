CREATE TYPE estoque.TCategoriaDeProdutosNovo AS (
     id uuid
   , codigo character varying(30)
   , descricao character varying(150)
   , completarcodigoproduto boolean
   , sigla character varying(10)
   , categoriasuperior text
   , figuratributaria text
   , ncm text
   , controlaestoque boolean
   , quantidademinima numeric(20,2)
   , quantidademaxima numeric(20,2)
   , quantidadealerta numeric(20,2)
   , dimensaohorizontal uuid
   , dimensaovertical uuid
   , classificacaofinanceiracompra uuid
   , classificacaofinanceiravenda uuid
	
);
