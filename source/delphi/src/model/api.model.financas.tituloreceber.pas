unit api.model.financas.TituloReceber;

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
  , api.model.financas.InformacaoCartao
  , api.model.financas.VendedorTitulo
  , api.model.financas.AdiantamentoSaldo
	

	;

type TTituloReceberNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_Conta: String;
    var m_LayoutCobranca: String;
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
    var m_InformacaoCartao: TInformacaoCartao;
    var m_NumeroVezesCartao: Integer;
    var m_ValorTarifaCartao: Currency;
    var m_AutorizacaoCartao: String;
    var m_DocumentoCartao: String;
    var m_NumeroParcelaCartao: Integer;
    var m_ValorParcelaCartao: Currency;
    var m_Vendedores: TObjectList<TVendedorTitulo>;
    var m_NumeroNota: String;
    var m_ModeloDocumentoFiscal: Integer;
    var m_SerieDocumentoFiscal: String;
    var m_SubserieDocumentoFiscal: String;
    var m_DataProvisoria: Boolean;
    var m_ValorProvisorio: Boolean;
    var m_TipoOrigem: Integer;
    var m_Contrato: String;
    var m_DataAutorizacaoCartao: TDate;
    var m_FormaPagamento: String;
    var m_Fatura: String;
    var m_IRRetidoNF: Currency;
    var m_INSSRetidoNF: Currency;
    var m_RPS: String;
    var m_ID_RENEGOCIACAO_GERADORA: String;
    var m_BemPatrimonial: String;
    var m_TaxaBancaria: Currency;
    var m_Desconto: Currency;
    var m_Multa: Currency;
    var m_Juros: Currency;
    var m_Adiantamento: Boolean;
    var m_UsaDiscriminacao: Boolean;
    var m_IDDocumentoRateado: String;
    var m_ModoExibicaoDesconto: String;
    var m_ModoExibicaoJuros: String;
    var m_ModoExibicaoMulta: String;
    var m_valorvariacaocambialativa: Currency;
    var m_valorvariacaocambialpassiva: Currency;
    var m_IdConjuntoAnexo: String;
    var m_DataCompetencia: TDate;
    var m_UsuarioResponsavel: String;
    var m_id_template: String;
    var m_UsuarioCadastro: String;
    var m_Previsto: Boolean;
    var m_id_documento_associado: String;
    var m_pagamento: String;
    var m_parcelapagamento: String;
    var m_adiantamentos: TObjectList<TAdiantamentoSaldo>;
    var m_TipoCredito: Integer;
    var m_CreditoIdentificado: Integer;
    var m_Nossonumero: String;
    var m_Contabilizar: Boolean;
    var m_Contabilizar_Baixa: Boolean;
    var m_OutrasRetencoes: Currency;
    var m_DescricaoOutrasRetencoes: String;
    var m_PercentualOutrosAcrescimos: Currency;
    var m_OutrosAcrescimos: Currency;
    var m_ModoExibicaoOutrosAcrescimos: String;
    var m_id_docfis: String;
    var m_NumeroExterno: String;
    var m_Estorno: Boolean;
    var m_id_titulo_estorno: String;
    var m_tipoestorno: Integer;
    var m_pisestornado: Currency;
    var m_cofinsestornado: Currency;
    var m_csllestornado: Currency;
    var m_irestornado: Currency;
    var m_issestornado: Currency;
    var m_inssestornado: Currency;
    var m_usamoedaestrangeira: Boolean;
    var m_moedaestrangeira: String;
    var m_cotacao: Currency;
    var m_valornamoedaestrangeira: Currency;
    var m_CFOPCodigo: String;
    var m_PrestacaoDeConta: String;
    var m_DataCancelamento: TDate;
    var m_id_tipo_despesa_receita: String;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getConta(): String;
    function getLayoutCobranca(): String;
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
    function getInformacaoCartao(): TInformacaoCartao;
    function getNumeroVezesCartao(): Integer;
    function getValorTarifaCartao(): Currency;
    function getAutorizacaoCartao(): String;
    function getDocumentoCartao(): String;
    function getNumeroParcelaCartao(): Integer;
    function getValorParcelaCartao(): Currency;
    function getVendedores(): TObjectList<TVendedorTitulo>;
    function getNumeroNota(): String;
    function getModeloDocumentoFiscal(): Integer;
    function getSerieDocumentoFiscal(): String;
    function getSubserieDocumentoFiscal(): String;
    function getDataProvisoria(): Boolean;
    function getValorProvisorio(): Boolean;
    function getTipoOrigem(): Integer;
    function getContrato(): String;
    function getDataAutorizacaoCartao(): TDate;
    function getFormaPagamento(): String;
    function getFatura(): String;
    function getIRRetidoNF(): Currency;
    function getINSSRetidoNF(): Currency;
    function getRPS(): String;
    function getID_RENEGOCIACAO_GERADORA(): String;
    function getBemPatrimonial(): String;
    function getTaxaBancaria(): Currency;
    function getDesconto(): Currency;
    function getMulta(): Currency;
    function getJuros(): Currency;
    function getAdiantamento(): Boolean;
    function getUsaDiscriminacao(): Boolean;
    function getIDDocumentoRateado(): String;
    function getModoExibicaoDesconto(): String;
    function getModoExibicaoJuros(): String;
    function getModoExibicaoMulta(): String;
    function getvalorvariacaocambialativa(): Currency;
    function getvalorvariacaocambialpassiva(): Currency;
    function getIdConjuntoAnexo(): String;
    function getDataCompetencia(): TDate;
    function getUsuarioResponsavel(): String;
    function getid_template(): String;
    function getUsuarioCadastro(): String;
    function getPrevisto(): Boolean;
    function getid_documento_associado(): String;
    function getpagamento(): String;
    function getparcelapagamento(): String;
    function getadiantamentos(): TObjectList<TAdiantamentoSaldo>;
    function getTipoCredito(): Integer;
    function getCreditoIdentificado(): Integer;
    function getNossonumero(): String;
    function getContabilizar(): Boolean;
    function getContabilizar_Baixa(): Boolean;
    function getOutrasRetencoes(): Currency;
    function getDescricaoOutrasRetencoes(): String;
    function getPercentualOutrosAcrescimos(): Currency;
    function getOutrosAcrescimos(): Currency;
    function getModoExibicaoOutrosAcrescimos(): String;
    function getid_docfis(): String;
    function getNumeroExterno(): String;
    function getEstorno(): Boolean;
    function getid_titulo_estorno(): String;
    function gettipoestorno(): Integer;
    function getpisestornado(): Currency;
    function getcofinsestornado(): Currency;
    function getcsllestornado(): Currency;
    function getirestornado(): Currency;
    function getissestornado(): Currency;
    function getinssestornado(): Currency;
    function getusamoedaestrangeira(): Boolean;
    function getmoedaestrangeira(): String;
    function getcotacao(): Currency;
    function getvalornamoedaestrangeira(): Currency;
    function getCFOPCodigo(): String;
    function getPrestacaoDeConta(): String;
    function getDataCancelamento(): TDate;
    function getid_tipo_despesa_receita(): String;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setConta(const a_Value: String);
    procedure setLayoutCobranca(const a_Value: String);
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
    procedure setInformacaoCartao(const a_Value: TInformacaoCartao);
    procedure setNumeroVezesCartao(const a_Value: Integer);
    procedure setValorTarifaCartao(const a_Value: Currency);
    procedure setAutorizacaoCartao(const a_Value: String);
    procedure setDocumentoCartao(const a_Value: String);
    procedure setNumeroParcelaCartao(const a_Value: Integer);
    procedure setValorParcelaCartao(const a_Value: Currency);
    procedure setVendedores(const a_Value: TObjectList<TVendedorTitulo>);
    procedure setNumeroNota(const a_Value: String);
    procedure setModeloDocumentoFiscal(const a_Value: Integer);
    procedure setSerieDocumentoFiscal(const a_Value: String);
    procedure setSubserieDocumentoFiscal(const a_Value: String);
    procedure setDataProvisoria(const a_Value: Boolean);
    procedure setValorProvisorio(const a_Value: Boolean);
    procedure setTipoOrigem(const a_Value: Integer);
    procedure setContrato(const a_Value: String);
    procedure setDataAutorizacaoCartao(const a_Value: TDate);
    procedure setFormaPagamento(const a_Value: String);
    procedure setFatura(const a_Value: String);
    procedure setIRRetidoNF(const a_Value: Currency);
    procedure setINSSRetidoNF(const a_Value: Currency);
    procedure setRPS(const a_Value: String);
    procedure setID_RENEGOCIACAO_GERADORA(const a_Value: String);
    procedure setBemPatrimonial(const a_Value: String);
    procedure setTaxaBancaria(const a_Value: Currency);
    procedure setDesconto(const a_Value: Currency);
    procedure setMulta(const a_Value: Currency);
    procedure setJuros(const a_Value: Currency);
    procedure setAdiantamento(const a_Value: Boolean);
    procedure setUsaDiscriminacao(const a_Value: Boolean);
    procedure setIDDocumentoRateado(const a_Value: String);
    procedure setModoExibicaoDesconto(const a_Value: String);
    procedure setModoExibicaoJuros(const a_Value: String);
    procedure setModoExibicaoMulta(const a_Value: String);
    procedure setvalorvariacaocambialativa(const a_Value: Currency);
    procedure setvalorvariacaocambialpassiva(const a_Value: Currency);
    procedure setIdConjuntoAnexo(const a_Value: String);
    procedure setDataCompetencia(const a_Value: TDate);
    procedure setUsuarioResponsavel(const a_Value: String);
    procedure setid_template(const a_Value: String);
    procedure setUsuarioCadastro(const a_Value: String);
    procedure setPrevisto(const a_Value: Boolean);
    procedure setid_documento_associado(const a_Value: String);
    procedure setpagamento(const a_Value: String);
    procedure setparcelapagamento(const a_Value: String);
    procedure setadiantamentos(const a_Value: TObjectList<TAdiantamentoSaldo>);
    procedure setTipoCredito(const a_Value: Integer);
    procedure setCreditoIdentificado(const a_Value: Integer);
    procedure setNossonumero(const a_Value: String);
    procedure setContabilizar(const a_Value: Boolean);
    procedure setContabilizar_Baixa(const a_Value: Boolean);
    procedure setOutrasRetencoes(const a_Value: Currency);
    procedure setDescricaoOutrasRetencoes(const a_Value: String);
    procedure setPercentualOutrosAcrescimos(const a_Value: Currency);
    procedure setOutrosAcrescimos(const a_Value: Currency);
    procedure setModoExibicaoOutrosAcrescimos(const a_Value: String);
    procedure setid_docfis(const a_Value: String);
    procedure setNumeroExterno(const a_Value: String);
    procedure setEstorno(const a_Value: Boolean);
    procedure setid_titulo_estorno(const a_Value: String);
    procedure settipoestorno(const a_Value: Integer);
    procedure setpisestornado(const a_Value: Currency);
    procedure setcofinsestornado(const a_Value: Currency);
    procedure setcsllestornado(const a_Value: Currency);
    procedure setirestornado(const a_Value: Currency);
    procedure setissestornado(const a_Value: Currency);
    procedure setinssestornado(const a_Value: Currency);
    procedure setusamoedaestrangeira(const a_Value: Boolean);
    procedure setmoedaestrangeira(const a_Value: String);
    procedure setcotacao(const a_Value: Currency);
    procedure setvalornamoedaestrangeira(const a_Value: Currency);
    procedure setCFOPCodigo(const a_Value: String);
    procedure setPrestacaoDeConta(const a_Value: String);
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
/// Indica o layout de cobrança a ser utilizado na integração bancária. Caso não seja informado o Guid, passar o nome.
    /// </summary>
    [NasajonSerializeAttribute('layoutcobranca')]
    property layoutcobranca: String read getLayoutCobranca write setLayoutCobranca;

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
/// Informações referente aos dados do cartão.
    /// </summary>
    [NasajonSerializeAttribute('informacaocartao')]
    property informacaocartao: TInformacaoCartao read getInformacaoCartao write setInformacaoCartao;

    /// <summary>
/// Indica o número de vezes que foi parcelado.
    /// </summary>
    [NasajonSerializeAttribute('numerovezescartao')]
    property numerovezescartao: Integer read getNumeroVezesCartao write setNumeroVezesCartao;

    /// <summary>
/// Indica o valor da tarifa. Calculada a partir do contrato com a operadora do cartão.
    /// </summary>
    [NasajonSerializeAttribute('valortarifacartao')]
    property valortarifacartao: Currency read getValorTarifaCartao write setValorTarifaCartao;

    /// <summary>
/// Indica o número da autorização que consta no recibo. Utilizado no arquivo retorno.
    /// </summary>
    [NasajonSerializeAttribute('autorizacaocartao')]
    property autorizacaocartao: String read getAutorizacaoCartao write setAutorizacaoCartao;

    /// <summary>
/// Indica o número do documento que consta no recibo. Utilizado no arquivo retorno.
    /// </summary>
    [NasajonSerializeAttribute('documentocartao')]
    property documentocartao: String read getDocumentoCartao write setDocumentoCartao;

    /// <summary>
/// Indica o número da parcela vigente do cartão.
    /// </summary>
    [NasajonSerializeAttribute('numeroparcelacartao')]
    property numeroparcelacartao: Integer read getNumeroParcelaCartao write setNumeroParcelaCartao;

    /// <summary>
/// Indica o valor parcelado no cartão.
    /// </summary>
    [NasajonSerializeAttribute('valorparcelacartao')]
    property valorparcelacartao: Currency read getValorParcelaCartao write setValorParcelaCartao;

    /// <summary>
/// Indica a lista de vendedores que participam do título a soma dos percentuais deve ser 100.
    /// </summary>
    [NasajonSerializeAttribute('vendedores')]
    property vendedores: TObjectList<TVendedorTitulo> read getVendedores write setVendedores;

    /// <summary>
/// Indica o número da nota que deu origem ao título.
    /// </summary>
    [NasajonSerializeAttribute('numeronota')]
    property numeronota: String read getNumeroNota write setNumeroNota;

    /// <summary>
/// Indica o modelo da nota que deu origem ao título. 
/// 				                             1-Nenhum Modelo de Documento Fiscal,
///                                              2-Nota Fiscal (Saída ou Entrada de NF emitida pelo fornecedor,
///                                              3-Nota Fiscal Eletrônica,
///                                              4-Nota Fiscal emissão própria na entrada, marcada ENTRADA [X],
///                                              5-Nota Fiscal de Venda ao Consumidor,
///                                              6-Nota Fiscal de Produtor (Rural), 
///                                              7-Nota Fiscal de Serviço,
///                                              8-Nota Fiscal Fatura de Serviço,
///                                              9-Nota Fiscal Simplificada de Serviço,
///                                              10-Nota Eletrônica de Serviços,
///                                              11-Conhecimento Aéreo,
///                                              12-Conhecimento de Transporte Aquaviário,
///                                              13-Conhecimento de Transporte Eletrônico,
///                                              14-Conhecimento de Transporte Ferroviário,
///                                              15-Nota Fiscal De Transporte Ferroviário,
///                                              16-Conhecimento de Transporte Rodoviário,
///                                              17-Conhecimento de Transporte Multimodal de Carga,
///                                              18-Nota Fiscal de Serviço de Transporte,
///                                              19-Conta de Energia Elétrica,
///                                              20-Nota Fiscal Serviço de Telecomunicação,
///                                              21-Conta Fornecimento de Gás Canalizado,
///                                              22-Conta Fornecimento de Água Canalizada,
///                                              23-Bilhete de Passagem Aquaviário,
///                                              24-Bilhete de Passagem Ferroviário,
///                                              25-Bilhete de Passagem e Nota de Bagagem,
///                                              26-Bilhete de Passagem Rodoviário,
///                                              27-Resumo do Movimento Diário (Transporte de Passageiros)
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
/// Indica a origem do titulo. Quando não informado, assumirá 0 - Manutenção 23 - Previsão
    /// </summary>
    [NasajonSerializeAttribute('tipoorigem')]
    property tipoorigem: Integer read getTipoOrigem write setTipoOrigem;

    [NasajonSerializeAttribute('contrato')]
    property contrato: String read getContrato write setContrato;

    /// <summary>
/// Indica data de autorização da venda por cartão. Utilizado no arquivo retorno.
    /// </summary>
    [NasajonSerializeAttribute('dataautorizacaocartao')]
    property dataautorizacaocartao: TDate read getDataAutorizacaoCartao write setDataAutorizacaoCartao;

    /// <summary>
/// Indica a forma de pagamento do título.
    /// </summary>
    [NasajonSerializeAttribute('formapagamento')]
    property formapagamento: String read getFormaPagamento write setFormaPagamento;

    /// <summary>
/// Indica o identificador da fatura ou seu número.
    /// </summary>
    [NasajonSerializeAttribute('fatura')]
    property fatura: String read getFatura write setFatura;

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

    [NasajonSerializeAttribute('rps')]
    property rps: String read getRPS write setRPS;

    [NasajonSerializeAttribute('id_renegociacao_geradora')]
    property id_renegociacao_geradora: String read getID_RENEGOCIACAO_GERADORA write setID_RENEGOCIACAO_GERADORA;

    [NasajonSerializeAttribute('bempatrimonial')]
    property bempatrimonial: String read getBemPatrimonial write setBemPatrimonial;

    [NasajonSerializeAttribute('taxabancaria')]
    property taxabancaria: Currency read getTaxaBancaria write setTaxaBancaria;

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

    /// <summary>
///  V - Valor  / P - Percentual 
    /// </summary>
    [NasajonSerializeAttribute('modoexibicaodesconto')]
    property modoexibicaodesconto: String read getModoExibicaoDesconto write setModoExibicaoDesconto;

    /// <summary>
///  V - Valor  / P - Percentual 
    /// </summary>
    [NasajonSerializeAttribute('modoexibicaojuros')]
    property modoexibicaojuros: String read getModoExibicaoJuros write setModoExibicaoJuros;

    /// <summary>
///  V - Valor  / P - Percentual 
    /// </summary>
    [NasajonSerializeAttribute('modoexibicaomulta')]
    property modoexibicaomulta: String read getModoExibicaoMulta write setModoExibicaoMulta;

    [NasajonSerializeAttribute('valorvariacaocambialativa')]
    property valorvariacaocambialativa: Currency read getvalorvariacaocambialativa write setvalorvariacaocambialativa;

    [NasajonSerializeAttribute('valorvariacaocambialpassiva')]
    property valorvariacaocambialpassiva: Currency read getvalorvariacaocambialpassiva write setvalorvariacaocambialpassiva;

    [NasajonSerializeAttribute('idconjuntoanexo')]
    property idconjuntoanexo: String read getIdConjuntoAnexo write setIdConjuntoAnexo;

    [NasajonSerializeAttribute('datacompetencia')]
    property datacompetencia: TDate read getDataCompetencia write setDataCompetencia;

    [NasajonSerializeAttribute('usuarioresponsavel')]
    property usuarioresponsavel: String read getUsuarioResponsavel write setUsuarioResponsavel;

    [NasajonSerializeAttribute('id_template')]
    property id_template: String read getid_template write setid_template;

    [NasajonSerializeAttribute('usuariocadastro')]
    property usuariocadastro: String read getUsuarioCadastro write setUsuarioCadastro;

    /// <summary>
/// Indica que o título é previsto, quando marcado(true).
    /// </summary>
    [NasajonSerializeAttribute('previsto')]
    property previsto: Boolean read getPrevisto write setPrevisto;

    [NasajonSerializeAttribute('id_documento_associado')]
    property id_documento_associado: String read getid_documento_associado write setid_documento_associado;

    [NasajonSerializeAttribute('pagamento')]
    property pagamento: String read getpagamento write setpagamento;

    [NasajonSerializeAttribute('parcelapagamento')]
    property parcelapagamento: String read getparcelapagamento write setparcelapagamento;

    [NasajonSerializeAttribute('adiantamentos')]
    property adiantamentos: TObjectList<TAdiantamentoSaldo> read getadiantamentos write setadiantamentos;

    [NasajonSerializeAttribute('tipocredito')]
    property tipocredito: Integer read getTipoCredito write setTipoCredito;

    [NasajonSerializeAttribute('creditoidentificado')]
    property creditoidentificado: Integer read getCreditoIdentificado write setCreditoIdentificado;

    [NasajonSerializeAttribute('nossonumero')]
    property nossonumero: String read getNossonumero write setNossonumero;

    [NasajonSerializeAttribute('contabilizar')]
    property contabilizar: Boolean read getContabilizar write setContabilizar;

    [NasajonSerializeAttribute('contabilizar_baixa')]
    property contabilizar_baixa: Boolean read getContabilizar_Baixa write setContabilizar_Baixa;

    [NasajonSerializeAttribute('outrasretencoes')]
    property outrasretencoes: Currency read getOutrasRetencoes write setOutrasRetencoes;

    [NasajonSerializeAttribute('descricaooutrasretencoes')]
    property descricaooutrasretencoes: String read getDescricaoOutrasRetencoes write setDescricaoOutrasRetencoes;

    [NasajonSerializeAttribute('percentualoutrosacrescimos')]
    property percentualoutrosacrescimos: Currency read getPercentualOutrosAcrescimos write setPercentualOutrosAcrescimos;

    [NasajonSerializeAttribute('outrosacrescimos')]
    property outrosacrescimos: Currency read getOutrosAcrescimos write setOutrosAcrescimos;

    [NasajonSerializeAttribute('modoexibicaooutrosacrescimos')]
    property modoexibicaooutrosacrescimos: String read getModoExibicaoOutrosAcrescimos write setModoExibicaoOutrosAcrescimos;

    /// <summary>
/// Indica o id do documento ao qual o titulo pertence.
    /// </summary>
    [NasajonSerializeAttribute('id_docfis')]
    property id_docfis: String read getid_docfis write setid_docfis;

    [NasajonSerializeAttribute('numeroexterno')]
    property numeroexterno: String read getNumeroExterno write setNumeroExterno;

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

    [NasajonSerializeAttribute('usamoedaestrangeira')]
    property usamoedaestrangeira: Boolean read getusamoedaestrangeira write setusamoedaestrangeira;

    [NasajonSerializeAttribute('moedaestrangeira')]
    property moedaestrangeira: String read getmoedaestrangeira write setmoedaestrangeira;

    [NasajonSerializeAttribute('cotacao')]
    property cotacao: Currency read getcotacao write setcotacao;

    [NasajonSerializeAttribute('valornamoedaestrangeira')]
    property valornamoedaestrangeira: Currency read getvalornamoedaestrangeira write setvalornamoedaestrangeira;

    /// <summary>
/// Código do CFOP.
    /// </summary>
    [NasajonSerializeAttribute('cfopcodigo')]
    property cfopcodigo: String read getCFOPCodigo write setCFOPCodigo;

    [NasajonSerializeAttribute('prestacaodeconta')]
    property prestacaodeconta: String read getPrestacaoDeConta write setPrestacaoDeConta;

    [NasajonSerializeAttribute('datacancelamento')]
    property datacancelamento: TDate read getDataCancelamento write setDataCancelamento;

    [NasajonSerializeAttribute('id_tipo_despesa_receita')]
    property id_tipo_despesa_receita: String read getid_tipo_despesa_receita write setid_tipo_despesa_receita;

    

end;

type TTituloReceberAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_Conta: String;
    var m_LayoutCobranca: String;
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
    var m_InformacaoCartao: TInformacaoCartao;
    var m_NumeroVezesCartao: Integer;
    var m_ValorTarifaCartao: Currency;
    var m_AutorizacaoCartao: String;
    var m_DocumentoCartao: String;
    var m_NumeroParcelaCartao: Integer;
    var m_ValorParcelaCartao: Currency;
    var m_Vendedores: TObjectList<TVendedorTitulo>;
    var m_NumeroNota: String;
    var m_ModeloDocumentoFiscal: Integer;
    var m_SerieDocumentoFiscal: String;
    var m_SubserieDocumentoFiscal: String;
    var m_DataProvisoria: Boolean;
    var m_ValorProvisorio: Boolean;
    var m_TipoOrigem: Integer;
    var m_Contrato: String;
    var m_DataAutorizacaoCartao: TDate;
    var m_FormaPagamento: String;
    var m_Fatura: String;
    var m_IRRetidoNF: Currency;
    var m_INSSRetidoNF: Currency;
    var m_RPS: String;
    var m_ID_RENEGOCIACAO_GERADORA: String;
    var m_Situacao: Integer;
    var m_BemPatrimonial: String;
    var m_TaxaBancaria: Currency;
    var m_Desconto: Currency;
    var m_Multa: Currency;
    var m_Juros: Currency;
    var m_Adiantamento: Boolean;
    var m_UsaDiscriminacao: Boolean;
    var m_IDDocumentoRateado: String;
    var m_ModoExibicaoDesconto: String;
    var m_ModoExibicaoJuros: String;
    var m_ModoExibicaoMulta: String;
    var m_valorvariacaocambialativa: Currency;
    var m_valorvariacaocambialpassiva: Currency;
    var m_DataCompetencia: TDate;
    var m_UsuarioResponsavel: String;
    var m_Previsto: Boolean;
    var m_IdConjuntoAnexo: String;
    var m_OutrasRetencoes: Currency;
    var m_DescricaoOutrasRetencoes: String;
    var m_PercentualOutrosAcrescimos: Currency;
    var m_OutrosAcrescimos: Currency;
    var m_ModoExibicaoOutrosAcrescimos: String;
    var m_Contabilizar: Boolean;
    var m_Contabilizar_Baixa: Boolean;
    var m_NumeroExterno: String;
    var m_Estorno: Boolean;
    var m_id_titulo_estorno: String;
    var m_tipoestorno: Integer;
    var m_pisestornado: Currency;
    var m_cofinsestornado: Currency;
    var m_csllestornado: Currency;
    var m_irestornado: Currency;
    var m_issestornado: Currency;
    var m_inssestornado: Currency;
    var m_usamoedaestrangeira: Boolean;
    var m_moedaestrangeira: String;
    var m_cotacao: Currency;
    var m_valornamoedaestrangeira: Currency;
    var m_CFOPCodigo: String;
    var m_PrestacaoDeConta: String;
    var m_DataCancelamento: TDate;
    var m_id_tipo_despesa_receita: String;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getConta(): String;
    function getLayoutCobranca(): String;
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
    function getInformacaoCartao(): TInformacaoCartao;
    function getNumeroVezesCartao(): Integer;
    function getValorTarifaCartao(): Currency;
    function getAutorizacaoCartao(): String;
    function getDocumentoCartao(): String;
    function getNumeroParcelaCartao(): Integer;
    function getValorParcelaCartao(): Currency;
    function getVendedores(): TObjectList<TVendedorTitulo>;
    function getNumeroNota(): String;
    function getModeloDocumentoFiscal(): Integer;
    function getSerieDocumentoFiscal(): String;
    function getSubserieDocumentoFiscal(): String;
    function getDataProvisoria(): Boolean;
    function getValorProvisorio(): Boolean;
    function getTipoOrigem(): Integer;
    function getContrato(): String;
    function getDataAutorizacaoCartao(): TDate;
    function getFormaPagamento(): String;
    function getFatura(): String;
    function getIRRetidoNF(): Currency;
    function getINSSRetidoNF(): Currency;
    function getRPS(): String;
    function getID_RENEGOCIACAO_GERADORA(): String;
    function getSituacao(): Integer;
    function getBemPatrimonial(): String;
    function getTaxaBancaria(): Currency;
    function getDesconto(): Currency;
    function getMulta(): Currency;
    function getJuros(): Currency;
    function getAdiantamento(): Boolean;
    function getUsaDiscriminacao(): Boolean;
    function getIDDocumentoRateado(): String;
    function getModoExibicaoDesconto(): String;
    function getModoExibicaoJuros(): String;
    function getModoExibicaoMulta(): String;
    function getvalorvariacaocambialativa(): Currency;
    function getvalorvariacaocambialpassiva(): Currency;
    function getDataCompetencia(): TDate;
    function getUsuarioResponsavel(): String;
    function getPrevisto(): Boolean;
    function getIdConjuntoAnexo(): String;
    function getOutrasRetencoes(): Currency;
    function getDescricaoOutrasRetencoes(): String;
    function getPercentualOutrosAcrescimos(): Currency;
    function getOutrosAcrescimos(): Currency;
    function getModoExibicaoOutrosAcrescimos(): String;
    function getContabilizar(): Boolean;
    function getContabilizar_Baixa(): Boolean;
    function getNumeroExterno(): String;
    function getEstorno(): Boolean;
    function getid_titulo_estorno(): String;
    function gettipoestorno(): Integer;
    function getpisestornado(): Currency;
    function getcofinsestornado(): Currency;
    function getcsllestornado(): Currency;
    function getirestornado(): Currency;
    function getissestornado(): Currency;
    function getinssestornado(): Currency;
    function getusamoedaestrangeira(): Boolean;
    function getmoedaestrangeira(): String;
    function getcotacao(): Currency;
    function getvalornamoedaestrangeira(): Currency;
    function getCFOPCodigo(): String;
    function getPrestacaoDeConta(): String;
    function getDataCancelamento(): TDate;
    function getid_tipo_despesa_receita(): String;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setConta(const a_Value: String);
    procedure setLayoutCobranca(const a_Value: String);
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
    procedure setInformacaoCartao(const a_Value: TInformacaoCartao);
    procedure setNumeroVezesCartao(const a_Value: Integer);
    procedure setValorTarifaCartao(const a_Value: Currency);
    procedure setAutorizacaoCartao(const a_Value: String);
    procedure setDocumentoCartao(const a_Value: String);
    procedure setNumeroParcelaCartao(const a_Value: Integer);
    procedure setValorParcelaCartao(const a_Value: Currency);
    procedure setVendedores(const a_Value: TObjectList<TVendedorTitulo>);
    procedure setNumeroNota(const a_Value: String);
    procedure setModeloDocumentoFiscal(const a_Value: Integer);
    procedure setSerieDocumentoFiscal(const a_Value: String);
    procedure setSubserieDocumentoFiscal(const a_Value: String);
    procedure setDataProvisoria(const a_Value: Boolean);
    procedure setValorProvisorio(const a_Value: Boolean);
    procedure setTipoOrigem(const a_Value: Integer);
    procedure setContrato(const a_Value: String);
    procedure setDataAutorizacaoCartao(const a_Value: TDate);
    procedure setFormaPagamento(const a_Value: String);
    procedure setFatura(const a_Value: String);
    procedure setIRRetidoNF(const a_Value: Currency);
    procedure setINSSRetidoNF(const a_Value: Currency);
    procedure setRPS(const a_Value: String);
    procedure setID_RENEGOCIACAO_GERADORA(const a_Value: String);
    procedure setSituacao(const a_Value: Integer);
    procedure setBemPatrimonial(const a_Value: String);
    procedure setTaxaBancaria(const a_Value: Currency);
    procedure setDesconto(const a_Value: Currency);
    procedure setMulta(const a_Value: Currency);
    procedure setJuros(const a_Value: Currency);
    procedure setAdiantamento(const a_Value: Boolean);
    procedure setUsaDiscriminacao(const a_Value: Boolean);
    procedure setIDDocumentoRateado(const a_Value: String);
    procedure setModoExibicaoDesconto(const a_Value: String);
    procedure setModoExibicaoJuros(const a_Value: String);
    procedure setModoExibicaoMulta(const a_Value: String);
    procedure setvalorvariacaocambialativa(const a_Value: Currency);
    procedure setvalorvariacaocambialpassiva(const a_Value: Currency);
    procedure setDataCompetencia(const a_Value: TDate);
    procedure setUsuarioResponsavel(const a_Value: String);
    procedure setPrevisto(const a_Value: Boolean);
    procedure setIdConjuntoAnexo(const a_Value: String);
    procedure setOutrasRetencoes(const a_Value: Currency);
    procedure setDescricaoOutrasRetencoes(const a_Value: String);
    procedure setPercentualOutrosAcrescimos(const a_Value: Currency);
    procedure setOutrosAcrescimos(const a_Value: Currency);
    procedure setModoExibicaoOutrosAcrescimos(const a_Value: String);
    procedure setContabilizar(const a_Value: Boolean);
    procedure setContabilizar_Baixa(const a_Value: Boolean);
    procedure setNumeroExterno(const a_Value: String);
    procedure setEstorno(const a_Value: Boolean);
    procedure setid_titulo_estorno(const a_Value: String);
    procedure settipoestorno(const a_Value: Integer);
    procedure setpisestornado(const a_Value: Currency);
    procedure setcofinsestornado(const a_Value: Currency);
    procedure setcsllestornado(const a_Value: Currency);
    procedure setirestornado(const a_Value: Currency);
    procedure setissestornado(const a_Value: Currency);
    procedure setinssestornado(const a_Value: Currency);
    procedure setusamoedaestrangeira(const a_Value: Boolean);
    procedure setmoedaestrangeira(const a_Value: String);
    procedure setcotacao(const a_Value: Currency);
    procedure setvalornamoedaestrangeira(const a_Value: Currency);
    procedure setCFOPCodigo(const a_Value: String);
    procedure setPrestacaoDeConta(const a_Value: String);
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
/// Indica o layout de cobrança a ser utilizado na integração bancária. Caso não seja informado o Guid, passar o nome.
    /// </summary>
    [NasajonSerializeAttribute('layoutcobranca')]
    property layoutcobranca: String read getLayoutCobranca write setLayoutCobranca;

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
/// Informações referente aos dados do cartão.
    /// </summary>
    [NasajonSerializeAttribute('informacaocartao')]
    property informacaocartao: TInformacaoCartao read getInformacaoCartao write setInformacaoCartao;

    /// <summary>
/// Indica o número de vezes que foi parcelado.
    /// </summary>
    [NasajonSerializeAttribute('numerovezescartao')]
    property numerovezescartao: Integer read getNumeroVezesCartao write setNumeroVezesCartao;

    /// <summary>
/// Indica o valor da tarifa. Calculada a partir do contrato com a operadora do cartão.
    /// </summary>
    [NasajonSerializeAttribute('valortarifacartao')]
    property valortarifacartao: Currency read getValorTarifaCartao write setValorTarifaCartao;

    /// <summary>
/// Indica o número da autorização que consta no recibo. Utilizado no arquivo retorno.
    /// </summary>
    [NasajonSerializeAttribute('autorizacaocartao')]
    property autorizacaocartao: String read getAutorizacaoCartao write setAutorizacaoCartao;

    /// <summary>
/// Indica o número do documento que consta no recibo. Utilizado no arquivo retorno.
    /// </summary>
    [NasajonSerializeAttribute('documentocartao')]
    property documentocartao: String read getDocumentoCartao write setDocumentoCartao;

    /// <summary>
/// Indica o número da parcela vigente do cartão.
    /// </summary>
    [NasajonSerializeAttribute('numeroparcelacartao')]
    property numeroparcelacartao: Integer read getNumeroParcelaCartao write setNumeroParcelaCartao;

    /// <summary>
/// Indica o valor parcelado no cartão.
    /// </summary>
    [NasajonSerializeAttribute('valorparcelacartao')]
    property valorparcelacartao: Currency read getValorParcelaCartao write setValorParcelaCartao;

    /// <summary>
/// Indica a lista de vendedores que participam do título a soma dos percentuais deve ser 100.
    /// </summary>
    [NasajonSerializeAttribute('vendedores')]
    property vendedores: TObjectList<TVendedorTitulo> read getVendedores write setVendedores;

    /// <summary>
/// Indica o número da nota que deu origem ao título.
    /// </summary>
    [NasajonSerializeAttribute('numeronota')]
    property numeronota: String read getNumeroNota write setNumeroNota;

    /// <summary>
/// Indica o modelo da nota que deu origem ao título. 
/// 				                             1-Nenhum Modelo de Documento Fiscal,
///                                              2-Nota Fiscal (Saída ou Entrada de NF emitida pelo fornecedor,
///                                              3-Nota Fiscal Eletrônica,
///                                              4-Nota Fiscal emissão própria na entrada, marcada ENTRADA [X],
///                                              5-Nota Fiscal de Venda ao Consumidor,
///                                              6-Nota Fiscal de Produtor (Rural), 
///                                              7-Nota Fiscal de Serviço,
///                                              8-Nota Fiscal Fatura de Serviço,
///                                              9-Nota Fiscal Simplificada de Serviço,
///                                              10-Nota Eletrônica de Serviços,
///                                              11-Conhecimento Aéreo,
///                                              12-Conhecimento de Transporte Aquaviário,
///                                              13-Conhecimento de Transporte Eletrônico,
///                                              14-Conhecimento de Transporte Ferroviário,
///                                              15-Nota Fiscal De Transporte Ferroviário,
///                                              16-Conhecimento de Transporte Rodoviário,
///                                              17-Conhecimento de Transporte Multimodal de Carga,
///                                              18-Nota Fiscal de Serviço de Transporte,
///                                              19-Conta de Energia Elétrica,
///                                              20-Nota Fiscal Serviço de Telecomunicação,
///                                              21-Conta Fornecimento de Gás Canalizado,
///                                              22-Conta Fornecimento de Água Canalizada,
///                                              23-Bilhete de Passagem Aquaviário,
///                                              24-Bilhete de Passagem Ferroviário,
///                                              25-Bilhete de Passagem e Nota de Bagagem,
///                                              26-Bilhete de Passagem Rodoviário,
///                                              27-Resumo do Movimento Diário (Transporte de Passageiros)
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
/// Indica a origem do titulo. Quando não informado, assumirá 0 - Manutenção 23 - Previsão
    /// </summary>
    [NasajonSerializeAttribute('tipoorigem')]
    property tipoorigem: Integer read getTipoOrigem write setTipoOrigem;

    [NasajonSerializeAttribute('contrato')]
    property contrato: String read getContrato write setContrato;

    /// <summary>
/// Indica data de autorização da venda por cartão. Utilizado no arquivo retorno.
    /// </summary>
    [NasajonSerializeAttribute('dataautorizacaocartao')]
    property dataautorizacaocartao: TDate read getDataAutorizacaoCartao write setDataAutorizacaoCartao;

    /// <summary>
/// Indica a forma de pagamento do título.
    /// </summary>
    [NasajonSerializeAttribute('formapagamento')]
    property formapagamento: String read getFormaPagamento write setFormaPagamento;

    /// <summary>
/// Indica o identificador da fatura ou seu número.
    /// </summary>
    [NasajonSerializeAttribute('fatura')]
    property fatura: String read getFatura write setFatura;

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

    [NasajonSerializeAttribute('rps')]
    property rps: String read getRPS write setRPS;

    [NasajonSerializeAttribute('id_renegociacao_geradora')]
    property id_renegociacao_geradora: String read getID_RENEGOCIACAO_GERADORA write setID_RENEGOCIACAO_GERADORA;

    [NasajonSerializeAttribute('situacao')]
    property situacao: Integer read getSituacao write setSituacao;

    [NasajonSerializeAttribute('bempatrimonial')]
    property bempatrimonial: String read getBemPatrimonial write setBemPatrimonial;

    [NasajonSerializeAttribute('taxabancaria')]
    property taxabancaria: Currency read getTaxaBancaria write setTaxaBancaria;

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

    /// <summary>
///  V - Valor  / P - Percentual 
    /// </summary>
    [NasajonSerializeAttribute('modoexibicaodesconto')]
    property modoexibicaodesconto: String read getModoExibicaoDesconto write setModoExibicaoDesconto;

    /// <summary>
///  V - Valor  / P - Percentual 
    /// </summary>
    [NasajonSerializeAttribute('modoexibicaojuros')]
    property modoexibicaojuros: String read getModoExibicaoJuros write setModoExibicaoJuros;

    /// <summary>
///  V - Valor  / P - Percentual 
    /// </summary>
    [NasajonSerializeAttribute('modoexibicaomulta')]
    property modoexibicaomulta: String read getModoExibicaoMulta write setModoExibicaoMulta;

    [NasajonSerializeAttribute('valorvariacaocambialativa')]
    property valorvariacaocambialativa: Currency read getvalorvariacaocambialativa write setvalorvariacaocambialativa;

    [NasajonSerializeAttribute('valorvariacaocambialpassiva')]
    property valorvariacaocambialpassiva: Currency read getvalorvariacaocambialpassiva write setvalorvariacaocambialpassiva;

    [NasajonSerializeAttribute('datacompetencia')]
    property datacompetencia: TDate read getDataCompetencia write setDataCompetencia;

    [NasajonSerializeAttribute('usuarioresponsavel')]
    property usuarioresponsavel: String read getUsuarioResponsavel write setUsuarioResponsavel;

    /// <summary>
/// Indica que o título é previsto, quando marcado(true).
    /// </summary>
    [NasajonSerializeAttribute('previsto')]
    property previsto: Boolean read getPrevisto write setPrevisto;

    [NasajonSerializeAttribute('idconjuntoanexo')]
    property idconjuntoanexo: String read getIdConjuntoAnexo write setIdConjuntoAnexo;

    [NasajonSerializeAttribute('outrasretencoes')]
    property outrasretencoes: Currency read getOutrasRetencoes write setOutrasRetencoes;

    [NasajonSerializeAttribute('descricaooutrasretencoes')]
    property descricaooutrasretencoes: String read getDescricaoOutrasRetencoes write setDescricaoOutrasRetencoes;

    [NasajonSerializeAttribute('percentualoutrosacrescimos')]
    property percentualoutrosacrescimos: Currency read getPercentualOutrosAcrescimos write setPercentualOutrosAcrescimos;

    [NasajonSerializeAttribute('outrosacrescimos')]
    property outrosacrescimos: Currency read getOutrosAcrescimos write setOutrosAcrescimos;

    [NasajonSerializeAttribute('modoexibicaooutrosacrescimos')]
    property modoexibicaooutrosacrescimos: String read getModoExibicaoOutrosAcrescimos write setModoExibicaoOutrosAcrescimos;

    [NasajonSerializeAttribute('contabilizar')]
    property contabilizar: Boolean read getContabilizar write setContabilizar;

    [NasajonSerializeAttribute('contabilizar_baixa')]
    property contabilizar_baixa: Boolean read getContabilizar_Baixa write setContabilizar_Baixa;

    [NasajonSerializeAttribute('numeroexterno')]
    property numeroexterno: String read getNumeroExterno write setNumeroExterno;

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

    [NasajonSerializeAttribute('usamoedaestrangeira')]
    property usamoedaestrangeira: Boolean read getusamoedaestrangeira write setusamoedaestrangeira;

    [NasajonSerializeAttribute('moedaestrangeira')]
    property moedaestrangeira: String read getmoedaestrangeira write setmoedaestrangeira;

    [NasajonSerializeAttribute('cotacao')]
    property cotacao: Currency read getcotacao write setcotacao;

    [NasajonSerializeAttribute('valornamoedaestrangeira')]
    property valornamoedaestrangeira: Currency read getvalornamoedaestrangeira write setvalornamoedaestrangeira;

    /// <summary>
/// Código do CFOP.
    /// </summary>
    [NasajonSerializeAttribute('cfopcodigo')]
    property cfopcodigo: String read getCFOPCodigo write setCFOPCodigo;

    [NasajonSerializeAttribute('prestacaodeconta')]
    property prestacaodeconta: String read getPrestacaoDeConta write setPrestacaoDeConta;

    [NasajonSerializeAttribute('datacancelamento')]
    property datacancelamento: TDate read getDataCancelamento write setDataCancelamento;

    [NasajonSerializeAttribute('id_tipo_despesa_receita')]
    property id_tipo_despesa_receita: String read getid_tipo_despesa_receita write setid_tipo_despesa_receita;

    

end;

type TTituloReceberExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TTituloReceberNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TTituloReceberNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TTituloReceberNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TTituloReceberNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TTituloReceberNovo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TTituloReceberNovo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TTituloReceberNovo.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TTituloReceberNovo.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TTituloReceberNovo.getLayoutCobranca: String;
begin
  Result := Self.m_LayoutCobranca;
end;

procedure TTituloReceberNovo.setLayoutCobranca(const a_Value: String);
begin
  Self.m_LayoutCobranca := a_Value;
end;

function TTituloReceberNovo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TTituloReceberNovo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TTituloReceberNovo.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TTituloReceberNovo.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TTituloReceberNovo.getVencimento: TDate;
begin
  Result := Self.m_Vencimento;
end;

procedure TTituloReceberNovo.setVencimento(const a_Value: TDate);
begin
  Self.m_Vencimento := a_Value;
end;

function TTituloReceberNovo.getPrevisaoVencimento: TDate;
begin
  Result := Self.m_PrevisaoVencimento;
end;

procedure TTituloReceberNovo.setPrevisaoVencimento(const a_Value: TDate);
begin
  Self.m_PrevisaoVencimento := a_Value;
end;

function TTituloReceberNovo.getParcela: Integer;
begin
  Result := Self.m_Parcela;
end;

procedure TTituloReceberNovo.setParcela(const a_Value: Integer);
begin
  Self.m_Parcela := a_Value;
end;

function TTituloReceberNovo.getTotalParcelas: Integer;
begin
  Result := Self.m_TotalParcelas;
end;

procedure TTituloReceberNovo.setTotalParcelas(const a_Value: Integer);
begin
  Self.m_TotalParcelas := a_Value;
end;

function TTituloReceberNovo.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TTituloReceberNovo.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TTituloReceberNovo.getAnotacoes: WideString;
begin
  Result := Self.m_Anotacoes;
end;

procedure TTituloReceberNovo.setAnotacoes(const a_Value: WideString);
begin
  Self.m_Anotacoes := a_Value;
end;

function TTituloReceberNovo.getValorTitulo: Currency;
begin
  Result := Self.m_ValorTitulo;
end;

procedure TTituloReceberNovo.setValorTitulo(const a_Value: Currency);
begin
  Self.m_ValorTitulo := a_Value;
end;

function TTituloReceberNovo.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TTituloReceberNovo.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TTituloReceberNovo.getAliquotaIr: Currency;
begin
  Result := Self.m_AliquotaIr;
end;

procedure TTituloReceberNovo.setAliquotaIr(const a_Value: Currency);
begin
  Self.m_AliquotaIr := a_Value;
end;

function TTituloReceberNovo.getValorIrRetido: Currency;
begin
  Result := Self.m_ValorIrRetido;
end;

procedure TTituloReceberNovo.setValorIrRetido(const a_Value: Currency);
begin
  Self.m_ValorIrRetido := a_Value;
end;

function TTituloReceberNovo.getAliquotaCofins: Currency;
begin
  Result := Self.m_AliquotaCofins;
end;

procedure TTituloReceberNovo.setAliquotaCofins(const a_Value: Currency);
begin
  Self.m_AliquotaCofins := a_Value;
end;

function TTituloReceberNovo.getValorCofinsRetido: Currency;
begin
  Result := Self.m_ValorCofinsRetido;
end;

procedure TTituloReceberNovo.setValorCofinsRetido(const a_Value: Currency);
begin
  Self.m_ValorCofinsRetido := a_Value;
end;

function TTituloReceberNovo.getAliquotaPis: Currency;
begin
  Result := Self.m_AliquotaPis;
end;

procedure TTituloReceberNovo.setAliquotaPis(const a_Value: Currency);
begin
  Self.m_AliquotaPis := a_Value;
end;

function TTituloReceberNovo.getValorPisRetido: Currency;
begin
  Result := Self.m_ValorPisRetido;
end;

procedure TTituloReceberNovo.setValorPisRetido(const a_Value: Currency);
begin
  Self.m_ValorPisRetido := a_Value;
end;

function TTituloReceberNovo.getAliquotaCsll: Currency;
begin
  Result := Self.m_AliquotaCsll;
end;

procedure TTituloReceberNovo.setAliquotaCsll(const a_Value: Currency);
begin
  Self.m_AliquotaCsll := a_Value;
end;

function TTituloReceberNovo.getValorCsllRetido: Currency;
begin
  Result := Self.m_ValorCsllRetido;
end;

procedure TTituloReceberNovo.setValorCsllRetido(const a_Value: Currency);
begin
  Self.m_ValorCsllRetido := a_Value;
end;

function TTituloReceberNovo.getValorInssRetido: Currency;
begin
  Result := Self.m_ValorInssRetido;
end;

procedure TTituloReceberNovo.setValorInssRetido(const a_Value: Currency);
begin
  Self.m_ValorInssRetido := a_Value;
end;

function TTituloReceberNovo.getAliquotaIss: Currency;
begin
  Result := Self.m_AliquotaIss;
end;

procedure TTituloReceberNovo.setAliquotaIss(const a_Value: Currency);
begin
  Self.m_AliquotaIss := a_Value;
end;

function TTituloReceberNovo.getValorIssRetido: Currency;
begin
  Result := Self.m_ValorIssRetido;
end;

procedure TTituloReceberNovo.setValorIssRetido(const a_Value: Currency);
begin
  Self.m_ValorIssRetido := a_Value;
end;

function TTituloReceberNovo.getDataLimiteDesconto: TDate;
begin
  Result := Self.m_DataLimiteDesconto;
end;

procedure TTituloReceberNovo.setDataLimiteDesconto(const a_Value: TDate);
begin
  Self.m_DataLimiteDesconto := a_Value;
end;

function TTituloReceberNovo.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TTituloReceberNovo.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TTituloReceberNovo.getDataInicioMulta: TDate;
begin
  Result := Self.m_DataInicioMulta;
end;

procedure TTituloReceberNovo.setDataInicioMulta(const a_Value: TDate);
begin
  Self.m_DataInicioMulta := a_Value;
end;

function TTituloReceberNovo.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TTituloReceberNovo.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TTituloReceberNovo.getPercentualJurosDiario: Currency;
begin
  Result := Self.m_PercentualJurosDiario;
end;

procedure TTituloReceberNovo.setPercentualJurosDiario(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiario := a_Value;
end;

function TTituloReceberNovo.getInformacaoCartao: TInformacaoCartao;
begin
  if not Assigned(Self.m_InformacaoCartao)
    then Self.m_InformacaoCartao := TInformacaoCartao.Create();
  Result := Self.m_InformacaoCartao;
end;

procedure TTituloReceberNovo.setInformacaoCartao(const a_Value: TInformacaoCartao);
begin
  Self.m_InformacaoCartao := a_Value;
end;

function TTituloReceberNovo.getNumeroVezesCartao: Integer;
begin
  Result := Self.m_NumeroVezesCartao;
end;

procedure TTituloReceberNovo.setNumeroVezesCartao(const a_Value: Integer);
begin
  Self.m_NumeroVezesCartao := a_Value;
end;

function TTituloReceberNovo.getValorTarifaCartao: Currency;
begin
  Result := Self.m_ValorTarifaCartao;
end;

procedure TTituloReceberNovo.setValorTarifaCartao(const a_Value: Currency);
begin
  Self.m_ValorTarifaCartao := a_Value;
end;

function TTituloReceberNovo.getAutorizacaoCartao: String;
begin
  Result := Self.m_AutorizacaoCartao;
end;

procedure TTituloReceberNovo.setAutorizacaoCartao(const a_Value: String);
begin
  Self.m_AutorizacaoCartao := a_Value;
end;

function TTituloReceberNovo.getDocumentoCartao: String;
begin
  Result := Self.m_DocumentoCartao;
end;

procedure TTituloReceberNovo.setDocumentoCartao(const a_Value: String);
begin
  Self.m_DocumentoCartao := a_Value;
end;

function TTituloReceberNovo.getNumeroParcelaCartao: Integer;
begin
  Result := Self.m_NumeroParcelaCartao;
end;

procedure TTituloReceberNovo.setNumeroParcelaCartao(const a_Value: Integer);
begin
  Self.m_NumeroParcelaCartao := a_Value;
end;

function TTituloReceberNovo.getValorParcelaCartao: Currency;
begin
  Result := Self.m_ValorParcelaCartao;
end;

procedure TTituloReceberNovo.setValorParcelaCartao(const a_Value: Currency);
begin
  Self.m_ValorParcelaCartao := a_Value;
end;

function TTituloReceberNovo.getVendedores: TObjectList<TVendedorTitulo>;
begin
  if not Assigned(Self.m_Vendedores)
    then Self.m_Vendedores := TObjectList<TVendedorTitulo>.Create();
  Result := Self.m_Vendedores;
end;

procedure TTituloReceberNovo.setVendedores(const a_Value: TObjectList<TVendedorTitulo>);
begin
  Self.m_Vendedores := a_Value;
end;

function TTituloReceberNovo.getNumeroNota: String;
begin
  Result := Self.m_NumeroNota;
end;

procedure TTituloReceberNovo.setNumeroNota(const a_Value: String);
begin
  Self.m_NumeroNota := a_Value;
end;

function TTituloReceberNovo.getModeloDocumentoFiscal: Integer;
begin
  Result := Self.m_ModeloDocumentoFiscal;
end;

procedure TTituloReceberNovo.setModeloDocumentoFiscal(const a_Value: Integer);
begin
  Self.m_ModeloDocumentoFiscal := a_Value;
end;

function TTituloReceberNovo.getSerieDocumentoFiscal: String;
begin
  Result := Self.m_SerieDocumentoFiscal;
end;

procedure TTituloReceberNovo.setSerieDocumentoFiscal(const a_Value: String);
begin
  Self.m_SerieDocumentoFiscal := a_Value;
end;

function TTituloReceberNovo.getSubserieDocumentoFiscal: String;
begin
  Result := Self.m_SubserieDocumentoFiscal;
end;

procedure TTituloReceberNovo.setSubserieDocumentoFiscal(const a_Value: String);
begin
  Self.m_SubserieDocumentoFiscal := a_Value;
end;

function TTituloReceberNovo.getDataProvisoria: Boolean;
begin
  Result := Self.m_DataProvisoria;
end;

procedure TTituloReceberNovo.setDataProvisoria(const a_Value: Boolean);
begin
  Self.m_DataProvisoria := a_Value;
end;

function TTituloReceberNovo.getValorProvisorio: Boolean;
begin
  Result := Self.m_ValorProvisorio;
end;

procedure TTituloReceberNovo.setValorProvisorio(const a_Value: Boolean);
begin
  Self.m_ValorProvisorio := a_Value;
end;

function TTituloReceberNovo.getTipoOrigem: Integer;
begin
  Result := Self.m_TipoOrigem;
end;

procedure TTituloReceberNovo.setTipoOrigem(const a_Value: Integer);
begin
  Self.m_TipoOrigem := a_Value;
end;

function TTituloReceberNovo.getContrato: String;
begin
  Result := Self.m_Contrato;
end;

procedure TTituloReceberNovo.setContrato(const a_Value: String);
begin
  Self.m_Contrato := a_Value;
end;

function TTituloReceberNovo.getDataAutorizacaoCartao: TDate;
begin
  Result := Self.m_DataAutorizacaoCartao;
end;

procedure TTituloReceberNovo.setDataAutorizacaoCartao(const a_Value: TDate);
begin
  Self.m_DataAutorizacaoCartao := a_Value;
end;

function TTituloReceberNovo.getFormaPagamento: String;
begin
  Result := Self.m_FormaPagamento;
end;

procedure TTituloReceberNovo.setFormaPagamento(const a_Value: String);
begin
  Self.m_FormaPagamento := a_Value;
end;

function TTituloReceberNovo.getFatura: String;
begin
  Result := Self.m_Fatura;
end;

procedure TTituloReceberNovo.setFatura(const a_Value: String);
begin
  Self.m_Fatura := a_Value;
end;

function TTituloReceberNovo.getIRRetidoNF: Currency;
begin
  Result := Self.m_IRRetidoNF;
end;

procedure TTituloReceberNovo.setIRRetidoNF(const a_Value: Currency);
begin
  Self.m_IRRetidoNF := a_Value;
end;

function TTituloReceberNovo.getINSSRetidoNF: Currency;
begin
  Result := Self.m_INSSRetidoNF;
end;

procedure TTituloReceberNovo.setINSSRetidoNF(const a_Value: Currency);
begin
  Self.m_INSSRetidoNF := a_Value;
end;

function TTituloReceberNovo.getRPS: String;
begin
  Result := Self.m_RPS;
end;

procedure TTituloReceberNovo.setRPS(const a_Value: String);
begin
  Self.m_RPS := a_Value;
end;

function TTituloReceberNovo.getID_RENEGOCIACAO_GERADORA: String;
begin
  Result := Self.m_ID_RENEGOCIACAO_GERADORA;
end;

procedure TTituloReceberNovo.setID_RENEGOCIACAO_GERADORA(const a_Value: String);
begin
  Self.m_ID_RENEGOCIACAO_GERADORA := a_Value;
end;

function TTituloReceberNovo.getBemPatrimonial: String;
begin
  Result := Self.m_BemPatrimonial;
end;

procedure TTituloReceberNovo.setBemPatrimonial(const a_Value: String);
begin
  Self.m_BemPatrimonial := a_Value;
end;

function TTituloReceberNovo.getTaxaBancaria: Currency;
begin
  Result := Self.m_TaxaBancaria;
end;

procedure TTituloReceberNovo.setTaxaBancaria(const a_Value: Currency);
begin
  Self.m_TaxaBancaria := a_Value;
end;

function TTituloReceberNovo.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TTituloReceberNovo.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TTituloReceberNovo.getMulta: Currency;
begin
  Result := Self.m_Multa;
end;

procedure TTituloReceberNovo.setMulta(const a_Value: Currency);
begin
  Self.m_Multa := a_Value;
end;

function TTituloReceberNovo.getJuros: Currency;
begin
  Result := Self.m_Juros;
end;

procedure TTituloReceberNovo.setJuros(const a_Value: Currency);
begin
  Self.m_Juros := a_Value;
end;

function TTituloReceberNovo.getAdiantamento: Boolean;
begin
  Result := Self.m_Adiantamento;
end;

procedure TTituloReceberNovo.setAdiantamento(const a_Value: Boolean);
begin
  Self.m_Adiantamento := a_Value;
end;

function TTituloReceberNovo.getUsaDiscriminacao: Boolean;
begin
  Result := Self.m_UsaDiscriminacao;
end;

procedure TTituloReceberNovo.setUsaDiscriminacao(const a_Value: Boolean);
begin
  Self.m_UsaDiscriminacao := a_Value;
end;

function TTituloReceberNovo.getIDDocumentoRateado: String;
begin
  Result := Self.m_IDDocumentoRateado;
end;

procedure TTituloReceberNovo.setIDDocumentoRateado(const a_Value: String);
begin
  Self.m_IDDocumentoRateado := a_Value;
end;

function TTituloReceberNovo.getModoExibicaoDesconto: String;
begin
  Result := Self.m_ModoExibicaoDesconto;
end;

procedure TTituloReceberNovo.setModoExibicaoDesconto(const a_Value: String);
begin
  Self.m_ModoExibicaoDesconto := a_Value;
end;

function TTituloReceberNovo.getModoExibicaoJuros: String;
begin
  Result := Self.m_ModoExibicaoJuros;
end;

procedure TTituloReceberNovo.setModoExibicaoJuros(const a_Value: String);
begin
  Self.m_ModoExibicaoJuros := a_Value;
end;

function TTituloReceberNovo.getModoExibicaoMulta: String;
begin
  Result := Self.m_ModoExibicaoMulta;
end;

procedure TTituloReceberNovo.setModoExibicaoMulta(const a_Value: String);
begin
  Self.m_ModoExibicaoMulta := a_Value;
end;

function TTituloReceberNovo.getvalorvariacaocambialativa: Currency;
begin
  Result := Self.m_valorvariacaocambialativa;
end;

procedure TTituloReceberNovo.setvalorvariacaocambialativa(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialativa := a_Value;
end;

function TTituloReceberNovo.getvalorvariacaocambialpassiva: Currency;
begin
  Result := Self.m_valorvariacaocambialpassiva;
end;

procedure TTituloReceberNovo.setvalorvariacaocambialpassiva(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialpassiva := a_Value;
end;

function TTituloReceberNovo.getIdConjuntoAnexo: String;
begin
  Result := Self.m_IdConjuntoAnexo;
end;

procedure TTituloReceberNovo.setIdConjuntoAnexo(const a_Value: String);
begin
  Self.m_IdConjuntoAnexo := a_Value;
end;

function TTituloReceberNovo.getDataCompetencia: TDate;
begin
  Result := Self.m_DataCompetencia;
end;

procedure TTituloReceberNovo.setDataCompetencia(const a_Value: TDate);
begin
  Self.m_DataCompetencia := a_Value;
end;

function TTituloReceberNovo.getUsuarioResponsavel: String;
begin
  Result := Self.m_UsuarioResponsavel;
end;

procedure TTituloReceberNovo.setUsuarioResponsavel(const a_Value: String);
begin
  Self.m_UsuarioResponsavel := a_Value;
end;

function TTituloReceberNovo.getid_template: String;
begin
  Result := Self.m_id_template;
end;

procedure TTituloReceberNovo.setid_template(const a_Value: String);
begin
  Self.m_id_template := a_Value;
end;

function TTituloReceberNovo.getUsuarioCadastro: String;
begin
  Result := Self.m_UsuarioCadastro;
end;

procedure TTituloReceberNovo.setUsuarioCadastro(const a_Value: String);
begin
  Self.m_UsuarioCadastro := a_Value;
end;

function TTituloReceberNovo.getPrevisto: Boolean;
begin
  Result := Self.m_Previsto;
end;

procedure TTituloReceberNovo.setPrevisto(const a_Value: Boolean);
begin
  Self.m_Previsto := a_Value;
end;

function TTituloReceberNovo.getid_documento_associado: String;
begin
  Result := Self.m_id_documento_associado;
end;

procedure TTituloReceberNovo.setid_documento_associado(const a_Value: String);
begin
  Self.m_id_documento_associado := a_Value;
end;

function TTituloReceberNovo.getpagamento: String;
begin
  Result := Self.m_pagamento;
end;

procedure TTituloReceberNovo.setpagamento(const a_Value: String);
begin
  Self.m_pagamento := a_Value;
end;

function TTituloReceberNovo.getparcelapagamento: String;
begin
  Result := Self.m_parcelapagamento;
end;

procedure TTituloReceberNovo.setparcelapagamento(const a_Value: String);
begin
  Self.m_parcelapagamento := a_Value;
end;

function TTituloReceberNovo.getadiantamentos: TObjectList<TAdiantamentoSaldo>;
begin
  if not Assigned(Self.m_adiantamentos)
    then Self.m_adiantamentos := TObjectList<TAdiantamentoSaldo>.Create();
  Result := Self.m_adiantamentos;
end;

procedure TTituloReceberNovo.setadiantamentos(const a_Value: TObjectList<TAdiantamentoSaldo>);
begin
  Self.m_adiantamentos := a_Value;
end;

function TTituloReceberNovo.getTipoCredito: Integer;
begin
  Result := Self.m_TipoCredito;
end;

procedure TTituloReceberNovo.setTipoCredito(const a_Value: Integer);
begin
  Self.m_TipoCredito := a_Value;
end;

function TTituloReceberNovo.getCreditoIdentificado: Integer;
begin
  Result := Self.m_CreditoIdentificado;
end;

procedure TTituloReceberNovo.setCreditoIdentificado(const a_Value: Integer);
begin
  Self.m_CreditoIdentificado := a_Value;
end;

function TTituloReceberNovo.getNossonumero: String;
begin
  Result := Self.m_Nossonumero;
end;

procedure TTituloReceberNovo.setNossonumero(const a_Value: String);
begin
  Self.m_Nossonumero := a_Value;
end;

function TTituloReceberNovo.getContabilizar: Boolean;
begin
  Result := Self.m_Contabilizar;
end;

procedure TTituloReceberNovo.setContabilizar(const a_Value: Boolean);
begin
  Self.m_Contabilizar := a_Value;
end;

function TTituloReceberNovo.getContabilizar_Baixa: Boolean;
begin
  Result := Self.m_Contabilizar_Baixa;
end;

procedure TTituloReceberNovo.setContabilizar_Baixa(const a_Value: Boolean);
begin
  Self.m_Contabilizar_Baixa := a_Value;
end;

function TTituloReceberNovo.getOutrasRetencoes: Currency;
begin
  Result := Self.m_OutrasRetencoes;
end;

procedure TTituloReceberNovo.setOutrasRetencoes(const a_Value: Currency);
begin
  Self.m_OutrasRetencoes := a_Value;
end;

function TTituloReceberNovo.getDescricaoOutrasRetencoes: String;
begin
  Result := Self.m_DescricaoOutrasRetencoes;
end;

procedure TTituloReceberNovo.setDescricaoOutrasRetencoes(const a_Value: String);
begin
  Self.m_DescricaoOutrasRetencoes := a_Value;
end;

function TTituloReceberNovo.getPercentualOutrosAcrescimos: Currency;
begin
  Result := Self.m_PercentualOutrosAcrescimos;
end;

procedure TTituloReceberNovo.setPercentualOutrosAcrescimos(const a_Value: Currency);
begin
  Self.m_PercentualOutrosAcrescimos := a_Value;
end;

function TTituloReceberNovo.getOutrosAcrescimos: Currency;
begin
  Result := Self.m_OutrosAcrescimos;
end;

procedure TTituloReceberNovo.setOutrosAcrescimos(const a_Value: Currency);
begin
  Self.m_OutrosAcrescimos := a_Value;
end;

function TTituloReceberNovo.getModoExibicaoOutrosAcrescimos: String;
begin
  Result := Self.m_ModoExibicaoOutrosAcrescimos;
end;

procedure TTituloReceberNovo.setModoExibicaoOutrosAcrescimos(const a_Value: String);
begin
  Self.m_ModoExibicaoOutrosAcrescimos := a_Value;
end;

function TTituloReceberNovo.getid_docfis: String;
begin
  Result := Self.m_id_docfis;
end;

procedure TTituloReceberNovo.setid_docfis(const a_Value: String);
begin
  Self.m_id_docfis := a_Value;
end;

function TTituloReceberNovo.getNumeroExterno: String;
begin
  Result := Self.m_NumeroExterno;
end;

procedure TTituloReceberNovo.setNumeroExterno(const a_Value: String);
begin
  Self.m_NumeroExterno := a_Value;
end;

function TTituloReceberNovo.getEstorno: Boolean;
begin
  Result := Self.m_Estorno;
end;

procedure TTituloReceberNovo.setEstorno(const a_Value: Boolean);
begin
  Self.m_Estorno := a_Value;
end;

function TTituloReceberNovo.getid_titulo_estorno: String;
begin
  Result := Self.m_id_titulo_estorno;
end;

procedure TTituloReceberNovo.setid_titulo_estorno(const a_Value: String);
begin
  Self.m_id_titulo_estorno := a_Value;
end;

function TTituloReceberNovo.gettipoestorno: Integer;
begin
  Result := Self.m_tipoestorno;
end;

procedure TTituloReceberNovo.settipoestorno(const a_Value: Integer);
begin
  Self.m_tipoestorno := a_Value;
end;

function TTituloReceberNovo.getpisestornado: Currency;
begin
  Result := Self.m_pisestornado;
end;

procedure TTituloReceberNovo.setpisestornado(const a_Value: Currency);
begin
  Self.m_pisestornado := a_Value;
end;

function TTituloReceberNovo.getcofinsestornado: Currency;
begin
  Result := Self.m_cofinsestornado;
end;

procedure TTituloReceberNovo.setcofinsestornado(const a_Value: Currency);
begin
  Self.m_cofinsestornado := a_Value;
end;

function TTituloReceberNovo.getcsllestornado: Currency;
begin
  Result := Self.m_csllestornado;
end;

procedure TTituloReceberNovo.setcsllestornado(const a_Value: Currency);
begin
  Self.m_csllestornado := a_Value;
end;

function TTituloReceberNovo.getirestornado: Currency;
begin
  Result := Self.m_irestornado;
end;

procedure TTituloReceberNovo.setirestornado(const a_Value: Currency);
begin
  Self.m_irestornado := a_Value;
end;

function TTituloReceberNovo.getissestornado: Currency;
begin
  Result := Self.m_issestornado;
end;

procedure TTituloReceberNovo.setissestornado(const a_Value: Currency);
begin
  Self.m_issestornado := a_Value;
end;

function TTituloReceberNovo.getinssestornado: Currency;
begin
  Result := Self.m_inssestornado;
end;

procedure TTituloReceberNovo.setinssestornado(const a_Value: Currency);
begin
  Self.m_inssestornado := a_Value;
end;

function TTituloReceberNovo.getusamoedaestrangeira: Boolean;
begin
  Result := Self.m_usamoedaestrangeira;
end;

procedure TTituloReceberNovo.setusamoedaestrangeira(const a_Value: Boolean);
begin
  Self.m_usamoedaestrangeira := a_Value;
end;

function TTituloReceberNovo.getmoedaestrangeira: String;
begin
  Result := Self.m_moedaestrangeira;
end;

procedure TTituloReceberNovo.setmoedaestrangeira(const a_Value: String);
begin
  Self.m_moedaestrangeira := a_Value;
end;

function TTituloReceberNovo.getcotacao: Currency;
begin
  Result := Self.m_cotacao;
end;

procedure TTituloReceberNovo.setcotacao(const a_Value: Currency);
begin
  Self.m_cotacao := a_Value;
end;

function TTituloReceberNovo.getvalornamoedaestrangeira: Currency;
begin
  Result := Self.m_valornamoedaestrangeira;
end;

procedure TTituloReceberNovo.setvalornamoedaestrangeira(const a_Value: Currency);
begin
  Self.m_valornamoedaestrangeira := a_Value;
end;

function TTituloReceberNovo.getCFOPCodigo: String;
begin
  Result := Self.m_CFOPCodigo;
end;

procedure TTituloReceberNovo.setCFOPCodigo(const a_Value: String);
begin
  Self.m_CFOPCodigo := a_Value;
end;

function TTituloReceberNovo.getPrestacaoDeConta: String;
begin
  Result := Self.m_PrestacaoDeConta;
end;

procedure TTituloReceberNovo.setPrestacaoDeConta(const a_Value: String);
begin
  Self.m_PrestacaoDeConta := a_Value;
end;

function TTituloReceberNovo.getDataCancelamento: TDate;
begin
  Result := Self.m_DataCancelamento;
end;

procedure TTituloReceberNovo.setDataCancelamento(const a_Value: TDate);
begin
  Self.m_DataCancelamento := a_Value;
end;

function TTituloReceberNovo.getid_tipo_despesa_receita: String;
begin
  Result := Self.m_id_tipo_despesa_receita;
end;

procedure TTituloReceberNovo.setid_tipo_despesa_receita(const a_Value: String);
begin
  Self.m_id_tipo_despesa_receita := a_Value;
end;

destructor TTituloReceberNovo.Destroy;
begin
  Self.RateioFinanceiro.Free();  Self.InformacaoCartao.Free();  Self.Vendedores.Free();  Self.adiantamentos.Free();
end;

function TTituloReceberNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTituloReceberNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTituloReceberNovo.getNameAPI(): String;
begin
  Result := 'TituloReceberNovo';
end;

function TTituloReceberNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTituloReceberNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTituloReceberAlterar.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TTituloReceberAlterar.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TTituloReceberAlterar.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TTituloReceberAlterar.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TTituloReceberAlterar.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TTituloReceberAlterar.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TTituloReceberAlterar.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TTituloReceberAlterar.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TTituloReceberAlterar.getLayoutCobranca: String;
begin
  Result := Self.m_LayoutCobranca;
end;

procedure TTituloReceberAlterar.setLayoutCobranca(const a_Value: String);
begin
  Self.m_LayoutCobranca := a_Value;
end;

function TTituloReceberAlterar.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TTituloReceberAlterar.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TTituloReceberAlterar.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TTituloReceberAlterar.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TTituloReceberAlterar.getVencimento: TDate;
begin
  Result := Self.m_Vencimento;
end;

procedure TTituloReceberAlterar.setVencimento(const a_Value: TDate);
begin
  Self.m_Vencimento := a_Value;
end;

function TTituloReceberAlterar.getPrevisaoVencimento: TDate;
begin
  Result := Self.m_PrevisaoVencimento;
end;

procedure TTituloReceberAlterar.setPrevisaoVencimento(const a_Value: TDate);
begin
  Self.m_PrevisaoVencimento := a_Value;
end;

function TTituloReceberAlterar.getParcela: Integer;
begin
  Result := Self.m_Parcela;
end;

procedure TTituloReceberAlterar.setParcela(const a_Value: Integer);
begin
  Self.m_Parcela := a_Value;
end;

function TTituloReceberAlterar.getTotalParcelas: Integer;
begin
  Result := Self.m_TotalParcelas;
end;

procedure TTituloReceberAlterar.setTotalParcelas(const a_Value: Integer);
begin
  Self.m_TotalParcelas := a_Value;
end;

function TTituloReceberAlterar.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TTituloReceberAlterar.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TTituloReceberAlterar.getAnotacoes: WideString;
begin
  Result := Self.m_Anotacoes;
end;

procedure TTituloReceberAlterar.setAnotacoes(const a_Value: WideString);
begin
  Self.m_Anotacoes := a_Value;
end;

function TTituloReceberAlterar.getValorTitulo: Currency;
begin
  Result := Self.m_ValorTitulo;
end;

procedure TTituloReceberAlterar.setValorTitulo(const a_Value: Currency);
begin
  Self.m_ValorTitulo := a_Value;
end;

function TTituloReceberAlterar.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TTituloReceberAlterar.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TTituloReceberAlterar.getAliquotaIr: Currency;
begin
  Result := Self.m_AliquotaIr;
end;

procedure TTituloReceberAlterar.setAliquotaIr(const a_Value: Currency);
begin
  Self.m_AliquotaIr := a_Value;
end;

function TTituloReceberAlterar.getValorIrRetido: Currency;
begin
  Result := Self.m_ValorIrRetido;
end;

procedure TTituloReceberAlterar.setValorIrRetido(const a_Value: Currency);
begin
  Self.m_ValorIrRetido := a_Value;
end;

function TTituloReceberAlterar.getAliquotaCofins: Currency;
begin
  Result := Self.m_AliquotaCofins;
end;

procedure TTituloReceberAlterar.setAliquotaCofins(const a_Value: Currency);
begin
  Self.m_AliquotaCofins := a_Value;
end;

function TTituloReceberAlterar.getValorCofinsRetido: Currency;
begin
  Result := Self.m_ValorCofinsRetido;
end;

procedure TTituloReceberAlterar.setValorCofinsRetido(const a_Value: Currency);
begin
  Self.m_ValorCofinsRetido := a_Value;
end;

function TTituloReceberAlterar.getAliquotaPis: Currency;
begin
  Result := Self.m_AliquotaPis;
end;

procedure TTituloReceberAlterar.setAliquotaPis(const a_Value: Currency);
begin
  Self.m_AliquotaPis := a_Value;
end;

function TTituloReceberAlterar.getValorPisRetido: Currency;
begin
  Result := Self.m_ValorPisRetido;
end;

procedure TTituloReceberAlterar.setValorPisRetido(const a_Value: Currency);
begin
  Self.m_ValorPisRetido := a_Value;
end;

function TTituloReceberAlterar.getAliquotaCsll: Currency;
begin
  Result := Self.m_AliquotaCsll;
end;

procedure TTituloReceberAlterar.setAliquotaCsll(const a_Value: Currency);
begin
  Self.m_AliquotaCsll := a_Value;
end;

function TTituloReceberAlterar.getValorCsllRetido: Currency;
begin
  Result := Self.m_ValorCsllRetido;
end;

procedure TTituloReceberAlterar.setValorCsllRetido(const a_Value: Currency);
begin
  Self.m_ValorCsllRetido := a_Value;
end;

function TTituloReceberAlterar.getValorInssRetido: Currency;
begin
  Result := Self.m_ValorInssRetido;
end;

procedure TTituloReceberAlterar.setValorInssRetido(const a_Value: Currency);
begin
  Self.m_ValorInssRetido := a_Value;
end;

function TTituloReceberAlterar.getAliquotaIss: Currency;
begin
  Result := Self.m_AliquotaIss;
end;

procedure TTituloReceberAlterar.setAliquotaIss(const a_Value: Currency);
begin
  Self.m_AliquotaIss := a_Value;
end;

function TTituloReceberAlterar.getValorIssRetido: Currency;
begin
  Result := Self.m_ValorIssRetido;
end;

procedure TTituloReceberAlterar.setValorIssRetido(const a_Value: Currency);
begin
  Self.m_ValorIssRetido := a_Value;
end;

function TTituloReceberAlterar.getDataLimiteDesconto: TDate;
begin
  Result := Self.m_DataLimiteDesconto;
end;

procedure TTituloReceberAlterar.setDataLimiteDesconto(const a_Value: TDate);
begin
  Self.m_DataLimiteDesconto := a_Value;
end;

function TTituloReceberAlterar.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TTituloReceberAlterar.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TTituloReceberAlterar.getDataInicioMulta: TDate;
begin
  Result := Self.m_DataInicioMulta;
end;

procedure TTituloReceberAlterar.setDataInicioMulta(const a_Value: TDate);
begin
  Self.m_DataInicioMulta := a_Value;
end;

function TTituloReceberAlterar.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TTituloReceberAlterar.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TTituloReceberAlterar.getPercentualJurosDiario: Currency;
begin
  Result := Self.m_PercentualJurosDiario;
end;

procedure TTituloReceberAlterar.setPercentualJurosDiario(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiario := a_Value;
end;

function TTituloReceberAlterar.getInformacaoCartao: TInformacaoCartao;
begin
  if not Assigned(Self.m_InformacaoCartao)
    then Self.m_InformacaoCartao := TInformacaoCartao.Create();
  Result := Self.m_InformacaoCartao;
end;

procedure TTituloReceberAlterar.setInformacaoCartao(const a_Value: TInformacaoCartao);
begin
  Self.m_InformacaoCartao := a_Value;
end;

function TTituloReceberAlterar.getNumeroVezesCartao: Integer;
begin
  Result := Self.m_NumeroVezesCartao;
end;

procedure TTituloReceberAlterar.setNumeroVezesCartao(const a_Value: Integer);
begin
  Self.m_NumeroVezesCartao := a_Value;
end;

function TTituloReceberAlterar.getValorTarifaCartao: Currency;
begin
  Result := Self.m_ValorTarifaCartao;
end;

procedure TTituloReceberAlterar.setValorTarifaCartao(const a_Value: Currency);
begin
  Self.m_ValorTarifaCartao := a_Value;
end;

function TTituloReceberAlterar.getAutorizacaoCartao: String;
begin
  Result := Self.m_AutorizacaoCartao;
end;

procedure TTituloReceberAlterar.setAutorizacaoCartao(const a_Value: String);
begin
  Self.m_AutorizacaoCartao := a_Value;
end;

function TTituloReceberAlterar.getDocumentoCartao: String;
begin
  Result := Self.m_DocumentoCartao;
end;

procedure TTituloReceberAlterar.setDocumentoCartao(const a_Value: String);
begin
  Self.m_DocumentoCartao := a_Value;
end;

function TTituloReceberAlterar.getNumeroParcelaCartao: Integer;
begin
  Result := Self.m_NumeroParcelaCartao;
end;

procedure TTituloReceberAlterar.setNumeroParcelaCartao(const a_Value: Integer);
begin
  Self.m_NumeroParcelaCartao := a_Value;
end;

function TTituloReceberAlterar.getValorParcelaCartao: Currency;
begin
  Result := Self.m_ValorParcelaCartao;
end;

procedure TTituloReceberAlterar.setValorParcelaCartao(const a_Value: Currency);
begin
  Self.m_ValorParcelaCartao := a_Value;
end;

function TTituloReceberAlterar.getVendedores: TObjectList<TVendedorTitulo>;
begin
  if not Assigned(Self.m_Vendedores)
    then Self.m_Vendedores := TObjectList<TVendedorTitulo>.Create();
  Result := Self.m_Vendedores;
end;

procedure TTituloReceberAlterar.setVendedores(const a_Value: TObjectList<TVendedorTitulo>);
begin
  Self.m_Vendedores := a_Value;
end;

function TTituloReceberAlterar.getNumeroNota: String;
begin
  Result := Self.m_NumeroNota;
end;

procedure TTituloReceberAlterar.setNumeroNota(const a_Value: String);
begin
  Self.m_NumeroNota := a_Value;
end;

function TTituloReceberAlterar.getModeloDocumentoFiscal: Integer;
begin
  Result := Self.m_ModeloDocumentoFiscal;
end;

procedure TTituloReceberAlterar.setModeloDocumentoFiscal(const a_Value: Integer);
begin
  Self.m_ModeloDocumentoFiscal := a_Value;
end;

function TTituloReceberAlterar.getSerieDocumentoFiscal: String;
begin
  Result := Self.m_SerieDocumentoFiscal;
end;

procedure TTituloReceberAlterar.setSerieDocumentoFiscal(const a_Value: String);
begin
  Self.m_SerieDocumentoFiscal := a_Value;
end;

function TTituloReceberAlterar.getSubserieDocumentoFiscal: String;
begin
  Result := Self.m_SubserieDocumentoFiscal;
end;

procedure TTituloReceberAlterar.setSubserieDocumentoFiscal(const a_Value: String);
begin
  Self.m_SubserieDocumentoFiscal := a_Value;
end;

function TTituloReceberAlterar.getDataProvisoria: Boolean;
begin
  Result := Self.m_DataProvisoria;
end;

procedure TTituloReceberAlterar.setDataProvisoria(const a_Value: Boolean);
begin
  Self.m_DataProvisoria := a_Value;
end;

function TTituloReceberAlterar.getValorProvisorio: Boolean;
begin
  Result := Self.m_ValorProvisorio;
end;

procedure TTituloReceberAlterar.setValorProvisorio(const a_Value: Boolean);
begin
  Self.m_ValorProvisorio := a_Value;
end;

function TTituloReceberAlterar.getTipoOrigem: Integer;
begin
  Result := Self.m_TipoOrigem;
end;

procedure TTituloReceberAlterar.setTipoOrigem(const a_Value: Integer);
begin
  Self.m_TipoOrigem := a_Value;
end;

function TTituloReceberAlterar.getContrato: String;
begin
  Result := Self.m_Contrato;
end;

procedure TTituloReceberAlterar.setContrato(const a_Value: String);
begin
  Self.m_Contrato := a_Value;
end;

function TTituloReceberAlterar.getDataAutorizacaoCartao: TDate;
begin
  Result := Self.m_DataAutorizacaoCartao;
end;

procedure TTituloReceberAlterar.setDataAutorizacaoCartao(const a_Value: TDate);
begin
  Self.m_DataAutorizacaoCartao := a_Value;
end;

function TTituloReceberAlterar.getFormaPagamento: String;
begin
  Result := Self.m_FormaPagamento;
end;

procedure TTituloReceberAlterar.setFormaPagamento(const a_Value: String);
begin
  Self.m_FormaPagamento := a_Value;
end;

function TTituloReceberAlterar.getFatura: String;
begin
  Result := Self.m_Fatura;
end;

procedure TTituloReceberAlterar.setFatura(const a_Value: String);
begin
  Self.m_Fatura := a_Value;
end;

function TTituloReceberAlterar.getIRRetidoNF: Currency;
begin
  Result := Self.m_IRRetidoNF;
end;

procedure TTituloReceberAlterar.setIRRetidoNF(const a_Value: Currency);
begin
  Self.m_IRRetidoNF := a_Value;
end;

function TTituloReceberAlterar.getINSSRetidoNF: Currency;
begin
  Result := Self.m_INSSRetidoNF;
end;

procedure TTituloReceberAlterar.setINSSRetidoNF(const a_Value: Currency);
begin
  Self.m_INSSRetidoNF := a_Value;
end;

function TTituloReceberAlterar.getRPS: String;
begin
  Result := Self.m_RPS;
end;

procedure TTituloReceberAlterar.setRPS(const a_Value: String);
begin
  Self.m_RPS := a_Value;
end;

function TTituloReceberAlterar.getID_RENEGOCIACAO_GERADORA: String;
begin
  Result := Self.m_ID_RENEGOCIACAO_GERADORA;
end;

procedure TTituloReceberAlterar.setID_RENEGOCIACAO_GERADORA(const a_Value: String);
begin
  Self.m_ID_RENEGOCIACAO_GERADORA := a_Value;
end;

function TTituloReceberAlterar.getSituacao: Integer;
begin
  Result := Self.m_Situacao;
end;

procedure TTituloReceberAlterar.setSituacao(const a_Value: Integer);
begin
  Self.m_Situacao := a_Value;
end;

function TTituloReceberAlterar.getBemPatrimonial: String;
begin
  Result := Self.m_BemPatrimonial;
end;

procedure TTituloReceberAlterar.setBemPatrimonial(const a_Value: String);
begin
  Self.m_BemPatrimonial := a_Value;
end;

function TTituloReceberAlterar.getTaxaBancaria: Currency;
begin
  Result := Self.m_TaxaBancaria;
end;

procedure TTituloReceberAlterar.setTaxaBancaria(const a_Value: Currency);
begin
  Self.m_TaxaBancaria := a_Value;
end;

function TTituloReceberAlterar.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TTituloReceberAlterar.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TTituloReceberAlterar.getMulta: Currency;
begin
  Result := Self.m_Multa;
end;

procedure TTituloReceberAlterar.setMulta(const a_Value: Currency);
begin
  Self.m_Multa := a_Value;
end;

function TTituloReceberAlterar.getJuros: Currency;
begin
  Result := Self.m_Juros;
end;

procedure TTituloReceberAlterar.setJuros(const a_Value: Currency);
begin
  Self.m_Juros := a_Value;
end;

function TTituloReceberAlterar.getAdiantamento: Boolean;
begin
  Result := Self.m_Adiantamento;
end;

procedure TTituloReceberAlterar.setAdiantamento(const a_Value: Boolean);
begin
  Self.m_Adiantamento := a_Value;
end;

function TTituloReceberAlterar.getUsaDiscriminacao: Boolean;
begin
  Result := Self.m_UsaDiscriminacao;
end;

procedure TTituloReceberAlterar.setUsaDiscriminacao(const a_Value: Boolean);
begin
  Self.m_UsaDiscriminacao := a_Value;
end;

function TTituloReceberAlterar.getIDDocumentoRateado: String;
begin
  Result := Self.m_IDDocumentoRateado;
end;

procedure TTituloReceberAlterar.setIDDocumentoRateado(const a_Value: String);
begin
  Self.m_IDDocumentoRateado := a_Value;
end;

function TTituloReceberAlterar.getModoExibicaoDesconto: String;
begin
  Result := Self.m_ModoExibicaoDesconto;
end;

procedure TTituloReceberAlterar.setModoExibicaoDesconto(const a_Value: String);
begin
  Self.m_ModoExibicaoDesconto := a_Value;
end;

function TTituloReceberAlterar.getModoExibicaoJuros: String;
begin
  Result := Self.m_ModoExibicaoJuros;
end;

procedure TTituloReceberAlterar.setModoExibicaoJuros(const a_Value: String);
begin
  Self.m_ModoExibicaoJuros := a_Value;
end;

function TTituloReceberAlterar.getModoExibicaoMulta: String;
begin
  Result := Self.m_ModoExibicaoMulta;
end;

procedure TTituloReceberAlterar.setModoExibicaoMulta(const a_Value: String);
begin
  Self.m_ModoExibicaoMulta := a_Value;
end;

function TTituloReceberAlterar.getvalorvariacaocambialativa: Currency;
begin
  Result := Self.m_valorvariacaocambialativa;
end;

procedure TTituloReceberAlterar.setvalorvariacaocambialativa(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialativa := a_Value;
end;

function TTituloReceberAlterar.getvalorvariacaocambialpassiva: Currency;
begin
  Result := Self.m_valorvariacaocambialpassiva;
end;

procedure TTituloReceberAlterar.setvalorvariacaocambialpassiva(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialpassiva := a_Value;
end;

function TTituloReceberAlterar.getDataCompetencia: TDate;
begin
  Result := Self.m_DataCompetencia;
end;

procedure TTituloReceberAlterar.setDataCompetencia(const a_Value: TDate);
begin
  Self.m_DataCompetencia := a_Value;
end;

function TTituloReceberAlterar.getUsuarioResponsavel: String;
begin
  Result := Self.m_UsuarioResponsavel;
end;

procedure TTituloReceberAlterar.setUsuarioResponsavel(const a_Value: String);
begin
  Self.m_UsuarioResponsavel := a_Value;
end;

function TTituloReceberAlterar.getPrevisto: Boolean;
begin
  Result := Self.m_Previsto;
end;

procedure TTituloReceberAlterar.setPrevisto(const a_Value: Boolean);
begin
  Self.m_Previsto := a_Value;
end;

function TTituloReceberAlterar.getIdConjuntoAnexo: String;
begin
  Result := Self.m_IdConjuntoAnexo;
end;

procedure TTituloReceberAlterar.setIdConjuntoAnexo(const a_Value: String);
begin
  Self.m_IdConjuntoAnexo := a_Value;
end;

function TTituloReceberAlterar.getOutrasRetencoes: Currency;
begin
  Result := Self.m_OutrasRetencoes;
end;

procedure TTituloReceberAlterar.setOutrasRetencoes(const a_Value: Currency);
begin
  Self.m_OutrasRetencoes := a_Value;
end;

function TTituloReceberAlterar.getDescricaoOutrasRetencoes: String;
begin
  Result := Self.m_DescricaoOutrasRetencoes;
end;

procedure TTituloReceberAlterar.setDescricaoOutrasRetencoes(const a_Value: String);
begin
  Self.m_DescricaoOutrasRetencoes := a_Value;
end;

function TTituloReceberAlterar.getPercentualOutrosAcrescimos: Currency;
begin
  Result := Self.m_PercentualOutrosAcrescimos;
end;

procedure TTituloReceberAlterar.setPercentualOutrosAcrescimos(const a_Value: Currency);
begin
  Self.m_PercentualOutrosAcrescimos := a_Value;
end;

function TTituloReceberAlterar.getOutrosAcrescimos: Currency;
begin
  Result := Self.m_OutrosAcrescimos;
end;

procedure TTituloReceberAlterar.setOutrosAcrescimos(const a_Value: Currency);
begin
  Self.m_OutrosAcrescimos := a_Value;
end;

function TTituloReceberAlterar.getModoExibicaoOutrosAcrescimos: String;
begin
  Result := Self.m_ModoExibicaoOutrosAcrescimos;
end;

procedure TTituloReceberAlterar.setModoExibicaoOutrosAcrescimos(const a_Value: String);
begin
  Self.m_ModoExibicaoOutrosAcrescimos := a_Value;
end;

function TTituloReceberAlterar.getContabilizar: Boolean;
begin
  Result := Self.m_Contabilizar;
end;

procedure TTituloReceberAlterar.setContabilizar(const a_Value: Boolean);
begin
  Self.m_Contabilizar := a_Value;
end;

function TTituloReceberAlterar.getContabilizar_Baixa: Boolean;
begin
  Result := Self.m_Contabilizar_Baixa;
end;

procedure TTituloReceberAlterar.setContabilizar_Baixa(const a_Value: Boolean);
begin
  Self.m_Contabilizar_Baixa := a_Value;
end;

function TTituloReceberAlterar.getNumeroExterno: String;
begin
  Result := Self.m_NumeroExterno;
end;

procedure TTituloReceberAlterar.setNumeroExterno(const a_Value: String);
begin
  Self.m_NumeroExterno := a_Value;
end;

function TTituloReceberAlterar.getEstorno: Boolean;
begin
  Result := Self.m_Estorno;
end;

procedure TTituloReceberAlterar.setEstorno(const a_Value: Boolean);
begin
  Self.m_Estorno := a_Value;
end;

function TTituloReceberAlterar.getid_titulo_estorno: String;
begin
  Result := Self.m_id_titulo_estorno;
end;

procedure TTituloReceberAlterar.setid_titulo_estorno(const a_Value: String);
begin
  Self.m_id_titulo_estorno := a_Value;
end;

function TTituloReceberAlterar.gettipoestorno: Integer;
begin
  Result := Self.m_tipoestorno;
end;

procedure TTituloReceberAlterar.settipoestorno(const a_Value: Integer);
begin
  Self.m_tipoestorno := a_Value;
end;

function TTituloReceberAlterar.getpisestornado: Currency;
begin
  Result := Self.m_pisestornado;
end;

procedure TTituloReceberAlterar.setpisestornado(const a_Value: Currency);
begin
  Self.m_pisestornado := a_Value;
end;

function TTituloReceberAlterar.getcofinsestornado: Currency;
begin
  Result := Self.m_cofinsestornado;
end;

procedure TTituloReceberAlterar.setcofinsestornado(const a_Value: Currency);
begin
  Self.m_cofinsestornado := a_Value;
end;

function TTituloReceberAlterar.getcsllestornado: Currency;
begin
  Result := Self.m_csllestornado;
end;

procedure TTituloReceberAlterar.setcsllestornado(const a_Value: Currency);
begin
  Self.m_csllestornado := a_Value;
end;

function TTituloReceberAlterar.getirestornado: Currency;
begin
  Result := Self.m_irestornado;
end;

procedure TTituloReceberAlterar.setirestornado(const a_Value: Currency);
begin
  Self.m_irestornado := a_Value;
end;

function TTituloReceberAlterar.getissestornado: Currency;
begin
  Result := Self.m_issestornado;
end;

procedure TTituloReceberAlterar.setissestornado(const a_Value: Currency);
begin
  Self.m_issestornado := a_Value;
end;

function TTituloReceberAlterar.getinssestornado: Currency;
begin
  Result := Self.m_inssestornado;
end;

procedure TTituloReceberAlterar.setinssestornado(const a_Value: Currency);
begin
  Self.m_inssestornado := a_Value;
end;

function TTituloReceberAlterar.getusamoedaestrangeira: Boolean;
begin
  Result := Self.m_usamoedaestrangeira;
end;

procedure TTituloReceberAlterar.setusamoedaestrangeira(const a_Value: Boolean);
begin
  Self.m_usamoedaestrangeira := a_Value;
end;

function TTituloReceberAlterar.getmoedaestrangeira: String;
begin
  Result := Self.m_moedaestrangeira;
end;

procedure TTituloReceberAlterar.setmoedaestrangeira(const a_Value: String);
begin
  Self.m_moedaestrangeira := a_Value;
end;

function TTituloReceberAlterar.getcotacao: Currency;
begin
  Result := Self.m_cotacao;
end;

procedure TTituloReceberAlterar.setcotacao(const a_Value: Currency);
begin
  Self.m_cotacao := a_Value;
end;

function TTituloReceberAlterar.getvalornamoedaestrangeira: Currency;
begin
  Result := Self.m_valornamoedaestrangeira;
end;

procedure TTituloReceberAlterar.setvalornamoedaestrangeira(const a_Value: Currency);
begin
  Self.m_valornamoedaestrangeira := a_Value;
end;

function TTituloReceberAlterar.getCFOPCodigo: String;
begin
  Result := Self.m_CFOPCodigo;
end;

procedure TTituloReceberAlterar.setCFOPCodigo(const a_Value: String);
begin
  Self.m_CFOPCodigo := a_Value;
end;

function TTituloReceberAlterar.getPrestacaoDeConta: String;
begin
  Result := Self.m_PrestacaoDeConta;
end;

procedure TTituloReceberAlterar.setPrestacaoDeConta(const a_Value: String);
begin
  Self.m_PrestacaoDeConta := a_Value;
end;

function TTituloReceberAlterar.getDataCancelamento: TDate;
begin
  Result := Self.m_DataCancelamento;
end;

procedure TTituloReceberAlterar.setDataCancelamento(const a_Value: TDate);
begin
  Self.m_DataCancelamento := a_Value;
end;

function TTituloReceberAlterar.getid_tipo_despesa_receita: String;
begin
  Result := Self.m_id_tipo_despesa_receita;
end;

procedure TTituloReceberAlterar.setid_tipo_despesa_receita(const a_Value: String);
begin
  Self.m_id_tipo_despesa_receita := a_Value;
end;

destructor TTituloReceberAlterar.Destroy;
begin
  Self.RateioFinanceiro.Free();  Self.InformacaoCartao.Free();  Self.Vendedores.Free();
end;

function TTituloReceberAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTituloReceberAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTituloReceberAlterar.getNameAPI(): String;
begin
  Result := 'TituloReceberAlterar';
end;

function TTituloReceberAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTituloReceberAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTituloReceberExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TTituloReceberExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TTituloReceberExcluir.Destroy;
begin

end;

function TTituloReceberExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTituloReceberExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTituloReceberExcluir.getNameAPI(): String;
begin
  Result := 'TituloReceberExcluir';
end;

function TTituloReceberExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTituloReceberExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
