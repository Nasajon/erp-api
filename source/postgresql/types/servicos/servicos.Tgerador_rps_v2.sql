CREATE TYPE servicos.Tgerador_rps_v2 AS (
     estabelecimento uuid
   , lancamento date
   , tipo_tributacao integer
   , regime_especial integer
   , incentivador_cultural integer
   , codigo_servico uuid
   , usuario uuid
   , discriminacao_servicos character varying(5000)
   , clientes servicos.tgerador_rps_cliente_v2[]
   , template_rps uuid
	
);
