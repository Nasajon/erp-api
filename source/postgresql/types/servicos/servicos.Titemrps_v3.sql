CREATE TYPE servicos.Titemrps_v3 AS (
     crud integer
   , id uuid
   , id_rps uuid
   , item_faturamento text
   , quantidade numeric(20,2)
   , valor_unitario numeric(20,2)
   , desconto numeric(20,2)
   , valor_total numeric(20,2)
   , descricao character varying(1500)
   , retem_iss boolean
   , retem_ir boolean
   , retem_inss boolean
   , retem_pis boolean
   , retem_cofins boolean
   , retem_csll boolean
   , percentual_base_iss numeric(20,2)
   , base_iss numeric(20,2)
   , valor_iss numeric(20,2)
   , base_ir numeric(20,2)
   , aliquota_ir numeric(20,2)
   , valor_ir numeric(20,2)
   , percentual_base_inss numeric(20,2)
   , base_inss numeric(20,2)
   , aliquota_inss numeric(20,2)
   , valor_inss numeric(20,2)
   , base_pis numeric(20,2)
   , aliquota_pis numeric(20,2)
   , valor_pis numeric(20,2)
   , base_cofins numeric(20,2)
   , aliquota_cofins numeric(20,2)
   , valor_cofins numeric(20,2)
   , base_csll numeric(20,2)
   , aliquota_csll numeric(20,2)
   , valor_csll numeric(20,2)
   , contrato text
   , item_contrato text
   , processamento_cobranca text
   , titulo text
   , ordem integer
   , id_origem uuid
	
);
