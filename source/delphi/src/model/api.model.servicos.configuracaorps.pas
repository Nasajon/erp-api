unit api.model.servicos.ConfiguracaoRPS;

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
	
  , api.model.ns.estabelecimento
	

	;

type TConfiguracaoRPSNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estabelecimento: TEstabelecimento;
    var m_TipoTributacao: Integer;
    var m_RegimeEspecial: Integer;
    var m_IncentivoCultural: Integer;
    var m_BeneficioFiscal: Integer;
    var m_AliquotaISS: Currency;
    var m_AliquotaIRPessoaJuridica: Currency;
    var m_AliquotaIROrgaoPublico: Currency;
    var m_AliquotaPIS: Currency;
    var m_AliquotaCOFINS: Currency;
    var m_AliquotaCSLL: Currency;
    var m_UsaDiscriminacaoDoCFOPNoRPS: Boolean;
    var m_UsaWebServiceRPS: Boolean;
    var m_CertificadoDigitalInstalado: String;
    var m_CaminhoCertificadoDigital: String;
    var m_SenhaCertificadoDigital: String;
    var m_IdentificacaoAmbiente: Integer;
    var m_LoteDaEmpresa: Integer;
    var m_UtilizarMesmoRPS: Boolean;
    var m_IncluirObservacao: Boolean;
    var m_IncluirInformacoesOS: Boolean;
    var m_TemplateOS: String;
    var m_IncluirRetencoes: Boolean;
    var m_PermitirMultiplosVendedores: Boolean;
    var m_ParticipanteCertificado: String;
    var m_ServidorSMTP: String;
    var m_Porta: Integer;
    var m_Usuario: String;
    var m_Senha: String;
    var m_RequerAutenticacao: Boolean;
    var m_UtilizarConexaoSegura: Boolean;
    var m_AssuntoEmail: String;
    var m_MensagemEmail: String;
    var m_IncluirProjetos: Boolean;
    

    function getEstabelecimento(): TEstabelecimento;
    function getTipoTributacao(): Integer;
    function getRegimeEspecial(): Integer;
    function getIncentivoCultural(): Integer;
    function getBeneficioFiscal(): Integer;
    function getAliquotaISS(): Currency;
    function getAliquotaIRPessoaJuridica(): Currency;
    function getAliquotaIROrgaoPublico(): Currency;
    function getAliquotaPIS(): Currency;
    function getAliquotaCOFINS(): Currency;
    function getAliquotaCSLL(): Currency;
    function getUsaDiscriminacaoDoCFOPNoRPS(): Boolean;
    function getUsaWebServiceRPS(): Boolean;
    function getCertificadoDigitalInstalado(): String;
    function getCaminhoCertificadoDigital(): String;
    function getSenhaCertificadoDigital(): String;
    function getIdentificacaoAmbiente(): Integer;
    function getLoteDaEmpresa(): Integer;
    function getUtilizarMesmoRPS(): Boolean;
    function getIncluirObservacao(): Boolean;
    function getIncluirInformacoesOS(): Boolean;
    function getTemplateOS(): String;
    function getIncluirRetencoes(): Boolean;
    function getPermitirMultiplosVendedores(): Boolean;
    function getParticipanteCertificado(): String;
    function getServidorSMTP(): String;
    function getPorta(): Integer;
    function getUsuario(): String;
    function getSenha(): String;
    function getRequerAutenticacao(): Boolean;
    function getUtilizarConexaoSegura(): Boolean;
    function getAssuntoEmail(): String;
    function getMensagemEmail(): String;
    function getIncluirProjetos(): Boolean;
    

    procedure setEstabelecimento(const a_Value: TEstabelecimento);
    procedure setTipoTributacao(const a_Value: Integer);
    procedure setRegimeEspecial(const a_Value: Integer);
    procedure setIncentivoCultural(const a_Value: Integer);
    procedure setBeneficioFiscal(const a_Value: Integer);
    procedure setAliquotaISS(const a_Value: Currency);
    procedure setAliquotaIRPessoaJuridica(const a_Value: Currency);
    procedure setAliquotaIROrgaoPublico(const a_Value: Currency);
    procedure setAliquotaPIS(const a_Value: Currency);
    procedure setAliquotaCOFINS(const a_Value: Currency);
    procedure setAliquotaCSLL(const a_Value: Currency);
    procedure setUsaDiscriminacaoDoCFOPNoRPS(const a_Value: Boolean);
    procedure setUsaWebServiceRPS(const a_Value: Boolean);
    procedure setCertificadoDigitalInstalado(const a_Value: String);
    procedure setCaminhoCertificadoDigital(const a_Value: String);
    procedure setSenhaCertificadoDigital(const a_Value: String);
    procedure setIdentificacaoAmbiente(const a_Value: Integer);
    procedure setLoteDaEmpresa(const a_Value: Integer);
    procedure setUtilizarMesmoRPS(const a_Value: Boolean);
    procedure setIncluirObservacao(const a_Value: Boolean);
    procedure setIncluirInformacoesOS(const a_Value: Boolean);
    procedure setTemplateOS(const a_Value: String);
    procedure setIncluirRetencoes(const a_Value: Boolean);
    procedure setPermitirMultiplosVendedores(const a_Value: Boolean);
    procedure setParticipanteCertificado(const a_Value: String);
    procedure setServidorSMTP(const a_Value: String);
    procedure setPorta(const a_Value: Integer);
    procedure setUsuario(const a_Value: String);
    procedure setSenha(const a_Value: String);
    procedure setRequerAutenticacao(const a_Value: Boolean);
    procedure setUtilizarConexaoSegura(const a_Value: Boolean);
    procedure setAssuntoEmail(const a_Value: String);
    procedure setMensagemEmail(const a_Value: String);
    procedure setIncluirProjetos(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: TEstabelecimento read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Indica o Tipo de Tributação. 
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
/// Indica o Regime Especial. 
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
/// Indica se tem Incentivo Cultural. 
///                                              0 - Não,
///                                              1 - Sim
    /// </summary>
    [NasajonSerializeAttribute('incentivocultural')]
    property incentivocultural: Integer read getIncentivoCultural write setIncentivoCultural;

    /// <summary>
/// Indica se tem um benefício fiscal. Obrigatório quando a tributação for isenta.
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

    /// <summary>
/// Informe a alíquota de ISS.
    /// </summary>
    [NasajonSerializeAttribute('aliquotaiss')]
    property aliquotaiss: Currency read getAliquotaISS write setAliquotaISS;

    /// <summary>
/// Informe a alíquota de IR para pessoa jurídica.
    /// </summary>
    [NasajonSerializeAttribute('aliquotairpessoajuridica')]
    property aliquotairpessoajuridica: Currency read getAliquotaIRPessoaJuridica write setAliquotaIRPessoaJuridica;

    /// <summary>
/// Informe a alíquota de IR para órgão público.
    /// </summary>
    [NasajonSerializeAttribute('aliquotairorgaopublico')]
    property aliquotairorgaopublico: Currency read getAliquotaIROrgaoPublico write setAliquotaIROrgaoPublico;

    /// <summary>
/// Informe a alíquota de PIS.
    /// </summary>
    [NasajonSerializeAttribute('aliquotapis')]
    property aliquotapis: Currency read getAliquotaPIS write setAliquotaPIS;

    /// <summary>
/// Informe a alíquota de COFINS.
    /// </summary>
    [NasajonSerializeAttribute('aliquotacofins')]
    property aliquotacofins: Currency read getAliquotaCOFINS write setAliquotaCOFINS;

    /// <summary>
/// Informe a alíquota de CSLL.
    /// </summary>
    [NasajonSerializeAttribute('aliquotacsll')]
    property aliquotacsll: Currency read getAliquotaCSLL write setAliquotaCSLL;

    [NasajonSerializeAttribute('usadiscriminacaodocfopnorps')]
    property usadiscriminacaodocfopnorps: Boolean read getUsaDiscriminacaoDoCFOPNoRPS write setUsaDiscriminacaoDoCFOPNoRPS;

    [NasajonSerializeAttribute('usawebservicerps')]
    property usawebservicerps: Boolean read getUsaWebServiceRPS write setUsaWebServiceRPS;

    [NasajonSerializeAttribute('certificadodigitalinstalado')]
    property certificadodigitalinstalado: String read getCertificadoDigitalInstalado write setCertificadoDigitalInstalado;

    [NasajonSerializeAttribute('caminhocertificadodigital')]
    property caminhocertificadodigital: String read getCaminhoCertificadoDigital write setCaminhoCertificadoDigital;

    [NasajonSerializeAttribute('senhacertificadodigital')]
    property senhacertificadodigital: String read getSenhaCertificadoDigital write setSenhaCertificadoDigital;

    /// <summary>
/// Inddentifica o tipo de ambiente
///                                              0 - Homologaão,
///                                              1 - Produção
    /// </summary>
    [NasajonSerializeAttribute('identificacaoambiente')]
    property identificacaoambiente: Integer read getIdentificacaoAmbiente write setIdentificacaoAmbiente;

    [NasajonSerializeAttribute('lotedaempresa')]
    property lotedaempresa: Integer read getLoteDaEmpresa write setLoteDaEmpresa;

    [NasajonSerializeAttribute('utilizarmesmorps')]
    property utilizarmesmorps: Boolean read getUtilizarMesmoRPS write setUtilizarMesmoRPS;

    [NasajonSerializeAttribute('incluirobservacao')]
    property incluirobservacao: Boolean read getIncluirObservacao write setIncluirObservacao;

    [NasajonSerializeAttribute('incluirinformacoesos')]
    property incluirinformacoesos: Boolean read getIncluirInformacoesOS write setIncluirInformacoesOS;

    [NasajonSerializeAttribute('templateos')]
    property templateos: String read getTemplateOS write setTemplateOS;

    [NasajonSerializeAttribute('incluirretencoes')]
    property incluirretencoes: Boolean read getIncluirRetencoes write setIncluirRetencoes;

    [NasajonSerializeAttribute('permitirmultiplosvendedores')]
    property permitirmultiplosvendedores: Boolean read getPermitirMultiplosVendedores write setPermitirMultiplosVendedores;

    [NasajonSerializeAttribute('participantecertificado')]
    property participantecertificado: String read getParticipanteCertificado write setParticipanteCertificado;

    [NasajonSerializeAttribute('servidorsmtp')]
    property servidorsmtp: String read getServidorSMTP write setServidorSMTP;

    [NasajonSerializeAttribute('porta')]
    property porta: Integer read getPorta write setPorta;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('senha')]
    property senha: String read getSenha write setSenha;

    [NasajonSerializeAttribute('requerautenticacao')]
    property requerautenticacao: Boolean read getRequerAutenticacao write setRequerAutenticacao;

    [NasajonSerializeAttribute('utilizarconexaosegura')]
    property utilizarconexaosegura: Boolean read getUtilizarConexaoSegura write setUtilizarConexaoSegura;

    [NasajonSerializeAttribute('assuntoemail')]
    property assuntoemail: String read getAssuntoEmail write setAssuntoEmail;

    [NasajonSerializeAttribute('mensagememail')]
    property mensagememail: String read getMensagemEmail write setMensagemEmail;

    [NasajonSerializeAttribute('incluirprojetos')]
    property incluirprojetos: Boolean read getIncluirProjetos write setIncluirProjetos;

    

end;

type TConfiguracaoRPSAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estabelecimento: TEstabelecimento;
    var m_TipoTributacao: Integer;
    var m_RegimeEspecial: Integer;
    var m_IncentivoCultural: Integer;
    var m_BeneficioFiscal: Integer;
    var m_AliquotaISS: Currency;
    var m_AliquotaIRPessoaJuridica: Currency;
    var m_AliquotaIROrgaoPublico: Currency;
    var m_AliquotaPIS: Currency;
    var m_AliquotaCOFINS: Currency;
    var m_AliquotaCSLL: Currency;
    var m_UsaDiscriminacaoDoCFOPNoRPS: Boolean;
    var m_UsaWebServiceRPS: Boolean;
    var m_CertificadoDigitalInstalado: String;
    var m_CaminhoCertificadoDigital: String;
    var m_SenhaCertificadoDigital: String;
    var m_IdentificacaoAmbiente: Integer;
    var m_LoteDaEmpresa: Integer;
    var m_UtilizarMesmoRPS: Boolean;
    var m_IncluirObservacao: Boolean;
    var m_IncluirInformacoesOS: Boolean;
    var m_TemplateOS: String;
    var m_IncluirRetencoes: Boolean;
    var m_PermitirMultiplosVendedores: Boolean;
    var m_ParticipanteCertificado: String;
    var m_ServidorSMTP: String;
    var m_Porta: Integer;
    var m_Usuario: String;
    var m_Senha: String;
    var m_RequerAutenticacao: Boolean;
    var m_UtilizarConexaoSegura: Boolean;
    var m_AssuntoEmail: String;
    var m_MensagemEmail: String;
    var m_IncluirProjetos: Boolean;
    

    function getEstabelecimento(): TEstabelecimento;
    function getTipoTributacao(): Integer;
    function getRegimeEspecial(): Integer;
    function getIncentivoCultural(): Integer;
    function getBeneficioFiscal(): Integer;
    function getAliquotaISS(): Currency;
    function getAliquotaIRPessoaJuridica(): Currency;
    function getAliquotaIROrgaoPublico(): Currency;
    function getAliquotaPIS(): Currency;
    function getAliquotaCOFINS(): Currency;
    function getAliquotaCSLL(): Currency;
    function getUsaDiscriminacaoDoCFOPNoRPS(): Boolean;
    function getUsaWebServiceRPS(): Boolean;
    function getCertificadoDigitalInstalado(): String;
    function getCaminhoCertificadoDigital(): String;
    function getSenhaCertificadoDigital(): String;
    function getIdentificacaoAmbiente(): Integer;
    function getLoteDaEmpresa(): Integer;
    function getUtilizarMesmoRPS(): Boolean;
    function getIncluirObservacao(): Boolean;
    function getIncluirInformacoesOS(): Boolean;
    function getTemplateOS(): String;
    function getIncluirRetencoes(): Boolean;
    function getPermitirMultiplosVendedores(): Boolean;
    function getParticipanteCertificado(): String;
    function getServidorSMTP(): String;
    function getPorta(): Integer;
    function getUsuario(): String;
    function getSenha(): String;
    function getRequerAutenticacao(): Boolean;
    function getUtilizarConexaoSegura(): Boolean;
    function getAssuntoEmail(): String;
    function getMensagemEmail(): String;
    function getIncluirProjetos(): Boolean;
    

    procedure setEstabelecimento(const a_Value: TEstabelecimento);
    procedure setTipoTributacao(const a_Value: Integer);
    procedure setRegimeEspecial(const a_Value: Integer);
    procedure setIncentivoCultural(const a_Value: Integer);
    procedure setBeneficioFiscal(const a_Value: Integer);
    procedure setAliquotaISS(const a_Value: Currency);
    procedure setAliquotaIRPessoaJuridica(const a_Value: Currency);
    procedure setAliquotaIROrgaoPublico(const a_Value: Currency);
    procedure setAliquotaPIS(const a_Value: Currency);
    procedure setAliquotaCOFINS(const a_Value: Currency);
    procedure setAliquotaCSLL(const a_Value: Currency);
    procedure setUsaDiscriminacaoDoCFOPNoRPS(const a_Value: Boolean);
    procedure setUsaWebServiceRPS(const a_Value: Boolean);
    procedure setCertificadoDigitalInstalado(const a_Value: String);
    procedure setCaminhoCertificadoDigital(const a_Value: String);
    procedure setSenhaCertificadoDigital(const a_Value: String);
    procedure setIdentificacaoAmbiente(const a_Value: Integer);
    procedure setLoteDaEmpresa(const a_Value: Integer);
    procedure setUtilizarMesmoRPS(const a_Value: Boolean);
    procedure setIncluirObservacao(const a_Value: Boolean);
    procedure setIncluirInformacoesOS(const a_Value: Boolean);
    procedure setTemplateOS(const a_Value: String);
    procedure setIncluirRetencoes(const a_Value: Boolean);
    procedure setPermitirMultiplosVendedores(const a_Value: Boolean);
    procedure setParticipanteCertificado(const a_Value: String);
    procedure setServidorSMTP(const a_Value: String);
    procedure setPorta(const a_Value: Integer);
    procedure setUsuario(const a_Value: String);
    procedure setSenha(const a_Value: String);
    procedure setRequerAutenticacao(const a_Value: Boolean);
    procedure setUtilizarConexaoSegura(const a_Value: Boolean);
    procedure setAssuntoEmail(const a_Value: String);
    procedure setMensagemEmail(const a_Value: String);
    procedure setIncluirProjetos(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: TEstabelecimento read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Indica o Tipo de Tributação. 
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
/// Indica o Regime Especial. 
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
/// Indica se tem Incentivo Cultural. 
///                                              0 - Não,
///                                              1 - Sim
    /// </summary>
    [NasajonSerializeAttribute('incentivocultural')]
    property incentivocultural: Integer read getIncentivoCultural write setIncentivoCultural;

    /// <summary>
/// Indica se tem Incentivo Cultural. 
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

    /// <summary>
/// Informe a alíquota de ISS.
    /// </summary>
    [NasajonSerializeAttribute('aliquotaiss')]
    property aliquotaiss: Currency read getAliquotaISS write setAliquotaISS;

    /// <summary>
/// Informe a alíquota de IR para pessoa jurídica.
    /// </summary>
    [NasajonSerializeAttribute('aliquotairpessoajuridica')]
    property aliquotairpessoajuridica: Currency read getAliquotaIRPessoaJuridica write setAliquotaIRPessoaJuridica;

    /// <summary>
/// Informe a alíquota de IR para órgão público.
    /// </summary>
    [NasajonSerializeAttribute('aliquotairorgaopublico')]
    property aliquotairorgaopublico: Currency read getAliquotaIROrgaoPublico write setAliquotaIROrgaoPublico;

    /// <summary>
/// Informe a alíquota de PIS.
    /// </summary>
    [NasajonSerializeAttribute('aliquotapis')]
    property aliquotapis: Currency read getAliquotaPIS write setAliquotaPIS;

    /// <summary>
/// Informe a alíquota de COFINS.
    /// </summary>
    [NasajonSerializeAttribute('aliquotacofins')]
    property aliquotacofins: Currency read getAliquotaCOFINS write setAliquotaCOFINS;

    /// <summary>
/// Informe a alíquota de CSLL.
    /// </summary>
    [NasajonSerializeAttribute('aliquotacsll')]
    property aliquotacsll: Currency read getAliquotaCSLL write setAliquotaCSLL;

    [NasajonSerializeAttribute('usadiscriminacaodocfopnorps')]
    property usadiscriminacaodocfopnorps: Boolean read getUsaDiscriminacaoDoCFOPNoRPS write setUsaDiscriminacaoDoCFOPNoRPS;

    [NasajonSerializeAttribute('usawebservicerps')]
    property usawebservicerps: Boolean read getUsaWebServiceRPS write setUsaWebServiceRPS;

    [NasajonSerializeAttribute('certificadodigitalinstalado')]
    property certificadodigitalinstalado: String read getCertificadoDigitalInstalado write setCertificadoDigitalInstalado;

    [NasajonSerializeAttribute('caminhocertificadodigital')]
    property caminhocertificadodigital: String read getCaminhoCertificadoDigital write setCaminhoCertificadoDigital;

    [NasajonSerializeAttribute('senhacertificadodigital')]
    property senhacertificadodigital: String read getSenhaCertificadoDigital write setSenhaCertificadoDigital;

    /// <summary>
/// Inddentifica o tipo de ambiente
///                                              0 - Homologaão,
///                                              1 - Produção
    /// </summary>
    [NasajonSerializeAttribute('identificacaoambiente')]
    property identificacaoambiente: Integer read getIdentificacaoAmbiente write setIdentificacaoAmbiente;

    [NasajonSerializeAttribute('lotedaempresa')]
    property lotedaempresa: Integer read getLoteDaEmpresa write setLoteDaEmpresa;

    [NasajonSerializeAttribute('utilizarmesmorps')]
    property utilizarmesmorps: Boolean read getUtilizarMesmoRPS write setUtilizarMesmoRPS;

    [NasajonSerializeAttribute('incluirobservacao')]
    property incluirobservacao: Boolean read getIncluirObservacao write setIncluirObservacao;

    [NasajonSerializeAttribute('incluirinformacoesos')]
    property incluirinformacoesos: Boolean read getIncluirInformacoesOS write setIncluirInformacoesOS;

    [NasajonSerializeAttribute('templateos')]
    property templateos: String read getTemplateOS write setTemplateOS;

    [NasajonSerializeAttribute('incluirretencoes')]
    property incluirretencoes: Boolean read getIncluirRetencoes write setIncluirRetencoes;

    [NasajonSerializeAttribute('permitirmultiplosvendedores')]
    property permitirmultiplosvendedores: Boolean read getPermitirMultiplosVendedores write setPermitirMultiplosVendedores;

    [NasajonSerializeAttribute('participantecertificado')]
    property participantecertificado: String read getParticipanteCertificado write setParticipanteCertificado;

    [NasajonSerializeAttribute('servidorsmtp')]
    property servidorsmtp: String read getServidorSMTP write setServidorSMTP;

    [NasajonSerializeAttribute('porta')]
    property porta: Integer read getPorta write setPorta;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('senha')]
    property senha: String read getSenha write setSenha;

    [NasajonSerializeAttribute('requerautenticacao')]
    property requerautenticacao: Boolean read getRequerAutenticacao write setRequerAutenticacao;

    [NasajonSerializeAttribute('utilizarconexaosegura')]
    property utilizarconexaosegura: Boolean read getUtilizarConexaoSegura write setUtilizarConexaoSegura;

    [NasajonSerializeAttribute('assuntoemail')]
    property assuntoemail: String read getAssuntoEmail write setAssuntoEmail;

    [NasajonSerializeAttribute('mensagememail')]
    property mensagememail: String read getMensagemEmail write setMensagemEmail;

    [NasajonSerializeAttribute('incluirprojetos')]
    property incluirprojetos: Boolean read getIncluirProjetos write setIncluirProjetos;

    

end;

type TConfiguracaoRPSExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estabelecimento: TEstabelecimento;
    

    function getEstabelecimento(): TEstabelecimento;
    

    procedure setEstabelecimento(const a_Value: TEstabelecimento);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: TEstabelecimento read getEstabelecimento write setEstabelecimento;

    

end;

	
implementation

  uses
      api.send;  

function TConfiguracaoRPSNovo.getEstabelecimento: TEstabelecimento;
begin
  if not Assigned(Self.m_Estabelecimento)
    then Self.m_Estabelecimento := TEstabelecimento.Create();
  Result := Self.m_Estabelecimento;
end;

procedure TConfiguracaoRPSNovo.setEstabelecimento(const a_Value: TEstabelecimento);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TConfiguracaoRPSNovo.getTipoTributacao: Integer;
begin
  Result := Self.m_TipoTributacao;
end;

procedure TConfiguracaoRPSNovo.setTipoTributacao(const a_Value: Integer);
begin
  Self.m_TipoTributacao := a_Value;
end;

function TConfiguracaoRPSNovo.getRegimeEspecial: Integer;
begin
  Result := Self.m_RegimeEspecial;
end;

procedure TConfiguracaoRPSNovo.setRegimeEspecial(const a_Value: Integer);
begin
  Self.m_RegimeEspecial := a_Value;
end;

function TConfiguracaoRPSNovo.getIncentivoCultural: Integer;
begin
  Result := Self.m_IncentivoCultural;
end;

procedure TConfiguracaoRPSNovo.setIncentivoCultural(const a_Value: Integer);
begin
  Self.m_IncentivoCultural := a_Value;
end;

function TConfiguracaoRPSNovo.getBeneficioFiscal: Integer;
begin
  Result := Self.m_BeneficioFiscal;
end;

procedure TConfiguracaoRPSNovo.setBeneficioFiscal(const a_Value: Integer);
begin
  Self.m_BeneficioFiscal := a_Value;
end;

function TConfiguracaoRPSNovo.getAliquotaISS: Currency;
begin
  Result := Self.m_AliquotaISS;
end;

procedure TConfiguracaoRPSNovo.setAliquotaISS(const a_Value: Currency);
begin
  Self.m_AliquotaISS := a_Value;
end;

function TConfiguracaoRPSNovo.getAliquotaIRPessoaJuridica: Currency;
begin
  Result := Self.m_AliquotaIRPessoaJuridica;
end;

procedure TConfiguracaoRPSNovo.setAliquotaIRPessoaJuridica(const a_Value: Currency);
begin
  Self.m_AliquotaIRPessoaJuridica := a_Value;
end;

function TConfiguracaoRPSNovo.getAliquotaIROrgaoPublico: Currency;
begin
  Result := Self.m_AliquotaIROrgaoPublico;
end;

procedure TConfiguracaoRPSNovo.setAliquotaIROrgaoPublico(const a_Value: Currency);
begin
  Self.m_AliquotaIROrgaoPublico := a_Value;
end;

function TConfiguracaoRPSNovo.getAliquotaPIS: Currency;
begin
  Result := Self.m_AliquotaPIS;
end;

procedure TConfiguracaoRPSNovo.setAliquotaPIS(const a_Value: Currency);
begin
  Self.m_AliquotaPIS := a_Value;
end;

function TConfiguracaoRPSNovo.getAliquotaCOFINS: Currency;
begin
  Result := Self.m_AliquotaCOFINS;
end;

procedure TConfiguracaoRPSNovo.setAliquotaCOFINS(const a_Value: Currency);
begin
  Self.m_AliquotaCOFINS := a_Value;
end;

function TConfiguracaoRPSNovo.getAliquotaCSLL: Currency;
begin
  Result := Self.m_AliquotaCSLL;
end;

procedure TConfiguracaoRPSNovo.setAliquotaCSLL(const a_Value: Currency);
begin
  Self.m_AliquotaCSLL := a_Value;
end;

function TConfiguracaoRPSNovo.getUsaDiscriminacaoDoCFOPNoRPS: Boolean;
begin
  Result := Self.m_UsaDiscriminacaoDoCFOPNoRPS;
end;

procedure TConfiguracaoRPSNovo.setUsaDiscriminacaoDoCFOPNoRPS(const a_Value: Boolean);
begin
  Self.m_UsaDiscriminacaoDoCFOPNoRPS := a_Value;
end;

function TConfiguracaoRPSNovo.getUsaWebServiceRPS: Boolean;
begin
  Result := Self.m_UsaWebServiceRPS;
end;

procedure TConfiguracaoRPSNovo.setUsaWebServiceRPS(const a_Value: Boolean);
begin
  Self.m_UsaWebServiceRPS := a_Value;
end;

function TConfiguracaoRPSNovo.getCertificadoDigitalInstalado: String;
begin
  Result := Self.m_CertificadoDigitalInstalado;
end;

procedure TConfiguracaoRPSNovo.setCertificadoDigitalInstalado(const a_Value: String);
begin
  Self.m_CertificadoDigitalInstalado := a_Value;
end;

function TConfiguracaoRPSNovo.getCaminhoCertificadoDigital: String;
begin
  Result := Self.m_CaminhoCertificadoDigital;
end;

procedure TConfiguracaoRPSNovo.setCaminhoCertificadoDigital(const a_Value: String);
begin
  Self.m_CaminhoCertificadoDigital := a_Value;
end;

function TConfiguracaoRPSNovo.getSenhaCertificadoDigital: String;
begin
  Result := Self.m_SenhaCertificadoDigital;
end;

procedure TConfiguracaoRPSNovo.setSenhaCertificadoDigital(const a_Value: String);
begin
  Self.m_SenhaCertificadoDigital := a_Value;
end;

function TConfiguracaoRPSNovo.getIdentificacaoAmbiente: Integer;
begin
  Result := Self.m_IdentificacaoAmbiente;
end;

procedure TConfiguracaoRPSNovo.setIdentificacaoAmbiente(const a_Value: Integer);
begin
  Self.m_IdentificacaoAmbiente := a_Value;
end;

function TConfiguracaoRPSNovo.getLoteDaEmpresa: Integer;
begin
  Result := Self.m_LoteDaEmpresa;
end;

procedure TConfiguracaoRPSNovo.setLoteDaEmpresa(const a_Value: Integer);
begin
  Self.m_LoteDaEmpresa := a_Value;
end;

function TConfiguracaoRPSNovo.getUtilizarMesmoRPS: Boolean;
begin
  Result := Self.m_UtilizarMesmoRPS;
end;

procedure TConfiguracaoRPSNovo.setUtilizarMesmoRPS(const a_Value: Boolean);
begin
  Self.m_UtilizarMesmoRPS := a_Value;
end;

function TConfiguracaoRPSNovo.getIncluirObservacao: Boolean;
begin
  Result := Self.m_IncluirObservacao;
end;

procedure TConfiguracaoRPSNovo.setIncluirObservacao(const a_Value: Boolean);
begin
  Self.m_IncluirObservacao := a_Value;
end;

function TConfiguracaoRPSNovo.getIncluirInformacoesOS: Boolean;
begin
  Result := Self.m_IncluirInformacoesOS;
end;

procedure TConfiguracaoRPSNovo.setIncluirInformacoesOS(const a_Value: Boolean);
begin
  Self.m_IncluirInformacoesOS := a_Value;
end;

function TConfiguracaoRPSNovo.getTemplateOS: String;
begin
  Result := Self.m_TemplateOS;
end;

procedure TConfiguracaoRPSNovo.setTemplateOS(const a_Value: String);
begin
  Self.m_TemplateOS := a_Value;
end;

function TConfiguracaoRPSNovo.getIncluirRetencoes: Boolean;
begin
  Result := Self.m_IncluirRetencoes;
end;

procedure TConfiguracaoRPSNovo.setIncluirRetencoes(const a_Value: Boolean);
begin
  Self.m_IncluirRetencoes := a_Value;
end;

function TConfiguracaoRPSNovo.getPermitirMultiplosVendedores: Boolean;
begin
  Result := Self.m_PermitirMultiplosVendedores;
end;

procedure TConfiguracaoRPSNovo.setPermitirMultiplosVendedores(const a_Value: Boolean);
begin
  Self.m_PermitirMultiplosVendedores := a_Value;
end;

function TConfiguracaoRPSNovo.getParticipanteCertificado: String;
begin
  Result := Self.m_ParticipanteCertificado;
end;

procedure TConfiguracaoRPSNovo.setParticipanteCertificado(const a_Value: String);
begin
  Self.m_ParticipanteCertificado := a_Value;
end;

function TConfiguracaoRPSNovo.getServidorSMTP: String;
begin
  Result := Self.m_ServidorSMTP;
end;

procedure TConfiguracaoRPSNovo.setServidorSMTP(const a_Value: String);
begin
  Self.m_ServidorSMTP := a_Value;
end;

function TConfiguracaoRPSNovo.getPorta: Integer;
begin
  Result := Self.m_Porta;
end;

procedure TConfiguracaoRPSNovo.setPorta(const a_Value: Integer);
begin
  Self.m_Porta := a_Value;
end;

function TConfiguracaoRPSNovo.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TConfiguracaoRPSNovo.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TConfiguracaoRPSNovo.getSenha: String;
begin
  Result := Self.m_Senha;
end;

procedure TConfiguracaoRPSNovo.setSenha(const a_Value: String);
begin
  Self.m_Senha := a_Value;
end;

function TConfiguracaoRPSNovo.getRequerAutenticacao: Boolean;
begin
  Result := Self.m_RequerAutenticacao;
end;

procedure TConfiguracaoRPSNovo.setRequerAutenticacao(const a_Value: Boolean);
begin
  Self.m_RequerAutenticacao := a_Value;
end;

function TConfiguracaoRPSNovo.getUtilizarConexaoSegura: Boolean;
begin
  Result := Self.m_UtilizarConexaoSegura;
end;

procedure TConfiguracaoRPSNovo.setUtilizarConexaoSegura(const a_Value: Boolean);
begin
  Self.m_UtilizarConexaoSegura := a_Value;
end;

function TConfiguracaoRPSNovo.getAssuntoEmail: String;
begin
  Result := Self.m_AssuntoEmail;
end;

procedure TConfiguracaoRPSNovo.setAssuntoEmail(const a_Value: String);
begin
  Self.m_AssuntoEmail := a_Value;
end;

function TConfiguracaoRPSNovo.getMensagemEmail: String;
begin
  Result := Self.m_MensagemEmail;
end;

procedure TConfiguracaoRPSNovo.setMensagemEmail(const a_Value: String);
begin
  Self.m_MensagemEmail := a_Value;
end;

function TConfiguracaoRPSNovo.getIncluirProjetos: Boolean;
begin
  Result := Self.m_IncluirProjetos;
end;

procedure TConfiguracaoRPSNovo.setIncluirProjetos(const a_Value: Boolean);
begin
  Self.m_IncluirProjetos := a_Value;
end;

destructor TConfiguracaoRPSNovo.Destroy;
begin
  Self.Estabelecimento.Free();
end;

function TConfiguracaoRPSNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConfiguracaoRPSNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConfiguracaoRPSNovo.getNameAPI(): String;
begin
  Result := 'ConfiguracaoRPSNovo';
end;

function TConfiguracaoRPSNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConfiguracaoRPSNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TConfiguracaoRPSAlterar.getEstabelecimento: TEstabelecimento;
begin
  if not Assigned(Self.m_Estabelecimento)
    then Self.m_Estabelecimento := TEstabelecimento.Create();
  Result := Self.m_Estabelecimento;
end;

procedure TConfiguracaoRPSAlterar.setEstabelecimento(const a_Value: TEstabelecimento);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TConfiguracaoRPSAlterar.getTipoTributacao: Integer;
begin
  Result := Self.m_TipoTributacao;
end;

procedure TConfiguracaoRPSAlterar.setTipoTributacao(const a_Value: Integer);
begin
  Self.m_TipoTributacao := a_Value;
end;

function TConfiguracaoRPSAlterar.getRegimeEspecial: Integer;
begin
  Result := Self.m_RegimeEspecial;
end;

procedure TConfiguracaoRPSAlterar.setRegimeEspecial(const a_Value: Integer);
begin
  Self.m_RegimeEspecial := a_Value;
end;

function TConfiguracaoRPSAlterar.getIncentivoCultural: Integer;
begin
  Result := Self.m_IncentivoCultural;
end;

procedure TConfiguracaoRPSAlterar.setIncentivoCultural(const a_Value: Integer);
begin
  Self.m_IncentivoCultural := a_Value;
end;

function TConfiguracaoRPSAlterar.getBeneficioFiscal: Integer;
begin
  Result := Self.m_BeneficioFiscal;
end;

procedure TConfiguracaoRPSAlterar.setBeneficioFiscal(const a_Value: Integer);
begin
  Self.m_BeneficioFiscal := a_Value;
end;

function TConfiguracaoRPSAlterar.getAliquotaISS: Currency;
begin
  Result := Self.m_AliquotaISS;
end;

procedure TConfiguracaoRPSAlterar.setAliquotaISS(const a_Value: Currency);
begin
  Self.m_AliquotaISS := a_Value;
end;

function TConfiguracaoRPSAlterar.getAliquotaIRPessoaJuridica: Currency;
begin
  Result := Self.m_AliquotaIRPessoaJuridica;
end;

procedure TConfiguracaoRPSAlterar.setAliquotaIRPessoaJuridica(const a_Value: Currency);
begin
  Self.m_AliquotaIRPessoaJuridica := a_Value;
end;

function TConfiguracaoRPSAlterar.getAliquotaIROrgaoPublico: Currency;
begin
  Result := Self.m_AliquotaIROrgaoPublico;
end;

procedure TConfiguracaoRPSAlterar.setAliquotaIROrgaoPublico(const a_Value: Currency);
begin
  Self.m_AliquotaIROrgaoPublico := a_Value;
end;

function TConfiguracaoRPSAlterar.getAliquotaPIS: Currency;
begin
  Result := Self.m_AliquotaPIS;
end;

procedure TConfiguracaoRPSAlterar.setAliquotaPIS(const a_Value: Currency);
begin
  Self.m_AliquotaPIS := a_Value;
end;

function TConfiguracaoRPSAlterar.getAliquotaCOFINS: Currency;
begin
  Result := Self.m_AliquotaCOFINS;
end;

procedure TConfiguracaoRPSAlterar.setAliquotaCOFINS(const a_Value: Currency);
begin
  Self.m_AliquotaCOFINS := a_Value;
end;

function TConfiguracaoRPSAlterar.getAliquotaCSLL: Currency;
begin
  Result := Self.m_AliquotaCSLL;
end;

procedure TConfiguracaoRPSAlterar.setAliquotaCSLL(const a_Value: Currency);
begin
  Self.m_AliquotaCSLL := a_Value;
end;

function TConfiguracaoRPSAlterar.getUsaDiscriminacaoDoCFOPNoRPS: Boolean;
begin
  Result := Self.m_UsaDiscriminacaoDoCFOPNoRPS;
end;

procedure TConfiguracaoRPSAlterar.setUsaDiscriminacaoDoCFOPNoRPS(const a_Value: Boolean);
begin
  Self.m_UsaDiscriminacaoDoCFOPNoRPS := a_Value;
end;

function TConfiguracaoRPSAlterar.getUsaWebServiceRPS: Boolean;
begin
  Result := Self.m_UsaWebServiceRPS;
end;

procedure TConfiguracaoRPSAlterar.setUsaWebServiceRPS(const a_Value: Boolean);
begin
  Self.m_UsaWebServiceRPS := a_Value;
end;

function TConfiguracaoRPSAlterar.getCertificadoDigitalInstalado: String;
begin
  Result := Self.m_CertificadoDigitalInstalado;
end;

procedure TConfiguracaoRPSAlterar.setCertificadoDigitalInstalado(const a_Value: String);
begin
  Self.m_CertificadoDigitalInstalado := a_Value;
end;

function TConfiguracaoRPSAlterar.getCaminhoCertificadoDigital: String;
begin
  Result := Self.m_CaminhoCertificadoDigital;
end;

procedure TConfiguracaoRPSAlterar.setCaminhoCertificadoDigital(const a_Value: String);
begin
  Self.m_CaminhoCertificadoDigital := a_Value;
end;

function TConfiguracaoRPSAlterar.getSenhaCertificadoDigital: String;
begin
  Result := Self.m_SenhaCertificadoDigital;
end;

procedure TConfiguracaoRPSAlterar.setSenhaCertificadoDigital(const a_Value: String);
begin
  Self.m_SenhaCertificadoDigital := a_Value;
end;

function TConfiguracaoRPSAlterar.getIdentificacaoAmbiente: Integer;
begin
  Result := Self.m_IdentificacaoAmbiente;
end;

procedure TConfiguracaoRPSAlterar.setIdentificacaoAmbiente(const a_Value: Integer);
begin
  Self.m_IdentificacaoAmbiente := a_Value;
end;

function TConfiguracaoRPSAlterar.getLoteDaEmpresa: Integer;
begin
  Result := Self.m_LoteDaEmpresa;
end;

procedure TConfiguracaoRPSAlterar.setLoteDaEmpresa(const a_Value: Integer);
begin
  Self.m_LoteDaEmpresa := a_Value;
end;

function TConfiguracaoRPSAlterar.getUtilizarMesmoRPS: Boolean;
begin
  Result := Self.m_UtilizarMesmoRPS;
end;

procedure TConfiguracaoRPSAlterar.setUtilizarMesmoRPS(const a_Value: Boolean);
begin
  Self.m_UtilizarMesmoRPS := a_Value;
end;

function TConfiguracaoRPSAlterar.getIncluirObservacao: Boolean;
begin
  Result := Self.m_IncluirObservacao;
end;

procedure TConfiguracaoRPSAlterar.setIncluirObservacao(const a_Value: Boolean);
begin
  Self.m_IncluirObservacao := a_Value;
end;

function TConfiguracaoRPSAlterar.getIncluirInformacoesOS: Boolean;
begin
  Result := Self.m_IncluirInformacoesOS;
end;

procedure TConfiguracaoRPSAlterar.setIncluirInformacoesOS(const a_Value: Boolean);
begin
  Self.m_IncluirInformacoesOS := a_Value;
end;

function TConfiguracaoRPSAlterar.getTemplateOS: String;
begin
  Result := Self.m_TemplateOS;
end;

procedure TConfiguracaoRPSAlterar.setTemplateOS(const a_Value: String);
begin
  Self.m_TemplateOS := a_Value;
end;

function TConfiguracaoRPSAlterar.getIncluirRetencoes: Boolean;
begin
  Result := Self.m_IncluirRetencoes;
end;

procedure TConfiguracaoRPSAlterar.setIncluirRetencoes(const a_Value: Boolean);
begin
  Self.m_IncluirRetencoes := a_Value;
end;

function TConfiguracaoRPSAlterar.getPermitirMultiplosVendedores: Boolean;
begin
  Result := Self.m_PermitirMultiplosVendedores;
end;

procedure TConfiguracaoRPSAlterar.setPermitirMultiplosVendedores(const a_Value: Boolean);
begin
  Self.m_PermitirMultiplosVendedores := a_Value;
end;

function TConfiguracaoRPSAlterar.getParticipanteCertificado: String;
begin
  Result := Self.m_ParticipanteCertificado;
end;

procedure TConfiguracaoRPSAlterar.setParticipanteCertificado(const a_Value: String);
begin
  Self.m_ParticipanteCertificado := a_Value;
end;

function TConfiguracaoRPSAlterar.getServidorSMTP: String;
begin
  Result := Self.m_ServidorSMTP;
end;

procedure TConfiguracaoRPSAlterar.setServidorSMTP(const a_Value: String);
begin
  Self.m_ServidorSMTP := a_Value;
end;

function TConfiguracaoRPSAlterar.getPorta: Integer;
begin
  Result := Self.m_Porta;
end;

procedure TConfiguracaoRPSAlterar.setPorta(const a_Value: Integer);
begin
  Self.m_Porta := a_Value;
end;

function TConfiguracaoRPSAlterar.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TConfiguracaoRPSAlterar.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TConfiguracaoRPSAlterar.getSenha: String;
begin
  Result := Self.m_Senha;
end;

procedure TConfiguracaoRPSAlterar.setSenha(const a_Value: String);
begin
  Self.m_Senha := a_Value;
end;

function TConfiguracaoRPSAlterar.getRequerAutenticacao: Boolean;
begin
  Result := Self.m_RequerAutenticacao;
end;

procedure TConfiguracaoRPSAlterar.setRequerAutenticacao(const a_Value: Boolean);
begin
  Self.m_RequerAutenticacao := a_Value;
end;

function TConfiguracaoRPSAlterar.getUtilizarConexaoSegura: Boolean;
begin
  Result := Self.m_UtilizarConexaoSegura;
end;

procedure TConfiguracaoRPSAlterar.setUtilizarConexaoSegura(const a_Value: Boolean);
begin
  Self.m_UtilizarConexaoSegura := a_Value;
end;

function TConfiguracaoRPSAlterar.getAssuntoEmail: String;
begin
  Result := Self.m_AssuntoEmail;
end;

procedure TConfiguracaoRPSAlterar.setAssuntoEmail(const a_Value: String);
begin
  Self.m_AssuntoEmail := a_Value;
end;

function TConfiguracaoRPSAlterar.getMensagemEmail: String;
begin
  Result := Self.m_MensagemEmail;
end;

procedure TConfiguracaoRPSAlterar.setMensagemEmail(const a_Value: String);
begin
  Self.m_MensagemEmail := a_Value;
end;

function TConfiguracaoRPSAlterar.getIncluirProjetos: Boolean;
begin
  Result := Self.m_IncluirProjetos;
end;

procedure TConfiguracaoRPSAlterar.setIncluirProjetos(const a_Value: Boolean);
begin
  Self.m_IncluirProjetos := a_Value;
end;

destructor TConfiguracaoRPSAlterar.Destroy;
begin
  Self.Estabelecimento.Free();
end;

function TConfiguracaoRPSAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConfiguracaoRPSAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConfiguracaoRPSAlterar.getNameAPI(): String;
begin
  Result := 'ConfiguracaoRPSAlterar';
end;

function TConfiguracaoRPSAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConfiguracaoRPSAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TConfiguracaoRPSExcluir.getEstabelecimento: TEstabelecimento;
begin
  if not Assigned(Self.m_Estabelecimento)
    then Self.m_Estabelecimento := TEstabelecimento.Create();
  Result := Self.m_Estabelecimento;
end;

procedure TConfiguracaoRPSExcluir.setEstabelecimento(const a_Value: TEstabelecimento);
begin
  Self.m_Estabelecimento := a_Value;
end;

destructor TConfiguracaoRPSExcluir.Destroy;
begin
  Self.Estabelecimento.Free();
end;

function TConfiguracaoRPSExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConfiguracaoRPSExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConfiguracaoRPSExcluir.getNameAPI(): String;
begin
  Result := 'ConfiguracaoRPSExcluir';
end;

function TConfiguracaoRPSExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConfiguracaoRPSExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
