CREATE TYPE financas.TTitulo AS (
     Id uuid
   , Estabelecimento text
   , Pessoa text
   , Conta text
   , LayoutCobranca text
   , LayoutPagamento text
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
   , TaxaBancaria numeric(20,2)
   , NossoNumero character varying(30)
   , LinhaDigitavel character varying(54)
   , CodigoBarras character varying(44)
   , InformacaoCartao financas.TInformacaoCartao
   , NumeroVezesCartao integer
   , ValorTarifaCartao numeric(20,2)
   , AutorizacaoCartao character varying(30)
   , DocumentoCartao character varying(30)
   , NumeroParcelaCartao integer
   , ValorParcelaCartao numeric(20,2)
   , NumeroNota character varying(20)
   , ModeloDocumentoFiscal integer
   , SerieDocumentoFiscal character varying(3)
   , SubserieDocumentoFiscal character varying(2)
   , ServicoBancario text
   , FinalidadePagamento text
   , TipoContaPagamento text
   , DataAgendamento date
   , Vendedores financas.TVendedorTitulo[]
   , DataProvisoria boolean
   , ValorProvisorio boolean
   , TipoOrigem integer
   , Contrato text
   , DataAutorizacaoCartao date
   , FormaPagamento text
   , Fatura text
   , id_renegociacao_gerada uuid
   , id_renegociacao_geradora uuid
   , valorvariacaocambialativa numeric
   , valorvariacaocambialpassiva numeric
   , TipoCredito integer
   , CreditoIdentificado integer
   , OutrasRetencoes numeric(20,2)
   , DescricaoOutrasRetencoes character varying(255)
	
);
