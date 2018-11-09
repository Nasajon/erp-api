CREATE TYPE financas.TTituloReceberAlterar AS (
     Id uuid
   , Estabelecimento text
   , Pessoa text
   , Conta text
   , LayoutCobranca text
   , Numero character varying(30)
   , Emissao date
   , Vencimento date
   , PrevisaoVencimento date
   , Parcela integer
   , TotalParcelas integer
   , Observacao character varying(1000)
   , Anotacoes text
   , ValorTitulo numeric(20,2)
   , RateioFinanceiro financas.TItemRateioFinanceiro[]
   , AliquotaIr numeric(15,4)
   , ValorIrRetido numeric(20,2)
   , AliquotaCofins numeric(15,4)
   , ValorCofinsRetido numeric(20,2)
   , AliquotaPis numeric(15,4)
   , ValorPisRetido numeric(20,2)
   , AliquotaCsll numeric(15,4)
   , ValorCsllRetido numeric(20,2)
   , ValorInssRetido numeric(20,2)
   , AliquotaIss numeric(15,4)
   , ValorIssRetido numeric(20,2)
   , DataLimiteDesconto date
   , PercentualDesconto numeric(15,4)
   , DataInicioMulta date
   , PercentualMulta numeric(15,4)
   , PercentualJurosDiario numeric(15,4)
   , InformacaoCartao financas.TInformacaoCartao
   , NumeroVezesCartao integer
   , ValorTarifaCartao numeric(20,2)
   , AutorizacaoCartao character varying(30)
   , DocumentoCartao character varying(30)
   , NumeroParcelaCartao integer
   , ValorParcelaCartao numeric(20,2)
   , Vendedores financas.TVendedorTitulo[]
   , NumeroNota character varying(20)
   , ModeloDocumentoFiscal integer
   , SerieDocumentoFiscal character varying(3)
   , SubserieDocumentoFiscal character varying(2)
   , DataProvisoria boolean
   , ValorProvisorio boolean
   , TipoOrigem integer
   , Contrato text
   , DataAutorizacaoCartao date
   , FormaPagamento text
   , Fatura text
   , IRRetidoNF numeric(20,2)
   , INSSRetidoNF numeric(20,2)
   , RPS uuid
   , ID_RENEGOCIACAO_GERADORA uuid
   , Situacao integer
   , BemPatrimonial text
   , TaxaBancaria numeric(15,4)
   , Desconto numeric(15,4)
   , Multa numeric(15,4)
   , Juros numeric(15,4)
   , Adiantamento boolean
   , UsaDiscriminacao boolean
   , IDDocumentoRateado text
   , ModoExibicaoDesconto character varying(1)
   , ModoExibicaoJuros character varying(1)
   , ModoExibicaoMulta character varying(1)
   , valorvariacaocambialativa numeric
   , valorvariacaocambialpassiva numeric
   , DataCompetencia date
   , UsuarioResponsavel text
   , Previsto boolean
   , IdConjuntoAnexo uuid
   , OutrasRetencoes numeric(20,2)
   , DescricaoOutrasRetencoes character varying(255)
   , PercentualOutrosAcrescimos numeric(15,4)
   , OutrosAcrescimos numeric(15,4)
   , ModoExibicaoOutrosAcrescimos character varying(1)
   , Contabilizar boolean
   , Contabilizar_Baixa boolean
   , NumeroExterno character varying(255)
   , Estorno boolean
   , id_titulo_estorno uuid
   , tipoestorno integer
   , pisestornado numeric
   , cofinsestornado numeric
   , csllestornado numeric
   , irestornado numeric
   , issestornado numeric
   , inssestornado numeric
   , usamoedaestrangeira boolean
   , moedaestrangeira uuid
   , cotacao numeric
   , valornamoedaestrangeira numeric
   , CFOPCodigo character varying(50)
   , PrestacaoDeConta text
   , DataCancelamento date
   , id_tipo_despesa_receita uuid
	
);
