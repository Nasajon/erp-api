unit api.model.financas.TituloPagar;

interface

	uses
		  {$IFDEF VER310}System.JSON,{$ENDIF}Data.DBXJson,
		
		  Nasajon.Sdk.Helpers.Json.Serializer,
  		Nasajon.Sdk.Helpers.Rest.Json.Generics,
  		
  		nsbroker.model.conteudomensagem,
  		nsbroker.model.conteudomensagem_api,
  		nsbroker.utils.buildconteudomensagem,
  		nsbroker.constants,
  		
      api.model.recibo,

  		Uni
	
  , api.model.financas.ItemRateioFinanceiro
  , System.Generics.Collections
	

	;

type TTituloPagarNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_Conta: String;
    var m_LayoutPagamento: String;
    var m_Numero: String;
    var m_Emissao: TDate;
    var m_Vencimento: TDate;
    var m_PrevisaoVencimento: TDate;
    var m_Parcela: Integer;
    var m_TotalParcelas: Integer;
    var m_Observacao: String;
    var m_Anotacoes: WideString;
    var m_ValorTitulo: Currency;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    var m_AliquotaIr: Currency;
    var m_ValorIrRetido: Currency;
    var m_AliquotaCofins: Currency;
    var m_ValorCofinsRetido: Currency;
    var m_AliquotaPis: Currency;
    var m_ValorPisRetido: Currency;
    var m_AliquotaCsll: Currency;
    var m_ValorCsllRetido: Currency;
    var m_ValorInssRetido: Currency;
    var m_AliquotaIss: Currency;
    var m_ValorIssRetido: Currency;
    var m_DataLimiteDesconto: TDate;
    var m_PercentualDesconto: Currency;
    var m_DataInicioMulta: TDate;
    var m_PercentualMulta: Currency;
    var m_PercentualJurosDiario: Currency;
    var m_LinhaDigitavel: String;
    var m_CodigoBarras: String;
    var m_NumeroNota: String;
    var m_ModeloDocumentoFiscal: Integer;
    var m_SerieDocumentoFiscal: String;
    var m_SubserieDocumentoFiscal: String;
    var m_ServicoBancario: String;
    var m_FormaPagamento: String;
    var m_FinalidadePagamento: String;
    var m_TipoContaPagamento: String;
    var m_DataAgendamento: TDate;
    var m_DataProvisoria: Boolean;
    var m_ValorProvisorio: Boolean;
    var m_TipoOrigem: Integer;
    var m_Contrato: String;
    var m_IRRetidoNF: Currency;
    var m_INSSRetidoNF: Currency;
    var m_BemPatrimonial: String;
    var m_Desconto: Currency;
    var m_Multa: Currency;
    var m_Juros: Currency;
    var m_Adiantamento: Boolean;
    var m_UsaDiscriminacao: Boolean;
    var m_IDDocumentoRateado: String;
    var m_DebitoAutomatico: Boolean;
    var m_PercentualOutrosAcrescimos: Currency;
    var m_OutrosAcrescimos: Currency;
    var m_ModoExibicaoDesconto: String;
    var m_ModoExibicaoJuros: String;
    var m_ModoExibicaoMulta: String;
    var m_ModoExibicaoOutrosAcrescimos: String;
    var m_ModoExibicaoCodigoBarras: String;
    var m_id_servicobanco: String;
    var m_id_formapagamentobanco: String;
    var m_id_finalidadepagamentobanco: String;
    var m_id_tipocontapagamentobanco: String;
    var m_DataCompetenciaTributos: TDate;
    var m_DataProcessamentoBoleto: TDate;
    var m_NossoNumero: String;
    var m_CodigoDoCedenteBoleto: String;
    var m_NumeroDocumentoBoleto: String;
    var m_EspecieBoleto: String;
    var m_AceiteBoleto: Boolean;
    var m_UsoBancoBoleto: String;
    var m_CarteiraBoleto: String;
    var m_CodigodaReceitaTributos: String;
    var m_NumeroDeReferenciaDARF: String;
    var m_valorreceitabrutaacumuladadarfsimples: Currency;
    var m_percreceitabrutaacumuladadarfsimples: Currency;
    var m_numerodeclaracaogare: String;
    var m_numeroetiquetagare: String;
    var m_numerodaparcelagare: String;
    var m_codigomunicipioipva: String;
    var m_codigorenavam: String;
    var m_opcaodepagamentoipva: String;
    var m_opcaoretiradacrlv: String;
    var m_placaveiculoipva: String;
    var m_unidadefederacaoipva: String;
    var m_identificadorfgts: String;
    var m_lacreconectividadesocial: String;
    var m_numerodocumentodarj: String;
    var m_Situacao: Integer;
    var m_ID_RENEGOCIACAO_GERADORA: String;
    var m_valorvariacaocambialativa: Currency;
    var m_valorvariacaocambialpassiva: Currency;
    var m_Emprestimo: Boolean;
    var m_ID_ContaEmprestimo: String;
    var m_IdConjuntoAnexo: String;
    var m_DataCompetencia: TDate;
    var m_UsuarioResponsavel: String;
    var m_ChavePersona: String;
    var m_id_servicons: String;
    var m_id_formapagamentons: String;
    var m_id_finalidadepagamentons: String;
    var m_id_tipocontapagamentons: String;
    var m_tipoordempagamento: Integer;
    var m_id_template: String;
    var m_UsuarioCadastro: String;
    var m_TituloCoberturaConta: Boolean;
    var m_GrupoEmpresarialCobertura: String;
    var m_ContaCobertura: String;
    var m_IDDocumentoRateadoCobertura: String;
    var m_PrestacaoDeConta: String;
    var m_contafornecedor: String;
    var m_Previsto: Boolean;
    var m_CFOPCodigo: String;
    var m_TipoCredito: Integer;
    var m_CreditoIdentificado: Integer;
    var m_Contabilizar: Boolean;
    var m_Contabilizar_Baixa: Boolean;
    var m_OutrasRetencoes: Currency;
    var m_DescricaoOutrasRetencoes: String;
    var m_id_docfis: String;
    var m_RazaoSocialFactoring: String;
    var m_NumeroDocumentoFactoring: String;
    var m_RazaoSocialGPS: String;
    var m_NumeroDocumentoGPS: String;
    var m_Estorno: Boolean;
    var m_id_titulo_estorno: String;
    var m_tipoestorno: Integer;
    var m_pisestornado: Currency;
    var m_cofinsestornado: Currency;
    var m_csllestornado: Currency;
    var m_irestornado: Currency;
    var m_issestornado: Currency;
    var m_inssestornado: Currency;
    var m_NotaFutura: Boolean;
    var m_ValorASerReembolsado: Boolean;
    var m_id_pessoa_reembolso: String;
    var m_usamoedaestrangeira: Boolean;
    var m_moedaestrangeira: String;
    var m_cotacao: Currency;
    var m_valornamoedaestrangeira: Currency;
    var m_mesanocompetenciagps: String;
    var m_outrasentidadesgps: Currency;
    var m_id_titulo_origemcomissao: String;
    var m_DataCancelamento: TDate;
    var m_id_tipo_despesa_receita: String;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getConta(): String;
    function getLayoutPagamento(): String;
    function getNumero(): String;
    function getEmissao(): TDate;
    function getVencimento(): TDate;
    function getPrevisaoVencimento(): TDate;
    function getParcela(): Integer;
    function getTotalParcelas(): Integer;
    function getObservacao(): String;
    function getAnotacoes(): WideString;
    function getValorTitulo(): Currency;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    function getAliquotaIr(): Currency;
    function getValorIrRetido(): Currency;
    function getAliquotaCofins(): Currency;
    function getValorCofinsRetido(): Currency;
    function getAliquotaPis(): Currency;
    function getValorPisRetido(): Currency;
    function getAliquotaCsll(): Currency;
    function getValorCsllRetido(): Currency;
    function getValorInssRetido(): Currency;
    function getAliquotaIss(): Currency;
    function getValorIssRetido(): Currency;
    function getDataLimiteDesconto(): TDate;
    function getPercentualDesconto(): Currency;
    function getDataInicioMulta(): TDate;
    function getPercentualMulta(): Currency;
    function getPercentualJurosDiario(): Currency;
    function getLinhaDigitavel(): String;
    function getCodigoBarras(): String;
    function getNumeroNota(): String;
    function getModeloDocumentoFiscal(): Integer;
    function getSerieDocumentoFiscal(): String;
    function getSubserieDocumentoFiscal(): String;
    function getServicoBancario(): String;
    function getFormaPagamento(): String;
    function getFinalidadePagamento(): String;
    function getTipoContaPagamento(): String;
    function getDataAgendamento(): TDate;
    function getDataProvisoria(): Boolean;
    function getValorProvisorio(): Boolean;
    function getTipoOrigem(): Integer;
    function getContrato(): String;
    function getIRRetidoNF(): Currency;
    function getINSSRetidoNF(): Currency;
    function getBemPatrimonial(): String;
    function getDesconto(): Currency;
    function getMulta(): Currency;
    function getJuros(): Currency;
    function getAdiantamento(): Boolean;
    function getUsaDiscriminacao(): Boolean;
    function getIDDocumentoRateado(): String;
    function getDebitoAutomatico(): Boolean;
    function getPercentualOutrosAcrescimos(): Currency;
    function getOutrosAcrescimos(): Currency;
    function getModoExibicaoDesconto(): String;
    function getModoExibicaoJuros(): String;
    function getModoExibicaoMulta(): String;
    function getModoExibicaoOutrosAcrescimos(): String;
    function getModoExibicaoCodigoBarras(): String;
    function getid_servicobanco(): String;
    function getid_formapagamentobanco(): String;
    function getid_finalidadepagamentobanco(): String;
    function getid_tipocontapagamentobanco(): String;
    function getDataCompetenciaTributos(): TDate;
    function getDataProcessamentoBoleto(): TDate;
    function getNossoNumero(): String;
    function getCodigoDoCedenteBoleto(): String;
    function getNumeroDocumentoBoleto(): String;
    function getEspecieBoleto(): String;
    function getAceiteBoleto(): Boolean;
    function getUsoBancoBoleto(): String;
    function getCarteiraBoleto(): String;
    function getCodigodaReceitaTributos(): String;
    function getNumeroDeReferenciaDARF(): String;
    function getvalorreceitabrutaacumuladadarfsimples(): Currency;
    function getpercreceitabrutaacumuladadarfsimples(): Currency;
    function getnumerodeclaracaogare(): String;
    function getnumeroetiquetagare(): String;
    function getnumerodaparcelagare(): String;
    function getcodigomunicipioipva(): String;
    function getcodigorenavam(): String;
    function getopcaodepagamentoipva(): String;
    function getopcaoretiradacrlv(): String;
    function getplacaveiculoipva(): String;
    function getunidadefederacaoipva(): String;
    function getidentificadorfgts(): String;
    function getlacreconectividadesocial(): String;
    function getnumerodocumentodarj(): String;
    function getSituacao(): Integer;
    function getID_RENEGOCIACAO_GERADORA(): String;
    function getvalorvariacaocambialativa(): Currency;
    function getvalorvariacaocambialpassiva(): Currency;
    function getEmprestimo(): Boolean;
    function getID_ContaEmprestimo(): String;
    function getIdConjuntoAnexo(): String;
    function getDataCompetencia(): TDate;
    function getUsuarioResponsavel(): String;
    function getChavePersona(): String;
    function getid_servicons(): String;
    function getid_formapagamentons(): String;
    function getid_finalidadepagamentons(): String;
    function getid_tipocontapagamentons(): String;
    function gettipoordempagamento(): Integer;
    function getid_template(): String;
    function getUsuarioCadastro(): String;
    function getTituloCoberturaConta(): Boolean;
    function getGrupoEmpresarialCobertura(): String;
    function getContaCobertura(): String;
    function getIDDocumentoRateadoCobertura(): String;
    function getPrestacaoDeConta(): String;
    function getcontafornecedor(): String;
    function getPrevisto(): Boolean;
    function getCFOPCodigo(): String;
    function getTipoCredito(): Integer;
    function getCreditoIdentificado(): Integer;
    function getContabilizar(): Boolean;
    function getContabilizar_Baixa(): Boolean;
    function getOutrasRetencoes(): Currency;
    function getDescricaoOutrasRetencoes(): String;
    function getid_docfis(): String;
    function getRazaoSocialFactoring(): String;
    function getNumeroDocumentoFactoring(): String;
    function getRazaoSocialGPS(): String;
    function getNumeroDocumentoGPS(): String;
    function getEstorno(): Boolean;
    function getid_titulo_estorno(): String;
    function gettipoestorno(): Integer;
    function getpisestornado(): Currency;
    function getcofinsestornado(): Currency;
    function getcsllestornado(): Currency;
    function getirestornado(): Currency;
    function getissestornado(): Currency;
    function getinssestornado(): Currency;
    function getNotaFutura(): Boolean;
    function getValorASerReembolsado(): Boolean;
    function getid_pessoa_reembolso(): String;
    function getusamoedaestrangeira(): Boolean;
    function getmoedaestrangeira(): String;
    function getcotacao(): Currency;
    function getvalornamoedaestrangeira(): Currency;
    function getmesanocompetenciagps(): String;
    function getoutrasentidadesgps(): Currency;
    function getid_titulo_origemcomissao(): String;
    function getDataCancelamento(): TDate;
    function getid_tipo_despesa_receita(): String;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setConta(const a_Value: String);
    procedure setLayoutPagamento(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setEmissao(const a_Value: TDate);
    procedure setVencimento(const a_Value: TDate);
    procedure setPrevisaoVencimento(const a_Value: TDate);
    procedure setParcela(const a_Value: Integer);
    procedure setTotalParcelas(const a_Value: Integer);
    procedure setObservacao(const a_Value: String);
    procedure setAnotacoes(const a_Value: WideString);
    procedure setValorTitulo(const a_Value: Currency);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setAliquotaIr(const a_Value: Currency);
    procedure setValorIrRetido(const a_Value: Currency);
    procedure setAliquotaCofins(const a_Value: Currency);
    procedure setValorCofinsRetido(const a_Value: Currency);
    procedure setAliquotaPis(const a_Value: Currency);
    procedure setValorPisRetido(const a_Value: Currency);
    procedure setAliquotaCsll(const a_Value: Currency);
    procedure setValorCsllRetido(const a_Value: Currency);
    procedure setValorInssRetido(const a_Value: Currency);
    procedure setAliquotaIss(const a_Value: Currency);
    procedure setValorIssRetido(const a_Value: Currency);
    procedure setDataLimiteDesconto(const a_Value: TDate);
    procedure setPercentualDesconto(const a_Value: Currency);
    procedure setDataInicioMulta(const a_Value: TDate);
    procedure setPercentualMulta(const a_Value: Currency);
    procedure setPercentualJurosDiario(const a_Value: Currency);
    procedure setLinhaDigitavel(const a_Value: String);
    procedure setCodigoBarras(const a_Value: String);
    procedure setNumeroNota(const a_Value: String);
    procedure setModeloDocumentoFiscal(const a_Value: Integer);
    procedure setSerieDocumentoFiscal(const a_Value: String);
    procedure setSubserieDocumentoFiscal(const a_Value: String);
    procedure setServicoBancario(const a_Value: String);
    procedure setFormaPagamento(const a_Value: String);
    procedure setFinalidadePagamento(const a_Value: String);
    procedure setTipoContaPagamento(const a_Value: String);
    procedure setDataAgendamento(const a_Value: TDate);
    procedure setDataProvisoria(const a_Value: Boolean);
    procedure setValorProvisorio(const a_Value: Boolean);
    procedure setTipoOrigem(const a_Value: Integer);
    procedure setContrato(const a_Value: String);
    procedure setIRRetidoNF(const a_Value: Currency);
    procedure setINSSRetidoNF(const a_Value: Currency);
    procedure setBemPatrimonial(const a_Value: String);
    procedure setDesconto(const a_Value: Currency);
    procedure setMulta(const a_Value: Currency);
    procedure setJuros(const a_Value: Currency);
    procedure setAdiantamento(const a_Value: Boolean);
    procedure setUsaDiscriminacao(const a_Value: Boolean);
    procedure setIDDocumentoRateado(const a_Value: String);
    procedure setDebitoAutomatico(const a_Value: Boolean);
    procedure setPercentualOutrosAcrescimos(const a_Value: Currency);
    procedure setOutrosAcrescimos(const a_Value: Currency);
    procedure setModoExibicaoDesconto(const a_Value: String);
    procedure setModoExibicaoJuros(const a_Value: String);
    procedure setModoExibicaoMulta(const a_Value: String);
    procedure setModoExibicaoOutrosAcrescimos(const a_Value: String);
    procedure setModoExibicaoCodigoBarras(const a_Value: String);
    procedure setid_servicobanco(const a_Value: String);
    procedure setid_formapagamentobanco(const a_Value: String);
    procedure setid_finalidadepagamentobanco(const a_Value: String);
    procedure setid_tipocontapagamentobanco(const a_Value: String);
    procedure setDataCompetenciaTributos(const a_Value: TDate);
    procedure setDataProcessamentoBoleto(const a_Value: TDate);
    procedure setNossoNumero(const a_Value: String);
    procedure setCodigoDoCedenteBoleto(const a_Value: String);
    procedure setNumeroDocumentoBoleto(const a_Value: String);
    procedure setEspecieBoleto(const a_Value: String);
    procedure setAceiteBoleto(const a_Value: Boolean);
    procedure setUsoBancoBoleto(const a_Value: String);
    procedure setCarteiraBoleto(const a_Value: String);
    procedure setCodigodaReceitaTributos(const a_Value: String);
    procedure setNumeroDeReferenciaDARF(const a_Value: String);
    procedure setvalorreceitabrutaacumuladadarfsimples(const a_Value: Currency);
    procedure setpercreceitabrutaacumuladadarfsimples(const a_Value: Currency);
    procedure setnumerodeclaracaogare(const a_Value: String);
    procedure setnumeroetiquetagare(const a_Value: String);
    procedure setnumerodaparcelagare(const a_Value: String);
    procedure setcodigomunicipioipva(const a_Value: String);
    procedure setcodigorenavam(const a_Value: String);
    procedure setopcaodepagamentoipva(const a_Value: String);
    procedure setopcaoretiradacrlv(const a_Value: String);
    procedure setplacaveiculoipva(const a_Value: String);
    procedure setunidadefederacaoipva(const a_Value: String);
    procedure setidentificadorfgts(const a_Value: String);
    procedure setlacreconectividadesocial(const a_Value: String);
    procedure setnumerodocumentodarj(const a_Value: String);
    procedure setSituacao(const a_Value: Integer);
    procedure setID_RENEGOCIACAO_GERADORA(const a_Value: String);
    procedure setvalorvariacaocambialativa(const a_Value: Currency);
    procedure setvalorvariacaocambialpassiva(const a_Value: Currency);
    procedure setEmprestimo(const a_Value: Boolean);
    procedure setID_ContaEmprestimo(const a_Value: String);
    procedure setIdConjuntoAnexo(const a_Value: String);
    procedure setDataCompetencia(const a_Value: TDate);
    procedure setUsuarioResponsavel(const a_Value: String);
    procedure setChavePersona(const a_Value: String);
    procedure setid_servicons(const a_Value: String);
    procedure setid_formapagamentons(const a_Value: String);
    procedure setid_finalidadepagamentons(const a_Value: String);
    procedure setid_tipocontapagamentons(const a_Value: String);
    procedure settipoordempagamento(const a_Value: Integer);
    procedure setid_template(const a_Value: String);
    procedure setUsuarioCadastro(const a_Value: String);
    procedure setTituloCoberturaConta(const a_Value: Boolean);
    procedure setGrupoEmpresarialCobertura(const a_Value: String);
    procedure setContaCobertura(const a_Value: String);
    procedure setIDDocumentoRateadoCobertura(const a_Value: String);
    procedure setPrestacaoDeConta(const a_Value: String);
    procedure setcontafornecedor(const a_Value: String);
    procedure setPrevisto(const a_Value: Boolean);
    procedure setCFOPCodigo(const a_Value: String);
    procedure setTipoCredito(const a_Value: Integer);
    procedure setCreditoIdentificado(const a_Value: Integer);
    procedure setContabilizar(const a_Value: Boolean);
    procedure setContabilizar_Baixa(const a_Value: Boolean);
    procedure setOutrasRetencoes(const a_Value: Currency);
    procedure setDescricaoOutrasRetencoes(const a_Value: String);
    procedure setid_docfis(const a_Value: String);
    procedure setRazaoSocialFactoring(const a_Value: String);
    procedure setNumeroDocumentoFactoring(const a_Value: String);
    procedure setRazaoSocialGPS(const a_Value: String);
    procedure setNumeroDocumentoGPS(const a_Value: String);
    procedure setEstorno(const a_Value: Boolean);
    procedure setid_titulo_estorno(const a_Value: String);
    procedure settipoestorno(const a_Value: Integer);
    procedure setpisestornado(const a_Value: Currency);
    procedure setcofinsestornado(const a_Value: Currency);
    procedure setcsllestornado(const a_Value: Currency);
    procedure setirestornado(const a_Value: Currency);
    procedure setissestornado(const a_Value: Currency);
    procedure setinssestornado(const a_Value: Currency);
    procedure setNotaFutura(const a_Value: Boolean);
    procedure setValorASerReembolsado(const a_Value: Boolean);
    procedure setid_pessoa_reembolso(const a_Value: String);
    procedure setusamoedaestrangeira(const a_Value: Boolean);
    procedure setmoedaestrangeira(const a_Value: String);
    procedure setcotacao(const a_Value: Currency);
    procedure setvalornamoedaestrangeira(const a_Value: Currency);
    procedure setmesanocompetenciagps(const a_Value: String);
    procedure setoutrasentidadesgps(const a_Value: Currency);
    procedure setid_titulo_origemcomissao(const a_Value: String);
    procedure setDataCancelamento(const a_Value: TDate);
    procedure setid_tipo_despesa_receita(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    /// <summary>
/// Indica o layout de pagamento a ser utilizado na integração bancária. Caso não seja informado o Guid, passar a descrição.
    /// </summary>
    [NasajonSerializeAttribute('layoutpagamento')]
    property layoutpagamento: String read getLayoutPagamento write setLayoutPagamento;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getEmissao write setEmissao;

    [NasajonSerializeAttribute('vencimento')]
    property vencimento: TDate read getVencimento write setVencimento;

    /// <summary>
/// Indica a previsão do vencimento. Utilizado no fluxo de caixa, caso não informado assume a data de vencimento.
    /// </summary>
    [NasajonSerializeAttribute('previsaovencimento')]
    property previsaovencimento: TDate read getPrevisaoVencimento write setPrevisaoVencimento;

    [NasajonSerializeAttribute('parcela')]
    property parcela: Integer read getParcela write setParcela;

    [NasajonSerializeAttribute('totalparcelas')]
    property totalparcelas: Integer read getTotalParcelas write setTotalParcelas;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

    [NasajonSerializeAttribute('anotacoes')]
    property anotacoes: WideString read getAnotacoes write setAnotacoes;

    [NasajonSerializeAttribute('valortitulo')]
    property valortitulo: Currency read getValorTitulo write setValorTitulo;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira e centro de custo.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    [NasajonSerializeAttribute('aliquotair')]
    property aliquotair: Currency read getAliquotaIr write setAliquotaIr;

    [NasajonSerializeAttribute('valorirretido')]
    property valorirretido: Currency read getValorIrRetido write setValorIrRetido;

    [NasajonSerializeAttribute('aliquotacofins')]
    property aliquotacofins: Currency read getAliquotaCofins write setAliquotaCofins;

    [NasajonSerializeAttribute('valorcofinsretido')]
    property valorcofinsretido: Currency read getValorCofinsRetido write setValorCofinsRetido;

    [NasajonSerializeAttribute('aliquotapis')]
    property aliquotapis: Currency read getAliquotaPis write setAliquotaPis;

    [NasajonSerializeAttribute('valorpisretido')]
    property valorpisretido: Currency read getValorPisRetido write setValorPisRetido;

    [NasajonSerializeAttribute('aliquotacsll')]
    property aliquotacsll: Currency read getAliquotaCsll write setAliquotaCsll;

    [NasajonSerializeAttribute('valorcsllretido')]
    property valorcsllretido: Currency read getValorCsllRetido write setValorCsllRetido;

    [NasajonSerializeAttribute('valorinssretido')]
    property valorinssretido: Currency read getValorInssRetido write setValorInssRetido;

    [NasajonSerializeAttribute('aliquotaiss')]
    property aliquotaiss: Currency read getAliquotaIss write setAliquotaIss;

    [NasajonSerializeAttribute('valorissretido')]
    property valorissretido: Currency read getValorIssRetido write setValorIssRetido;

    [NasajonSerializeAttribute('datalimitedesconto')]
    property datalimitedesconto: TDate read getDataLimiteDesconto write setDataLimiteDesconto;

    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    [NasajonSerializeAttribute('datainiciomulta')]
    property datainiciomulta: TDate read getDataInicioMulta write setDataInicioMulta;

    [NasajonSerializeAttribute('percentualmulta')]
    property percentualmulta: Currency read getPercentualMulta write setPercentualMulta;

    [NasajonSerializeAttribute('percentualjurosdiario')]
    property percentualjurosdiario: Currency read getPercentualJurosDiario write setPercentualJurosDiario;

    /// <summary>
/// Indica a linha digitável do título. Utilizado na integração bancária, via borderô eletrônico.
    /// </summary>
    [NasajonSerializeAttribute('linhadigitavel')]
    property linhadigitavel: String read getLinhaDigitavel write setLinhaDigitavel;

    /// <summary>
/// Indica o código de barras do título. Utilizado na integração bancária, via borderô eletrônico.
    /// </summary>
    [NasajonSerializeAttribute('codigobarras')]
    property codigobarras: String read getCodigoBarras write setCodigoBarras;

    /// <summary>
/// Indica o número da nota que deu origem ao título.
    /// </summary>
    [NasajonSerializeAttribute('numeronota')]
    property numeronota: String read getNumeroNota write setNumeroNota;

    /// <summary>
/// Indica o modelo da nota que deu origem ao título. 
///                              1-Nenhum Modelo de Documento Fiscal,
///                                      2-Nota Fiscal (Saída ou Entrada de NF emitida pelo fornecedor,
///                                      3-Nota Fiscal Eletrônica,
///                                      4-Nota Fiscal emissão própria na entrada, marcada ENTRADA [X],
///                                      5-Nota Fiscal de Venda ao Consumidor,
///                                      6-Nota Fiscal de Produtor (Rural), 
///                                      7-Nota Fiscal de Serviço,
///                                      8-Nota Fiscal Fatura de Serviço,
///                                      9-Nota Fiscal Simplificada de Serviço,
///                                      10-Nota Eletrônica de Serviços,
///                                      11-Conhecimento Aéreo,
///                                      12-Conhecimento de Transporte Aquaviário,
///                                      13-Conhecimento de Transporte Eletrônico,
///                                      14-Conhecimento de Transporte Ferroviário,
///                                      15-Nota Fiscal De Transporte Ferroviário,
///                                      16-Conhecimento de Transporte Rodoviário,
///                                      17-Conhecimento de Transporte Multimodal de Carga,
///                                      18-Nota Fiscal de Serviço de Transporte,
///                                      19-Conta de Energia Elétrica,
///                                      20-Nota Fiscal Serviço de Telecomunicação,
///                                      21-Conta Fornecimento de Gás Canalizado,
///                                      22-Conta Fornecimento de Água Canalizada,
///                                      23-Bilhete de Passagem Aquaviário,
///                                      24-Bilhete de Passagem Ferroviário,
///                                      25-Bilhete de Passagem e Nota de Bagagem,
///                                      26-Bilhete de Passagem Rodoviário,
///                                      27-Resumo do Movimento Diário (Transporte de Passageiros)
    /// </summary>
    [NasajonSerializeAttribute('modelodocumentofiscal')]
    property modelodocumentofiscal: Integer read getModeloDocumentoFiscal write setModeloDocumentoFiscal;

    /// <summary>
/// Indica a serie da nota que deu origem ao título.
    /// </summary>
    [NasajonSerializeAttribute('seriedocumentofiscal')]
    property seriedocumentofiscal: String read getSerieDocumentoFiscal write setSerieDocumentoFiscal;

    /// <summary>
/// Indica a sub-serie da nota que deu origem ao título.
    /// </summary>
    [NasajonSerializeAttribute('subseriedocumentofiscal')]
    property subseriedocumentofiscal: String read getSubserieDocumentoFiscal write setSubserieDocumentoFiscal;

    /// <summary>
/// Indica os serviços disponiveis para o layout de pagamento do banco informado no título. Para preenchimento deste campo 
///       vide a tabela financas.servicosbancos. Pode-se utilizar o Guid ou o código de um registro disponível.
    /// </summary>
    [NasajonSerializeAttribute('servicobancario')]
    property servicobancario: String read getServicoBancario write setServicoBancario;

    /// <summary>
/// Indica a forma de pagamento do título.
    /// </summary>
    [NasajonSerializeAttribute('formapagamento')]
    property formapagamento: String read getFormaPagamento write setFormaPagamento;

    /// <summary>
/// Indica as finalidades de pagamentos suportada pela forma de pagamento escolhida. Para preenchimento deste campo
///       vide a tabela financas.finalidadespagamentosbancos. Pode-se utilizar o Guid ou o código de um registro disponível.
    /// </summary>
    [NasajonSerializeAttribute('finalidadepagamento')]
    property finalidadepagamento: String read getFinalidadePagamento write setFinalidadePagamento;

    /// <summary>
/// Indica os tipos de contas suportada pela forma de pagamento escolhida. Para preenchimento deste campo
///       vide a tabela financas.tiposcontaspagamentosbancos. Pode-se utilizar o Guid ou o código de um registro disponível.
    /// </summary>
    [NasajonSerializeAttribute('tipocontapagamento')]
    property tipocontapagamento: String read getTipoContaPagamento write setTipoContaPagamento;

    /// <summary>
/// Indica a data do agendamento do pagamento do título. Utilizado no borderô eletrônico.
    /// </summary>
    [NasajonSerializeAttribute('dataagendamento')]
    property dataagendamento: TDate read getDataAgendamento write setDataAgendamento;

    /// <summary>
/// Indica que as datas de emissão e vencimento do título são provisórias, quando marcado(true).
    /// </summary>
    [NasajonSerializeAttribute('dataprovisoria')]
    property dataprovisoria: Boolean read getDataProvisoria write setDataProvisoria;

    /// <summary>
/// Indica que o valor do título é provisório, quando marcado(true).
    /// </summary>
    [NasajonSerializeAttribute('valorprovisorio')]
    property valorprovisorio: Boolean read getValorProvisorio write setValorProvisorio;

    /// <summary>
/// Indica a origem do titulo. Quando não informado, assumirá 0 - Manutenção
///                              23 - Previsão
    /// </summary>
    [NasajonSerializeAttribute('tipoorigem')]
    property tipoorigem: Integer read getTipoOrigem write setTipoOrigem;

    [NasajonSerializeAttribute('contrato')]
    property contrato: String read getContrato write setContrato;

    /// <summary>
/// Indica o valor do IR Retido na nota.
    /// </summary>
    [NasajonSerializeAttribute('irretidonf')]
    property irretidonf: Currency read getIRRetidoNF write setIRRetidoNF;

    /// <summary>
/// Indica o valor do INSS Retido na nota.
    /// </summary>
    [NasajonSerializeAttribute('inssretidonf')]
    property inssretidonf: Currency read getINSSRetidoNF write setINSSRetidoNF;

    [NasajonSerializeAttribute('bempatrimonial')]
    property bempatrimonial: String read getBemPatrimonial write setBemPatrimonial;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getDesconto write setDesconto;

    [NasajonSerializeAttribute('multa')]
    property multa: Currency read getMulta write setMulta;

    [NasajonSerializeAttribute('juros')]
    property juros: Currency read getJuros write setJuros;

    [NasajonSerializeAttribute('adiantamento')]
    property adiantamento: Boolean read getAdiantamento write setAdiantamento;

    [NasajonSerializeAttribute('usadiscriminacao')]
    property usadiscriminacao: Boolean read getUsaDiscriminacao write setUsaDiscriminacao;

    [NasajonSerializeAttribute('iddocumentorateado')]
    property iddocumentorateado: String read getIDDocumentoRateado write setIDDocumentoRateado;

    [NasajonSerializeAttribute('debitoautomatico')]
    property debitoautomatico: Boolean read getDebitoAutomatico write setDebitoAutomatico;

    [NasajonSerializeAttribute('percentualoutrosacrescimos')]
    property percentualoutrosacrescimos: Currency read getPercentualOutrosAcrescimos write setPercentualOutrosAcrescimos;

    [NasajonSerializeAttribute('outrosacrescimos')]
    property outrosacrescimos: Currency read getOutrosAcrescimos write setOutrosAcrescimos;

    [NasajonSerializeAttribute('modoexibicaodesconto')]
    property modoexibicaodesconto: String read getModoExibicaoDesconto write setModoExibicaoDesconto;

    [NasajonSerializeAttribute('modoexibicaojuros')]
    property modoexibicaojuros: String read getModoExibicaoJuros write setModoExibicaoJuros;

    [NasajonSerializeAttribute('modoexibicaomulta')]
    property modoexibicaomulta: String read getModoExibicaoMulta write setModoExibicaoMulta;

    [NasajonSerializeAttribute('modoexibicaooutrosacrescimos')]
    property modoexibicaooutrosacrescimos: String read getModoExibicaoOutrosAcrescimos write setModoExibicaoOutrosAcrescimos;

    [NasajonSerializeAttribute('modoexibicaocodigobarras')]
    property modoexibicaocodigobarras: String read getModoExibicaoCodigoBarras write setModoExibicaoCodigoBarras;

    [NasajonSerializeAttribute('id_servicobanco')]
    property id_servicobanco: String read getid_servicobanco write setid_servicobanco;

    /// <summary>
/// Indica as modalidades de pagamentos suportada pelo serviço bancário escolhido. Para preenchimento deste campo
///       vide a tabela financas.formaspagamentosbancos. Pode-se utilizar o Guid ou o código de um registro disponível.
    /// </summary>
    [NasajonSerializeAttribute('id_formapagamentobanco')]
    property id_formapagamentobanco: String read getid_formapagamentobanco write setid_formapagamentobanco;

    [NasajonSerializeAttribute('id_finalidadepagamentobanco')]
    property id_finalidadepagamentobanco: String read getid_finalidadepagamentobanco write setid_finalidadepagamentobanco;

    [NasajonSerializeAttribute('id_tipocontapagamentobanco')]
    property id_tipocontapagamentobanco: String read getid_tipocontapagamentobanco write setid_tipocontapagamentobanco;

    [NasajonSerializeAttribute('datacompetenciatributos')]
    property datacompetenciatributos: TDate read getDataCompetenciaTributos write setDataCompetenciaTributos;

    [NasajonSerializeAttribute('dataprocessamentoboleto')]
    property dataprocessamentoboleto: TDate read getDataProcessamentoBoleto write setDataProcessamentoBoleto;

    [NasajonSerializeAttribute('nossonumero')]
    property nossonumero: String read getNossoNumero write setNossoNumero;

    [NasajonSerializeAttribute('codigodocedenteboleto')]
    property codigodocedenteboleto: String read getCodigoDoCedenteBoleto write setCodigoDoCedenteBoleto;

    [NasajonSerializeAttribute('numerodocumentoboleto')]
    property numerodocumentoboleto: String read getNumeroDocumentoBoleto write setNumeroDocumentoBoleto;

    [NasajonSerializeAttribute('especieboleto')]
    property especieboleto: String read getEspecieBoleto write setEspecieBoleto;

    [NasajonSerializeAttribute('aceiteboleto')]
    property aceiteboleto: Boolean read getAceiteBoleto write setAceiteBoleto;

    [NasajonSerializeAttribute('usobancoboleto')]
    property usobancoboleto: String read getUsoBancoBoleto write setUsoBancoBoleto;

    [NasajonSerializeAttribute('carteiraboleto')]
    property carteiraboleto: String read getCarteiraBoleto write setCarteiraBoleto;

    [NasajonSerializeAttribute('codigodareceitatributos')]
    property codigodareceitatributos: String read getCodigodaReceitaTributos write setCodigodaReceitaTributos;

    [NasajonSerializeAttribute('numerodereferenciadarf')]
    property numerodereferenciadarf: String read getNumeroDeReferenciaDARF write setNumeroDeReferenciaDARF;

    [NasajonSerializeAttribute('valorreceitabrutaacumuladadarfsimples')]
    property valorreceitabrutaacumuladadarfsimples: Currency read getvalorreceitabrutaacumuladadarfsimples write setvalorreceitabrutaacumuladadarfsimples;

    [NasajonSerializeAttribute('percreceitabrutaacumuladadarfsimples')]
    property percreceitabrutaacumuladadarfsimples: Currency read getpercreceitabrutaacumuladadarfsimples write setpercreceitabrutaacumuladadarfsimples;

    [NasajonSerializeAttribute('numerodeclaracaogare')]
    property numerodeclaracaogare: String read getnumerodeclaracaogare write setnumerodeclaracaogare;

    [NasajonSerializeAttribute('numeroetiquetagare')]
    property numeroetiquetagare: String read getnumeroetiquetagare write setnumeroetiquetagare;

    [NasajonSerializeAttribute('numerodaparcelagare')]
    property numerodaparcelagare: String read getnumerodaparcelagare write setnumerodaparcelagare;

    [NasajonSerializeAttribute('codigomunicipioipva')]
    property codigomunicipioipva: String read getcodigomunicipioipva write setcodigomunicipioipva;

    [NasajonSerializeAttribute('codigorenavam')]
    property codigorenavam: String read getcodigorenavam write setcodigorenavam;

    [NasajonSerializeAttribute('opcaodepagamentoipva')]
    property opcaodepagamentoipva: String read getopcaodepagamentoipva write setopcaodepagamentoipva;

    [NasajonSerializeAttribute('opcaoretiradacrlv')]
    property opcaoretiradacrlv: String read getopcaoretiradacrlv write setopcaoretiradacrlv;

    [NasajonSerializeAttribute('placaveiculoipva')]
    property placaveiculoipva: String read getplacaveiculoipva write setplacaveiculoipva;

    [NasajonSerializeAttribute('unidadefederacaoipva')]
    property unidadefederacaoipva: String read getunidadefederacaoipva write setunidadefederacaoipva;

    [NasajonSerializeAttribute('identificadorfgts')]
    property identificadorfgts: String read getidentificadorfgts write setidentificadorfgts;

    [NasajonSerializeAttribute('lacreconectividadesocial')]
    property lacreconectividadesocial: String read getlacreconectividadesocial write setlacreconectividadesocial;

    [NasajonSerializeAttribute('numerodocumentodarj')]
    property numerodocumentodarj: String read getnumerodocumentodarj write setnumerodocumentodarj;

    [NasajonSerializeAttribute('situacao')]
    property situacao: Integer read getSituacao write setSituacao;

    [NasajonSerializeAttribute('id_renegociacao_geradora')]
    property id_renegociacao_geradora: String read getID_RENEGOCIACAO_GERADORA write setID_RENEGOCIACAO_GERADORA;

    [NasajonSerializeAttribute('valorvariacaocambialativa')]
    property valorvariacaocambialativa: Currency read getvalorvariacaocambialativa write setvalorvariacaocambialativa;

    [NasajonSerializeAttribute('valorvariacaocambialpassiva')]
    property valorvariacaocambialpassiva: Currency read getvalorvariacaocambialpassiva write setvalorvariacaocambialpassiva;

    [NasajonSerializeAttribute('emprestimo')]
    property emprestimo: Boolean read getEmprestimo write setEmprestimo;

    [NasajonSerializeAttribute('id_contaemprestimo')]
    property id_contaemprestimo: String read getID_ContaEmprestimo write setID_ContaEmprestimo;

    [NasajonSerializeAttribute('idconjuntoanexo')]
    property idconjuntoanexo: String read getIdConjuntoAnexo write setIdConjuntoAnexo;

    [NasajonSerializeAttribute('datacompetencia')]
    property datacompetencia: TDate read getDataCompetencia write setDataCompetencia;

    [NasajonSerializeAttribute('usuarioresponsavel')]
    property usuarioresponsavel: String read getUsuarioResponsavel write setUsuarioResponsavel;

    [NasajonSerializeAttribute('chavepersona')]
    property chavepersona: String read getChavePersona write setChavePersona;

    [NasajonSerializeAttribute('id_servicons')]
    property id_servicons: String read getid_servicons write setid_servicons;

    [NasajonSerializeAttribute('id_formapagamentons')]
    property id_formapagamentons: String read getid_formapagamentons write setid_formapagamentons;

    [NasajonSerializeAttribute('id_finalidadepagamentons')]
    property id_finalidadepagamentons: String read getid_finalidadepagamentons write setid_finalidadepagamentons;

    [NasajonSerializeAttribute('id_tipocontapagamentons')]
    property id_tipocontapagamentons: String read getid_tipocontapagamentons write setid_tipocontapagamentons;

    [NasajonSerializeAttribute('tipoordempagamento')]
    property tipoordempagamento: Integer read gettipoordempagamento write settipoordempagamento;

    [NasajonSerializeAttribute('id_template')]
    property id_template: String read getid_template write setid_template;

    [NasajonSerializeAttribute('usuariocadastro')]
    property usuariocadastro: String read getUsuarioCadastro write setUsuarioCadastro;

    [NasajonSerializeAttribute('titulocoberturaconta')]
    property titulocoberturaconta: Boolean read getTituloCoberturaConta write setTituloCoberturaConta;

    [NasajonSerializeAttribute('grupoempresarialcobertura')]
    property grupoempresarialcobertura: String read getGrupoEmpresarialCobertura write setGrupoEmpresarialCobertura;

    [NasajonSerializeAttribute('contacobertura')]
    property contacobertura: String read getContaCobertura write setContaCobertura;

    [NasajonSerializeAttribute('iddocumentorateadocobertura')]
    property iddocumentorateadocobertura: String read getIDDocumentoRateadoCobertura write setIDDocumentoRateadoCobertura;

    [NasajonSerializeAttribute('prestacaodeconta')]
    property prestacaodeconta: String read getPrestacaoDeConta write setPrestacaoDeConta;

    [NasajonSerializeAttribute('contafornecedor')]
    property contafornecedor: String read getcontafornecedor write setcontafornecedor;

    /// <summary>
/// Indica que o título é previsto, quando marcado(true).
    /// </summary>
    [NasajonSerializeAttribute('previsto')]
    property previsto: Boolean read getPrevisto write setPrevisto;

    /// <summary>
/// Código do CFOP.
    /// </summary>
    [NasajonSerializeAttribute('cfopcodigo')]
    property cfopcodigo: String read getCFOPCodigo write setCFOPCodigo;

    [NasajonSerializeAttribute('tipocredito')]
    property tipocredito: Integer read getTipoCredito write setTipoCredito;

    [NasajonSerializeAttribute('creditoidentificado')]
    property creditoidentificado: Integer read getCreditoIdentificado write setCreditoIdentificado;

    [NasajonSerializeAttribute('contabilizar')]
    property contabilizar: Boolean read getContabilizar write setContabilizar;

    [NasajonSerializeAttribute('contabilizar_baixa')]
    property contabilizar_baixa: Boolean read getContabilizar_Baixa write setContabilizar_Baixa;

    [NasajonSerializeAttribute('outrasretencoes')]
    property outrasretencoes: Currency read getOutrasRetencoes write setOutrasRetencoes;

    [NasajonSerializeAttribute('descricaooutrasretencoes')]
    property descricaooutrasretencoes: String read getDescricaoOutrasRetencoes write setDescricaoOutrasRetencoes;

    /// <summary>
/// Indica o id do documento ao qual o titulo pertence.
    /// </summary>
    [NasajonSerializeAttribute('id_docfis')]
    property id_docfis: String read getid_docfis write setid_docfis;

    [NasajonSerializeAttribute('razaosocialfactoring')]
    property razaosocialfactoring: String read getRazaoSocialFactoring write setRazaoSocialFactoring;

    [NasajonSerializeAttribute('numerodocumentofactoring')]
    property numerodocumentofactoring: String read getNumeroDocumentoFactoring write setNumeroDocumentoFactoring;

    [NasajonSerializeAttribute('razaosocialgps')]
    property razaosocialgps: String read getRazaoSocialGPS write setRazaoSocialGPS;

    [NasajonSerializeAttribute('numerodocumentogps')]
    property numerodocumentogps: String read getNumeroDocumentoGPS write setNumeroDocumentoGPS;

    [NasajonSerializeAttribute('estorno')]
    property estorno: Boolean read getEstorno write setEstorno;

    [NasajonSerializeAttribute('id_titulo_estorno')]
    property id_titulo_estorno: String read getid_titulo_estorno write setid_titulo_estorno;

    [NasajonSerializeAttribute('tipoestorno')]
    property tipoestorno: Integer read gettipoestorno write settipoestorno;

    [NasajonSerializeAttribute('pisestornado')]
    property pisestornado: Currency read getpisestornado write setpisestornado;

    [NasajonSerializeAttribute('cofinsestornado')]
    property cofinsestornado: Currency read getcofinsestornado write setcofinsestornado;

    [NasajonSerializeAttribute('csllestornado')]
    property csllestornado: Currency read getcsllestornado write setcsllestornado;

    [NasajonSerializeAttribute('irestornado')]
    property irestornado: Currency read getirestornado write setirestornado;

    [NasajonSerializeAttribute('issestornado')]
    property issestornado: Currency read getissestornado write setissestornado;

    [NasajonSerializeAttribute('inssestornado')]
    property inssestornado: Currency read getinssestornado write setinssestornado;

    [NasajonSerializeAttribute('notafutura')]
    property notafutura: Boolean read getNotaFutura write setNotaFutura;

    [NasajonSerializeAttribute('valoraserreembolsado')]
    property valoraserreembolsado: Boolean read getValorASerReembolsado write setValorASerReembolsado;

    [NasajonSerializeAttribute('id_pessoa_reembolso')]
    property id_pessoa_reembolso: String read getid_pessoa_reembolso write setid_pessoa_reembolso;

    [NasajonSerializeAttribute('usamoedaestrangeira')]
    property usamoedaestrangeira: Boolean read getusamoedaestrangeira write setusamoedaestrangeira;

    [NasajonSerializeAttribute('moedaestrangeira')]
    property moedaestrangeira: String read getmoedaestrangeira write setmoedaestrangeira;

    [NasajonSerializeAttribute('cotacao')]
    property cotacao: Currency read getcotacao write setcotacao;

    [NasajonSerializeAttribute('valornamoedaestrangeira')]
    property valornamoedaestrangeira: Currency read getvalornamoedaestrangeira write setvalornamoedaestrangeira;

    [NasajonSerializeAttribute('mesanocompetenciagps')]
    property mesanocompetenciagps: String read getmesanocompetenciagps write setmesanocompetenciagps;

    [NasajonSerializeAttribute('outrasentidadesgps')]
    property outrasentidadesgps: Currency read getoutrasentidadesgps write setoutrasentidadesgps;

    [NasajonSerializeAttribute('id_titulo_origemcomissao')]
    property id_titulo_origemcomissao: String read getid_titulo_origemcomissao write setid_titulo_origemcomissao;

    [NasajonSerializeAttribute('datacancelamento')]
    property datacancelamento: TDate read getDataCancelamento write setDataCancelamento;

    [NasajonSerializeAttribute('id_tipo_despesa_receita')]
    property id_tipo_despesa_receita: String read getid_tipo_despesa_receita write setid_tipo_despesa_receita;

    

end;

type TTituloPagarAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_Conta: String;
    var m_LayoutPagamento: String;
    var m_Numero: String;
    var m_Emissao: TDate;
    var m_Vencimento: TDate;
    var m_PrevisaoVencimento: TDate;
    var m_Parcela: Integer;
    var m_TotalParcelas: Integer;
    var m_Observacao: String;
    var m_Anotacoes: WideString;
    var m_ValorTitulo: Currency;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    var m_AliquotaIr: Currency;
    var m_ValorIrRetido: Currency;
    var m_AliquotaCofins: Currency;
    var m_ValorCofinsRetido: Currency;
    var m_AliquotaPis: Currency;
    var m_ValorPisRetido: Currency;
    var m_AliquotaCsll: Currency;
    var m_ValorCsllRetido: Currency;
    var m_ValorInssRetido: Currency;
    var m_AliquotaIss: Currency;
    var m_ValorIssRetido: Currency;
    var m_DataLimiteDesconto: TDate;
    var m_PercentualDesconto: Currency;
    var m_DataInicioMulta: TDate;
    var m_PercentualMulta: Currency;
    var m_PercentualJurosDiario: Currency;
    var m_LinhaDigitavel: String;
    var m_CodigoBarras: String;
    var m_NumeroNota: String;
    var m_ModeloDocumentoFiscal: Integer;
    var m_SerieDocumentoFiscal: String;
    var m_SubserieDocumentoFiscal: String;
    var m_ServicoBancario: String;
    var m_FormaPagamento: String;
    var m_FinalidadePagamento: String;
    var m_TipoContaPagamento: String;
    var m_DataAgendamento: TDate;
    var m_DataProvisoria: Boolean;
    var m_ValorProvisorio: Boolean;
    var m_TipoOrigem: Integer;
    var m_Contrato: String;
    var m_IRRetidoNF: Currency;
    var m_INSSRetidoNF: Currency;
    var m_BemPatrimonial: String;
    var m_Desconto: Currency;
    var m_Multa: Currency;
    var m_Juros: Currency;
    var m_Adiantamento: Boolean;
    var m_UsaDiscriminacao: Boolean;
    var m_IDDocumentoRateado: String;
    var m_DebitoAutomatico: Boolean;
    var m_PercentualOutrosAcrescimos: Currency;
    var m_OutrosAcrescimos: Currency;
    var m_ModoExibicaoDesconto: String;
    var m_ModoExibicaoJuros: String;
    var m_ModoExibicaoMulta: String;
    var m_ModoExibicaoOutrosAcrescimos: String;
    var m_ModoExibicaoCodigoBarras: String;
    var m_id_servicobanco: String;
    var m_id_formapagamentobanco: String;
    var m_id_finalidadepagamentobanco: String;
    var m_id_tipocontapagamentobanco: String;
    var m_DataCompetenciaTributos: TDate;
    var m_DataProcessamentoBoleto: TDate;
    var m_NossoNumero: String;
    var m_CodigoDoCedenteBoleto: String;
    var m_NumeroDocumentoBoleto: String;
    var m_EspecieBoleto: String;
    var m_AceiteBoleto: Boolean;
    var m_UsoBancoBoleto: String;
    var m_CarteiraBoleto: String;
    var m_CodigodaReceitaTributos: String;
    var m_NumeroDeReferenciaDARF: String;
    var m_valorreceitabrutaacumuladadarfsimples: Currency;
    var m_percreceitabrutaacumuladadarfsimples: Currency;
    var m_numerodeclaracaogare: String;
    var m_numeroetiquetagare: String;
    var m_numerodaparcelagare: String;
    var m_codigomunicipioipva: String;
    var m_codigorenavam: String;
    var m_opcaodepagamentoipva: String;
    var m_opcaoretiradacrlv: String;
    var m_placaveiculoipva: String;
    var m_unidadefederacaoipva: String;
    var m_identificadorfgts: String;
    var m_lacreconectividadesocial: String;
    var m_numerodocumentodarj: String;
    var m_Situacao: Integer;
    var m_ID_RENEGOCIACAO_GERADORA: String;
    var m_valorvariacaocambialativa: Currency;
    var m_valorvariacaocambialpassiva: Currency;
    var m_Emprestimo: Boolean;
    var m_ID_ContaEmprestimo: String;
    var m_DataCompetencia: TDate;
    var m_UsuarioResponsavel: String;
    var m_id_servicons: String;
    var m_id_formapagamentons: String;
    var m_id_finalidadepagamentons: String;
    var m_id_tipocontapagamentons: String;
    var m_tipoordempagamento: Integer;
    var m_TituloCoberturaConta: Boolean;
    var m_GrupoEmpresarialCobertura: String;
    var m_ContaCobertura: String;
    var m_IDDocumentoRateadoCobertura: String;
    var m_PrestacaoDeConta: String;
    var m_contafornecedor: String;
    var m_Previsto: Boolean;
    var m_CFOPCodigo: String;
    var m_IdConjuntoAnexo: String;
    var m_OutrasRetencoes: Currency;
    var m_DescricaoOutrasRetencoes: String;
    var m_Contabilizar: Boolean;
    var m_Contabilizar_Baixa: Boolean;
    var m_RazaoSocialFactoring: String;
    var m_NumeroDocumentoFactoring: String;
    var m_RazaoSocialGPS: String;
    var m_NumeroDocumentoGPS: String;
    var m_Estorno: Boolean;
    var m_id_titulo_estorno: String;
    var m_tipoestorno: Integer;
    var m_pisestornado: Currency;
    var m_cofinsestornado: Currency;
    var m_csllestornado: Currency;
    var m_irestornado: Currency;
    var m_issestornado: Currency;
    var m_inssestornado: Currency;
    var m_NotaFutura: Boolean;
    var m_ValorASerReembolsado: Boolean;
    var m_id_pessoa_reembolso: String;
    var m_usamoedaestrangeira: Boolean;
    var m_moedaestrangeira: String;
    var m_cotacao: Currency;
    var m_valornamoedaestrangeira: Currency;
    var m_mesanocompetenciagps: String;
    var m_outrasentidadesgps: Currency;
    var m_id_titulo_origemcomissao: String;
    var m_DataCancelamento: TDate;
    var m_id_tipo_despesa_receita: String;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getConta(): String;
    function getLayoutPagamento(): String;
    function getNumero(): String;
    function getEmissao(): TDate;
    function getVencimento(): TDate;
    function getPrevisaoVencimento(): TDate;
    function getParcela(): Integer;
    function getTotalParcelas(): Integer;
    function getObservacao(): String;
    function getAnotacoes(): WideString;
    function getValorTitulo(): Currency;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    function getAliquotaIr(): Currency;
    function getValorIrRetido(): Currency;
    function getAliquotaCofins(): Currency;
    function getValorCofinsRetido(): Currency;
    function getAliquotaPis(): Currency;
    function getValorPisRetido(): Currency;
    function getAliquotaCsll(): Currency;
    function getValorCsllRetido(): Currency;
    function getValorInssRetido(): Currency;
    function getAliquotaIss(): Currency;
    function getValorIssRetido(): Currency;
    function getDataLimiteDesconto(): TDate;
    function getPercentualDesconto(): Currency;
    function getDataInicioMulta(): TDate;
    function getPercentualMulta(): Currency;
    function getPercentualJurosDiario(): Currency;
    function getLinhaDigitavel(): String;
    function getCodigoBarras(): String;
    function getNumeroNota(): String;
    function getModeloDocumentoFiscal(): Integer;
    function getSerieDocumentoFiscal(): String;
    function getSubserieDocumentoFiscal(): String;
    function getServicoBancario(): String;
    function getFormaPagamento(): String;
    function getFinalidadePagamento(): String;
    function getTipoContaPagamento(): String;
    function getDataAgendamento(): TDate;
    function getDataProvisoria(): Boolean;
    function getValorProvisorio(): Boolean;
    function getTipoOrigem(): Integer;
    function getContrato(): String;
    function getIRRetidoNF(): Currency;
    function getINSSRetidoNF(): Currency;
    function getBemPatrimonial(): String;
    function getDesconto(): Currency;
    function getMulta(): Currency;
    function getJuros(): Currency;
    function getAdiantamento(): Boolean;
    function getUsaDiscriminacao(): Boolean;
    function getIDDocumentoRateado(): String;
    function getDebitoAutomatico(): Boolean;
    function getPercentualOutrosAcrescimos(): Currency;
    function getOutrosAcrescimos(): Currency;
    function getModoExibicaoDesconto(): String;
    function getModoExibicaoJuros(): String;
    function getModoExibicaoMulta(): String;
    function getModoExibicaoOutrosAcrescimos(): String;
    function getModoExibicaoCodigoBarras(): String;
    function getid_servicobanco(): String;
    function getid_formapagamentobanco(): String;
    function getid_finalidadepagamentobanco(): String;
    function getid_tipocontapagamentobanco(): String;
    function getDataCompetenciaTributos(): TDate;
    function getDataProcessamentoBoleto(): TDate;
    function getNossoNumero(): String;
    function getCodigoDoCedenteBoleto(): String;
    function getNumeroDocumentoBoleto(): String;
    function getEspecieBoleto(): String;
    function getAceiteBoleto(): Boolean;
    function getUsoBancoBoleto(): String;
    function getCarteiraBoleto(): String;
    function getCodigodaReceitaTributos(): String;
    function getNumeroDeReferenciaDARF(): String;
    function getvalorreceitabrutaacumuladadarfsimples(): Currency;
    function getpercreceitabrutaacumuladadarfsimples(): Currency;
    function getnumerodeclaracaogare(): String;
    function getnumeroetiquetagare(): String;
    function getnumerodaparcelagare(): String;
    function getcodigomunicipioipva(): String;
    function getcodigorenavam(): String;
    function getopcaodepagamentoipva(): String;
    function getopcaoretiradacrlv(): String;
    function getplacaveiculoipva(): String;
    function getunidadefederacaoipva(): String;
    function getidentificadorfgts(): String;
    function getlacreconectividadesocial(): String;
    function getnumerodocumentodarj(): String;
    function getSituacao(): Integer;
    function getID_RENEGOCIACAO_GERADORA(): String;
    function getvalorvariacaocambialativa(): Currency;
    function getvalorvariacaocambialpassiva(): Currency;
    function getEmprestimo(): Boolean;
    function getID_ContaEmprestimo(): String;
    function getDataCompetencia(): TDate;
    function getUsuarioResponsavel(): String;
    function getid_servicons(): String;
    function getid_formapagamentons(): String;
    function getid_finalidadepagamentons(): String;
    function getid_tipocontapagamentons(): String;
    function gettipoordempagamento(): Integer;
    function getTituloCoberturaConta(): Boolean;
    function getGrupoEmpresarialCobertura(): String;
    function getContaCobertura(): String;
    function getIDDocumentoRateadoCobertura(): String;
    function getPrestacaoDeConta(): String;
    function getcontafornecedor(): String;
    function getPrevisto(): Boolean;
    function getCFOPCodigo(): String;
    function getIdConjuntoAnexo(): String;
    function getOutrasRetencoes(): Currency;
    function getDescricaoOutrasRetencoes(): String;
    function getContabilizar(): Boolean;
    function getContabilizar_Baixa(): Boolean;
    function getRazaoSocialFactoring(): String;
    function getNumeroDocumentoFactoring(): String;
    function getRazaoSocialGPS(): String;
    function getNumeroDocumentoGPS(): String;
    function getEstorno(): Boolean;
    function getid_titulo_estorno(): String;
    function gettipoestorno(): Integer;
    function getpisestornado(): Currency;
    function getcofinsestornado(): Currency;
    function getcsllestornado(): Currency;
    function getirestornado(): Currency;
    function getissestornado(): Currency;
    function getinssestornado(): Currency;
    function getNotaFutura(): Boolean;
    function getValorASerReembolsado(): Boolean;
    function getid_pessoa_reembolso(): String;
    function getusamoedaestrangeira(): Boolean;
    function getmoedaestrangeira(): String;
    function getcotacao(): Currency;
    function getvalornamoedaestrangeira(): Currency;
    function getmesanocompetenciagps(): String;
    function getoutrasentidadesgps(): Currency;
    function getid_titulo_origemcomissao(): String;
    function getDataCancelamento(): TDate;
    function getid_tipo_despesa_receita(): String;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setConta(const a_Value: String);
    procedure setLayoutPagamento(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setEmissao(const a_Value: TDate);
    procedure setVencimento(const a_Value: TDate);
    procedure setPrevisaoVencimento(const a_Value: TDate);
    procedure setParcela(const a_Value: Integer);
    procedure setTotalParcelas(const a_Value: Integer);
    procedure setObservacao(const a_Value: String);
    procedure setAnotacoes(const a_Value: WideString);
    procedure setValorTitulo(const a_Value: Currency);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setAliquotaIr(const a_Value: Currency);
    procedure setValorIrRetido(const a_Value: Currency);
    procedure setAliquotaCofins(const a_Value: Currency);
    procedure setValorCofinsRetido(const a_Value: Currency);
    procedure setAliquotaPis(const a_Value: Currency);
    procedure setValorPisRetido(const a_Value: Currency);
    procedure setAliquotaCsll(const a_Value: Currency);
    procedure setValorCsllRetido(const a_Value: Currency);
    procedure setValorInssRetido(const a_Value: Currency);
    procedure setAliquotaIss(const a_Value: Currency);
    procedure setValorIssRetido(const a_Value: Currency);
    procedure setDataLimiteDesconto(const a_Value: TDate);
    procedure setPercentualDesconto(const a_Value: Currency);
    procedure setDataInicioMulta(const a_Value: TDate);
    procedure setPercentualMulta(const a_Value: Currency);
    procedure setPercentualJurosDiario(const a_Value: Currency);
    procedure setLinhaDigitavel(const a_Value: String);
    procedure setCodigoBarras(const a_Value: String);
    procedure setNumeroNota(const a_Value: String);
    procedure setModeloDocumentoFiscal(const a_Value: Integer);
    procedure setSerieDocumentoFiscal(const a_Value: String);
    procedure setSubserieDocumentoFiscal(const a_Value: String);
    procedure setServicoBancario(const a_Value: String);
    procedure setFormaPagamento(const a_Value: String);
    procedure setFinalidadePagamento(const a_Value: String);
    procedure setTipoContaPagamento(const a_Value: String);
    procedure setDataAgendamento(const a_Value: TDate);
    procedure setDataProvisoria(const a_Value: Boolean);
    procedure setValorProvisorio(const a_Value: Boolean);
    procedure setTipoOrigem(const a_Value: Integer);
    procedure setContrato(const a_Value: String);
    procedure setIRRetidoNF(const a_Value: Currency);
    procedure setINSSRetidoNF(const a_Value: Currency);
    procedure setBemPatrimonial(const a_Value: String);
    procedure setDesconto(const a_Value: Currency);
    procedure setMulta(const a_Value: Currency);
    procedure setJuros(const a_Value: Currency);
    procedure setAdiantamento(const a_Value: Boolean);
    procedure setUsaDiscriminacao(const a_Value: Boolean);
    procedure setIDDocumentoRateado(const a_Value: String);
    procedure setDebitoAutomatico(const a_Value: Boolean);
    procedure setPercentualOutrosAcrescimos(const a_Value: Currency);
    procedure setOutrosAcrescimos(const a_Value: Currency);
    procedure setModoExibicaoDesconto(const a_Value: String);
    procedure setModoExibicaoJuros(const a_Value: String);
    procedure setModoExibicaoMulta(const a_Value: String);
    procedure setModoExibicaoOutrosAcrescimos(const a_Value: String);
    procedure setModoExibicaoCodigoBarras(const a_Value: String);
    procedure setid_servicobanco(const a_Value: String);
    procedure setid_formapagamentobanco(const a_Value: String);
    procedure setid_finalidadepagamentobanco(const a_Value: String);
    procedure setid_tipocontapagamentobanco(const a_Value: String);
    procedure setDataCompetenciaTributos(const a_Value: TDate);
    procedure setDataProcessamentoBoleto(const a_Value: TDate);
    procedure setNossoNumero(const a_Value: String);
    procedure setCodigoDoCedenteBoleto(const a_Value: String);
    procedure setNumeroDocumentoBoleto(const a_Value: String);
    procedure setEspecieBoleto(const a_Value: String);
    procedure setAceiteBoleto(const a_Value: Boolean);
    procedure setUsoBancoBoleto(const a_Value: String);
    procedure setCarteiraBoleto(const a_Value: String);
    procedure setCodigodaReceitaTributos(const a_Value: String);
    procedure setNumeroDeReferenciaDARF(const a_Value: String);
    procedure setvalorreceitabrutaacumuladadarfsimples(const a_Value: Currency);
    procedure setpercreceitabrutaacumuladadarfsimples(const a_Value: Currency);
    procedure setnumerodeclaracaogare(const a_Value: String);
    procedure setnumeroetiquetagare(const a_Value: String);
    procedure setnumerodaparcelagare(const a_Value: String);
    procedure setcodigomunicipioipva(const a_Value: String);
    procedure setcodigorenavam(const a_Value: String);
    procedure setopcaodepagamentoipva(const a_Value: String);
    procedure setopcaoretiradacrlv(const a_Value: String);
    procedure setplacaveiculoipva(const a_Value: String);
    procedure setunidadefederacaoipva(const a_Value: String);
    procedure setidentificadorfgts(const a_Value: String);
    procedure setlacreconectividadesocial(const a_Value: String);
    procedure setnumerodocumentodarj(const a_Value: String);
    procedure setSituacao(const a_Value: Integer);
    procedure setID_RENEGOCIACAO_GERADORA(const a_Value: String);
    procedure setvalorvariacaocambialativa(const a_Value: Currency);
    procedure setvalorvariacaocambialpassiva(const a_Value: Currency);
    procedure setEmprestimo(const a_Value: Boolean);
    procedure setID_ContaEmprestimo(const a_Value: String);
    procedure setDataCompetencia(const a_Value: TDate);
    procedure setUsuarioResponsavel(const a_Value: String);
    procedure setid_servicons(const a_Value: String);
    procedure setid_formapagamentons(const a_Value: String);
    procedure setid_finalidadepagamentons(const a_Value: String);
    procedure setid_tipocontapagamentons(const a_Value: String);
    procedure settipoordempagamento(const a_Value: Integer);
    procedure setTituloCoberturaConta(const a_Value: Boolean);
    procedure setGrupoEmpresarialCobertura(const a_Value: String);
    procedure setContaCobertura(const a_Value: String);
    procedure setIDDocumentoRateadoCobertura(const a_Value: String);
    procedure setPrestacaoDeConta(const a_Value: String);
    procedure setcontafornecedor(const a_Value: String);
    procedure setPrevisto(const a_Value: Boolean);
    procedure setCFOPCodigo(const a_Value: String);
    procedure setIdConjuntoAnexo(const a_Value: String);
    procedure setOutrasRetencoes(const a_Value: Currency);
    procedure setDescricaoOutrasRetencoes(const a_Value: String);
    procedure setContabilizar(const a_Value: Boolean);
    procedure setContabilizar_Baixa(const a_Value: Boolean);
    procedure setRazaoSocialFactoring(const a_Value: String);
    procedure setNumeroDocumentoFactoring(const a_Value: String);
    procedure setRazaoSocialGPS(const a_Value: String);
    procedure setNumeroDocumentoGPS(const a_Value: String);
    procedure setEstorno(const a_Value: Boolean);
    procedure setid_titulo_estorno(const a_Value: String);
    procedure settipoestorno(const a_Value: Integer);
    procedure setpisestornado(const a_Value: Currency);
    procedure setcofinsestornado(const a_Value: Currency);
    procedure setcsllestornado(const a_Value: Currency);
    procedure setirestornado(const a_Value: Currency);
    procedure setissestornado(const a_Value: Currency);
    procedure setinssestornado(const a_Value: Currency);
    procedure setNotaFutura(const a_Value: Boolean);
    procedure setValorASerReembolsado(const a_Value: Boolean);
    procedure setid_pessoa_reembolso(const a_Value: String);
    procedure setusamoedaestrangeira(const a_Value: Boolean);
    procedure setmoedaestrangeira(const a_Value: String);
    procedure setcotacao(const a_Value: Currency);
    procedure setvalornamoedaestrangeira(const a_Value: Currency);
    procedure setmesanocompetenciagps(const a_Value: String);
    procedure setoutrasentidadesgps(const a_Value: Currency);
    procedure setid_titulo_origemcomissao(const a_Value: String);
    procedure setDataCancelamento(const a_Value: TDate);
    procedure setid_tipo_despesa_receita(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    /// <summary>
/// Indica o layout de pagamento a ser utilizado na integração bancária. Caso não seja informado o Guid, passar a descrição.
    /// </summary>
    [NasajonSerializeAttribute('layoutpagamento')]
    property layoutpagamento: String read getLayoutPagamento write setLayoutPagamento;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getEmissao write setEmissao;

    [NasajonSerializeAttribute('vencimento')]
    property vencimento: TDate read getVencimento write setVencimento;

    /// <summary>
/// Indica a previsão do vencimento. Utilizado no fluxo de caixa, caso não informado assume a data de vencimento.
    /// </summary>
    [NasajonSerializeAttribute('previsaovencimento')]
    property previsaovencimento: TDate read getPrevisaoVencimento write setPrevisaoVencimento;

    [NasajonSerializeAttribute('parcela')]
    property parcela: Integer read getParcela write setParcela;

    [NasajonSerializeAttribute('totalparcelas')]
    property totalparcelas: Integer read getTotalParcelas write setTotalParcelas;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

    [NasajonSerializeAttribute('anotacoes')]
    property anotacoes: WideString read getAnotacoes write setAnotacoes;

    [NasajonSerializeAttribute('valortitulo')]
    property valortitulo: Currency read getValorTitulo write setValorTitulo;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira e centro de custo.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    [NasajonSerializeAttribute('aliquotair')]
    property aliquotair: Currency read getAliquotaIr write setAliquotaIr;

    [NasajonSerializeAttribute('valorirretido')]
    property valorirretido: Currency read getValorIrRetido write setValorIrRetido;

    [NasajonSerializeAttribute('aliquotacofins')]
    property aliquotacofins: Currency read getAliquotaCofins write setAliquotaCofins;

    [NasajonSerializeAttribute('valorcofinsretido')]
    property valorcofinsretido: Currency read getValorCofinsRetido write setValorCofinsRetido;

    [NasajonSerializeAttribute('aliquotapis')]
    property aliquotapis: Currency read getAliquotaPis write setAliquotaPis;

    [NasajonSerializeAttribute('valorpisretido')]
    property valorpisretido: Currency read getValorPisRetido write setValorPisRetido;

    [NasajonSerializeAttribute('aliquotacsll')]
    property aliquotacsll: Currency read getAliquotaCsll write setAliquotaCsll;

    [NasajonSerializeAttribute('valorcsllretido')]
    property valorcsllretido: Currency read getValorCsllRetido write setValorCsllRetido;

    [NasajonSerializeAttribute('valorinssretido')]
    property valorinssretido: Currency read getValorInssRetido write setValorInssRetido;

    [NasajonSerializeAttribute('aliquotaiss')]
    property aliquotaiss: Currency read getAliquotaIss write setAliquotaIss;

    [NasajonSerializeAttribute('valorissretido')]
    property valorissretido: Currency read getValorIssRetido write setValorIssRetido;

    [NasajonSerializeAttribute('datalimitedesconto')]
    property datalimitedesconto: TDate read getDataLimiteDesconto write setDataLimiteDesconto;

    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    [NasajonSerializeAttribute('datainiciomulta')]
    property datainiciomulta: TDate read getDataInicioMulta write setDataInicioMulta;

    [NasajonSerializeAttribute('percentualmulta')]
    property percentualmulta: Currency read getPercentualMulta write setPercentualMulta;

    [NasajonSerializeAttribute('percentualjurosdiario')]
    property percentualjurosdiario: Currency read getPercentualJurosDiario write setPercentualJurosDiario;

    /// <summary>
/// Indica a linha digitável do título. Utilizado na integração bancária, via borderô eletrônico.
    /// </summary>
    [NasajonSerializeAttribute('linhadigitavel')]
    property linhadigitavel: String read getLinhaDigitavel write setLinhaDigitavel;

    /// <summary>
/// Indica o código de barras do título. Utilizado na integração bancária, via borderô eletrônico.
    /// </summary>
    [NasajonSerializeAttribute('codigobarras')]
    property codigobarras: String read getCodigoBarras write setCodigoBarras;

    /// <summary>
/// Indica o número da nota que deu origem ao título.
    /// </summary>
    [NasajonSerializeAttribute('numeronota')]
    property numeronota: String read getNumeroNota write setNumeroNota;

    /// <summary>
/// Indica o modelo da nota que deu origem ao título. 
///                              1-Nenhum Modelo de Documento Fiscal,
///                                      2-Nota Fiscal (Saída ou Entrada de NF emitida pelo fornecedor,
///                                      3-Nota Fiscal Eletrônica,
///                                      4-Nota Fiscal emissão própria na entrada, marcada ENTRADA [X],
///                                      5-Nota Fiscal de Venda ao Consumidor,
///                                      6-Nota Fiscal de Produtor (Rural), 
///                                      7-Nota Fiscal de Serviço,
///                                      8-Nota Fiscal Fatura de Serviço,
///                                      9-Nota Fiscal Simplificada de Serviço,
///                                      10-Nota Eletrônica de Serviços,
///                                      11-Conhecimento Aéreo,
///                                      12-Conhecimento de Transporte Aquaviário,
///                                      13-Conhecimento de Transporte Eletrônico,
///                                      14-Conhecimento de Transporte Ferroviário,
///                                      15-Nota Fiscal De Transporte Ferroviário,
///                                      16-Conhecimento de Transporte Rodoviário,
///                                      17-Conhecimento de Transporte Multimodal de Carga,
///                                      18-Nota Fiscal de Serviço de Transporte,
///                                      19-Conta de Energia Elétrica,
///                                      20-Nota Fiscal Serviço de Telecomunicação,
///                                      21-Conta Fornecimento de Gás Canalizado,
///                                      22-Conta Fornecimento de Água Canalizada,
///                                      23-Bilhete de Passagem Aquaviário,
///                                      24-Bilhete de Passagem Ferroviário,
///                                      25-Bilhete de Passagem e Nota de Bagagem,
///                                      26-Bilhete de Passagem Rodoviário,
///                                      27-Resumo do Movimento Diário (Transporte de Passageiros)
    /// </summary>
    [NasajonSerializeAttribute('modelodocumentofiscal')]
    property modelodocumentofiscal: Integer read getModeloDocumentoFiscal write setModeloDocumentoFiscal;

    /// <summary>
/// Indica a serie da nota que deu origem ao título.
    /// </summary>
    [NasajonSerializeAttribute('seriedocumentofiscal')]
    property seriedocumentofiscal: String read getSerieDocumentoFiscal write setSerieDocumentoFiscal;

    /// <summary>
/// Indica a sub-serie da nota que deu origem ao título.
    /// </summary>
    [NasajonSerializeAttribute('subseriedocumentofiscal')]
    property subseriedocumentofiscal: String read getSubserieDocumentoFiscal write setSubserieDocumentoFiscal;

    /// <summary>
/// Indica os serviços disponiveis para o layout de pagamento do banco informado no título. Para preenchimento deste campo 
///       vide a tabela financas.servicosbancos. Pode-se utilizar o Guid ou o código de um registro disponível.
    /// </summary>
    [NasajonSerializeAttribute('servicobancario')]
    property servicobancario: String read getServicoBancario write setServicoBancario;

    /// <summary>
/// Indica a forma de pagamento do título.
    /// </summary>
    [NasajonSerializeAttribute('formapagamento')]
    property formapagamento: String read getFormaPagamento write setFormaPagamento;

    /// <summary>
/// Indica as finalidades de pagamentos suportada pela forma de pagamento escolhida. Para preenchimento deste campo
///       vide a tabela financas.finalidadespagamentosbancos. Pode-se utilizar o Guid ou o código de um registro disponível.
    /// </summary>
    [NasajonSerializeAttribute('finalidadepagamento')]
    property finalidadepagamento: String read getFinalidadePagamento write setFinalidadePagamento;

    /// <summary>
/// Indica os tipos de contas suportada pela forma de pagamento escolhida. Para preenchimento deste campo
///       vide a tabela financas.tiposcontaspagamentosbancos. Pode-se utilizar o Guid ou o código de um registro disponível.
    /// </summary>
    [NasajonSerializeAttribute('tipocontapagamento')]
    property tipocontapagamento: String read getTipoContaPagamento write setTipoContaPagamento;

    /// <summary>
/// Indica a data do agendamento do pagamento do título. Utilizado no borderô eletrônico.
    /// </summary>
    [NasajonSerializeAttribute('dataagendamento')]
    property dataagendamento: TDate read getDataAgendamento write setDataAgendamento;

    /// <summary>
/// Indica que as datas de emissão e vencimento do título são provisórias, quando marcado(true).
    /// </summary>
    [NasajonSerializeAttribute('dataprovisoria')]
    property dataprovisoria: Boolean read getDataProvisoria write setDataProvisoria;

    /// <summary>
/// Indica que o valor do título é provisório, quando marcado(true).
    /// </summary>
    [NasajonSerializeAttribute('valorprovisorio')]
    property valorprovisorio: Boolean read getValorProvisorio write setValorProvisorio;

    /// <summary>
/// Indica a origem do titulo. Quando não informado, assumirá 0 - Manutenção
///                              23 - Previsão
    /// </summary>
    [NasajonSerializeAttribute('tipoorigem')]
    property tipoorigem: Integer read getTipoOrigem write setTipoOrigem;

    [NasajonSerializeAttribute('contrato')]
    property contrato: String read getContrato write setContrato;

    /// <summary>
/// Indica o valor do IR Retido na nota.
    /// </summary>
    [NasajonSerializeAttribute('irretidonf')]
    property irretidonf: Currency read getIRRetidoNF write setIRRetidoNF;

    /// <summary>
/// Indica o valor do INSS Retido na nota.
    /// </summary>
    [NasajonSerializeAttribute('inssretidonf')]
    property inssretidonf: Currency read getINSSRetidoNF write setINSSRetidoNF;

    [NasajonSerializeAttribute('bempatrimonial')]
    property bempatrimonial: String read getBemPatrimonial write setBemPatrimonial;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getDesconto write setDesconto;

    [NasajonSerializeAttribute('multa')]
    property multa: Currency read getMulta write setMulta;

    [NasajonSerializeAttribute('juros')]
    property juros: Currency read getJuros write setJuros;

    [NasajonSerializeAttribute('adiantamento')]
    property adiantamento: Boolean read getAdiantamento write setAdiantamento;

    [NasajonSerializeAttribute('usadiscriminacao')]
    property usadiscriminacao: Boolean read getUsaDiscriminacao write setUsaDiscriminacao;

    [NasajonSerializeAttribute('iddocumentorateado')]
    property iddocumentorateado: String read getIDDocumentoRateado write setIDDocumentoRateado;

    [NasajonSerializeAttribute('debitoautomatico')]
    property debitoautomatico: Boolean read getDebitoAutomatico write setDebitoAutomatico;

    [NasajonSerializeAttribute('percentualoutrosacrescimos')]
    property percentualoutrosacrescimos: Currency read getPercentualOutrosAcrescimos write setPercentualOutrosAcrescimos;

    [NasajonSerializeAttribute('outrosacrescimos')]
    property outrosacrescimos: Currency read getOutrosAcrescimos write setOutrosAcrescimos;

    [NasajonSerializeAttribute('modoexibicaodesconto')]
    property modoexibicaodesconto: String read getModoExibicaoDesconto write setModoExibicaoDesconto;

    [NasajonSerializeAttribute('modoexibicaojuros')]
    property modoexibicaojuros: String read getModoExibicaoJuros write setModoExibicaoJuros;

    [NasajonSerializeAttribute('modoexibicaomulta')]
    property modoexibicaomulta: String read getModoExibicaoMulta write setModoExibicaoMulta;

    [NasajonSerializeAttribute('modoexibicaooutrosacrescimos')]
    property modoexibicaooutrosacrescimos: String read getModoExibicaoOutrosAcrescimos write setModoExibicaoOutrosAcrescimos;

    [NasajonSerializeAttribute('modoexibicaocodigobarras')]
    property modoexibicaocodigobarras: String read getModoExibicaoCodigoBarras write setModoExibicaoCodigoBarras;

    [NasajonSerializeAttribute('id_servicobanco')]
    property id_servicobanco: String read getid_servicobanco write setid_servicobanco;

    /// <summary>
/// Indica as modalidades de pagamentos suportada pelo serviço bancário escolhido. Para preenchimento deste campo
///       vide a tabela financas.formaspagamentosbancos. Pode-se utilizar o Guid ou o código de um registro disponível.
    /// </summary>
    [NasajonSerializeAttribute('id_formapagamentobanco')]
    property id_formapagamentobanco: String read getid_formapagamentobanco write setid_formapagamentobanco;

    [NasajonSerializeAttribute('id_finalidadepagamentobanco')]
    property id_finalidadepagamentobanco: String read getid_finalidadepagamentobanco write setid_finalidadepagamentobanco;

    [NasajonSerializeAttribute('id_tipocontapagamentobanco')]
    property id_tipocontapagamentobanco: String read getid_tipocontapagamentobanco write setid_tipocontapagamentobanco;

    [NasajonSerializeAttribute('datacompetenciatributos')]
    property datacompetenciatributos: TDate read getDataCompetenciaTributos write setDataCompetenciaTributos;

    [NasajonSerializeAttribute('dataprocessamentoboleto')]
    property dataprocessamentoboleto: TDate read getDataProcessamentoBoleto write setDataProcessamentoBoleto;

    [NasajonSerializeAttribute('nossonumero')]
    property nossonumero: String read getNossoNumero write setNossoNumero;

    [NasajonSerializeAttribute('codigodocedenteboleto')]
    property codigodocedenteboleto: String read getCodigoDoCedenteBoleto write setCodigoDoCedenteBoleto;

    [NasajonSerializeAttribute('numerodocumentoboleto')]
    property numerodocumentoboleto: String read getNumeroDocumentoBoleto write setNumeroDocumentoBoleto;

    [NasajonSerializeAttribute('especieboleto')]
    property especieboleto: String read getEspecieBoleto write setEspecieBoleto;

    [NasajonSerializeAttribute('aceiteboleto')]
    property aceiteboleto: Boolean read getAceiteBoleto write setAceiteBoleto;

    [NasajonSerializeAttribute('usobancoboleto')]
    property usobancoboleto: String read getUsoBancoBoleto write setUsoBancoBoleto;

    [NasajonSerializeAttribute('carteiraboleto')]
    property carteiraboleto: String read getCarteiraBoleto write setCarteiraBoleto;

    [NasajonSerializeAttribute('codigodareceitatributos')]
    property codigodareceitatributos: String read getCodigodaReceitaTributos write setCodigodaReceitaTributos;

    [NasajonSerializeAttribute('numerodereferenciadarf')]
    property numerodereferenciadarf: String read getNumeroDeReferenciaDARF write setNumeroDeReferenciaDARF;

    [NasajonSerializeAttribute('valorreceitabrutaacumuladadarfsimples')]
    property valorreceitabrutaacumuladadarfsimples: Currency read getvalorreceitabrutaacumuladadarfsimples write setvalorreceitabrutaacumuladadarfsimples;

    [NasajonSerializeAttribute('percreceitabrutaacumuladadarfsimples')]
    property percreceitabrutaacumuladadarfsimples: Currency read getpercreceitabrutaacumuladadarfsimples write setpercreceitabrutaacumuladadarfsimples;

    [NasajonSerializeAttribute('numerodeclaracaogare')]
    property numerodeclaracaogare: String read getnumerodeclaracaogare write setnumerodeclaracaogare;

    [NasajonSerializeAttribute('numeroetiquetagare')]
    property numeroetiquetagare: String read getnumeroetiquetagare write setnumeroetiquetagare;

    [NasajonSerializeAttribute('numerodaparcelagare')]
    property numerodaparcelagare: String read getnumerodaparcelagare write setnumerodaparcelagare;

    [NasajonSerializeAttribute('codigomunicipioipva')]
    property codigomunicipioipva: String read getcodigomunicipioipva write setcodigomunicipioipva;

    [NasajonSerializeAttribute('codigorenavam')]
    property codigorenavam: String read getcodigorenavam write setcodigorenavam;

    [NasajonSerializeAttribute('opcaodepagamentoipva')]
    property opcaodepagamentoipva: String read getopcaodepagamentoipva write setopcaodepagamentoipva;

    [NasajonSerializeAttribute('opcaoretiradacrlv')]
    property opcaoretiradacrlv: String read getopcaoretiradacrlv write setopcaoretiradacrlv;

    [NasajonSerializeAttribute('placaveiculoipva')]
    property placaveiculoipva: String read getplacaveiculoipva write setplacaveiculoipva;

    [NasajonSerializeAttribute('unidadefederacaoipva')]
    property unidadefederacaoipva: String read getunidadefederacaoipva write setunidadefederacaoipva;

    [NasajonSerializeAttribute('identificadorfgts')]
    property identificadorfgts: String read getidentificadorfgts write setidentificadorfgts;

    [NasajonSerializeAttribute('lacreconectividadesocial')]
    property lacreconectividadesocial: String read getlacreconectividadesocial write setlacreconectividadesocial;

    [NasajonSerializeAttribute('numerodocumentodarj')]
    property numerodocumentodarj: String read getnumerodocumentodarj write setnumerodocumentodarj;

    [NasajonSerializeAttribute('situacao')]
    property situacao: Integer read getSituacao write setSituacao;

    [NasajonSerializeAttribute('id_renegociacao_geradora')]
    property id_renegociacao_geradora: String read getID_RENEGOCIACAO_GERADORA write setID_RENEGOCIACAO_GERADORA;

    [NasajonSerializeAttribute('valorvariacaocambialativa')]
    property valorvariacaocambialativa: Currency read getvalorvariacaocambialativa write setvalorvariacaocambialativa;

    [NasajonSerializeAttribute('valorvariacaocambialpassiva')]
    property valorvariacaocambialpassiva: Currency read getvalorvariacaocambialpassiva write setvalorvariacaocambialpassiva;

    [NasajonSerializeAttribute('emprestimo')]
    property emprestimo: Boolean read getEmprestimo write setEmprestimo;

    [NasajonSerializeAttribute('id_contaemprestimo')]
    property id_contaemprestimo: String read getID_ContaEmprestimo write setID_ContaEmprestimo;

    [NasajonSerializeAttribute('datacompetencia')]
    property datacompetencia: TDate read getDataCompetencia write setDataCompetencia;

    [NasajonSerializeAttribute('usuarioresponsavel')]
    property usuarioresponsavel: String read getUsuarioResponsavel write setUsuarioResponsavel;

    [NasajonSerializeAttribute('id_servicons')]
    property id_servicons: String read getid_servicons write setid_servicons;

    [NasajonSerializeAttribute('id_formapagamentons')]
    property id_formapagamentons: String read getid_formapagamentons write setid_formapagamentons;

    [NasajonSerializeAttribute('id_finalidadepagamentons')]
    property id_finalidadepagamentons: String read getid_finalidadepagamentons write setid_finalidadepagamentons;

    [NasajonSerializeAttribute('id_tipocontapagamentons')]
    property id_tipocontapagamentons: String read getid_tipocontapagamentons write setid_tipocontapagamentons;

    [NasajonSerializeAttribute('tipoordempagamento')]
    property tipoordempagamento: Integer read gettipoordempagamento write settipoordempagamento;

    [NasajonSerializeAttribute('titulocoberturaconta')]
    property titulocoberturaconta: Boolean read getTituloCoberturaConta write setTituloCoberturaConta;

    [NasajonSerializeAttribute('grupoempresarialcobertura')]
    property grupoempresarialcobertura: String read getGrupoEmpresarialCobertura write setGrupoEmpresarialCobertura;

    [NasajonSerializeAttribute('contacobertura')]
    property contacobertura: String read getContaCobertura write setContaCobertura;

    [NasajonSerializeAttribute('iddocumentorateadocobertura')]
    property iddocumentorateadocobertura: String read getIDDocumentoRateadoCobertura write setIDDocumentoRateadoCobertura;

    [NasajonSerializeAttribute('prestacaodeconta')]
    property prestacaodeconta: String read getPrestacaoDeConta write setPrestacaoDeConta;

    [NasajonSerializeAttribute('contafornecedor')]
    property contafornecedor: String read getcontafornecedor write setcontafornecedor;

    /// <summary>
/// Indica que o título é previsto, quando marcado(true).
    /// </summary>
    [NasajonSerializeAttribute('previsto')]
    property previsto: Boolean read getPrevisto write setPrevisto;

    /// <summary>
/// Código do CFOP.
    /// </summary>
    [NasajonSerializeAttribute('cfopcodigo')]
    property cfopcodigo: String read getCFOPCodigo write setCFOPCodigo;

    [NasajonSerializeAttribute('idconjuntoanexo')]
    property idconjuntoanexo: String read getIdConjuntoAnexo write setIdConjuntoAnexo;

    [NasajonSerializeAttribute('outrasretencoes')]
    property outrasretencoes: Currency read getOutrasRetencoes write setOutrasRetencoes;

    [NasajonSerializeAttribute('descricaooutrasretencoes')]
    property descricaooutrasretencoes: String read getDescricaoOutrasRetencoes write setDescricaoOutrasRetencoes;

    [NasajonSerializeAttribute('contabilizar')]
    property contabilizar: Boolean read getContabilizar write setContabilizar;

    [NasajonSerializeAttribute('contabilizar_baixa')]
    property contabilizar_baixa: Boolean read getContabilizar_Baixa write setContabilizar_Baixa;

    [NasajonSerializeAttribute('razaosocialfactoring')]
    property razaosocialfactoring: String read getRazaoSocialFactoring write setRazaoSocialFactoring;

    [NasajonSerializeAttribute('numerodocumentofactoring')]
    property numerodocumentofactoring: String read getNumeroDocumentoFactoring write setNumeroDocumentoFactoring;

    [NasajonSerializeAttribute('razaosocialgps')]
    property razaosocialgps: String read getRazaoSocialGPS write setRazaoSocialGPS;

    [NasajonSerializeAttribute('numerodocumentogps')]
    property numerodocumentogps: String read getNumeroDocumentoGPS write setNumeroDocumentoGPS;

    [NasajonSerializeAttribute('estorno')]
    property estorno: Boolean read getEstorno write setEstorno;

    [NasajonSerializeAttribute('id_titulo_estorno')]
    property id_titulo_estorno: String read getid_titulo_estorno write setid_titulo_estorno;

    [NasajonSerializeAttribute('tipoestorno')]
    property tipoestorno: Integer read gettipoestorno write settipoestorno;

    [NasajonSerializeAttribute('pisestornado')]
    property pisestornado: Currency read getpisestornado write setpisestornado;

    [NasajonSerializeAttribute('cofinsestornado')]
    property cofinsestornado: Currency read getcofinsestornado write setcofinsestornado;

    [NasajonSerializeAttribute('csllestornado')]
    property csllestornado: Currency read getcsllestornado write setcsllestornado;

    [NasajonSerializeAttribute('irestornado')]
    property irestornado: Currency read getirestornado write setirestornado;

    [NasajonSerializeAttribute('issestornado')]
    property issestornado: Currency read getissestornado write setissestornado;

    [NasajonSerializeAttribute('inssestornado')]
    property inssestornado: Currency read getinssestornado write setinssestornado;

    [NasajonSerializeAttribute('notafutura')]
    property notafutura: Boolean read getNotaFutura write setNotaFutura;

    [NasajonSerializeAttribute('valoraserreembolsado')]
    property valoraserreembolsado: Boolean read getValorASerReembolsado write setValorASerReembolsado;

    [NasajonSerializeAttribute('id_pessoa_reembolso')]
    property id_pessoa_reembolso: String read getid_pessoa_reembolso write setid_pessoa_reembolso;

    [NasajonSerializeAttribute('usamoedaestrangeira')]
    property usamoedaestrangeira: Boolean read getusamoedaestrangeira write setusamoedaestrangeira;

    [NasajonSerializeAttribute('moedaestrangeira')]
    property moedaestrangeira: String read getmoedaestrangeira write setmoedaestrangeira;

    [NasajonSerializeAttribute('cotacao')]
    property cotacao: Currency read getcotacao write setcotacao;

    [NasajonSerializeAttribute('valornamoedaestrangeira')]
    property valornamoedaestrangeira: Currency read getvalornamoedaestrangeira write setvalornamoedaestrangeira;

    [NasajonSerializeAttribute('mesanocompetenciagps')]
    property mesanocompetenciagps: String read getmesanocompetenciagps write setmesanocompetenciagps;

    [NasajonSerializeAttribute('outrasentidadesgps')]
    property outrasentidadesgps: Currency read getoutrasentidadesgps write setoutrasentidadesgps;

    [NasajonSerializeAttribute('id_titulo_origemcomissao')]
    property id_titulo_origemcomissao: String read getid_titulo_origemcomissao write setid_titulo_origemcomissao;

    [NasajonSerializeAttribute('datacancelamento')]
    property datacancelamento: TDate read getDataCancelamento write setDataCancelamento;

    [NasajonSerializeAttribute('id_tipo_despesa_receita')]
    property id_tipo_despesa_receita: String read getid_tipo_despesa_receita write setid_tipo_despesa_receita;

    

end;

type TTituloPagarExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    

    function getId(): String;
    

    procedure setId(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    

end;

	
implementation

  uses
      api.send;  

function TTituloPagarNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TTituloPagarNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TTituloPagarNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TTituloPagarNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TTituloPagarNovo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TTituloPagarNovo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TTituloPagarNovo.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TTituloPagarNovo.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TTituloPagarNovo.getLayoutPagamento: String;
begin
  Result := Self.m_LayoutPagamento;
end;

procedure TTituloPagarNovo.setLayoutPagamento(const a_Value: String);
begin
  Self.m_LayoutPagamento := a_Value;
end;

function TTituloPagarNovo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TTituloPagarNovo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TTituloPagarNovo.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TTituloPagarNovo.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TTituloPagarNovo.getVencimento: TDate;
begin
  Result := Self.m_Vencimento;
end;

procedure TTituloPagarNovo.setVencimento(const a_Value: TDate);
begin
  Self.m_Vencimento := a_Value;
end;

function TTituloPagarNovo.getPrevisaoVencimento: TDate;
begin
  Result := Self.m_PrevisaoVencimento;
end;

procedure TTituloPagarNovo.setPrevisaoVencimento(const a_Value: TDate);
begin
  Self.m_PrevisaoVencimento := a_Value;
end;

function TTituloPagarNovo.getParcela: Integer;
begin
  Result := Self.m_Parcela;
end;

procedure TTituloPagarNovo.setParcela(const a_Value: Integer);
begin
  Self.m_Parcela := a_Value;
end;

function TTituloPagarNovo.getTotalParcelas: Integer;
begin
  Result := Self.m_TotalParcelas;
end;

procedure TTituloPagarNovo.setTotalParcelas(const a_Value: Integer);
begin
  Self.m_TotalParcelas := a_Value;
end;

function TTituloPagarNovo.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TTituloPagarNovo.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TTituloPagarNovo.getAnotacoes: WideString;
begin
  Result := Self.m_Anotacoes;
end;

procedure TTituloPagarNovo.setAnotacoes(const a_Value: WideString);
begin
  Self.m_Anotacoes := a_Value;
end;

function TTituloPagarNovo.getValorTitulo: Currency;
begin
  Result := Self.m_ValorTitulo;
end;

procedure TTituloPagarNovo.setValorTitulo(const a_Value: Currency);
begin
  Self.m_ValorTitulo := a_Value;
end;

function TTituloPagarNovo.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TTituloPagarNovo.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TTituloPagarNovo.getAliquotaIr: Currency;
begin
  Result := Self.m_AliquotaIr;
end;

procedure TTituloPagarNovo.setAliquotaIr(const a_Value: Currency);
begin
  Self.m_AliquotaIr := a_Value;
end;

function TTituloPagarNovo.getValorIrRetido: Currency;
begin
  Result := Self.m_ValorIrRetido;
end;

procedure TTituloPagarNovo.setValorIrRetido(const a_Value: Currency);
begin
  Self.m_ValorIrRetido := a_Value;
end;

function TTituloPagarNovo.getAliquotaCofins: Currency;
begin
  Result := Self.m_AliquotaCofins;
end;

procedure TTituloPagarNovo.setAliquotaCofins(const a_Value: Currency);
begin
  Self.m_AliquotaCofins := a_Value;
end;

function TTituloPagarNovo.getValorCofinsRetido: Currency;
begin
  Result := Self.m_ValorCofinsRetido;
end;

procedure TTituloPagarNovo.setValorCofinsRetido(const a_Value: Currency);
begin
  Self.m_ValorCofinsRetido := a_Value;
end;

function TTituloPagarNovo.getAliquotaPis: Currency;
begin
  Result := Self.m_AliquotaPis;
end;

procedure TTituloPagarNovo.setAliquotaPis(const a_Value: Currency);
begin
  Self.m_AliquotaPis := a_Value;
end;

function TTituloPagarNovo.getValorPisRetido: Currency;
begin
  Result := Self.m_ValorPisRetido;
end;

procedure TTituloPagarNovo.setValorPisRetido(const a_Value: Currency);
begin
  Self.m_ValorPisRetido := a_Value;
end;

function TTituloPagarNovo.getAliquotaCsll: Currency;
begin
  Result := Self.m_AliquotaCsll;
end;

procedure TTituloPagarNovo.setAliquotaCsll(const a_Value: Currency);
begin
  Self.m_AliquotaCsll := a_Value;
end;

function TTituloPagarNovo.getValorCsllRetido: Currency;
begin
  Result := Self.m_ValorCsllRetido;
end;

procedure TTituloPagarNovo.setValorCsllRetido(const a_Value: Currency);
begin
  Self.m_ValorCsllRetido := a_Value;
end;

function TTituloPagarNovo.getValorInssRetido: Currency;
begin
  Result := Self.m_ValorInssRetido;
end;

procedure TTituloPagarNovo.setValorInssRetido(const a_Value: Currency);
begin
  Self.m_ValorInssRetido := a_Value;
end;

function TTituloPagarNovo.getAliquotaIss: Currency;
begin
  Result := Self.m_AliquotaIss;
end;

procedure TTituloPagarNovo.setAliquotaIss(const a_Value: Currency);
begin
  Self.m_AliquotaIss := a_Value;
end;

function TTituloPagarNovo.getValorIssRetido: Currency;
begin
  Result := Self.m_ValorIssRetido;
end;

procedure TTituloPagarNovo.setValorIssRetido(const a_Value: Currency);
begin
  Self.m_ValorIssRetido := a_Value;
end;

function TTituloPagarNovo.getDataLimiteDesconto: TDate;
begin
  Result := Self.m_DataLimiteDesconto;
end;

procedure TTituloPagarNovo.setDataLimiteDesconto(const a_Value: TDate);
begin
  Self.m_DataLimiteDesconto := a_Value;
end;

function TTituloPagarNovo.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TTituloPagarNovo.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TTituloPagarNovo.getDataInicioMulta: TDate;
begin
  Result := Self.m_DataInicioMulta;
end;

procedure TTituloPagarNovo.setDataInicioMulta(const a_Value: TDate);
begin
  Self.m_DataInicioMulta := a_Value;
end;

function TTituloPagarNovo.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TTituloPagarNovo.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TTituloPagarNovo.getPercentualJurosDiario: Currency;
begin
  Result := Self.m_PercentualJurosDiario;
end;

procedure TTituloPagarNovo.setPercentualJurosDiario(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiario := a_Value;
end;

function TTituloPagarNovo.getLinhaDigitavel: String;
begin
  Result := Self.m_LinhaDigitavel;
end;

procedure TTituloPagarNovo.setLinhaDigitavel(const a_Value: String);
begin
  Self.m_LinhaDigitavel := a_Value;
end;

function TTituloPagarNovo.getCodigoBarras: String;
begin
  Result := Self.m_CodigoBarras;
end;

procedure TTituloPagarNovo.setCodigoBarras(const a_Value: String);
begin
  Self.m_CodigoBarras := a_Value;
end;

function TTituloPagarNovo.getNumeroNota: String;
begin
  Result := Self.m_NumeroNota;
end;

procedure TTituloPagarNovo.setNumeroNota(const a_Value: String);
begin
  Self.m_NumeroNota := a_Value;
end;

function TTituloPagarNovo.getModeloDocumentoFiscal: Integer;
begin
  Result := Self.m_ModeloDocumentoFiscal;
end;

procedure TTituloPagarNovo.setModeloDocumentoFiscal(const a_Value: Integer);
begin
  Self.m_ModeloDocumentoFiscal := a_Value;
end;

function TTituloPagarNovo.getSerieDocumentoFiscal: String;
begin
  Result := Self.m_SerieDocumentoFiscal;
end;

procedure TTituloPagarNovo.setSerieDocumentoFiscal(const a_Value: String);
begin
  Self.m_SerieDocumentoFiscal := a_Value;
end;

function TTituloPagarNovo.getSubserieDocumentoFiscal: String;
begin
  Result := Self.m_SubserieDocumentoFiscal;
end;

procedure TTituloPagarNovo.setSubserieDocumentoFiscal(const a_Value: String);
begin
  Self.m_SubserieDocumentoFiscal := a_Value;
end;

function TTituloPagarNovo.getServicoBancario: String;
begin
  Result := Self.m_ServicoBancario;
end;

procedure TTituloPagarNovo.setServicoBancario(const a_Value: String);
begin
  Self.m_ServicoBancario := a_Value;
end;

function TTituloPagarNovo.getFormaPagamento: String;
begin
  Result := Self.m_FormaPagamento;
end;

procedure TTituloPagarNovo.setFormaPagamento(const a_Value: String);
begin
  Self.m_FormaPagamento := a_Value;
end;

function TTituloPagarNovo.getFinalidadePagamento: String;
begin
  Result := Self.m_FinalidadePagamento;
end;

procedure TTituloPagarNovo.setFinalidadePagamento(const a_Value: String);
begin
  Self.m_FinalidadePagamento := a_Value;
end;

function TTituloPagarNovo.getTipoContaPagamento: String;
begin
  Result := Self.m_TipoContaPagamento;
end;

procedure TTituloPagarNovo.setTipoContaPagamento(const a_Value: String);
begin
  Self.m_TipoContaPagamento := a_Value;
end;

function TTituloPagarNovo.getDataAgendamento: TDate;
begin
  Result := Self.m_DataAgendamento;
end;

procedure TTituloPagarNovo.setDataAgendamento(const a_Value: TDate);
begin
  Self.m_DataAgendamento := a_Value;
end;

function TTituloPagarNovo.getDataProvisoria: Boolean;
begin
  Result := Self.m_DataProvisoria;
end;

procedure TTituloPagarNovo.setDataProvisoria(const a_Value: Boolean);
begin
  Self.m_DataProvisoria := a_Value;
end;

function TTituloPagarNovo.getValorProvisorio: Boolean;
begin
  Result := Self.m_ValorProvisorio;
end;

procedure TTituloPagarNovo.setValorProvisorio(const a_Value: Boolean);
begin
  Self.m_ValorProvisorio := a_Value;
end;

function TTituloPagarNovo.getTipoOrigem: Integer;
begin
  Result := Self.m_TipoOrigem;
end;

procedure TTituloPagarNovo.setTipoOrigem(const a_Value: Integer);
begin
  Self.m_TipoOrigem := a_Value;
end;

function TTituloPagarNovo.getContrato: String;
begin
  Result := Self.m_Contrato;
end;

procedure TTituloPagarNovo.setContrato(const a_Value: String);
begin
  Self.m_Contrato := a_Value;
end;

function TTituloPagarNovo.getIRRetidoNF: Currency;
begin
  Result := Self.m_IRRetidoNF;
end;

procedure TTituloPagarNovo.setIRRetidoNF(const a_Value: Currency);
begin
  Self.m_IRRetidoNF := a_Value;
end;

function TTituloPagarNovo.getINSSRetidoNF: Currency;
begin
  Result := Self.m_INSSRetidoNF;
end;

procedure TTituloPagarNovo.setINSSRetidoNF(const a_Value: Currency);
begin
  Self.m_INSSRetidoNF := a_Value;
end;

function TTituloPagarNovo.getBemPatrimonial: String;
begin
  Result := Self.m_BemPatrimonial;
end;

procedure TTituloPagarNovo.setBemPatrimonial(const a_Value: String);
begin
  Self.m_BemPatrimonial := a_Value;
end;

function TTituloPagarNovo.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TTituloPagarNovo.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TTituloPagarNovo.getMulta: Currency;
begin
  Result := Self.m_Multa;
end;

procedure TTituloPagarNovo.setMulta(const a_Value: Currency);
begin
  Self.m_Multa := a_Value;
end;

function TTituloPagarNovo.getJuros: Currency;
begin
  Result := Self.m_Juros;
end;

procedure TTituloPagarNovo.setJuros(const a_Value: Currency);
begin
  Self.m_Juros := a_Value;
end;

function TTituloPagarNovo.getAdiantamento: Boolean;
begin
  Result := Self.m_Adiantamento;
end;

procedure TTituloPagarNovo.setAdiantamento(const a_Value: Boolean);
begin
  Self.m_Adiantamento := a_Value;
end;

function TTituloPagarNovo.getUsaDiscriminacao: Boolean;
begin
  Result := Self.m_UsaDiscriminacao;
end;

procedure TTituloPagarNovo.setUsaDiscriminacao(const a_Value: Boolean);
begin
  Self.m_UsaDiscriminacao := a_Value;
end;

function TTituloPagarNovo.getIDDocumentoRateado: String;
begin
  Result := Self.m_IDDocumentoRateado;
end;

procedure TTituloPagarNovo.setIDDocumentoRateado(const a_Value: String);
begin
  Self.m_IDDocumentoRateado := a_Value;
end;

function TTituloPagarNovo.getDebitoAutomatico: Boolean;
begin
  Result := Self.m_DebitoAutomatico;
end;

procedure TTituloPagarNovo.setDebitoAutomatico(const a_Value: Boolean);
begin
  Self.m_DebitoAutomatico := a_Value;
end;

function TTituloPagarNovo.getPercentualOutrosAcrescimos: Currency;
begin
  Result := Self.m_PercentualOutrosAcrescimos;
end;

procedure TTituloPagarNovo.setPercentualOutrosAcrescimos(const a_Value: Currency);
begin
  Self.m_PercentualOutrosAcrescimos := a_Value;
end;

function TTituloPagarNovo.getOutrosAcrescimos: Currency;
begin
  Result := Self.m_OutrosAcrescimos;
end;

procedure TTituloPagarNovo.setOutrosAcrescimos(const a_Value: Currency);
begin
  Self.m_OutrosAcrescimos := a_Value;
end;

function TTituloPagarNovo.getModoExibicaoDesconto: String;
begin
  Result := Self.m_ModoExibicaoDesconto;
end;

procedure TTituloPagarNovo.setModoExibicaoDesconto(const a_Value: String);
begin
  Self.m_ModoExibicaoDesconto := a_Value;
end;

function TTituloPagarNovo.getModoExibicaoJuros: String;
begin
  Result := Self.m_ModoExibicaoJuros;
end;

procedure TTituloPagarNovo.setModoExibicaoJuros(const a_Value: String);
begin
  Self.m_ModoExibicaoJuros := a_Value;
end;

function TTituloPagarNovo.getModoExibicaoMulta: String;
begin
  Result := Self.m_ModoExibicaoMulta;
end;

procedure TTituloPagarNovo.setModoExibicaoMulta(const a_Value: String);
begin
  Self.m_ModoExibicaoMulta := a_Value;
end;

function TTituloPagarNovo.getModoExibicaoOutrosAcrescimos: String;
begin
  Result := Self.m_ModoExibicaoOutrosAcrescimos;
end;

procedure TTituloPagarNovo.setModoExibicaoOutrosAcrescimos(const a_Value: String);
begin
  Self.m_ModoExibicaoOutrosAcrescimos := a_Value;
end;

function TTituloPagarNovo.getModoExibicaoCodigoBarras: String;
begin
  Result := Self.m_ModoExibicaoCodigoBarras;
end;

procedure TTituloPagarNovo.setModoExibicaoCodigoBarras(const a_Value: String);
begin
  Self.m_ModoExibicaoCodigoBarras := a_Value;
end;

function TTituloPagarNovo.getid_servicobanco: String;
begin
  Result := Self.m_id_servicobanco;
end;

procedure TTituloPagarNovo.setid_servicobanco(const a_Value: String);
begin
  Self.m_id_servicobanco := a_Value;
end;

function TTituloPagarNovo.getid_formapagamentobanco: String;
begin
  Result := Self.m_id_formapagamentobanco;
end;

procedure TTituloPagarNovo.setid_formapagamentobanco(const a_Value: String);
begin
  Self.m_id_formapagamentobanco := a_Value;
end;

function TTituloPagarNovo.getid_finalidadepagamentobanco: String;
begin
  Result := Self.m_id_finalidadepagamentobanco;
end;

procedure TTituloPagarNovo.setid_finalidadepagamentobanco(const a_Value: String);
begin
  Self.m_id_finalidadepagamentobanco := a_Value;
end;

function TTituloPagarNovo.getid_tipocontapagamentobanco: String;
begin
  Result := Self.m_id_tipocontapagamentobanco;
end;

procedure TTituloPagarNovo.setid_tipocontapagamentobanco(const a_Value: String);
begin
  Self.m_id_tipocontapagamentobanco := a_Value;
end;

function TTituloPagarNovo.getDataCompetenciaTributos: TDate;
begin
  Result := Self.m_DataCompetenciaTributos;
end;

procedure TTituloPagarNovo.setDataCompetenciaTributos(const a_Value: TDate);
begin
  Self.m_DataCompetenciaTributos := a_Value;
end;

function TTituloPagarNovo.getDataProcessamentoBoleto: TDate;
begin
  Result := Self.m_DataProcessamentoBoleto;
end;

procedure TTituloPagarNovo.setDataProcessamentoBoleto(const a_Value: TDate);
begin
  Self.m_DataProcessamentoBoleto := a_Value;
end;

function TTituloPagarNovo.getNossoNumero: String;
begin
  Result := Self.m_NossoNumero;
end;

procedure TTituloPagarNovo.setNossoNumero(const a_Value: String);
begin
  Self.m_NossoNumero := a_Value;
end;

function TTituloPagarNovo.getCodigoDoCedenteBoleto: String;
begin
  Result := Self.m_CodigoDoCedenteBoleto;
end;

procedure TTituloPagarNovo.setCodigoDoCedenteBoleto(const a_Value: String);
begin
  Self.m_CodigoDoCedenteBoleto := a_Value;
end;

function TTituloPagarNovo.getNumeroDocumentoBoleto: String;
begin
  Result := Self.m_NumeroDocumentoBoleto;
end;

procedure TTituloPagarNovo.setNumeroDocumentoBoleto(const a_Value: String);
begin
  Self.m_NumeroDocumentoBoleto := a_Value;
end;

function TTituloPagarNovo.getEspecieBoleto: String;
begin
  Result := Self.m_EspecieBoleto;
end;

procedure TTituloPagarNovo.setEspecieBoleto(const a_Value: String);
begin
  Self.m_EspecieBoleto := a_Value;
end;

function TTituloPagarNovo.getAceiteBoleto: Boolean;
begin
  Result := Self.m_AceiteBoleto;
end;

procedure TTituloPagarNovo.setAceiteBoleto(const a_Value: Boolean);
begin
  Self.m_AceiteBoleto := a_Value;
end;

function TTituloPagarNovo.getUsoBancoBoleto: String;
begin
  Result := Self.m_UsoBancoBoleto;
end;

procedure TTituloPagarNovo.setUsoBancoBoleto(const a_Value: String);
begin
  Self.m_UsoBancoBoleto := a_Value;
end;

function TTituloPagarNovo.getCarteiraBoleto: String;
begin
  Result := Self.m_CarteiraBoleto;
end;

procedure TTituloPagarNovo.setCarteiraBoleto(const a_Value: String);
begin
  Self.m_CarteiraBoleto := a_Value;
end;

function TTituloPagarNovo.getCodigodaReceitaTributos: String;
begin
  Result := Self.m_CodigodaReceitaTributos;
end;

procedure TTituloPagarNovo.setCodigodaReceitaTributos(const a_Value: String);
begin
  Self.m_CodigodaReceitaTributos := a_Value;
end;

function TTituloPagarNovo.getNumeroDeReferenciaDARF: String;
begin
  Result := Self.m_NumeroDeReferenciaDARF;
end;

procedure TTituloPagarNovo.setNumeroDeReferenciaDARF(const a_Value: String);
begin
  Self.m_NumeroDeReferenciaDARF := a_Value;
end;

function TTituloPagarNovo.getvalorreceitabrutaacumuladadarfsimples: Currency;
begin
  Result := Self.m_valorreceitabrutaacumuladadarfsimples;
end;

procedure TTituloPagarNovo.setvalorreceitabrutaacumuladadarfsimples(const a_Value: Currency);
begin
  Self.m_valorreceitabrutaacumuladadarfsimples := a_Value;
end;

function TTituloPagarNovo.getpercreceitabrutaacumuladadarfsimples: Currency;
begin
  Result := Self.m_percreceitabrutaacumuladadarfsimples;
end;

procedure TTituloPagarNovo.setpercreceitabrutaacumuladadarfsimples(const a_Value: Currency);
begin
  Self.m_percreceitabrutaacumuladadarfsimples := a_Value;
end;

function TTituloPagarNovo.getnumerodeclaracaogare: String;
begin
  Result := Self.m_numerodeclaracaogare;
end;

procedure TTituloPagarNovo.setnumerodeclaracaogare(const a_Value: String);
begin
  Self.m_numerodeclaracaogare := a_Value;
end;

function TTituloPagarNovo.getnumeroetiquetagare: String;
begin
  Result := Self.m_numeroetiquetagare;
end;

procedure TTituloPagarNovo.setnumeroetiquetagare(const a_Value: String);
begin
  Self.m_numeroetiquetagare := a_Value;
end;

function TTituloPagarNovo.getnumerodaparcelagare: String;
begin
  Result := Self.m_numerodaparcelagare;
end;

procedure TTituloPagarNovo.setnumerodaparcelagare(const a_Value: String);
begin
  Self.m_numerodaparcelagare := a_Value;
end;

function TTituloPagarNovo.getcodigomunicipioipva: String;
begin
  Result := Self.m_codigomunicipioipva;
end;

procedure TTituloPagarNovo.setcodigomunicipioipva(const a_Value: String);
begin
  Self.m_codigomunicipioipva := a_Value;
end;

function TTituloPagarNovo.getcodigorenavam: String;
begin
  Result := Self.m_codigorenavam;
end;

procedure TTituloPagarNovo.setcodigorenavam(const a_Value: String);
begin
  Self.m_codigorenavam := a_Value;
end;

function TTituloPagarNovo.getopcaodepagamentoipva: String;
begin
  Result := Self.m_opcaodepagamentoipva;
end;

procedure TTituloPagarNovo.setopcaodepagamentoipva(const a_Value: String);
begin
  Self.m_opcaodepagamentoipva := a_Value;
end;

function TTituloPagarNovo.getopcaoretiradacrlv: String;
begin
  Result := Self.m_opcaoretiradacrlv;
end;

procedure TTituloPagarNovo.setopcaoretiradacrlv(const a_Value: String);
begin
  Self.m_opcaoretiradacrlv := a_Value;
end;

function TTituloPagarNovo.getplacaveiculoipva: String;
begin
  Result := Self.m_placaveiculoipva;
end;

procedure TTituloPagarNovo.setplacaveiculoipva(const a_Value: String);
begin
  Self.m_placaveiculoipva := a_Value;
end;

function TTituloPagarNovo.getunidadefederacaoipva: String;
begin
  Result := Self.m_unidadefederacaoipva;
end;

procedure TTituloPagarNovo.setunidadefederacaoipva(const a_Value: String);
begin
  Self.m_unidadefederacaoipva := a_Value;
end;

function TTituloPagarNovo.getidentificadorfgts: String;
begin
  Result := Self.m_identificadorfgts;
end;

procedure TTituloPagarNovo.setidentificadorfgts(const a_Value: String);
begin
  Self.m_identificadorfgts := a_Value;
end;

function TTituloPagarNovo.getlacreconectividadesocial: String;
begin
  Result := Self.m_lacreconectividadesocial;
end;

procedure TTituloPagarNovo.setlacreconectividadesocial(const a_Value: String);
begin
  Self.m_lacreconectividadesocial := a_Value;
end;

function TTituloPagarNovo.getnumerodocumentodarj: String;
begin
  Result := Self.m_numerodocumentodarj;
end;

procedure TTituloPagarNovo.setnumerodocumentodarj(const a_Value: String);
begin
  Self.m_numerodocumentodarj := a_Value;
end;

function TTituloPagarNovo.getSituacao: Integer;
begin
  Result := Self.m_Situacao;
end;

procedure TTituloPagarNovo.setSituacao(const a_Value: Integer);
begin
  Self.m_Situacao := a_Value;
end;

function TTituloPagarNovo.getID_RENEGOCIACAO_GERADORA: String;
begin
  Result := Self.m_ID_RENEGOCIACAO_GERADORA;
end;

procedure TTituloPagarNovo.setID_RENEGOCIACAO_GERADORA(const a_Value: String);
begin
  Self.m_ID_RENEGOCIACAO_GERADORA := a_Value;
end;

function TTituloPagarNovo.getvalorvariacaocambialativa: Currency;
begin
  Result := Self.m_valorvariacaocambialativa;
end;

procedure TTituloPagarNovo.setvalorvariacaocambialativa(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialativa := a_Value;
end;

function TTituloPagarNovo.getvalorvariacaocambialpassiva: Currency;
begin
  Result := Self.m_valorvariacaocambialpassiva;
end;

procedure TTituloPagarNovo.setvalorvariacaocambialpassiva(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialpassiva := a_Value;
end;

function TTituloPagarNovo.getEmprestimo: Boolean;
begin
  Result := Self.m_Emprestimo;
end;

procedure TTituloPagarNovo.setEmprestimo(const a_Value: Boolean);
begin
  Self.m_Emprestimo := a_Value;
end;

function TTituloPagarNovo.getID_ContaEmprestimo: String;
begin
  Result := Self.m_ID_ContaEmprestimo;
end;

procedure TTituloPagarNovo.setID_ContaEmprestimo(const a_Value: String);
begin
  Self.m_ID_ContaEmprestimo := a_Value;
end;

function TTituloPagarNovo.getIdConjuntoAnexo: String;
begin
  Result := Self.m_IdConjuntoAnexo;
end;

procedure TTituloPagarNovo.setIdConjuntoAnexo(const a_Value: String);
begin
  Self.m_IdConjuntoAnexo := a_Value;
end;

function TTituloPagarNovo.getDataCompetencia: TDate;
begin
  Result := Self.m_DataCompetencia;
end;

procedure TTituloPagarNovo.setDataCompetencia(const a_Value: TDate);
begin
  Self.m_DataCompetencia := a_Value;
end;

function TTituloPagarNovo.getUsuarioResponsavel: String;
begin
  Result := Self.m_UsuarioResponsavel;
end;

procedure TTituloPagarNovo.setUsuarioResponsavel(const a_Value: String);
begin
  Self.m_UsuarioResponsavel := a_Value;
end;

function TTituloPagarNovo.getChavePersona: String;
begin
  Result := Self.m_ChavePersona;
end;

procedure TTituloPagarNovo.setChavePersona(const a_Value: String);
begin
  Self.m_ChavePersona := a_Value;
end;

function TTituloPagarNovo.getid_servicons: String;
begin
  Result := Self.m_id_servicons;
end;

procedure TTituloPagarNovo.setid_servicons(const a_Value: String);
begin
  Self.m_id_servicons := a_Value;
end;

function TTituloPagarNovo.getid_formapagamentons: String;
begin
  Result := Self.m_id_formapagamentons;
end;

procedure TTituloPagarNovo.setid_formapagamentons(const a_Value: String);
begin
  Self.m_id_formapagamentons := a_Value;
end;

function TTituloPagarNovo.getid_finalidadepagamentons: String;
begin
  Result := Self.m_id_finalidadepagamentons;
end;

procedure TTituloPagarNovo.setid_finalidadepagamentons(const a_Value: String);
begin
  Self.m_id_finalidadepagamentons := a_Value;
end;

function TTituloPagarNovo.getid_tipocontapagamentons: String;
begin
  Result := Self.m_id_tipocontapagamentons;
end;

procedure TTituloPagarNovo.setid_tipocontapagamentons(const a_Value: String);
begin
  Self.m_id_tipocontapagamentons := a_Value;
end;

function TTituloPagarNovo.gettipoordempagamento: Integer;
begin
  Result := Self.m_tipoordempagamento;
end;

procedure TTituloPagarNovo.settipoordempagamento(const a_Value: Integer);
begin
  Self.m_tipoordempagamento := a_Value;
end;

function TTituloPagarNovo.getid_template: String;
begin
  Result := Self.m_id_template;
end;

procedure TTituloPagarNovo.setid_template(const a_Value: String);
begin
  Self.m_id_template := a_Value;
end;

function TTituloPagarNovo.getUsuarioCadastro: String;
begin
  Result := Self.m_UsuarioCadastro;
end;

procedure TTituloPagarNovo.setUsuarioCadastro(const a_Value: String);
begin
  Self.m_UsuarioCadastro := a_Value;
end;

function TTituloPagarNovo.getTituloCoberturaConta: Boolean;
begin
  Result := Self.m_TituloCoberturaConta;
end;

procedure TTituloPagarNovo.setTituloCoberturaConta(const a_Value: Boolean);
begin
  Self.m_TituloCoberturaConta := a_Value;
end;

function TTituloPagarNovo.getGrupoEmpresarialCobertura: String;
begin
  Result := Self.m_GrupoEmpresarialCobertura;
end;

procedure TTituloPagarNovo.setGrupoEmpresarialCobertura(const a_Value: String);
begin
  Self.m_GrupoEmpresarialCobertura := a_Value;
end;

function TTituloPagarNovo.getContaCobertura: String;
begin
  Result := Self.m_ContaCobertura;
end;

procedure TTituloPagarNovo.setContaCobertura(const a_Value: String);
begin
  Self.m_ContaCobertura := a_Value;
end;

function TTituloPagarNovo.getIDDocumentoRateadoCobertura: String;
begin
  Result := Self.m_IDDocumentoRateadoCobertura;
end;

procedure TTituloPagarNovo.setIDDocumentoRateadoCobertura(const a_Value: String);
begin
  Self.m_IDDocumentoRateadoCobertura := a_Value;
end;

function TTituloPagarNovo.getPrestacaoDeConta: String;
begin
  Result := Self.m_PrestacaoDeConta;
end;

procedure TTituloPagarNovo.setPrestacaoDeConta(const a_Value: String);
begin
  Self.m_PrestacaoDeConta := a_Value;
end;

function TTituloPagarNovo.getcontafornecedor: String;
begin
  Result := Self.m_contafornecedor;
end;

procedure TTituloPagarNovo.setcontafornecedor(const a_Value: String);
begin
  Self.m_contafornecedor := a_Value;
end;

function TTituloPagarNovo.getPrevisto: Boolean;
begin
  Result := Self.m_Previsto;
end;

procedure TTituloPagarNovo.setPrevisto(const a_Value: Boolean);
begin
  Self.m_Previsto := a_Value;
end;

function TTituloPagarNovo.getCFOPCodigo: String;
begin
  Result := Self.m_CFOPCodigo;
end;

procedure TTituloPagarNovo.setCFOPCodigo(const a_Value: String);
begin
  Self.m_CFOPCodigo := a_Value;
end;

function TTituloPagarNovo.getTipoCredito: Integer;
begin
  Result := Self.m_TipoCredito;
end;

procedure TTituloPagarNovo.setTipoCredito(const a_Value: Integer);
begin
  Self.m_TipoCredito := a_Value;
end;

function TTituloPagarNovo.getCreditoIdentificado: Integer;
begin
  Result := Self.m_CreditoIdentificado;
end;

procedure TTituloPagarNovo.setCreditoIdentificado(const a_Value: Integer);
begin
  Self.m_CreditoIdentificado := a_Value;
end;

function TTituloPagarNovo.getContabilizar: Boolean;
begin
  Result := Self.m_Contabilizar;
end;

procedure TTituloPagarNovo.setContabilizar(const a_Value: Boolean);
begin
  Self.m_Contabilizar := a_Value;
end;

function TTituloPagarNovo.getContabilizar_Baixa: Boolean;
begin
  Result := Self.m_Contabilizar_Baixa;
end;

procedure TTituloPagarNovo.setContabilizar_Baixa(const a_Value: Boolean);
begin
  Self.m_Contabilizar_Baixa := a_Value;
end;

function TTituloPagarNovo.getOutrasRetencoes: Currency;
begin
  Result := Self.m_OutrasRetencoes;
end;

procedure TTituloPagarNovo.setOutrasRetencoes(const a_Value: Currency);
begin
  Self.m_OutrasRetencoes := a_Value;
end;

function TTituloPagarNovo.getDescricaoOutrasRetencoes: String;
begin
  Result := Self.m_DescricaoOutrasRetencoes;
end;

procedure TTituloPagarNovo.setDescricaoOutrasRetencoes(const a_Value: String);
begin
  Self.m_DescricaoOutrasRetencoes := a_Value;
end;

function TTituloPagarNovo.getid_docfis: String;
begin
  Result := Self.m_id_docfis;
end;

procedure TTituloPagarNovo.setid_docfis(const a_Value: String);
begin
  Self.m_id_docfis := a_Value;
end;

function TTituloPagarNovo.getRazaoSocialFactoring: String;
begin
  Result := Self.m_RazaoSocialFactoring;
end;

procedure TTituloPagarNovo.setRazaoSocialFactoring(const a_Value: String);
begin
  Self.m_RazaoSocialFactoring := a_Value;
end;

function TTituloPagarNovo.getNumeroDocumentoFactoring: String;
begin
  Result := Self.m_NumeroDocumentoFactoring;
end;

procedure TTituloPagarNovo.setNumeroDocumentoFactoring(const a_Value: String);
begin
  Self.m_NumeroDocumentoFactoring := a_Value;
end;

function TTituloPagarNovo.getRazaoSocialGPS: String;
begin
  Result := Self.m_RazaoSocialGPS;
end;

procedure TTituloPagarNovo.setRazaoSocialGPS(const a_Value: String);
begin
  Self.m_RazaoSocialGPS := a_Value;
end;

function TTituloPagarNovo.getNumeroDocumentoGPS: String;
begin
  Result := Self.m_NumeroDocumentoGPS;
end;

procedure TTituloPagarNovo.setNumeroDocumentoGPS(const a_Value: String);
begin
  Self.m_NumeroDocumentoGPS := a_Value;
end;

function TTituloPagarNovo.getEstorno: Boolean;
begin
  Result := Self.m_Estorno;
end;

procedure TTituloPagarNovo.setEstorno(const a_Value: Boolean);
begin
  Self.m_Estorno := a_Value;
end;

function TTituloPagarNovo.getid_titulo_estorno: String;
begin
  Result := Self.m_id_titulo_estorno;
end;

procedure TTituloPagarNovo.setid_titulo_estorno(const a_Value: String);
begin
  Self.m_id_titulo_estorno := a_Value;
end;

function TTituloPagarNovo.gettipoestorno: Integer;
begin
  Result := Self.m_tipoestorno;
end;

procedure TTituloPagarNovo.settipoestorno(const a_Value: Integer);
begin
  Self.m_tipoestorno := a_Value;
end;

function TTituloPagarNovo.getpisestornado: Currency;
begin
  Result := Self.m_pisestornado;
end;

procedure TTituloPagarNovo.setpisestornado(const a_Value: Currency);
begin
  Self.m_pisestornado := a_Value;
end;

function TTituloPagarNovo.getcofinsestornado: Currency;
begin
  Result := Self.m_cofinsestornado;
end;

procedure TTituloPagarNovo.setcofinsestornado(const a_Value: Currency);
begin
  Self.m_cofinsestornado := a_Value;
end;

function TTituloPagarNovo.getcsllestornado: Currency;
begin
  Result := Self.m_csllestornado;
end;

procedure TTituloPagarNovo.setcsllestornado(const a_Value: Currency);
begin
  Self.m_csllestornado := a_Value;
end;

function TTituloPagarNovo.getirestornado: Currency;
begin
  Result := Self.m_irestornado;
end;

procedure TTituloPagarNovo.setirestornado(const a_Value: Currency);
begin
  Self.m_irestornado := a_Value;
end;

function TTituloPagarNovo.getissestornado: Currency;
begin
  Result := Self.m_issestornado;
end;

procedure TTituloPagarNovo.setissestornado(const a_Value: Currency);
begin
  Self.m_issestornado := a_Value;
end;

function TTituloPagarNovo.getinssestornado: Currency;
begin
  Result := Self.m_inssestornado;
end;

procedure TTituloPagarNovo.setinssestornado(const a_Value: Currency);
begin
  Self.m_inssestornado := a_Value;
end;

function TTituloPagarNovo.getNotaFutura: Boolean;
begin
  Result := Self.m_NotaFutura;
end;

procedure TTituloPagarNovo.setNotaFutura(const a_Value: Boolean);
begin
  Self.m_NotaFutura := a_Value;
end;

function TTituloPagarNovo.getValorASerReembolsado: Boolean;
begin
  Result := Self.m_ValorASerReembolsado;
end;

procedure TTituloPagarNovo.setValorASerReembolsado(const a_Value: Boolean);
begin
  Self.m_ValorASerReembolsado := a_Value;
end;

function TTituloPagarNovo.getid_pessoa_reembolso: String;
begin
  Result := Self.m_id_pessoa_reembolso;
end;

procedure TTituloPagarNovo.setid_pessoa_reembolso(const a_Value: String);
begin
  Self.m_id_pessoa_reembolso := a_Value;
end;

function TTituloPagarNovo.getusamoedaestrangeira: Boolean;
begin
  Result := Self.m_usamoedaestrangeira;
end;

procedure TTituloPagarNovo.setusamoedaestrangeira(const a_Value: Boolean);
begin
  Self.m_usamoedaestrangeira := a_Value;
end;

function TTituloPagarNovo.getmoedaestrangeira: String;
begin
  Result := Self.m_moedaestrangeira;
end;

procedure TTituloPagarNovo.setmoedaestrangeira(const a_Value: String);
begin
  Self.m_moedaestrangeira := a_Value;
end;

function TTituloPagarNovo.getcotacao: Currency;
begin
  Result := Self.m_cotacao;
end;

procedure TTituloPagarNovo.setcotacao(const a_Value: Currency);
begin
  Self.m_cotacao := a_Value;
end;

function TTituloPagarNovo.getvalornamoedaestrangeira: Currency;
begin
  Result := Self.m_valornamoedaestrangeira;
end;

procedure TTituloPagarNovo.setvalornamoedaestrangeira(const a_Value: Currency);
begin
  Self.m_valornamoedaestrangeira := a_Value;
end;

function TTituloPagarNovo.getmesanocompetenciagps: String;
begin
  Result := Self.m_mesanocompetenciagps;
end;

procedure TTituloPagarNovo.setmesanocompetenciagps(const a_Value: String);
begin
  Self.m_mesanocompetenciagps := a_Value;
end;

function TTituloPagarNovo.getoutrasentidadesgps: Currency;
begin
  Result := Self.m_outrasentidadesgps;
end;

procedure TTituloPagarNovo.setoutrasentidadesgps(const a_Value: Currency);
begin
  Self.m_outrasentidadesgps := a_Value;
end;

function TTituloPagarNovo.getid_titulo_origemcomissao: String;
begin
  Result := Self.m_id_titulo_origemcomissao;
end;

procedure TTituloPagarNovo.setid_titulo_origemcomissao(const a_Value: String);
begin
  Self.m_id_titulo_origemcomissao := a_Value;
end;

function TTituloPagarNovo.getDataCancelamento: TDate;
begin
  Result := Self.m_DataCancelamento;
end;

procedure TTituloPagarNovo.setDataCancelamento(const a_Value: TDate);
begin
  Self.m_DataCancelamento := a_Value;
end;

function TTituloPagarNovo.getid_tipo_despesa_receita: String;
begin
  Result := Self.m_id_tipo_despesa_receita;
end;

procedure TTituloPagarNovo.setid_tipo_despesa_receita(const a_Value: String);
begin
  Self.m_id_tipo_despesa_receita := a_Value;
end;

destructor TTituloPagarNovo.Destroy;
begin
  Self.RateioFinanceiro.Free();
end;

function TTituloPagarNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTituloPagarNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTituloPagarNovo.getNameAPI(): String;
begin
  Result := 'TituloPagarNovo';
end;

function TTituloPagarNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTituloPagarNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTituloPagarAlterar.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TTituloPagarAlterar.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TTituloPagarAlterar.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TTituloPagarAlterar.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TTituloPagarAlterar.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TTituloPagarAlterar.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TTituloPagarAlterar.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TTituloPagarAlterar.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TTituloPagarAlterar.getLayoutPagamento: String;
begin
  Result := Self.m_LayoutPagamento;
end;

procedure TTituloPagarAlterar.setLayoutPagamento(const a_Value: String);
begin
  Self.m_LayoutPagamento := a_Value;
end;

function TTituloPagarAlterar.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TTituloPagarAlterar.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TTituloPagarAlterar.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TTituloPagarAlterar.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TTituloPagarAlterar.getVencimento: TDate;
begin
  Result := Self.m_Vencimento;
end;

procedure TTituloPagarAlterar.setVencimento(const a_Value: TDate);
begin
  Self.m_Vencimento := a_Value;
end;

function TTituloPagarAlterar.getPrevisaoVencimento: TDate;
begin
  Result := Self.m_PrevisaoVencimento;
end;

procedure TTituloPagarAlterar.setPrevisaoVencimento(const a_Value: TDate);
begin
  Self.m_PrevisaoVencimento := a_Value;
end;

function TTituloPagarAlterar.getParcela: Integer;
begin
  Result := Self.m_Parcela;
end;

procedure TTituloPagarAlterar.setParcela(const a_Value: Integer);
begin
  Self.m_Parcela := a_Value;
end;

function TTituloPagarAlterar.getTotalParcelas: Integer;
begin
  Result := Self.m_TotalParcelas;
end;

procedure TTituloPagarAlterar.setTotalParcelas(const a_Value: Integer);
begin
  Self.m_TotalParcelas := a_Value;
end;

function TTituloPagarAlterar.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TTituloPagarAlterar.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TTituloPagarAlterar.getAnotacoes: WideString;
begin
  Result := Self.m_Anotacoes;
end;

procedure TTituloPagarAlterar.setAnotacoes(const a_Value: WideString);
begin
  Self.m_Anotacoes := a_Value;
end;

function TTituloPagarAlterar.getValorTitulo: Currency;
begin
  Result := Self.m_ValorTitulo;
end;

procedure TTituloPagarAlterar.setValorTitulo(const a_Value: Currency);
begin
  Self.m_ValorTitulo := a_Value;
end;

function TTituloPagarAlterar.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TTituloPagarAlterar.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TTituloPagarAlterar.getAliquotaIr: Currency;
begin
  Result := Self.m_AliquotaIr;
end;

procedure TTituloPagarAlterar.setAliquotaIr(const a_Value: Currency);
begin
  Self.m_AliquotaIr := a_Value;
end;

function TTituloPagarAlterar.getValorIrRetido: Currency;
begin
  Result := Self.m_ValorIrRetido;
end;

procedure TTituloPagarAlterar.setValorIrRetido(const a_Value: Currency);
begin
  Self.m_ValorIrRetido := a_Value;
end;

function TTituloPagarAlterar.getAliquotaCofins: Currency;
begin
  Result := Self.m_AliquotaCofins;
end;

procedure TTituloPagarAlterar.setAliquotaCofins(const a_Value: Currency);
begin
  Self.m_AliquotaCofins := a_Value;
end;

function TTituloPagarAlterar.getValorCofinsRetido: Currency;
begin
  Result := Self.m_ValorCofinsRetido;
end;

procedure TTituloPagarAlterar.setValorCofinsRetido(const a_Value: Currency);
begin
  Self.m_ValorCofinsRetido := a_Value;
end;

function TTituloPagarAlterar.getAliquotaPis: Currency;
begin
  Result := Self.m_AliquotaPis;
end;

procedure TTituloPagarAlterar.setAliquotaPis(const a_Value: Currency);
begin
  Self.m_AliquotaPis := a_Value;
end;

function TTituloPagarAlterar.getValorPisRetido: Currency;
begin
  Result := Self.m_ValorPisRetido;
end;

procedure TTituloPagarAlterar.setValorPisRetido(const a_Value: Currency);
begin
  Self.m_ValorPisRetido := a_Value;
end;

function TTituloPagarAlterar.getAliquotaCsll: Currency;
begin
  Result := Self.m_AliquotaCsll;
end;

procedure TTituloPagarAlterar.setAliquotaCsll(const a_Value: Currency);
begin
  Self.m_AliquotaCsll := a_Value;
end;

function TTituloPagarAlterar.getValorCsllRetido: Currency;
begin
  Result := Self.m_ValorCsllRetido;
end;

procedure TTituloPagarAlterar.setValorCsllRetido(const a_Value: Currency);
begin
  Self.m_ValorCsllRetido := a_Value;
end;

function TTituloPagarAlterar.getValorInssRetido: Currency;
begin
  Result := Self.m_ValorInssRetido;
end;

procedure TTituloPagarAlterar.setValorInssRetido(const a_Value: Currency);
begin
  Self.m_ValorInssRetido := a_Value;
end;

function TTituloPagarAlterar.getAliquotaIss: Currency;
begin
  Result := Self.m_AliquotaIss;
end;

procedure TTituloPagarAlterar.setAliquotaIss(const a_Value: Currency);
begin
  Self.m_AliquotaIss := a_Value;
end;

function TTituloPagarAlterar.getValorIssRetido: Currency;
begin
  Result := Self.m_ValorIssRetido;
end;

procedure TTituloPagarAlterar.setValorIssRetido(const a_Value: Currency);
begin
  Self.m_ValorIssRetido := a_Value;
end;

function TTituloPagarAlterar.getDataLimiteDesconto: TDate;
begin
  Result := Self.m_DataLimiteDesconto;
end;

procedure TTituloPagarAlterar.setDataLimiteDesconto(const a_Value: TDate);
begin
  Self.m_DataLimiteDesconto := a_Value;
end;

function TTituloPagarAlterar.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TTituloPagarAlterar.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TTituloPagarAlterar.getDataInicioMulta: TDate;
begin
  Result := Self.m_DataInicioMulta;
end;

procedure TTituloPagarAlterar.setDataInicioMulta(const a_Value: TDate);
begin
  Self.m_DataInicioMulta := a_Value;
end;

function TTituloPagarAlterar.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TTituloPagarAlterar.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TTituloPagarAlterar.getPercentualJurosDiario: Currency;
begin
  Result := Self.m_PercentualJurosDiario;
end;

procedure TTituloPagarAlterar.setPercentualJurosDiario(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiario := a_Value;
end;

function TTituloPagarAlterar.getLinhaDigitavel: String;
begin
  Result := Self.m_LinhaDigitavel;
end;

procedure TTituloPagarAlterar.setLinhaDigitavel(const a_Value: String);
begin
  Self.m_LinhaDigitavel := a_Value;
end;

function TTituloPagarAlterar.getCodigoBarras: String;
begin
  Result := Self.m_CodigoBarras;
end;

procedure TTituloPagarAlterar.setCodigoBarras(const a_Value: String);
begin
  Self.m_CodigoBarras := a_Value;
end;

function TTituloPagarAlterar.getNumeroNota: String;
begin
  Result := Self.m_NumeroNota;
end;

procedure TTituloPagarAlterar.setNumeroNota(const a_Value: String);
begin
  Self.m_NumeroNota := a_Value;
end;

function TTituloPagarAlterar.getModeloDocumentoFiscal: Integer;
begin
  Result := Self.m_ModeloDocumentoFiscal;
end;

procedure TTituloPagarAlterar.setModeloDocumentoFiscal(const a_Value: Integer);
begin
  Self.m_ModeloDocumentoFiscal := a_Value;
end;

function TTituloPagarAlterar.getSerieDocumentoFiscal: String;
begin
  Result := Self.m_SerieDocumentoFiscal;
end;

procedure TTituloPagarAlterar.setSerieDocumentoFiscal(const a_Value: String);
begin
  Self.m_SerieDocumentoFiscal := a_Value;
end;

function TTituloPagarAlterar.getSubserieDocumentoFiscal: String;
begin
  Result := Self.m_SubserieDocumentoFiscal;
end;

procedure TTituloPagarAlterar.setSubserieDocumentoFiscal(const a_Value: String);
begin
  Self.m_SubserieDocumentoFiscal := a_Value;
end;

function TTituloPagarAlterar.getServicoBancario: String;
begin
  Result := Self.m_ServicoBancario;
end;

procedure TTituloPagarAlterar.setServicoBancario(const a_Value: String);
begin
  Self.m_ServicoBancario := a_Value;
end;

function TTituloPagarAlterar.getFormaPagamento: String;
begin
  Result := Self.m_FormaPagamento;
end;

procedure TTituloPagarAlterar.setFormaPagamento(const a_Value: String);
begin
  Self.m_FormaPagamento := a_Value;
end;

function TTituloPagarAlterar.getFinalidadePagamento: String;
begin
  Result := Self.m_FinalidadePagamento;
end;

procedure TTituloPagarAlterar.setFinalidadePagamento(const a_Value: String);
begin
  Self.m_FinalidadePagamento := a_Value;
end;

function TTituloPagarAlterar.getTipoContaPagamento: String;
begin
  Result := Self.m_TipoContaPagamento;
end;

procedure TTituloPagarAlterar.setTipoContaPagamento(const a_Value: String);
begin
  Self.m_TipoContaPagamento := a_Value;
end;

function TTituloPagarAlterar.getDataAgendamento: TDate;
begin
  Result := Self.m_DataAgendamento;
end;

procedure TTituloPagarAlterar.setDataAgendamento(const a_Value: TDate);
begin
  Self.m_DataAgendamento := a_Value;
end;

function TTituloPagarAlterar.getDataProvisoria: Boolean;
begin
  Result := Self.m_DataProvisoria;
end;

procedure TTituloPagarAlterar.setDataProvisoria(const a_Value: Boolean);
begin
  Self.m_DataProvisoria := a_Value;
end;

function TTituloPagarAlterar.getValorProvisorio: Boolean;
begin
  Result := Self.m_ValorProvisorio;
end;

procedure TTituloPagarAlterar.setValorProvisorio(const a_Value: Boolean);
begin
  Self.m_ValorProvisorio := a_Value;
end;

function TTituloPagarAlterar.getTipoOrigem: Integer;
begin
  Result := Self.m_TipoOrigem;
end;

procedure TTituloPagarAlterar.setTipoOrigem(const a_Value: Integer);
begin
  Self.m_TipoOrigem := a_Value;
end;

function TTituloPagarAlterar.getContrato: String;
begin
  Result := Self.m_Contrato;
end;

procedure TTituloPagarAlterar.setContrato(const a_Value: String);
begin
  Self.m_Contrato := a_Value;
end;

function TTituloPagarAlterar.getIRRetidoNF: Currency;
begin
  Result := Self.m_IRRetidoNF;
end;

procedure TTituloPagarAlterar.setIRRetidoNF(const a_Value: Currency);
begin
  Self.m_IRRetidoNF := a_Value;
end;

function TTituloPagarAlterar.getINSSRetidoNF: Currency;
begin
  Result := Self.m_INSSRetidoNF;
end;

procedure TTituloPagarAlterar.setINSSRetidoNF(const a_Value: Currency);
begin
  Self.m_INSSRetidoNF := a_Value;
end;

function TTituloPagarAlterar.getBemPatrimonial: String;
begin
  Result := Self.m_BemPatrimonial;
end;

procedure TTituloPagarAlterar.setBemPatrimonial(const a_Value: String);
begin
  Self.m_BemPatrimonial := a_Value;
end;

function TTituloPagarAlterar.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TTituloPagarAlterar.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TTituloPagarAlterar.getMulta: Currency;
begin
  Result := Self.m_Multa;
end;

procedure TTituloPagarAlterar.setMulta(const a_Value: Currency);
begin
  Self.m_Multa := a_Value;
end;

function TTituloPagarAlterar.getJuros: Currency;
begin
  Result := Self.m_Juros;
end;

procedure TTituloPagarAlterar.setJuros(const a_Value: Currency);
begin
  Self.m_Juros := a_Value;
end;

function TTituloPagarAlterar.getAdiantamento: Boolean;
begin
  Result := Self.m_Adiantamento;
end;

procedure TTituloPagarAlterar.setAdiantamento(const a_Value: Boolean);
begin
  Self.m_Adiantamento := a_Value;
end;

function TTituloPagarAlterar.getUsaDiscriminacao: Boolean;
begin
  Result := Self.m_UsaDiscriminacao;
end;

procedure TTituloPagarAlterar.setUsaDiscriminacao(const a_Value: Boolean);
begin
  Self.m_UsaDiscriminacao := a_Value;
end;

function TTituloPagarAlterar.getIDDocumentoRateado: String;
begin
  Result := Self.m_IDDocumentoRateado;
end;

procedure TTituloPagarAlterar.setIDDocumentoRateado(const a_Value: String);
begin
  Self.m_IDDocumentoRateado := a_Value;
end;

function TTituloPagarAlterar.getDebitoAutomatico: Boolean;
begin
  Result := Self.m_DebitoAutomatico;
end;

procedure TTituloPagarAlterar.setDebitoAutomatico(const a_Value: Boolean);
begin
  Self.m_DebitoAutomatico := a_Value;
end;

function TTituloPagarAlterar.getPercentualOutrosAcrescimos: Currency;
begin
  Result := Self.m_PercentualOutrosAcrescimos;
end;

procedure TTituloPagarAlterar.setPercentualOutrosAcrescimos(const a_Value: Currency);
begin
  Self.m_PercentualOutrosAcrescimos := a_Value;
end;

function TTituloPagarAlterar.getOutrosAcrescimos: Currency;
begin
  Result := Self.m_OutrosAcrescimos;
end;

procedure TTituloPagarAlterar.setOutrosAcrescimos(const a_Value: Currency);
begin
  Self.m_OutrosAcrescimos := a_Value;
end;

function TTituloPagarAlterar.getModoExibicaoDesconto: String;
begin
  Result := Self.m_ModoExibicaoDesconto;
end;

procedure TTituloPagarAlterar.setModoExibicaoDesconto(const a_Value: String);
begin
  Self.m_ModoExibicaoDesconto := a_Value;
end;

function TTituloPagarAlterar.getModoExibicaoJuros: String;
begin
  Result := Self.m_ModoExibicaoJuros;
end;

procedure TTituloPagarAlterar.setModoExibicaoJuros(const a_Value: String);
begin
  Self.m_ModoExibicaoJuros := a_Value;
end;

function TTituloPagarAlterar.getModoExibicaoMulta: String;
begin
  Result := Self.m_ModoExibicaoMulta;
end;

procedure TTituloPagarAlterar.setModoExibicaoMulta(const a_Value: String);
begin
  Self.m_ModoExibicaoMulta := a_Value;
end;

function TTituloPagarAlterar.getModoExibicaoOutrosAcrescimos: String;
begin
  Result := Self.m_ModoExibicaoOutrosAcrescimos;
end;

procedure TTituloPagarAlterar.setModoExibicaoOutrosAcrescimos(const a_Value: String);
begin
  Self.m_ModoExibicaoOutrosAcrescimos := a_Value;
end;

function TTituloPagarAlterar.getModoExibicaoCodigoBarras: String;
begin
  Result := Self.m_ModoExibicaoCodigoBarras;
end;

procedure TTituloPagarAlterar.setModoExibicaoCodigoBarras(const a_Value: String);
begin
  Self.m_ModoExibicaoCodigoBarras := a_Value;
end;

function TTituloPagarAlterar.getid_servicobanco: String;
begin
  Result := Self.m_id_servicobanco;
end;

procedure TTituloPagarAlterar.setid_servicobanco(const a_Value: String);
begin
  Self.m_id_servicobanco := a_Value;
end;

function TTituloPagarAlterar.getid_formapagamentobanco: String;
begin
  Result := Self.m_id_formapagamentobanco;
end;

procedure TTituloPagarAlterar.setid_formapagamentobanco(const a_Value: String);
begin
  Self.m_id_formapagamentobanco := a_Value;
end;

function TTituloPagarAlterar.getid_finalidadepagamentobanco: String;
begin
  Result := Self.m_id_finalidadepagamentobanco;
end;

procedure TTituloPagarAlterar.setid_finalidadepagamentobanco(const a_Value: String);
begin
  Self.m_id_finalidadepagamentobanco := a_Value;
end;

function TTituloPagarAlterar.getid_tipocontapagamentobanco: String;
begin
  Result := Self.m_id_tipocontapagamentobanco;
end;

procedure TTituloPagarAlterar.setid_tipocontapagamentobanco(const a_Value: String);
begin
  Self.m_id_tipocontapagamentobanco := a_Value;
end;

function TTituloPagarAlterar.getDataCompetenciaTributos: TDate;
begin
  Result := Self.m_DataCompetenciaTributos;
end;

procedure TTituloPagarAlterar.setDataCompetenciaTributos(const a_Value: TDate);
begin
  Self.m_DataCompetenciaTributos := a_Value;
end;

function TTituloPagarAlterar.getDataProcessamentoBoleto: TDate;
begin
  Result := Self.m_DataProcessamentoBoleto;
end;

procedure TTituloPagarAlterar.setDataProcessamentoBoleto(const a_Value: TDate);
begin
  Self.m_DataProcessamentoBoleto := a_Value;
end;

function TTituloPagarAlterar.getNossoNumero: String;
begin
  Result := Self.m_NossoNumero;
end;

procedure TTituloPagarAlterar.setNossoNumero(const a_Value: String);
begin
  Self.m_NossoNumero := a_Value;
end;

function TTituloPagarAlterar.getCodigoDoCedenteBoleto: String;
begin
  Result := Self.m_CodigoDoCedenteBoleto;
end;

procedure TTituloPagarAlterar.setCodigoDoCedenteBoleto(const a_Value: String);
begin
  Self.m_CodigoDoCedenteBoleto := a_Value;
end;

function TTituloPagarAlterar.getNumeroDocumentoBoleto: String;
begin
  Result := Self.m_NumeroDocumentoBoleto;
end;

procedure TTituloPagarAlterar.setNumeroDocumentoBoleto(const a_Value: String);
begin
  Self.m_NumeroDocumentoBoleto := a_Value;
end;

function TTituloPagarAlterar.getEspecieBoleto: String;
begin
  Result := Self.m_EspecieBoleto;
end;

procedure TTituloPagarAlterar.setEspecieBoleto(const a_Value: String);
begin
  Self.m_EspecieBoleto := a_Value;
end;

function TTituloPagarAlterar.getAceiteBoleto: Boolean;
begin
  Result := Self.m_AceiteBoleto;
end;

procedure TTituloPagarAlterar.setAceiteBoleto(const a_Value: Boolean);
begin
  Self.m_AceiteBoleto := a_Value;
end;

function TTituloPagarAlterar.getUsoBancoBoleto: String;
begin
  Result := Self.m_UsoBancoBoleto;
end;

procedure TTituloPagarAlterar.setUsoBancoBoleto(const a_Value: String);
begin
  Self.m_UsoBancoBoleto := a_Value;
end;

function TTituloPagarAlterar.getCarteiraBoleto: String;
begin
  Result := Self.m_CarteiraBoleto;
end;

procedure TTituloPagarAlterar.setCarteiraBoleto(const a_Value: String);
begin
  Self.m_CarteiraBoleto := a_Value;
end;

function TTituloPagarAlterar.getCodigodaReceitaTributos: String;
begin
  Result := Self.m_CodigodaReceitaTributos;
end;

procedure TTituloPagarAlterar.setCodigodaReceitaTributos(const a_Value: String);
begin
  Self.m_CodigodaReceitaTributos := a_Value;
end;

function TTituloPagarAlterar.getNumeroDeReferenciaDARF: String;
begin
  Result := Self.m_NumeroDeReferenciaDARF;
end;

procedure TTituloPagarAlterar.setNumeroDeReferenciaDARF(const a_Value: String);
begin
  Self.m_NumeroDeReferenciaDARF := a_Value;
end;

function TTituloPagarAlterar.getvalorreceitabrutaacumuladadarfsimples: Currency;
begin
  Result := Self.m_valorreceitabrutaacumuladadarfsimples;
end;

procedure TTituloPagarAlterar.setvalorreceitabrutaacumuladadarfsimples(const a_Value: Currency);
begin
  Self.m_valorreceitabrutaacumuladadarfsimples := a_Value;
end;

function TTituloPagarAlterar.getpercreceitabrutaacumuladadarfsimples: Currency;
begin
  Result := Self.m_percreceitabrutaacumuladadarfsimples;
end;

procedure TTituloPagarAlterar.setpercreceitabrutaacumuladadarfsimples(const a_Value: Currency);
begin
  Self.m_percreceitabrutaacumuladadarfsimples := a_Value;
end;

function TTituloPagarAlterar.getnumerodeclaracaogare: String;
begin
  Result := Self.m_numerodeclaracaogare;
end;

procedure TTituloPagarAlterar.setnumerodeclaracaogare(const a_Value: String);
begin
  Self.m_numerodeclaracaogare := a_Value;
end;

function TTituloPagarAlterar.getnumeroetiquetagare: String;
begin
  Result := Self.m_numeroetiquetagare;
end;

procedure TTituloPagarAlterar.setnumeroetiquetagare(const a_Value: String);
begin
  Self.m_numeroetiquetagare := a_Value;
end;

function TTituloPagarAlterar.getnumerodaparcelagare: String;
begin
  Result := Self.m_numerodaparcelagare;
end;

procedure TTituloPagarAlterar.setnumerodaparcelagare(const a_Value: String);
begin
  Self.m_numerodaparcelagare := a_Value;
end;

function TTituloPagarAlterar.getcodigomunicipioipva: String;
begin
  Result := Self.m_codigomunicipioipva;
end;

procedure TTituloPagarAlterar.setcodigomunicipioipva(const a_Value: String);
begin
  Self.m_codigomunicipioipva := a_Value;
end;

function TTituloPagarAlterar.getcodigorenavam: String;
begin
  Result := Self.m_codigorenavam;
end;

procedure TTituloPagarAlterar.setcodigorenavam(const a_Value: String);
begin
  Self.m_codigorenavam := a_Value;
end;

function TTituloPagarAlterar.getopcaodepagamentoipva: String;
begin
  Result := Self.m_opcaodepagamentoipva;
end;

procedure TTituloPagarAlterar.setopcaodepagamentoipva(const a_Value: String);
begin
  Self.m_opcaodepagamentoipva := a_Value;
end;

function TTituloPagarAlterar.getopcaoretiradacrlv: String;
begin
  Result := Self.m_opcaoretiradacrlv;
end;

procedure TTituloPagarAlterar.setopcaoretiradacrlv(const a_Value: String);
begin
  Self.m_opcaoretiradacrlv := a_Value;
end;

function TTituloPagarAlterar.getplacaveiculoipva: String;
begin
  Result := Self.m_placaveiculoipva;
end;

procedure TTituloPagarAlterar.setplacaveiculoipva(const a_Value: String);
begin
  Self.m_placaveiculoipva := a_Value;
end;

function TTituloPagarAlterar.getunidadefederacaoipva: String;
begin
  Result := Self.m_unidadefederacaoipva;
end;

procedure TTituloPagarAlterar.setunidadefederacaoipva(const a_Value: String);
begin
  Self.m_unidadefederacaoipva := a_Value;
end;

function TTituloPagarAlterar.getidentificadorfgts: String;
begin
  Result := Self.m_identificadorfgts;
end;

procedure TTituloPagarAlterar.setidentificadorfgts(const a_Value: String);
begin
  Self.m_identificadorfgts := a_Value;
end;

function TTituloPagarAlterar.getlacreconectividadesocial: String;
begin
  Result := Self.m_lacreconectividadesocial;
end;

procedure TTituloPagarAlterar.setlacreconectividadesocial(const a_Value: String);
begin
  Self.m_lacreconectividadesocial := a_Value;
end;

function TTituloPagarAlterar.getnumerodocumentodarj: String;
begin
  Result := Self.m_numerodocumentodarj;
end;

procedure TTituloPagarAlterar.setnumerodocumentodarj(const a_Value: String);
begin
  Self.m_numerodocumentodarj := a_Value;
end;

function TTituloPagarAlterar.getSituacao: Integer;
begin
  Result := Self.m_Situacao;
end;

procedure TTituloPagarAlterar.setSituacao(const a_Value: Integer);
begin
  Self.m_Situacao := a_Value;
end;

function TTituloPagarAlterar.getID_RENEGOCIACAO_GERADORA: String;
begin
  Result := Self.m_ID_RENEGOCIACAO_GERADORA;
end;

procedure TTituloPagarAlterar.setID_RENEGOCIACAO_GERADORA(const a_Value: String);
begin
  Self.m_ID_RENEGOCIACAO_GERADORA := a_Value;
end;

function TTituloPagarAlterar.getvalorvariacaocambialativa: Currency;
begin
  Result := Self.m_valorvariacaocambialativa;
end;

procedure TTituloPagarAlterar.setvalorvariacaocambialativa(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialativa := a_Value;
end;

function TTituloPagarAlterar.getvalorvariacaocambialpassiva: Currency;
begin
  Result := Self.m_valorvariacaocambialpassiva;
end;

procedure TTituloPagarAlterar.setvalorvariacaocambialpassiva(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialpassiva := a_Value;
end;

function TTituloPagarAlterar.getEmprestimo: Boolean;
begin
  Result := Self.m_Emprestimo;
end;

procedure TTituloPagarAlterar.setEmprestimo(const a_Value: Boolean);
begin
  Self.m_Emprestimo := a_Value;
end;

function TTituloPagarAlterar.getID_ContaEmprestimo: String;
begin
  Result := Self.m_ID_ContaEmprestimo;
end;

procedure TTituloPagarAlterar.setID_ContaEmprestimo(const a_Value: String);
begin
  Self.m_ID_ContaEmprestimo := a_Value;
end;

function TTituloPagarAlterar.getDataCompetencia: TDate;
begin
  Result := Self.m_DataCompetencia;
end;

procedure TTituloPagarAlterar.setDataCompetencia(const a_Value: TDate);
begin
  Self.m_DataCompetencia := a_Value;
end;

function TTituloPagarAlterar.getUsuarioResponsavel: String;
begin
  Result := Self.m_UsuarioResponsavel;
end;

procedure TTituloPagarAlterar.setUsuarioResponsavel(const a_Value: String);
begin
  Self.m_UsuarioResponsavel := a_Value;
end;

function TTituloPagarAlterar.getid_servicons: String;
begin
  Result := Self.m_id_servicons;
end;

procedure TTituloPagarAlterar.setid_servicons(const a_Value: String);
begin
  Self.m_id_servicons := a_Value;
end;

function TTituloPagarAlterar.getid_formapagamentons: String;
begin
  Result := Self.m_id_formapagamentons;
end;

procedure TTituloPagarAlterar.setid_formapagamentons(const a_Value: String);
begin
  Self.m_id_formapagamentons := a_Value;
end;

function TTituloPagarAlterar.getid_finalidadepagamentons: String;
begin
  Result := Self.m_id_finalidadepagamentons;
end;

procedure TTituloPagarAlterar.setid_finalidadepagamentons(const a_Value: String);
begin
  Self.m_id_finalidadepagamentons := a_Value;
end;

function TTituloPagarAlterar.getid_tipocontapagamentons: String;
begin
  Result := Self.m_id_tipocontapagamentons;
end;

procedure TTituloPagarAlterar.setid_tipocontapagamentons(const a_Value: String);
begin
  Self.m_id_tipocontapagamentons := a_Value;
end;

function TTituloPagarAlterar.gettipoordempagamento: Integer;
begin
  Result := Self.m_tipoordempagamento;
end;

procedure TTituloPagarAlterar.settipoordempagamento(const a_Value: Integer);
begin
  Self.m_tipoordempagamento := a_Value;
end;

function TTituloPagarAlterar.getTituloCoberturaConta: Boolean;
begin
  Result := Self.m_TituloCoberturaConta;
end;

procedure TTituloPagarAlterar.setTituloCoberturaConta(const a_Value: Boolean);
begin
  Self.m_TituloCoberturaConta := a_Value;
end;

function TTituloPagarAlterar.getGrupoEmpresarialCobertura: String;
begin
  Result := Self.m_GrupoEmpresarialCobertura;
end;

procedure TTituloPagarAlterar.setGrupoEmpresarialCobertura(const a_Value: String);
begin
  Self.m_GrupoEmpresarialCobertura := a_Value;
end;

function TTituloPagarAlterar.getContaCobertura: String;
begin
  Result := Self.m_ContaCobertura;
end;

procedure TTituloPagarAlterar.setContaCobertura(const a_Value: String);
begin
  Self.m_ContaCobertura := a_Value;
end;

function TTituloPagarAlterar.getIDDocumentoRateadoCobertura: String;
begin
  Result := Self.m_IDDocumentoRateadoCobertura;
end;

procedure TTituloPagarAlterar.setIDDocumentoRateadoCobertura(const a_Value: String);
begin
  Self.m_IDDocumentoRateadoCobertura := a_Value;
end;

function TTituloPagarAlterar.getPrestacaoDeConta: String;
begin
  Result := Self.m_PrestacaoDeConta;
end;

procedure TTituloPagarAlterar.setPrestacaoDeConta(const a_Value: String);
begin
  Self.m_PrestacaoDeConta := a_Value;
end;

function TTituloPagarAlterar.getcontafornecedor: String;
begin
  Result := Self.m_contafornecedor;
end;

procedure TTituloPagarAlterar.setcontafornecedor(const a_Value: String);
begin
  Self.m_contafornecedor := a_Value;
end;

function TTituloPagarAlterar.getPrevisto: Boolean;
begin
  Result := Self.m_Previsto;
end;

procedure TTituloPagarAlterar.setPrevisto(const a_Value: Boolean);
begin
  Self.m_Previsto := a_Value;
end;

function TTituloPagarAlterar.getCFOPCodigo: String;
begin
  Result := Self.m_CFOPCodigo;
end;

procedure TTituloPagarAlterar.setCFOPCodigo(const a_Value: String);
begin
  Self.m_CFOPCodigo := a_Value;
end;

function TTituloPagarAlterar.getIdConjuntoAnexo: String;
begin
  Result := Self.m_IdConjuntoAnexo;
end;

procedure TTituloPagarAlterar.setIdConjuntoAnexo(const a_Value: String);
begin
  Self.m_IdConjuntoAnexo := a_Value;
end;

function TTituloPagarAlterar.getOutrasRetencoes: Currency;
begin
  Result := Self.m_OutrasRetencoes;
end;

procedure TTituloPagarAlterar.setOutrasRetencoes(const a_Value: Currency);
begin
  Self.m_OutrasRetencoes := a_Value;
end;

function TTituloPagarAlterar.getDescricaoOutrasRetencoes: String;
begin
  Result := Self.m_DescricaoOutrasRetencoes;
end;

procedure TTituloPagarAlterar.setDescricaoOutrasRetencoes(const a_Value: String);
begin
  Self.m_DescricaoOutrasRetencoes := a_Value;
end;

function TTituloPagarAlterar.getContabilizar: Boolean;
begin
  Result := Self.m_Contabilizar;
end;

procedure TTituloPagarAlterar.setContabilizar(const a_Value: Boolean);
begin
  Self.m_Contabilizar := a_Value;
end;

function TTituloPagarAlterar.getContabilizar_Baixa: Boolean;
begin
  Result := Self.m_Contabilizar_Baixa;
end;

procedure TTituloPagarAlterar.setContabilizar_Baixa(const a_Value: Boolean);
begin
  Self.m_Contabilizar_Baixa := a_Value;
end;

function TTituloPagarAlterar.getRazaoSocialFactoring: String;
begin
  Result := Self.m_RazaoSocialFactoring;
end;

procedure TTituloPagarAlterar.setRazaoSocialFactoring(const a_Value: String);
begin
  Self.m_RazaoSocialFactoring := a_Value;
end;

function TTituloPagarAlterar.getNumeroDocumentoFactoring: String;
begin
  Result := Self.m_NumeroDocumentoFactoring;
end;

procedure TTituloPagarAlterar.setNumeroDocumentoFactoring(const a_Value: String);
begin
  Self.m_NumeroDocumentoFactoring := a_Value;
end;

function TTituloPagarAlterar.getRazaoSocialGPS: String;
begin
  Result := Self.m_RazaoSocialGPS;
end;

procedure TTituloPagarAlterar.setRazaoSocialGPS(const a_Value: String);
begin
  Self.m_RazaoSocialGPS := a_Value;
end;

function TTituloPagarAlterar.getNumeroDocumentoGPS: String;
begin
  Result := Self.m_NumeroDocumentoGPS;
end;

procedure TTituloPagarAlterar.setNumeroDocumentoGPS(const a_Value: String);
begin
  Self.m_NumeroDocumentoGPS := a_Value;
end;

function TTituloPagarAlterar.getEstorno: Boolean;
begin
  Result := Self.m_Estorno;
end;

procedure TTituloPagarAlterar.setEstorno(const a_Value: Boolean);
begin
  Self.m_Estorno := a_Value;
end;

function TTituloPagarAlterar.getid_titulo_estorno: String;
begin
  Result := Self.m_id_titulo_estorno;
end;

procedure TTituloPagarAlterar.setid_titulo_estorno(const a_Value: String);
begin
  Self.m_id_titulo_estorno := a_Value;
end;

function TTituloPagarAlterar.gettipoestorno: Integer;
begin
  Result := Self.m_tipoestorno;
end;

procedure TTituloPagarAlterar.settipoestorno(const a_Value: Integer);
begin
  Self.m_tipoestorno := a_Value;
end;

function TTituloPagarAlterar.getpisestornado: Currency;
begin
  Result := Self.m_pisestornado;
end;

procedure TTituloPagarAlterar.setpisestornado(const a_Value: Currency);
begin
  Self.m_pisestornado := a_Value;
end;

function TTituloPagarAlterar.getcofinsestornado: Currency;
begin
  Result := Self.m_cofinsestornado;
end;

procedure TTituloPagarAlterar.setcofinsestornado(const a_Value: Currency);
begin
  Self.m_cofinsestornado := a_Value;
end;

function TTituloPagarAlterar.getcsllestornado: Currency;
begin
  Result := Self.m_csllestornado;
end;

procedure TTituloPagarAlterar.setcsllestornado(const a_Value: Currency);
begin
  Self.m_csllestornado := a_Value;
end;

function TTituloPagarAlterar.getirestornado: Currency;
begin
  Result := Self.m_irestornado;
end;

procedure TTituloPagarAlterar.setirestornado(const a_Value: Currency);
begin
  Self.m_irestornado := a_Value;
end;

function TTituloPagarAlterar.getissestornado: Currency;
begin
  Result := Self.m_issestornado;
end;

procedure TTituloPagarAlterar.setissestornado(const a_Value: Currency);
begin
  Self.m_issestornado := a_Value;
end;

function TTituloPagarAlterar.getinssestornado: Currency;
begin
  Result := Self.m_inssestornado;
end;

procedure TTituloPagarAlterar.setinssestornado(const a_Value: Currency);
begin
  Self.m_inssestornado := a_Value;
end;

function TTituloPagarAlterar.getNotaFutura: Boolean;
begin
  Result := Self.m_NotaFutura;
end;

procedure TTituloPagarAlterar.setNotaFutura(const a_Value: Boolean);
begin
  Self.m_NotaFutura := a_Value;
end;

function TTituloPagarAlterar.getValorASerReembolsado: Boolean;
begin
  Result := Self.m_ValorASerReembolsado;
end;

procedure TTituloPagarAlterar.setValorASerReembolsado(const a_Value: Boolean);
begin
  Self.m_ValorASerReembolsado := a_Value;
end;

function TTituloPagarAlterar.getid_pessoa_reembolso: String;
begin
  Result := Self.m_id_pessoa_reembolso;
end;

procedure TTituloPagarAlterar.setid_pessoa_reembolso(const a_Value: String);
begin
  Self.m_id_pessoa_reembolso := a_Value;
end;

function TTituloPagarAlterar.getusamoedaestrangeira: Boolean;
begin
  Result := Self.m_usamoedaestrangeira;
end;

procedure TTituloPagarAlterar.setusamoedaestrangeira(const a_Value: Boolean);
begin
  Self.m_usamoedaestrangeira := a_Value;
end;

function TTituloPagarAlterar.getmoedaestrangeira: String;
begin
  Result := Self.m_moedaestrangeira;
end;

procedure TTituloPagarAlterar.setmoedaestrangeira(const a_Value: String);
begin
  Self.m_moedaestrangeira := a_Value;
end;

function TTituloPagarAlterar.getcotacao: Currency;
begin
  Result := Self.m_cotacao;
end;

procedure TTituloPagarAlterar.setcotacao(const a_Value: Currency);
begin
  Self.m_cotacao := a_Value;
end;

function TTituloPagarAlterar.getvalornamoedaestrangeira: Currency;
begin
  Result := Self.m_valornamoedaestrangeira;
end;

procedure TTituloPagarAlterar.setvalornamoedaestrangeira(const a_Value: Currency);
begin
  Self.m_valornamoedaestrangeira := a_Value;
end;

function TTituloPagarAlterar.getmesanocompetenciagps: String;
begin
  Result := Self.m_mesanocompetenciagps;
end;

procedure TTituloPagarAlterar.setmesanocompetenciagps(const a_Value: String);
begin
  Self.m_mesanocompetenciagps := a_Value;
end;

function TTituloPagarAlterar.getoutrasentidadesgps: Currency;
begin
  Result := Self.m_outrasentidadesgps;
end;

procedure TTituloPagarAlterar.setoutrasentidadesgps(const a_Value: Currency);
begin
  Self.m_outrasentidadesgps := a_Value;
end;

function TTituloPagarAlterar.getid_titulo_origemcomissao: String;
begin
  Result := Self.m_id_titulo_origemcomissao;
end;

procedure TTituloPagarAlterar.setid_titulo_origemcomissao(const a_Value: String);
begin
  Self.m_id_titulo_origemcomissao := a_Value;
end;

function TTituloPagarAlterar.getDataCancelamento: TDate;
begin
  Result := Self.m_DataCancelamento;
end;

procedure TTituloPagarAlterar.setDataCancelamento(const a_Value: TDate);
begin
  Self.m_DataCancelamento := a_Value;
end;

function TTituloPagarAlterar.getid_tipo_despesa_receita: String;
begin
  Result := Self.m_id_tipo_despesa_receita;
end;

procedure TTituloPagarAlterar.setid_tipo_despesa_receita(const a_Value: String);
begin
  Self.m_id_tipo_despesa_receita := a_Value;
end;

destructor TTituloPagarAlterar.Destroy;
begin
  Self.RateioFinanceiro.Free();
end;

function TTituloPagarAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTituloPagarAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTituloPagarAlterar.getNameAPI(): String;
begin
  Result := 'TituloPagarAlterar';
end;

function TTituloPagarAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTituloPagarAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTituloPagarExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TTituloPagarExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TTituloPagarExcluir.Destroy;
begin

end;

function TTituloPagarExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTituloPagarExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTituloPagarExcluir.getNameAPI(): String;
begin
  Result := 'TituloPagarExcluir';
end;

function TTituloPagarExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTituloPagarExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
