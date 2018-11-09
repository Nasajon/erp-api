CREATE TYPE servicos.TImpostos_RPS AS (
     estabelecimento_id uuid
   , estabelecimento_simples_nacional boolean
   , estabelecimento_ibge character varying(7)
   , cliente_id uuid
   , cliente_simples_nacional boolean
   , cliente_qualificacao integer
   , cliente_retem_iss boolean
   , cliente_retem_inss boolean
   , cliente_retem_ir boolean
   , cliente_retem_pis boolean
   , cliente_retem_cofins boolean
   , cliente_retem_csll boolean
   , configuracao_id uuid
   , configuracao_destacar_iss_estabelecimento_simples boolean
   , configuracao_considerar_valor_minimo boolean
   , configuracao_ratear_retencoes boolean
   , configuracao_destacar_retencoes_parcela_inferior_valor_minimo boolean
   , codigo_servico_id uuid
   , codigo_servico_retem_ir boolean
   , codigo_servico_retem_pis boolean
   , codigo_servico_retem_cofins boolean
   , codigo_servico_retem_csll boolean
   , rps_tipo_tributacao integer
   , rps_iss_retido boolean
   , rps_valor_deducoes numeric(20,2)
   , rps_municipio_prestacao_id uuid
   , rps_municipio_prestacao_ibge character varying(7)
   , rps_total_parcelas integer
   , rps_lista_itens servicos.TImpostos_ItemRPS[]
	
);
