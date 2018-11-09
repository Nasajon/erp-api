unit api.model.servicos.RPS_v2;

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
	
  , api.model.servicos.ItemRPS
  , System.Generics.Collections
  , api.model.ns.pagamentosemparcela
  , api.model.ns.parcela
  , api.model.financas.ItemRateioFinanceiro
  , api.model.servicos.VendedorRPS
	

	;

type TRPS_v2Novo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_Serie: String;
    var m_Emissao: TDate;
    var m_Vencimento: TDate;
    var m_Lancamento: TDate;
    var m_LoteCobrancaId: String;
    var m_TipoTributacao: Integer;
    var m_RegimeEspecial: Integer;
    var m_IncentivoCultural: Integer;
    var m_BeneficioFiscal: Integer;
    var m_Desconto: Currency;
    var m_ItemRPS: TObjectList<TItemRPSNovo>;
    var m_FormasPagamentos: TObjectList<TPagamentoSemParcela>;
    var m_Parcelas: TObjectList<TParcela>;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    var m_Observacao: String;
    var m_Vendedores: TObjectList<TVendedorRPS>;
    var m_Origem: Integer;
    var m_BaseISS: Currency;
    var m_ValorISS: Currency;
    var m_BaseIRRf: Currency;
    var m_ValorIRRF: Currency;
    var m_BaseINSS: Currency;
    var m_ValorINSS: Currency;
    var m_BasePIS: Currency;
    var m_ValorPIS: Currency;
    var m_BaseCOFINS: Currency;
    var m_ValorCOFINS: Currency;
    var m_BaseCSLL: Currency;
    var m_ValorCSLL: Currency;
    var m_RetemISS: Boolean;
    var m_RetemIRRF: Boolean;
    var m_RetemPIS: Boolean;
    var m_RetemCOFINS: Boolean;
    var m_RetemCSLL: Boolean;
    var m_DescricaoServicos: String;
    var m_IdConjuntoAnexo: String;
    var m_RpsOriginal: String;
    var m_ISS: Integer;
    var m_PreRPS: Boolean;
    var m_OutrasDeducoes: Currency;
    var m_XML_RPS: String;
    var m_XML_NFSE: String;
    var m_XML_Cancelamento: String;
    var m_XML_DocEngine: String;
    var m_id_documento_vinculado: String;
    var m_MunicipioPrestacao: String;
    var m_CFOPId: String;
    var m_Obra: String;
    var m_Usuario: String;
    var m_Contrato_ID: String;
    var m_NaoGerarFinanceiro: Boolean;
    var m_NaoGerarTitulo: Boolean;
    var m_OutrasRetencoes: Currency;
    var m_DiscriminacaoServicos: String;
    var m_numero_titulo: String;
    var m_TemplateDiscriminacaoRPS: String;
    var m_RetemINSS: Boolean;
    var m_CalcularImpostos: Boolean;
    var m_FaturamentoProvisorio: Boolean;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getSerie(): String;
    function getEmissao(): TDate;
    function getVencimento(): TDate;
    function getLancamento(): TDate;
    function getLoteCobrancaId(): String;
    function getTipoTributacao(): Integer;
    function getRegimeEspecial(): Integer;
    function getIncentivoCultural(): Integer;
    function getBeneficioFiscal(): Integer;
    function getDesconto(): Currency;
    function getItemRPS(): TObjectList<TItemRPSNovo>;
    function getFormasPagamentos(): TObjectList<TPagamentoSemParcela>;
    function getParcelas(): TObjectList<TParcela>;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    function getObservacao(): String;
    function getVendedores(): TObjectList<TVendedorRPS>;
    function getOrigem(): Integer;
    function getBaseISS(): Currency;
    function getValorISS(): Currency;
    function getBaseIRRf(): Currency;
    function getValorIRRF(): Currency;
    function getBaseINSS(): Currency;
    function getValorINSS(): Currency;
    function getBasePIS(): Currency;
    function getValorPIS(): Currency;
    function getBaseCOFINS(): Currency;
    function getValorCOFINS(): Currency;
    function getBaseCSLL(): Currency;
    function getValorCSLL(): Currency;
    function getRetemISS(): Boolean;
    function getRetemIRRF(): Boolean;
    function getRetemPIS(): Boolean;
    function getRetemCOFINS(): Boolean;
    function getRetemCSLL(): Boolean;
    function getDescricaoServicos(): String;
    function getIdConjuntoAnexo(): String;
    function getRpsOriginal(): String;
    function getISS(): Integer;
    function getPreRPS(): Boolean;
    function getOutrasDeducoes(): Currency;
    function getXML_RPS(): String;
    function getXML_NFSE(): String;
    function getXML_Cancelamento(): String;
    function getXML_DocEngine(): String;
    function getid_documento_vinculado(): String;
    function getMunicipioPrestacao(): String;
    function getCFOPId(): String;
    function getObra(): String;
    function getUsuario(): String;
    function getContrato_ID(): String;
    function getNaoGerarFinanceiro(): Boolean;
    function getNaoGerarTitulo(): Boolean;
    function getOutrasRetencoes(): Currency;
    function getDiscriminacaoServicos(): String;
    function getnumero_titulo(): String;
    function getTemplateDiscriminacaoRPS(): String;
    function getRetemINSS(): Boolean;
    function getCalcularImpostos(): Boolean;
    function getFaturamentoProvisorio(): Boolean;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setSerie(const a_Value: String);
    procedure setEmissao(const a_Value: TDate);
    procedure setVencimento(const a_Value: TDate);
    procedure setLancamento(const a_Value: TDate);
    procedure setLoteCobrancaId(const a_Value: String);
    procedure setTipoTributacao(const a_Value: Integer);
    procedure setRegimeEspecial(const a_Value: Integer);
    procedure setIncentivoCultural(const a_Value: Integer);
    procedure setBeneficioFiscal(const a_Value: Integer);
    procedure setDesconto(const a_Value: Currency);
    procedure setItemRPS(const a_Value: TObjectList<TItemRPSNovo>);
    procedure setFormasPagamentos(const a_Value: TObjectList<TPagamentoSemParcela>);
    procedure setParcelas(const a_Value: TObjectList<TParcela>);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setObservacao(const a_Value: String);
    procedure setVendedores(const a_Value: TObjectList<TVendedorRPS>);
    procedure setOrigem(const a_Value: Integer);
    procedure setBaseISS(const a_Value: Currency);
    procedure setValorISS(const a_Value: Currency);
    procedure setBaseIRRf(const a_Value: Currency);
    procedure setValorIRRF(const a_Value: Currency);
    procedure setBaseINSS(const a_Value: Currency);
    procedure setValorINSS(const a_Value: Currency);
    procedure setBasePIS(const a_Value: Currency);
    procedure setValorPIS(const a_Value: Currency);
    procedure setBaseCOFINS(const a_Value: Currency);
    procedure setValorCOFINS(const a_Value: Currency);
    procedure setBaseCSLL(const a_Value: Currency);
    procedure setValorCSLL(const a_Value: Currency);
    procedure setRetemISS(const a_Value: Boolean);
    procedure setRetemIRRF(const a_Value: Boolean);
    procedure setRetemPIS(const a_Value: Boolean);
    procedure setRetemCOFINS(const a_Value: Boolean);
    procedure setRetemCSLL(const a_Value: Boolean);
    procedure setDescricaoServicos(const a_Value: String);
    procedure setIdConjuntoAnexo(const a_Value: String);
    procedure setRpsOriginal(const a_Value: String);
    procedure setISS(const a_Value: Integer);
    procedure setPreRPS(const a_Value: Boolean);
    procedure setOutrasDeducoes(const a_Value: Currency);
    procedure setXML_RPS(const a_Value: String);
    procedure setXML_NFSE(const a_Value: String);
    procedure setXML_Cancelamento(const a_Value: String);
    procedure setXML_DocEngine(const a_Value: String);
    procedure setid_documento_vinculado(const a_Value: String);
    procedure setMunicipioPrestacao(const a_Value: String);
    procedure setCFOPId(const a_Value: String);
    procedure setObra(const a_Value: String);
    procedure setUsuario(const a_Value: String);
    procedure setContrato_ID(const a_Value: String);
    procedure setNaoGerarFinanceiro(const a_Value: Boolean);
    procedure setNaoGerarTitulo(const a_Value: Boolean);
    procedure setOutrasRetencoes(const a_Value: Currency);
    procedure setDiscriminacaoServicos(const a_Value: String);
    procedure setnumero_titulo(const a_Value: String);
    procedure setTemplateDiscriminacaoRPS(const a_Value: String);
    procedure setRetemINSS(const a_Value: Boolean);
    procedure setCalcularImpostos(const a_Value: Boolean);
    procedure setFaturamentoProvisorio(const a_Value: Boolean);
    

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

    [NasajonSerializeAttribute('serie')]
    property serie: String read getSerie write setSerie;

    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getEmissao write setEmissao;

    [NasajonSerializeAttribute('vencimento')]
    property vencimento: TDate read getVencimento write setVencimento;

    [NasajonSerializeAttribute('lancamento')]
    property lancamento: TDate read getLancamento write setLancamento;

    [NasajonSerializeAttribute('lotecobrancaid')]
    property lotecobrancaid: String read getLoteCobrancaId write setLoteCobrancaId;

    /// <summary>
/// Indica o Tipo de Tributação. Quando não informado assumirá da configuração de RPS.
///                                              00 - Nenhum,
///                                              01 - Tributação no Município,
///                                              02 - Tributação Fora do Município,
///                                              03 - Operação Isenta,
///                                              04 - Operação Imune,
///                                              05 - Operação Suspensa por Decisão Judicial,
///                                              06 - Operação Suspensa por Decisão Administrativa
    /// </summary>
    [NasajonSerializeAttribute('tipotributacao')]
    property tipotributacao: Integer read getTipoTributacao write setTipoTributacao;

    /// <summary>
/// Indica o Regime Especial. Quando não informado assumirá da configuração de RPS.
///                                              00 - Nenhum,
///                                              01 - Microempresa Municipal,
///                                              02 - Estimativa,
///                                              03 - Sociedade de Profissionais,
///                                              04 - Cooperativa,
///                                              05 - Microempreendedor Individual,
///                                              06 - Empresa Júnior
    /// </summary>
    [NasajonSerializeAttribute('regimeespecial')]
    property regimeespecial: Integer read getRegimeEspecial write setRegimeEspecial;

    /// <summary>
/// Indica se tem Incentivo Cultural. Quando não informado assumirá da configuração de RPS.
///                                              0 - Não,
///                                              1 - Sim
    /// </summary>
    [NasajonSerializeAttribute('incentivocultural')]
    property incentivocultural: Integer read getIncentivoCultural write setIncentivoCultural;

    /// <summary>
/// Indica se tem Benifício Fiscal. Quando não informado assumirá da configuração de RPS.
///                                              001 - L. 691/84 - Isenção - associações de classe, sindicatos e as respectivas federações e confederações.
///                                              002 - L. 691/84 - Isenção - associações culturais, recreativas e desportivas.
///                                              003 - L. 691/84 - Isenção - serviços de veiculação de publicidade prestados por táxis autônomos e táxis de cooperativas.
///                                              004 - L. 691/84 - Isenção - espetáculos circenses nacionais.
///                                              005 - L. 691/84 - Isenção - espetáculos teatrais.
///                                              006 - L. 691/84 - Isenção - promoção de concertos, recitais, shows, festividades, exposições, quermesses e similares.
///                                              007 - L. 691/84 - Isenção - músicos, artistas e técnicos de espetáculos.
///                                              008 - L. 691/84 - Isenção - exibição de filmes cinematográficos por entidades brasileiras sem fins lucrativos.
///                                              009 - L. 691/84 - Isenção - reforma, reestruturação ou conserv. de prédios de int. histórico, cultural ou p/ preserv. ambiental.
///                                              010 - L. 691/84 - Estudos e projetos / polos industriais - Lei 691/84, art. 12, inciso XX.
///                                              011 - L. 4.372/06 - Isenção - Serv. vinc. à construção de terminais portuários na Zona Oeste.
///                                              012 - L. 5.133/09 - Isenção - Serviços vinculados à construção de complexos siderúrgicos na Zona Oeste.
///                                              013 - L. 5.044/2009 - Isenção - Central de teleatendimento (construção/reforma).
///                                              014 - L. 5.065/2009 - Isenção - Empreendim. Habitacionais de interesse social e de arrendamento Resid. - construção / reforma.
///                                              015 - Lei 5.128/2009 - Isenção - Operação Urbana Consorciada da Região do Porto do Rio.
///                                              016 - L. 5.230/2010 - Isenção - Copa das Confederações 2013 / Copa do Mundo 2014.
///                                              017 - L. 5.230/2010 - Isenção - Jogos Olímpicos e Paraolímpicos RIO 2016.
///                                              039 - Exportação de serviços para o exterior.
///                                              040 - Lei 4.372/2006 - Redução de Aliq. - Serviços Vinculados à operação de terminais portuários na Zona Oeste.
///                                              041 - Lei 5.128/2009 - Redução de Aliq. - Operação Urbana Consorciada da Região do Porto do Rio.
///                                              080 - Imunidade - Ente Federado.
///                                              081 - Imunidade - Autarquia ou Fundação pública.
///                                              082 - Imunidade - Templo religioso.
///                                              083 - Imunidade - Partido político.
///                                              084 - Imunidade - Fundação mantida por partido político.
///                                              085 - Imunidade - Entidade sindical de trabalhadores.
///                                              086 - Imunidade - Instituição de educação sem fins lucrativos.
///                                              087 - CRFB, Art. 150, inc. VI, alínea c.
    /// </summary>
    [NasajonSerializeAttribute('beneficiofiscal')]
    property beneficiofiscal: Integer read getBeneficioFiscal write setBeneficioFiscal;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getDesconto write setDesconto;

    /// <summary>
/// Indica a lista dos Itens do RPS.
    /// </summary>
    [NasajonSerializeAttribute('itemrps')]
    property itemrps: TObjectList<TItemRPSNovo> read getItemRPS write setItemRPS;

    [NasajonSerializeAttribute('formaspagamentos')]
    property formaspagamentos: TObjectList<TPagamentoSemParcela> read getFormasPagamentos write setFormasPagamentos;

    [NasajonSerializeAttribute('parcelas')]
    property parcelas: TObjectList<TParcela> read getParcelas write setParcelas;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira e centro de custo.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

    [NasajonSerializeAttribute('vendedores')]
    property vendedores: TObjectList<TVendedorRPS> read getVendedores write setVendedores;

    /// <summary>
/// Indica a Origem do RPS
///                                                                                 00 - Manual.
///                                                                                 01 - Faturamento.
///                                                                                 02 - Contrato.
    /// </summary>
    [NasajonSerializeAttribute('origem')]
    property origem: Integer read getOrigem write setOrigem;

    [NasajonSerializeAttribute('baseiss')]
    property baseiss: Currency read getBaseISS write setBaseISS;

    [NasajonSerializeAttribute('valoriss')]
    property valoriss: Currency read getValorISS write setValorISS;

    [NasajonSerializeAttribute('baseirrf')]
    property baseirrf: Currency read getBaseIRRf write setBaseIRRf;

    [NasajonSerializeAttribute('valorirrf')]
    property valorirrf: Currency read getValorIRRF write setValorIRRF;

    [NasajonSerializeAttribute('baseinss')]
    property baseinss: Currency read getBaseINSS write setBaseINSS;

    [NasajonSerializeAttribute('valorinss')]
    property valorinss: Currency read getValorINSS write setValorINSS;

    [NasajonSerializeAttribute('basepis')]
    property basepis: Currency read getBasePIS write setBasePIS;

    [NasajonSerializeAttribute('valorpis')]
    property valorpis: Currency read getValorPIS write setValorPIS;

    [NasajonSerializeAttribute('basecofins')]
    property basecofins: Currency read getBaseCOFINS write setBaseCOFINS;

    [NasajonSerializeAttribute('valorcofins')]
    property valorcofins: Currency read getValorCOFINS write setValorCOFINS;

    [NasajonSerializeAttribute('basecsll')]
    property basecsll: Currency read getBaseCSLL write setBaseCSLL;

    [NasajonSerializeAttribute('valorcsll')]
    property valorcsll: Currency read getValorCSLL write setValorCSLL;

    [NasajonSerializeAttribute('retemiss')]
    property retemiss: Boolean read getRetemISS write setRetemISS;

    [NasajonSerializeAttribute('retemirrf')]
    property retemirrf: Boolean read getRetemIRRF write setRetemIRRF;

    [NasajonSerializeAttribute('retempis')]
    property retempis: Boolean read getRetemPIS write setRetemPIS;

    [NasajonSerializeAttribute('retemcofins')]
    property retemcofins: Boolean read getRetemCOFINS write setRetemCOFINS;

    [NasajonSerializeAttribute('retemcsll')]
    property retemcsll: Boolean read getRetemCSLL write setRetemCSLL;

    [NasajonSerializeAttribute('descricaoservicos')]
    property descricaoservicos: String read getDescricaoServicos write setDescricaoServicos;

    [NasajonSerializeAttribute('idconjuntoanexo')]
    property idconjuntoanexo: String read getIdConjuntoAnexo write setIdConjuntoAnexo;

    /// <summary>
/// Indica a nota de serviço que será substituída pelo RPS gerado.
    /// </summary>
    [NasajonSerializeAttribute('rpsoriginal')]
    property rpsoriginal: String read getRpsOriginal write setRpsOriginal;

    /// <summary>
/// Indica tipo de retenção de ISS
///                                                                                 0 - Retido.
///                                                                                 1 - Devido.
    /// </summary>
    [NasajonSerializeAttribute('iss')]
    property iss: Integer read getISS write setISS;

    [NasajonSerializeAttribute('prerps')]
    property prerps: Boolean read getPreRPS write setPreRPS;

    [NasajonSerializeAttribute('outrasdeducoes')]
    property outrasdeducoes: Currency read getOutrasDeducoes write setOutrasDeducoes;

    [NasajonSerializeAttribute('xml_rps')]
    property xml_rps: String read getXML_RPS write setXML_RPS;

    [NasajonSerializeAttribute('xml_nfse')]
    property xml_nfse: String read getXML_NFSE write setXML_NFSE;

    [NasajonSerializeAttribute('xml_cancelamento')]
    property xml_cancelamento: String read getXML_Cancelamento write setXML_Cancelamento;

    [NasajonSerializeAttribute('xml_docengine')]
    property xml_docengine: String read getXML_DocEngine write setXML_DocEngine;

    [NasajonSerializeAttribute('id_documento_vinculado')]
    property id_documento_vinculado: String read getid_documento_vinculado write setid_documento_vinculado;

    [NasajonSerializeAttribute('municipioprestacao')]
    property municipioprestacao: String read getMunicipioPrestacao write setMunicipioPrestacao;

    [NasajonSerializeAttribute('cfopid')]
    property cfopid: String read getCFOPId write setCFOPId;

    [NasajonSerializeAttribute('obra')]
    property obra: String read getObra write setObra;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('contrato_id')]
    property contrato_id: String read getContrato_ID write setContrato_ID;

    [NasajonSerializeAttribute('naogerarfinanceiro')]
    property naogerarfinanceiro: Boolean read getNaoGerarFinanceiro write setNaoGerarFinanceiro;

    [NasajonSerializeAttribute('naogerartitulo')]
    property naogerartitulo: Boolean read getNaoGerarTitulo write setNaoGerarTitulo;

    [NasajonSerializeAttribute('outrasretencoes')]
    property outrasretencoes: Currency read getOutrasRetencoes write setOutrasRetencoes;

    [NasajonSerializeAttribute('discriminacaoservicos')]
    property discriminacaoservicos: String read getDiscriminacaoServicos write setDiscriminacaoServicos;

    [NasajonSerializeAttribute('numero_titulo')]
    property numero_titulo: String read getnumero_titulo write setnumero_titulo;

    [NasajonSerializeAttribute('templatediscriminacaorps')]
    property templatediscriminacaorps: String read getTemplateDiscriminacaoRPS write setTemplateDiscriminacaoRPS;

    [NasajonSerializeAttribute('reteminss')]
    property reteminss: Boolean read getRetemINSS write setRetemINSS;

    [NasajonSerializeAttribute('calcularimpostos')]
    property calcularimpostos: Boolean read getCalcularImpostos write setCalcularImpostos;

    [NasajonSerializeAttribute('faturamentoprovisorio')]
    property faturamentoprovisorio: Boolean read getFaturamentoProvisorio write setFaturamentoProvisorio;

    

end;

type TRPS_v2Alterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_Serie: String;
    var m_Emissao: TDate;
    var m_Vencimento: TDate;
    var m_Lancamento: TDate;
    var m_LoteCobrancaId: String;
    var m_TipoTributacao: Integer;
    var m_RegimeEspecial: Integer;
    var m_IncentivoCultural: Integer;
    var m_BeneficioFiscal: Integer;
    var m_Desconto: Currency;
    var m_ItemRPS: TObjectList<TItemRPSNovo>;
    var m_FormasPagamentos: TObjectList<TPagamentoSemParcela>;
    var m_Parcelas: TObjectList<TParcela>;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    var m_Observacao: String;
    var m_Vendedores: TObjectList<TVendedorRPS>;
    var m_BaseISS: Currency;
    var m_ValorISS: Currency;
    var m_BaseIRRf: Currency;
    var m_ValorIRRF: Currency;
    var m_BaseINSS: Currency;
    var m_ValorINSS: Currency;
    var m_BasePIS: Currency;
    var m_ValorPIS: Currency;
    var m_BaseCOFINS: Currency;
    var m_ValorCOFINS: Currency;
    var m_BaseCSLL: Currency;
    var m_ValorCSLL: Currency;
    var m_RetemISS: Boolean;
    var m_RetemIRRF: Boolean;
    var m_RetemINSS: Boolean;
    var m_RetemPIS: Boolean;
    var m_RetemCOFINS: Boolean;
    var m_RetemCSLL: Boolean;
    var m_DescricaoServicos: String;
    var m_IdConjuntoAnexo: String;
    var m_ISS: Integer;
    var m_PreRPS: Boolean;
    var m_OutrasDeducoes: Currency;
    var m_XML_RPS: String;
    var m_XML_NFSE: String;
    var m_XML_Cancelamento: String;
    var m_XML_DocEngine: String;
    var m_MunicipioPrestacao: String;
    var m_CFOPId: String;
    var m_Obra: String;
    var m_Contrato_ID: String;
    var m_NaoGerarFinanceiro: Boolean;
    var m_NaoGerarTitulo: Boolean;
    var m_OutrasRetencoes: Currency;
    var m_DiscriminacaoServicos: String;
    var m_numero_titulo: String;
    var m_TemplateDiscriminacaoRPS: String;
    var m_CalcularImpostos: Boolean;
    var m_FaturamentoProvisorio: Boolean;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getSerie(): String;
    function getEmissao(): TDate;
    function getVencimento(): TDate;
    function getLancamento(): TDate;
    function getLoteCobrancaId(): String;
    function getTipoTributacao(): Integer;
    function getRegimeEspecial(): Integer;
    function getIncentivoCultural(): Integer;
    function getBeneficioFiscal(): Integer;
    function getDesconto(): Currency;
    function getItemRPS(): TObjectList<TItemRPSNovo>;
    function getFormasPagamentos(): TObjectList<TPagamentoSemParcela>;
    function getParcelas(): TObjectList<TParcela>;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    function getObservacao(): String;
    function getVendedores(): TObjectList<TVendedorRPS>;
    function getBaseISS(): Currency;
    function getValorISS(): Currency;
    function getBaseIRRf(): Currency;
    function getValorIRRF(): Currency;
    function getBaseINSS(): Currency;
    function getValorINSS(): Currency;
    function getBasePIS(): Currency;
    function getValorPIS(): Currency;
    function getBaseCOFINS(): Currency;
    function getValorCOFINS(): Currency;
    function getBaseCSLL(): Currency;
    function getValorCSLL(): Currency;
    function getRetemISS(): Boolean;
    function getRetemIRRF(): Boolean;
    function getRetemINSS(): Boolean;
    function getRetemPIS(): Boolean;
    function getRetemCOFINS(): Boolean;
    function getRetemCSLL(): Boolean;
    function getDescricaoServicos(): String;
    function getIdConjuntoAnexo(): String;
    function getISS(): Integer;
    function getPreRPS(): Boolean;
    function getOutrasDeducoes(): Currency;
    function getXML_RPS(): String;
    function getXML_NFSE(): String;
    function getXML_Cancelamento(): String;
    function getXML_DocEngine(): String;
    function getMunicipioPrestacao(): String;
    function getCFOPId(): String;
    function getObra(): String;
    function getContrato_ID(): String;
    function getNaoGerarFinanceiro(): Boolean;
    function getNaoGerarTitulo(): Boolean;
    function getOutrasRetencoes(): Currency;
    function getDiscriminacaoServicos(): String;
    function getnumero_titulo(): String;
    function getTemplateDiscriminacaoRPS(): String;
    function getCalcularImpostos(): Boolean;
    function getFaturamentoProvisorio(): Boolean;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setSerie(const a_Value: String);
    procedure setEmissao(const a_Value: TDate);
    procedure setVencimento(const a_Value: TDate);
    procedure setLancamento(const a_Value: TDate);
    procedure setLoteCobrancaId(const a_Value: String);
    procedure setTipoTributacao(const a_Value: Integer);
    procedure setRegimeEspecial(const a_Value: Integer);
    procedure setIncentivoCultural(const a_Value: Integer);
    procedure setBeneficioFiscal(const a_Value: Integer);
    procedure setDesconto(const a_Value: Currency);
    procedure setItemRPS(const a_Value: TObjectList<TItemRPSNovo>);
    procedure setFormasPagamentos(const a_Value: TObjectList<TPagamentoSemParcela>);
    procedure setParcelas(const a_Value: TObjectList<TParcela>);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setObservacao(const a_Value: String);
    procedure setVendedores(const a_Value: TObjectList<TVendedorRPS>);
    procedure setBaseISS(const a_Value: Currency);
    procedure setValorISS(const a_Value: Currency);
    procedure setBaseIRRf(const a_Value: Currency);
    procedure setValorIRRF(const a_Value: Currency);
    procedure setBaseINSS(const a_Value: Currency);
    procedure setValorINSS(const a_Value: Currency);
    procedure setBasePIS(const a_Value: Currency);
    procedure setValorPIS(const a_Value: Currency);
    procedure setBaseCOFINS(const a_Value: Currency);
    procedure setValorCOFINS(const a_Value: Currency);
    procedure setBaseCSLL(const a_Value: Currency);
    procedure setValorCSLL(const a_Value: Currency);
    procedure setRetemISS(const a_Value: Boolean);
    procedure setRetemIRRF(const a_Value: Boolean);
    procedure setRetemINSS(const a_Value: Boolean);
    procedure setRetemPIS(const a_Value: Boolean);
    procedure setRetemCOFINS(const a_Value: Boolean);
    procedure setRetemCSLL(const a_Value: Boolean);
    procedure setDescricaoServicos(const a_Value: String);
    procedure setIdConjuntoAnexo(const a_Value: String);
    procedure setISS(const a_Value: Integer);
    procedure setPreRPS(const a_Value: Boolean);
    procedure setOutrasDeducoes(const a_Value: Currency);
    procedure setXML_RPS(const a_Value: String);
    procedure setXML_NFSE(const a_Value: String);
    procedure setXML_Cancelamento(const a_Value: String);
    procedure setXML_DocEngine(const a_Value: String);
    procedure setMunicipioPrestacao(const a_Value: String);
    procedure setCFOPId(const a_Value: String);
    procedure setObra(const a_Value: String);
    procedure setContrato_ID(const a_Value: String);
    procedure setNaoGerarFinanceiro(const a_Value: Boolean);
    procedure setNaoGerarTitulo(const a_Value: Boolean);
    procedure setOutrasRetencoes(const a_Value: Currency);
    procedure setDiscriminacaoServicos(const a_Value: String);
    procedure setnumero_titulo(const a_Value: String);
    procedure setTemplateDiscriminacaoRPS(const a_Value: String);
    procedure setCalcularImpostos(const a_Value: Boolean);
    procedure setFaturamentoProvisorio(const a_Value: Boolean);
    

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

    [NasajonSerializeAttribute('serie')]
    property serie: String read getSerie write setSerie;

    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getEmissao write setEmissao;

    [NasajonSerializeAttribute('vencimento')]
    property vencimento: TDate read getVencimento write setVencimento;

    [NasajonSerializeAttribute('lancamento')]
    property lancamento: TDate read getLancamento write setLancamento;

    [NasajonSerializeAttribute('lotecobrancaid')]
    property lotecobrancaid: String read getLoteCobrancaId write setLoteCobrancaId;

    /// <summary>
/// Indica o Tipo de Tributação. Quando não informado assumirá da configuração de RPS.
///                                              00 - Nenhum,
///                                              01 - Tributação no Município,
///                                              02 - Tributação Fora do Município,
///                                              03 - Operação Isenta,
///                                              04 - Operação Imune,
///                                              05 - Operação Suspensa por Decisão Judicial,
///                                              06 - Operação Suspensa por Decisão Administrativa
    /// </summary>
    [NasajonSerializeAttribute('tipotributacao')]
    property tipotributacao: Integer read getTipoTributacao write setTipoTributacao;

    /// <summary>
/// Indica o Regime Especial. Quando não informado assumirá da configuração de RPS.
///                                              00 - Nenhum,
///                                              01 - Microempresa Municipal,
///                                              02 - Estimativa,
///                                              03 - Sociedade de Profissionais,
///                                              04 - Cooperativa,
///                                              05 - Microempreendedor Individual,
///                                              06 - Empresa Júnior
    /// </summary>
    [NasajonSerializeAttribute('regimeespecial')]
    property regimeespecial: Integer read getRegimeEspecial write setRegimeEspecial;

    /// <summary>
/// Indica se tem Incentivo Cultural. Quando não informado assumirá da configuração de RPS.
///                                              0 - Não,
///                                              1 - Sim
    /// </summary>
    [NasajonSerializeAttribute('incentivocultural')]
    property incentivocultural: Integer read getIncentivoCultural write setIncentivoCultural;

    /// <summary>
/// Indica se tem Benifício Fiscal. Quando não informado assumirá da configuração de RPS.
///                                              001 - L. 691/84 - Isenção - associações de classe, sindicatos e as respectivas federações e confederações.
///                                              002 - L. 691/84 - Isenção - associações culturais, recreativas e desportivas.
///                                              003 - L. 691/84 - Isenção - serviços de veiculação de publicidade prestados por táxis autônomos e táxis de cooperativas.
///                                              004 - L. 691/84 - Isenção - espetáculos circenses nacionais.
///                                              005 - L. 691/84 - Isenção - espetáculos teatrais.
///                                              006 - L. 691/84 - Isenção - promoção de concertos, recitais, shows, festividades, exposições, quermesses e similares.
///                                              007 - L. 691/84 - Isenção - músicos, artistas e técnicos de espetáculos.
///                                              008 - L. 691/84 - Isenção - exibição de filmes cinematográficos por entidades brasileiras sem fins lucrativos.
///                                              009 - L. 691/84 - Isenção - reforma, reestruturação ou conserv. de prédios de int. histórico, cultural ou p/ preserv. ambiental.
///                                              010 - L. 691/84 - Estudos e projetos / polos industriais - Lei 691/84, art. 12, inciso XX.
///                                              011 - L. 4.372/06 - Isenção - Serv. vinc. à construção de terminais portuários na Zona Oeste.
///                                              012 - L. 5.133/09 - Isenção - Serviços vinculados à construção de complexos siderúrgicos na Zona Oeste.
///                                              013 - L. 5.044/2009 - Isenção - Central de teleatendimento (construção/reforma).
///                                              014 - L. 5.065/2009 - Isenção - Empreendim. Habitacionais de interesse social e de arrendamento Resid. - construção / reforma.
///                                              015 - Lei 5.128/2009 - Isenção - Operação Urbana Consorciada da Região do Porto do Rio.
///                                              016 - L. 5.230/2010 - Isenção - Copa das Confederações 2013 / Copa do Mundo 2014.
///                                              017 - L. 5.230/2010 - Isenção - Jogos Olímpicos e Paraolímpicos RIO 2016.
///                                              039 - Exportação de serviços para o exterior.
///                                              040 - Lei 4.372/2006 - Redução de Aliq. - Serviços Vinculados à operação de terminais portuários na Zona Oeste.
///                                              041 - Lei 5.128/2009 - Redução de Aliq. - Operação Urbana Consorciada da Região do Porto do Rio.
///                                              080 - Imunidade - Ente Federado.
///                                              081 - Imunidade - Autarquia ou Fundação pública.
///                                              082 - Imunidade - Templo religioso.
///                                              083 - Imunidade - Partido político.
///                                              084 - Imunidade - Fundação mantida por partido político.
///                                              085 - Imunidade - Entidade sindical de trabalhadores.
///                                              086 - Imunidade - Instituição de educação sem fins lucrativos.
///                                              087 - CRFB, Art. 150, inc. VI, alínea c.
    /// </summary>
    [NasajonSerializeAttribute('beneficiofiscal')]
    property beneficiofiscal: Integer read getBeneficioFiscal write setBeneficioFiscal;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getDesconto write setDesconto;

    /// <summary>
/// Indica a lista dos Itens do RPS.
    /// </summary>
    [NasajonSerializeAttribute('itemrps')]
    property itemrps: TObjectList<TItemRPSNovo> read getItemRPS write setItemRPS;

    [NasajonSerializeAttribute('formaspagamentos')]
    property formaspagamentos: TObjectList<TPagamentoSemParcela> read getFormasPagamentos write setFormasPagamentos;

    [NasajonSerializeAttribute('parcelas')]
    property parcelas: TObjectList<TParcela> read getParcelas write setParcelas;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira e centro de custo.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

    [NasajonSerializeAttribute('vendedores')]
    property vendedores: TObjectList<TVendedorRPS> read getVendedores write setVendedores;

    [NasajonSerializeAttribute('baseiss')]
    property baseiss: Currency read getBaseISS write setBaseISS;

    [NasajonSerializeAttribute('valoriss')]
    property valoriss: Currency read getValorISS write setValorISS;

    [NasajonSerializeAttribute('baseirrf')]
    property baseirrf: Currency read getBaseIRRf write setBaseIRRf;

    [NasajonSerializeAttribute('valorirrf')]
    property valorirrf: Currency read getValorIRRF write setValorIRRF;

    [NasajonSerializeAttribute('baseinss')]
    property baseinss: Currency read getBaseINSS write setBaseINSS;

    [NasajonSerializeAttribute('valorinss')]
    property valorinss: Currency read getValorINSS write setValorINSS;

    [NasajonSerializeAttribute('basepis')]
    property basepis: Currency read getBasePIS write setBasePIS;

    [NasajonSerializeAttribute('valorpis')]
    property valorpis: Currency read getValorPIS write setValorPIS;

    [NasajonSerializeAttribute('basecofins')]
    property basecofins: Currency read getBaseCOFINS write setBaseCOFINS;

    [NasajonSerializeAttribute('valorcofins')]
    property valorcofins: Currency read getValorCOFINS write setValorCOFINS;

    [NasajonSerializeAttribute('basecsll')]
    property basecsll: Currency read getBaseCSLL write setBaseCSLL;

    [NasajonSerializeAttribute('valorcsll')]
    property valorcsll: Currency read getValorCSLL write setValorCSLL;

    [NasajonSerializeAttribute('retemiss')]
    property retemiss: Boolean read getRetemISS write setRetemISS;

    [NasajonSerializeAttribute('retemirrf')]
    property retemirrf: Boolean read getRetemIRRF write setRetemIRRF;

    [NasajonSerializeAttribute('reteminss')]
    property reteminss: Boolean read getRetemINSS write setRetemINSS;

    [NasajonSerializeAttribute('retempis')]
    property retempis: Boolean read getRetemPIS write setRetemPIS;

    [NasajonSerializeAttribute('retemcofins')]
    property retemcofins: Boolean read getRetemCOFINS write setRetemCOFINS;

    [NasajonSerializeAttribute('retemcsll')]
    property retemcsll: Boolean read getRetemCSLL write setRetemCSLL;

    [NasajonSerializeAttribute('descricaoservicos')]
    property descricaoservicos: String read getDescricaoServicos write setDescricaoServicos;

    [NasajonSerializeAttribute('idconjuntoanexo')]
    property idconjuntoanexo: String read getIdConjuntoAnexo write setIdConjuntoAnexo;

    /// <summary>
/// Indica tipo de retenção de ISS
///                                                                                 0 - Retido.
///                                                                                 1 - Devido.
    /// </summary>
    [NasajonSerializeAttribute('iss')]
    property iss: Integer read getISS write setISS;

    [NasajonSerializeAttribute('prerps')]
    property prerps: Boolean read getPreRPS write setPreRPS;

    [NasajonSerializeAttribute('outrasdeducoes')]
    property outrasdeducoes: Currency read getOutrasDeducoes write setOutrasDeducoes;

    [NasajonSerializeAttribute('xml_rps')]
    property xml_rps: String read getXML_RPS write setXML_RPS;

    [NasajonSerializeAttribute('xml_nfse')]
    property xml_nfse: String read getXML_NFSE write setXML_NFSE;

    [NasajonSerializeAttribute('xml_cancelamento')]
    property xml_cancelamento: String read getXML_Cancelamento write setXML_Cancelamento;

    [NasajonSerializeAttribute('xml_docengine')]
    property xml_docengine: String read getXML_DocEngine write setXML_DocEngine;

    [NasajonSerializeAttribute('municipioprestacao')]
    property municipioprestacao: String read getMunicipioPrestacao write setMunicipioPrestacao;

    [NasajonSerializeAttribute('cfopid')]
    property cfopid: String read getCFOPId write setCFOPId;

    [NasajonSerializeAttribute('obra')]
    property obra: String read getObra write setObra;

    [NasajonSerializeAttribute('contrato_id')]
    property contrato_id: String read getContrato_ID write setContrato_ID;

    [NasajonSerializeAttribute('naogerarfinanceiro')]
    property naogerarfinanceiro: Boolean read getNaoGerarFinanceiro write setNaoGerarFinanceiro;

    [NasajonSerializeAttribute('naogerartitulo')]
    property naogerartitulo: Boolean read getNaoGerarTitulo write setNaoGerarTitulo;

    [NasajonSerializeAttribute('outrasretencoes')]
    property outrasretencoes: Currency read getOutrasRetencoes write setOutrasRetencoes;

    [NasajonSerializeAttribute('discriminacaoservicos')]
    property discriminacaoservicos: String read getDiscriminacaoServicos write setDiscriminacaoServicos;

    [NasajonSerializeAttribute('numero_titulo')]
    property numero_titulo: String read getnumero_titulo write setnumero_titulo;

    [NasajonSerializeAttribute('templatediscriminacaorps')]
    property templatediscriminacaorps: String read getTemplateDiscriminacaoRPS write setTemplateDiscriminacaoRPS;

    [NasajonSerializeAttribute('calcularimpostos')]
    property calcularimpostos: Boolean read getCalcularImpostos write setCalcularImpostos;

    [NasajonSerializeAttribute('faturamentoprovisorio')]
    property faturamentoprovisorio: Boolean read getFaturamentoProvisorio write setFaturamentoProvisorio;

    

end;

type TRPS_v2Excluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TRPS_v2Novo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TRPS_v2Novo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TRPS_v2Novo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TRPS_v2Novo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TRPS_v2Novo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TRPS_v2Novo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TRPS_v2Novo.getSerie: String;
begin
  Result := Self.m_Serie;
end;

procedure TRPS_v2Novo.setSerie(const a_Value: String);
begin
  Self.m_Serie := a_Value;
end;

function TRPS_v2Novo.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TRPS_v2Novo.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TRPS_v2Novo.getVencimento: TDate;
begin
  Result := Self.m_Vencimento;
end;

procedure TRPS_v2Novo.setVencimento(const a_Value: TDate);
begin
  Self.m_Vencimento := a_Value;
end;

function TRPS_v2Novo.getLancamento: TDate;
begin
  Result := Self.m_Lancamento;
end;

procedure TRPS_v2Novo.setLancamento(const a_Value: TDate);
begin
  Self.m_Lancamento := a_Value;
end;

function TRPS_v2Novo.getLoteCobrancaId: String;
begin
  Result := Self.m_LoteCobrancaId;
end;

procedure TRPS_v2Novo.setLoteCobrancaId(const a_Value: String);
begin
  Self.m_LoteCobrancaId := a_Value;
end;

function TRPS_v2Novo.getTipoTributacao: Integer;
begin
  Result := Self.m_TipoTributacao;
end;

procedure TRPS_v2Novo.setTipoTributacao(const a_Value: Integer);
begin
  Self.m_TipoTributacao := a_Value;
end;

function TRPS_v2Novo.getRegimeEspecial: Integer;
begin
  Result := Self.m_RegimeEspecial;
end;

procedure TRPS_v2Novo.setRegimeEspecial(const a_Value: Integer);
begin
  Self.m_RegimeEspecial := a_Value;
end;

function TRPS_v2Novo.getIncentivoCultural: Integer;
begin
  Result := Self.m_IncentivoCultural;
end;

procedure TRPS_v2Novo.setIncentivoCultural(const a_Value: Integer);
begin
  Self.m_IncentivoCultural := a_Value;
end;

function TRPS_v2Novo.getBeneficioFiscal: Integer;
begin
  Result := Self.m_BeneficioFiscal;
end;

procedure TRPS_v2Novo.setBeneficioFiscal(const a_Value: Integer);
begin
  Self.m_BeneficioFiscal := a_Value;
end;

function TRPS_v2Novo.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TRPS_v2Novo.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TRPS_v2Novo.getItemRPS: TObjectList<TItemRPSNovo>;
begin
  if not Assigned(Self.m_ItemRPS)
    then Self.m_ItemRPS := TObjectList<TItemRPSNovo>.Create();
  Result := Self.m_ItemRPS;
end;

procedure TRPS_v2Novo.setItemRPS(const a_Value: TObjectList<TItemRPSNovo>);
begin
  Self.m_ItemRPS := a_Value;
end;

function TRPS_v2Novo.getFormasPagamentos: TObjectList<TPagamentoSemParcela>;
begin
  if not Assigned(Self.m_FormasPagamentos)
    then Self.m_FormasPagamentos := TObjectList<TPagamentoSemParcela>.Create();
  Result := Self.m_FormasPagamentos;
end;

procedure TRPS_v2Novo.setFormasPagamentos(const a_Value: TObjectList<TPagamentoSemParcela>);
begin
  Self.m_FormasPagamentos := a_Value;
end;

function TRPS_v2Novo.getParcelas: TObjectList<TParcela>;
begin
  if not Assigned(Self.m_Parcelas)
    then Self.m_Parcelas := TObjectList<TParcela>.Create();
  Result := Self.m_Parcelas;
end;

procedure TRPS_v2Novo.setParcelas(const a_Value: TObjectList<TParcela>);
begin
  Self.m_Parcelas := a_Value;
end;

function TRPS_v2Novo.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TRPS_v2Novo.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TRPS_v2Novo.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TRPS_v2Novo.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TRPS_v2Novo.getVendedores: TObjectList<TVendedorRPS>;
begin
  if not Assigned(Self.m_Vendedores)
    then Self.m_Vendedores := TObjectList<TVendedorRPS>.Create();
  Result := Self.m_Vendedores;
end;

procedure TRPS_v2Novo.setVendedores(const a_Value: TObjectList<TVendedorRPS>);
begin
  Self.m_Vendedores := a_Value;
end;

function TRPS_v2Novo.getOrigem: Integer;
begin
  Result := Self.m_Origem;
end;

procedure TRPS_v2Novo.setOrigem(const a_Value: Integer);
begin
  Self.m_Origem := a_Value;
end;

function TRPS_v2Novo.getBaseISS: Currency;
begin
  Result := Self.m_BaseISS;
end;

procedure TRPS_v2Novo.setBaseISS(const a_Value: Currency);
begin
  Self.m_BaseISS := a_Value;
end;

function TRPS_v2Novo.getValorISS: Currency;
begin
  Result := Self.m_ValorISS;
end;

procedure TRPS_v2Novo.setValorISS(const a_Value: Currency);
begin
  Self.m_ValorISS := a_Value;
end;

function TRPS_v2Novo.getBaseIRRf: Currency;
begin
  Result := Self.m_BaseIRRf;
end;

procedure TRPS_v2Novo.setBaseIRRf(const a_Value: Currency);
begin
  Self.m_BaseIRRf := a_Value;
end;

function TRPS_v2Novo.getValorIRRF: Currency;
begin
  Result := Self.m_ValorIRRF;
end;

procedure TRPS_v2Novo.setValorIRRF(const a_Value: Currency);
begin
  Self.m_ValorIRRF := a_Value;
end;

function TRPS_v2Novo.getBaseINSS: Currency;
begin
  Result := Self.m_BaseINSS;
end;

procedure TRPS_v2Novo.setBaseINSS(const a_Value: Currency);
begin
  Self.m_BaseINSS := a_Value;
end;

function TRPS_v2Novo.getValorINSS: Currency;
begin
  Result := Self.m_ValorINSS;
end;

procedure TRPS_v2Novo.setValorINSS(const a_Value: Currency);
begin
  Self.m_ValorINSS := a_Value;
end;

function TRPS_v2Novo.getBasePIS: Currency;
begin
  Result := Self.m_BasePIS;
end;

procedure TRPS_v2Novo.setBasePIS(const a_Value: Currency);
begin
  Self.m_BasePIS := a_Value;
end;

function TRPS_v2Novo.getValorPIS: Currency;
begin
  Result := Self.m_ValorPIS;
end;

procedure TRPS_v2Novo.setValorPIS(const a_Value: Currency);
begin
  Self.m_ValorPIS := a_Value;
end;

function TRPS_v2Novo.getBaseCOFINS: Currency;
begin
  Result := Self.m_BaseCOFINS;
end;

procedure TRPS_v2Novo.setBaseCOFINS(const a_Value: Currency);
begin
  Self.m_BaseCOFINS := a_Value;
end;

function TRPS_v2Novo.getValorCOFINS: Currency;
begin
  Result := Self.m_ValorCOFINS;
end;

procedure TRPS_v2Novo.setValorCOFINS(const a_Value: Currency);
begin
  Self.m_ValorCOFINS := a_Value;
end;

function TRPS_v2Novo.getBaseCSLL: Currency;
begin
  Result := Self.m_BaseCSLL;
end;

procedure TRPS_v2Novo.setBaseCSLL(const a_Value: Currency);
begin
  Self.m_BaseCSLL := a_Value;
end;

function TRPS_v2Novo.getValorCSLL: Currency;
begin
  Result := Self.m_ValorCSLL;
end;

procedure TRPS_v2Novo.setValorCSLL(const a_Value: Currency);
begin
  Self.m_ValorCSLL := a_Value;
end;

function TRPS_v2Novo.getRetemISS: Boolean;
begin
  Result := Self.m_RetemISS;
end;

procedure TRPS_v2Novo.setRetemISS(const a_Value: Boolean);
begin
  Self.m_RetemISS := a_Value;
end;

function TRPS_v2Novo.getRetemIRRF: Boolean;
begin
  Result := Self.m_RetemIRRF;
end;

procedure TRPS_v2Novo.setRetemIRRF(const a_Value: Boolean);
begin
  Self.m_RetemIRRF := a_Value;
end;

function TRPS_v2Novo.getRetemPIS: Boolean;
begin
  Result := Self.m_RetemPIS;
end;

procedure TRPS_v2Novo.setRetemPIS(const a_Value: Boolean);
begin
  Self.m_RetemPIS := a_Value;
end;

function TRPS_v2Novo.getRetemCOFINS: Boolean;
begin
  Result := Self.m_RetemCOFINS;
end;

procedure TRPS_v2Novo.setRetemCOFINS(const a_Value: Boolean);
begin
  Self.m_RetemCOFINS := a_Value;
end;

function TRPS_v2Novo.getRetemCSLL: Boolean;
begin
  Result := Self.m_RetemCSLL;
end;

procedure TRPS_v2Novo.setRetemCSLL(const a_Value: Boolean);
begin
  Self.m_RetemCSLL := a_Value;
end;

function TRPS_v2Novo.getDescricaoServicos: String;
begin
  Result := Self.m_DescricaoServicos;
end;

procedure TRPS_v2Novo.setDescricaoServicos(const a_Value: String);
begin
  Self.m_DescricaoServicos := a_Value;
end;

function TRPS_v2Novo.getIdConjuntoAnexo: String;
begin
  Result := Self.m_IdConjuntoAnexo;
end;

procedure TRPS_v2Novo.setIdConjuntoAnexo(const a_Value: String);
begin
  Self.m_IdConjuntoAnexo := a_Value;
end;

function TRPS_v2Novo.getRpsOriginal: String;
begin
  Result := Self.m_RpsOriginal;
end;

procedure TRPS_v2Novo.setRpsOriginal(const a_Value: String);
begin
  Self.m_RpsOriginal := a_Value;
end;

function TRPS_v2Novo.getISS: Integer;
begin
  Result := Self.m_ISS;
end;

procedure TRPS_v2Novo.setISS(const a_Value: Integer);
begin
  Self.m_ISS := a_Value;
end;

function TRPS_v2Novo.getPreRPS: Boolean;
begin
  Result := Self.m_PreRPS;
end;

procedure TRPS_v2Novo.setPreRPS(const a_Value: Boolean);
begin
  Self.m_PreRPS := a_Value;
end;

function TRPS_v2Novo.getOutrasDeducoes: Currency;
begin
  Result := Self.m_OutrasDeducoes;
end;

procedure TRPS_v2Novo.setOutrasDeducoes(const a_Value: Currency);
begin
  Self.m_OutrasDeducoes := a_Value;
end;

function TRPS_v2Novo.getXML_RPS: String;
begin
  Result := Self.m_XML_RPS;
end;

procedure TRPS_v2Novo.setXML_RPS(const a_Value: String);
begin
  Self.m_XML_RPS := a_Value;
end;

function TRPS_v2Novo.getXML_NFSE: String;
begin
  Result := Self.m_XML_NFSE;
end;

procedure TRPS_v2Novo.setXML_NFSE(const a_Value: String);
begin
  Self.m_XML_NFSE := a_Value;
end;

function TRPS_v2Novo.getXML_Cancelamento: String;
begin
  Result := Self.m_XML_Cancelamento;
end;

procedure TRPS_v2Novo.setXML_Cancelamento(const a_Value: String);
begin
  Self.m_XML_Cancelamento := a_Value;
end;

function TRPS_v2Novo.getXML_DocEngine: String;
begin
  Result := Self.m_XML_DocEngine;
end;

procedure TRPS_v2Novo.setXML_DocEngine(const a_Value: String);
begin
  Self.m_XML_DocEngine := a_Value;
end;

function TRPS_v2Novo.getid_documento_vinculado: String;
begin
  Result := Self.m_id_documento_vinculado;
end;

procedure TRPS_v2Novo.setid_documento_vinculado(const a_Value: String);
begin
  Self.m_id_documento_vinculado := a_Value;
end;

function TRPS_v2Novo.getMunicipioPrestacao: String;
begin
  Result := Self.m_MunicipioPrestacao;
end;

procedure TRPS_v2Novo.setMunicipioPrestacao(const a_Value: String);
begin
  Self.m_MunicipioPrestacao := a_Value;
end;

function TRPS_v2Novo.getCFOPId: String;
begin
  Result := Self.m_CFOPId;
end;

procedure TRPS_v2Novo.setCFOPId(const a_Value: String);
begin
  Self.m_CFOPId := a_Value;
end;

function TRPS_v2Novo.getObra: String;
begin
  Result := Self.m_Obra;
end;

procedure TRPS_v2Novo.setObra(const a_Value: String);
begin
  Self.m_Obra := a_Value;
end;

function TRPS_v2Novo.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TRPS_v2Novo.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TRPS_v2Novo.getContrato_ID: String;
begin
  Result := Self.m_Contrato_ID;
end;

procedure TRPS_v2Novo.setContrato_ID(const a_Value: String);
begin
  Self.m_Contrato_ID := a_Value;
end;

function TRPS_v2Novo.getNaoGerarFinanceiro: Boolean;
begin
  Result := Self.m_NaoGerarFinanceiro;
end;

procedure TRPS_v2Novo.setNaoGerarFinanceiro(const a_Value: Boolean);
begin
  Self.m_NaoGerarFinanceiro := a_Value;
end;

function TRPS_v2Novo.getNaoGerarTitulo: Boolean;
begin
  Result := Self.m_NaoGerarTitulo;
end;

procedure TRPS_v2Novo.setNaoGerarTitulo(const a_Value: Boolean);
begin
  Self.m_NaoGerarTitulo := a_Value;
end;

function TRPS_v2Novo.getOutrasRetencoes: Currency;
begin
  Result := Self.m_OutrasRetencoes;
end;

procedure TRPS_v2Novo.setOutrasRetencoes(const a_Value: Currency);
begin
  Self.m_OutrasRetencoes := a_Value;
end;

function TRPS_v2Novo.getDiscriminacaoServicos: String;
begin
  Result := Self.m_DiscriminacaoServicos;
end;

procedure TRPS_v2Novo.setDiscriminacaoServicos(const a_Value: String);
begin
  Self.m_DiscriminacaoServicos := a_Value;
end;

function TRPS_v2Novo.getnumero_titulo: String;
begin
  Result := Self.m_numero_titulo;
end;

procedure TRPS_v2Novo.setnumero_titulo(const a_Value: String);
begin
  Self.m_numero_titulo := a_Value;
end;

function TRPS_v2Novo.getTemplateDiscriminacaoRPS: String;
begin
  Result := Self.m_TemplateDiscriminacaoRPS;
end;

procedure TRPS_v2Novo.setTemplateDiscriminacaoRPS(const a_Value: String);
begin
  Self.m_TemplateDiscriminacaoRPS := a_Value;
end;

function TRPS_v2Novo.getRetemINSS: Boolean;
begin
  Result := Self.m_RetemINSS;
end;

procedure TRPS_v2Novo.setRetemINSS(const a_Value: Boolean);
begin
  Self.m_RetemINSS := a_Value;
end;

function TRPS_v2Novo.getCalcularImpostos: Boolean;
begin
  Result := Self.m_CalcularImpostos;
end;

procedure TRPS_v2Novo.setCalcularImpostos(const a_Value: Boolean);
begin
  Self.m_CalcularImpostos := a_Value;
end;

function TRPS_v2Novo.getFaturamentoProvisorio: Boolean;
begin
  Result := Self.m_FaturamentoProvisorio;
end;

procedure TRPS_v2Novo.setFaturamentoProvisorio(const a_Value: Boolean);
begin
  Self.m_FaturamentoProvisorio := a_Value;
end;

destructor TRPS_v2Novo.Destroy;
begin
  Self.ItemRPS.Free();  Self.FormasPagamentos.Free();  Self.Parcelas.Free();  Self.RateioFinanceiro.Free();  Self.Vendedores.Free();
end;

function TRPS_v2Novo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRPS_v2Novo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRPS_v2Novo.getNameAPI(): String;
begin
  Result := 'RPS_v2Novo';
end;

function TRPS_v2Novo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRPS_v2Novo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRPS_v2Alterar.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TRPS_v2Alterar.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TRPS_v2Alterar.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TRPS_v2Alterar.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TRPS_v2Alterar.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TRPS_v2Alterar.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TRPS_v2Alterar.getSerie: String;
begin
  Result := Self.m_Serie;
end;

procedure TRPS_v2Alterar.setSerie(const a_Value: String);
begin
  Self.m_Serie := a_Value;
end;

function TRPS_v2Alterar.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TRPS_v2Alterar.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TRPS_v2Alterar.getVencimento: TDate;
begin
  Result := Self.m_Vencimento;
end;

procedure TRPS_v2Alterar.setVencimento(const a_Value: TDate);
begin
  Self.m_Vencimento := a_Value;
end;

function TRPS_v2Alterar.getLancamento: TDate;
begin
  Result := Self.m_Lancamento;
end;

procedure TRPS_v2Alterar.setLancamento(const a_Value: TDate);
begin
  Self.m_Lancamento := a_Value;
end;

function TRPS_v2Alterar.getLoteCobrancaId: String;
begin
  Result := Self.m_LoteCobrancaId;
end;

procedure TRPS_v2Alterar.setLoteCobrancaId(const a_Value: String);
begin
  Self.m_LoteCobrancaId := a_Value;
end;

function TRPS_v2Alterar.getTipoTributacao: Integer;
begin
  Result := Self.m_TipoTributacao;
end;

procedure TRPS_v2Alterar.setTipoTributacao(const a_Value: Integer);
begin
  Self.m_TipoTributacao := a_Value;
end;

function TRPS_v2Alterar.getRegimeEspecial: Integer;
begin
  Result := Self.m_RegimeEspecial;
end;

procedure TRPS_v2Alterar.setRegimeEspecial(const a_Value: Integer);
begin
  Self.m_RegimeEspecial := a_Value;
end;

function TRPS_v2Alterar.getIncentivoCultural: Integer;
begin
  Result := Self.m_IncentivoCultural;
end;

procedure TRPS_v2Alterar.setIncentivoCultural(const a_Value: Integer);
begin
  Self.m_IncentivoCultural := a_Value;
end;

function TRPS_v2Alterar.getBeneficioFiscal: Integer;
begin
  Result := Self.m_BeneficioFiscal;
end;

procedure TRPS_v2Alterar.setBeneficioFiscal(const a_Value: Integer);
begin
  Self.m_BeneficioFiscal := a_Value;
end;

function TRPS_v2Alterar.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TRPS_v2Alterar.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TRPS_v2Alterar.getItemRPS: TObjectList<TItemRPSNovo>;
begin
  if not Assigned(Self.m_ItemRPS)
    then Self.m_ItemRPS := TObjectList<TItemRPSNovo>.Create();
  Result := Self.m_ItemRPS;
end;

procedure TRPS_v2Alterar.setItemRPS(const a_Value: TObjectList<TItemRPSNovo>);
begin
  Self.m_ItemRPS := a_Value;
end;

function TRPS_v2Alterar.getFormasPagamentos: TObjectList<TPagamentoSemParcela>;
begin
  if not Assigned(Self.m_FormasPagamentos)
    then Self.m_FormasPagamentos := TObjectList<TPagamentoSemParcela>.Create();
  Result := Self.m_FormasPagamentos;
end;

procedure TRPS_v2Alterar.setFormasPagamentos(const a_Value: TObjectList<TPagamentoSemParcela>);
begin
  Self.m_FormasPagamentos := a_Value;
end;

function TRPS_v2Alterar.getParcelas: TObjectList<TParcela>;
begin
  if not Assigned(Self.m_Parcelas)
    then Self.m_Parcelas := TObjectList<TParcela>.Create();
  Result := Self.m_Parcelas;
end;

procedure TRPS_v2Alterar.setParcelas(const a_Value: TObjectList<TParcela>);
begin
  Self.m_Parcelas := a_Value;
end;

function TRPS_v2Alterar.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TRPS_v2Alterar.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TRPS_v2Alterar.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TRPS_v2Alterar.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TRPS_v2Alterar.getVendedores: TObjectList<TVendedorRPS>;
begin
  if not Assigned(Self.m_Vendedores)
    then Self.m_Vendedores := TObjectList<TVendedorRPS>.Create();
  Result := Self.m_Vendedores;
end;

procedure TRPS_v2Alterar.setVendedores(const a_Value: TObjectList<TVendedorRPS>);
begin
  Self.m_Vendedores := a_Value;
end;

function TRPS_v2Alterar.getBaseISS: Currency;
begin
  Result := Self.m_BaseISS;
end;

procedure TRPS_v2Alterar.setBaseISS(const a_Value: Currency);
begin
  Self.m_BaseISS := a_Value;
end;

function TRPS_v2Alterar.getValorISS: Currency;
begin
  Result := Self.m_ValorISS;
end;

procedure TRPS_v2Alterar.setValorISS(const a_Value: Currency);
begin
  Self.m_ValorISS := a_Value;
end;

function TRPS_v2Alterar.getBaseIRRf: Currency;
begin
  Result := Self.m_BaseIRRf;
end;

procedure TRPS_v2Alterar.setBaseIRRf(const a_Value: Currency);
begin
  Self.m_BaseIRRf := a_Value;
end;

function TRPS_v2Alterar.getValorIRRF: Currency;
begin
  Result := Self.m_ValorIRRF;
end;

procedure TRPS_v2Alterar.setValorIRRF(const a_Value: Currency);
begin
  Self.m_ValorIRRF := a_Value;
end;

function TRPS_v2Alterar.getBaseINSS: Currency;
begin
  Result := Self.m_BaseINSS;
end;

procedure TRPS_v2Alterar.setBaseINSS(const a_Value: Currency);
begin
  Self.m_BaseINSS := a_Value;
end;

function TRPS_v2Alterar.getValorINSS: Currency;
begin
  Result := Self.m_ValorINSS;
end;

procedure TRPS_v2Alterar.setValorINSS(const a_Value: Currency);
begin
  Self.m_ValorINSS := a_Value;
end;

function TRPS_v2Alterar.getBasePIS: Currency;
begin
  Result := Self.m_BasePIS;
end;

procedure TRPS_v2Alterar.setBasePIS(const a_Value: Currency);
begin
  Self.m_BasePIS := a_Value;
end;

function TRPS_v2Alterar.getValorPIS: Currency;
begin
  Result := Self.m_ValorPIS;
end;

procedure TRPS_v2Alterar.setValorPIS(const a_Value: Currency);
begin
  Self.m_ValorPIS := a_Value;
end;

function TRPS_v2Alterar.getBaseCOFINS: Currency;
begin
  Result := Self.m_BaseCOFINS;
end;

procedure TRPS_v2Alterar.setBaseCOFINS(const a_Value: Currency);
begin
  Self.m_BaseCOFINS := a_Value;
end;

function TRPS_v2Alterar.getValorCOFINS: Currency;
begin
  Result := Self.m_ValorCOFINS;
end;

procedure TRPS_v2Alterar.setValorCOFINS(const a_Value: Currency);
begin
  Self.m_ValorCOFINS := a_Value;
end;

function TRPS_v2Alterar.getBaseCSLL: Currency;
begin
  Result := Self.m_BaseCSLL;
end;

procedure TRPS_v2Alterar.setBaseCSLL(const a_Value: Currency);
begin
  Self.m_BaseCSLL := a_Value;
end;

function TRPS_v2Alterar.getValorCSLL: Currency;
begin
  Result := Self.m_ValorCSLL;
end;

procedure TRPS_v2Alterar.setValorCSLL(const a_Value: Currency);
begin
  Self.m_ValorCSLL := a_Value;
end;

function TRPS_v2Alterar.getRetemISS: Boolean;
begin
  Result := Self.m_RetemISS;
end;

procedure TRPS_v2Alterar.setRetemISS(const a_Value: Boolean);
begin
  Self.m_RetemISS := a_Value;
end;

function TRPS_v2Alterar.getRetemIRRF: Boolean;
begin
  Result := Self.m_RetemIRRF;
end;

procedure TRPS_v2Alterar.setRetemIRRF(const a_Value: Boolean);
begin
  Self.m_RetemIRRF := a_Value;
end;

function TRPS_v2Alterar.getRetemINSS: Boolean;
begin
  Result := Self.m_RetemINSS;
end;

procedure TRPS_v2Alterar.setRetemINSS(const a_Value: Boolean);
begin
  Self.m_RetemINSS := a_Value;
end;

function TRPS_v2Alterar.getRetemPIS: Boolean;
begin
  Result := Self.m_RetemPIS;
end;

procedure TRPS_v2Alterar.setRetemPIS(const a_Value: Boolean);
begin
  Self.m_RetemPIS := a_Value;
end;

function TRPS_v2Alterar.getRetemCOFINS: Boolean;
begin
  Result := Self.m_RetemCOFINS;
end;

procedure TRPS_v2Alterar.setRetemCOFINS(const a_Value: Boolean);
begin
  Self.m_RetemCOFINS := a_Value;
end;

function TRPS_v2Alterar.getRetemCSLL: Boolean;
begin
  Result := Self.m_RetemCSLL;
end;

procedure TRPS_v2Alterar.setRetemCSLL(const a_Value: Boolean);
begin
  Self.m_RetemCSLL := a_Value;
end;

function TRPS_v2Alterar.getDescricaoServicos: String;
begin
  Result := Self.m_DescricaoServicos;
end;

procedure TRPS_v2Alterar.setDescricaoServicos(const a_Value: String);
begin
  Self.m_DescricaoServicos := a_Value;
end;

function TRPS_v2Alterar.getIdConjuntoAnexo: String;
begin
  Result := Self.m_IdConjuntoAnexo;
end;

procedure TRPS_v2Alterar.setIdConjuntoAnexo(const a_Value: String);
begin
  Self.m_IdConjuntoAnexo := a_Value;
end;

function TRPS_v2Alterar.getISS: Integer;
begin
  Result := Self.m_ISS;
end;

procedure TRPS_v2Alterar.setISS(const a_Value: Integer);
begin
  Self.m_ISS := a_Value;
end;

function TRPS_v2Alterar.getPreRPS: Boolean;
begin
  Result := Self.m_PreRPS;
end;

procedure TRPS_v2Alterar.setPreRPS(const a_Value: Boolean);
begin
  Self.m_PreRPS := a_Value;
end;

function TRPS_v2Alterar.getOutrasDeducoes: Currency;
begin
  Result := Self.m_OutrasDeducoes;
end;

procedure TRPS_v2Alterar.setOutrasDeducoes(const a_Value: Currency);
begin
  Self.m_OutrasDeducoes := a_Value;
end;

function TRPS_v2Alterar.getXML_RPS: String;
begin
  Result := Self.m_XML_RPS;
end;

procedure TRPS_v2Alterar.setXML_RPS(const a_Value: String);
begin
  Self.m_XML_RPS := a_Value;
end;

function TRPS_v2Alterar.getXML_NFSE: String;
begin
  Result := Self.m_XML_NFSE;
end;

procedure TRPS_v2Alterar.setXML_NFSE(const a_Value: String);
begin
  Self.m_XML_NFSE := a_Value;
end;

function TRPS_v2Alterar.getXML_Cancelamento: String;
begin
  Result := Self.m_XML_Cancelamento;
end;

procedure TRPS_v2Alterar.setXML_Cancelamento(const a_Value: String);
begin
  Self.m_XML_Cancelamento := a_Value;
end;

function TRPS_v2Alterar.getXML_DocEngine: String;
begin
  Result := Self.m_XML_DocEngine;
end;

procedure TRPS_v2Alterar.setXML_DocEngine(const a_Value: String);
begin
  Self.m_XML_DocEngine := a_Value;
end;

function TRPS_v2Alterar.getMunicipioPrestacao: String;
begin
  Result := Self.m_MunicipioPrestacao;
end;

procedure TRPS_v2Alterar.setMunicipioPrestacao(const a_Value: String);
begin
  Self.m_MunicipioPrestacao := a_Value;
end;

function TRPS_v2Alterar.getCFOPId: String;
begin
  Result := Self.m_CFOPId;
end;

procedure TRPS_v2Alterar.setCFOPId(const a_Value: String);
begin
  Self.m_CFOPId := a_Value;
end;

function TRPS_v2Alterar.getObra: String;
begin
  Result := Self.m_Obra;
end;

procedure TRPS_v2Alterar.setObra(const a_Value: String);
begin
  Self.m_Obra := a_Value;
end;

function TRPS_v2Alterar.getContrato_ID: String;
begin
  Result := Self.m_Contrato_ID;
end;

procedure TRPS_v2Alterar.setContrato_ID(const a_Value: String);
begin
  Self.m_Contrato_ID := a_Value;
end;

function TRPS_v2Alterar.getNaoGerarFinanceiro: Boolean;
begin
  Result := Self.m_NaoGerarFinanceiro;
end;

procedure TRPS_v2Alterar.setNaoGerarFinanceiro(const a_Value: Boolean);
begin
  Self.m_NaoGerarFinanceiro := a_Value;
end;

function TRPS_v2Alterar.getNaoGerarTitulo: Boolean;
begin
  Result := Self.m_NaoGerarTitulo;
end;

procedure TRPS_v2Alterar.setNaoGerarTitulo(const a_Value: Boolean);
begin
  Self.m_NaoGerarTitulo := a_Value;
end;

function TRPS_v2Alterar.getOutrasRetencoes: Currency;
begin
  Result := Self.m_OutrasRetencoes;
end;

procedure TRPS_v2Alterar.setOutrasRetencoes(const a_Value: Currency);
begin
  Self.m_OutrasRetencoes := a_Value;
end;

function TRPS_v2Alterar.getDiscriminacaoServicos: String;
begin
  Result := Self.m_DiscriminacaoServicos;
end;

procedure TRPS_v2Alterar.setDiscriminacaoServicos(const a_Value: String);
begin
  Self.m_DiscriminacaoServicos := a_Value;
end;

function TRPS_v2Alterar.getnumero_titulo: String;
begin
  Result := Self.m_numero_titulo;
end;

procedure TRPS_v2Alterar.setnumero_titulo(const a_Value: String);
begin
  Self.m_numero_titulo := a_Value;
end;

function TRPS_v2Alterar.getTemplateDiscriminacaoRPS: String;
begin
  Result := Self.m_TemplateDiscriminacaoRPS;
end;

procedure TRPS_v2Alterar.setTemplateDiscriminacaoRPS(const a_Value: String);
begin
  Self.m_TemplateDiscriminacaoRPS := a_Value;
end;

function TRPS_v2Alterar.getCalcularImpostos: Boolean;
begin
  Result := Self.m_CalcularImpostos;
end;

procedure TRPS_v2Alterar.setCalcularImpostos(const a_Value: Boolean);
begin
  Self.m_CalcularImpostos := a_Value;
end;

function TRPS_v2Alterar.getFaturamentoProvisorio: Boolean;
begin
  Result := Self.m_FaturamentoProvisorio;
end;

procedure TRPS_v2Alterar.setFaturamentoProvisorio(const a_Value: Boolean);
begin
  Self.m_FaturamentoProvisorio := a_Value;
end;

destructor TRPS_v2Alterar.Destroy;
begin
  Self.ItemRPS.Free();  Self.FormasPagamentos.Free();  Self.Parcelas.Free();  Self.RateioFinanceiro.Free();  Self.Vendedores.Free();
end;

function TRPS_v2Alterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRPS_v2Alterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRPS_v2Alterar.getNameAPI(): String;
begin
  Result := 'RPS_v2Alterar';
end;

function TRPS_v2Alterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRPS_v2Alterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRPS_v2Excluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TRPS_v2Excluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TRPS_v2Excluir.Destroy;
begin

end;

function TRPS_v2Excluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRPS_v2Excluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRPS_v2Excluir.getNameAPI(): String;
begin
  Result := 'RPS_v2Excluir';
end;

function TRPS_v2Excluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRPS_v2Excluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
