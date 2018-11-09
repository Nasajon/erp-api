CREATE TYPE servicos.TImpostos_ItemRPS AS (
     itemrps_id uuid
   , Item_Faturamento_ID uuid
   , itemrps_percentual_incidencia_inss numeric(20,2)
   , itemrps_percentual_base_iss numeric(20,2)
   , itemrps_quantidade numeric(20,2)
   , itemrps_valor_unitario numeric(20,2)
   , itemrps_desconto numeric(20,2)
   , itemrps_valor_total numeric(20,2)
   , itemrps_lista_tributos servicos.TImpostos_Tributo[]
	
);
