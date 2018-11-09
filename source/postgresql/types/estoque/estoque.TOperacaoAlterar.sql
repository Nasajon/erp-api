CREATE TYPE estoque.TOperacaoAlterar AS (
     idoperacao uuid
   , codigo character varying(6)
   , descricao character varying(40)
   , sinal integer
   , afetacustodosprodutos boolean
   , grupoodeoperacao uuid
   , usatabeladepreco boolean
   , associardocumento boolean
   , associarproduto boolean
   , finalidade integer
   , ativa boolean
	
);
