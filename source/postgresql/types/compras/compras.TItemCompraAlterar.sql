CREATE TYPE compras.TItemCompraAlterar AS (
     id uuid
   , codigo character varying(30)
   , descricao character varying(150)
   , comodato boolean
   , tipo integer
   , categoriadeproduto text
   , categoriadeservico text
   , detalhamento text
   , grupoempresarial text
	
);
