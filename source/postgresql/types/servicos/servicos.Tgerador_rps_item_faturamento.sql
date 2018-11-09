CREATE TYPE servicos.Tgerador_rps_item_faturamento AS (
     id uuid
   , quantidade numeric(20,2)
   , valor_unitario numeric(20,2)
   , valor_total numeric(20,2)
   , id_owner uuid
	
);
