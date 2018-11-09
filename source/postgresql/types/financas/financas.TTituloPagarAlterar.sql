CREATE TYPE financas.TTituloPagarAlterar AS (
     Id uuid
   , Estabelecimento text
   , Pessoa text
   , Conta text
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
   , LinhaDigitavel character varying(54)
   , CodigoBarras character varying(44)
   , NumeroNota character varying(20)
   , ModeloDocumentoFiscal integer
   , SerieDocumentoFiscal character varying(3)
   , SubserieDocumentoFiscal character varying(2)
   , ServicoBancario text
   , FormaPagamento text
   , FinalidadePagamento text
   , TipoContaPagamento text
   , DataAgendamento date
   , DataProvisoria boolean
   , ValorProvisorio boolean
   , TipoOrigem integer
   , Contrato text
   , IRRetidoNF numeric(20,2)
   , INSSRetidoNF numeric(20,2)
   , BemPatrimonial text
   , Desconto numeric(15,4)
   , Multa numeric(15,4)
   , Juros numeric(15,4)
   , Adiantamento boolean
   , UsaDiscriminacao boolean
   , IDDocumentoRateado text
   , DebitoAutomatico boolean
   , PercentualOutrosAcrescimos numeric(15,4)
   , OutrosAcrescimos numeric(15,4)
   , ModoExibicaoDesconto character varying(1)
   , ModoExibicaoJuros character varying(1)
   , ModoExibicaoMulta character varying(1)
   , ModoExibicaoOutrosAcrescimos character varying(1)
   , ModoExibicaoCodigoBarras character varying(1)
   , id_servicobanco text
   , id_formapagamentobanco text
   , id_finalidadepagamentobanco text
   , id_tipocontapagamentobanco text
   , DataCompetenciaTributos date
   , DataProcessamentoBoleto date
   , NossoNumero character varying(30)
   , CodigoDoCedenteBoleto character varying(7)
   , NumeroDocumentoBoleto character varying(20)
   , EspecieBoleto character varying(3)
   , AceiteBoleto boolean
   , UsoBancoBoleto character varying(10)
   , CarteiraBoleto character varying(5)
   , CodigodaReceitaTributos character varying(6)
   , NumeroDeReferenciaDARF character varying(17)
   , valorreceitabrutaacumuladadarfsimples numeric(20,2)
   , percreceitabrutaacumuladadarfsimples numeric(14, 4)
   , numerodeclaracaogare character varying(12)
   , numeroetiquetagare character varying(13)
   , numerodaparcelagare character varying(13)
   , codigomunicipioipva character varying(5)
   , codigorenavam character varying(11)
   , opcaodepagamentoipva character varying(1)
   , opcaoretiradacrlv character varying(1)
   , placaveiculoipva character varying(7)
   , unidadefederacaoipva character varying(2)
   , identificadorfgts character varying(16)
   , lacreconectividadesocial character varying(11)
   , numerodocumentodarj character varying(16)
   , Situacao integer
   , ID_RENEGOCIACAO_GERADORA uuid
   , valorvariacaocambialativa numeric
   , valorvariacaocambialpassiva numeric
   , Emprestimo boolean
   , ID_ContaEmprestimo text
   , DataCompetencia date
   , UsuarioResponsavel text
   , id_servicons text
   , id_formapagamentons text
   , id_finalidadepagamentons text
   , id_tipocontapagamentons text
   , tipoordempagamento integer
   , TituloCoberturaConta boolean
   , GrupoEmpresarialCobertura text
   , ContaCobertura text
   , IDDocumentoRateadoCobertura text
   , PrestacaoDeConta text
   , contafornecedor text
   , Previsto boolean
   , CFOPCodigo character varying(50)
   , IdConjuntoAnexo uuid
   , OutrasRetencoes numeric(20,2)
   , DescricaoOutrasRetencoes character varying(255)
   , Contabilizar boolean
   , Contabilizar_Baixa boolean
   , RazaoSocialFactoring character varying(150)
   , NumeroDocumentoFactoring character varying(30)
   , RazaoSocialGPS character varying(150)
   , NumeroDocumentoGPS character varying(30)
   , Estorno boolean
   , id_titulo_estorno uuid
   , tipoestorno integer
   , pisestornado numeric
   , cofinsestornado numeric
   , csllestornado numeric
   , irestornado numeric
   , issestornado numeric
   , inssestornado numeric
   , NotaFutura boolean
   , ValorASerReembolsado boolean
   , id_pessoa_reembolso uuid
   , usamoedaestrangeira boolean
   , moedaestrangeira uuid
   , cotacao numeric
   , valornamoedaestrangeira numeric
   , mesanocompetenciagps character varying()
   , outrasentidadesgps numeric
   , id_titulo_origemcomissao uuid
   , DataCancelamento date
   , id_tipo_despesa_receita uuid
	
);
