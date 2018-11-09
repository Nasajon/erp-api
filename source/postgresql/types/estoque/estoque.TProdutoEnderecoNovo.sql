CREATE TYPE estoque.TProdutoEnderecoNovo AS (
     idprodutoendereco uuid
   , produto uuid
   , localdeestoqueendereco uuid
   , localdeestoque uuid
   , padrao boolean
	
);
