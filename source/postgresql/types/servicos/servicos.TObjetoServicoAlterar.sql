CREATE TYPE servicos.TObjetoServicoAlterar AS (
     objetoservico uuid
   , tipo_id uuid
   , grupoempresarial_id uuid
   , produto_id uuid
   , Codigo character varying(30)
   , numero_serie character varying(30)
   , precocompra numeric(20,2)
   , observacao character varying(30)
	
);
