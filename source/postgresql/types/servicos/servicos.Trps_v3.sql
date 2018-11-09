CREATE TYPE servicos.Trps_v3 AS (
     id uuid
   , nota_antecipada boolean
   , estabelecimento text
   , cliente text
   , serie character varying(5)
   , lancamento date
   , origem integer
   , tipo_tributacao integer
   , regime_especial integer
   , incentivo_cultural integer
   , beneficio_fiscal integer
   , codigo_servico text
   , codigo_municipio_prestacao character varying(7)
   , obra text
   , discriminacao_servicos character varying(5000)
   , desconto numeric(20,2)
   , outras_deducoes numeric(20,2)
   , outras_retencoes numeric(20,2)
   , descricao_outras_retencoes character varying(5000)
   , retem_iss boolean
   , retem_ir boolean
   , retem_inss boolean
   , retem_pis boolean
   , retem_cofins boolean
   , retem_csll boolean
   , aliquota_iss numeric(20,2)
   , base_iss numeric(20,2)
   , valor_iss numeric(20,2)
   , base_ir numeric(20,2)
   , valor_ir numeric(20,2)
   , base_inss numeric(20,2)
   , valor_inss numeric(20,2)
   , base_pis numeric(20,2)
   , valor_pis numeric(20,2)
   , base_cofins numeric(20,2)
   , valor_cofins numeric(20,2)
   , base_csll numeric(20,2)
   , valor_csll numeric(20,2)
   , observacao character varying(5000)
   , observacao_titulo character varying(5000)
   , conjunto_anexo text
   , lote_cobranca text
   , numero_nota_servico_substituicao character varying(9)
   , documento_vinculado text
   , numero_titulo text
   , usuario text
   , template_rps uuid
   , id_contrato text
   , id_processamento_cobranca text
   , xml_docengine character varying(999999)
   , calcular_imposto boolean
   , gerar_financeiro boolean
   , itens servicos.titemrps_v3[]
   , pagamentos ns.TPagamentoSemParcela[]
   , parcelas ns.TParcela[]
   , rateios financas.TItemRateioFinanceiro[]
   , vendedores servicos.TVendedorRPS[]
   , retem_ir_nota boolean
   , numeroexterno character varying(255),
   , projeto_padrao_id uuid
	
);
