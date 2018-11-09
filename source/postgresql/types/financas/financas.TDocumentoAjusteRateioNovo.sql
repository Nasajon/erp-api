CREATE TYPE financas.TDocumentoAjusteRateioNovo AS (
     Id uuid
   , Estabelecimento text
   , Codigo character varying(30)
   , Descricao character varying(100)
   , Observacao text
   , Data date
   , DataCompetencia date
   , DataCriacao date
   , Origem integer
   , NumeroDocumentoOrigem character varying(30)
   , RequisicaoAlmoxarifado text
   , UsuarioCriador text
   , RateioFinanceiro financas.TItemRateioFinanceiro[]
   , IDDocumentoRateado text
   , DevolucaoAlmoxarifado text
	
);
