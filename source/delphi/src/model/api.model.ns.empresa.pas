unit api.model.ns.Empresa;

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
	
	

	;

type TEmpresa = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Empresa: String;
    var m_GrupoEmpresarial: String;
    var m_Codigo: String;
    var m_Identificacao: String;
    var m_RazaoSocial: String;
    var m_Descricao: String;
    

    function getEmpresa(): String;
    function getGrupoEmpresarial(): String;
    function getCodigo(): String;
    function getIdentificacao(): String;
    function getRazaoSocial(): String;
    function getDescricao(): String;
    

    procedure setEmpresa(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setIdentificacao(const a_Value: String);
    procedure setRazaoSocial(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    /// <summary>
/// Informar o CNPJ [99.999.999/9999-99] ou CPF [999.999.999-99] dependendo do tipo de identificação. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('identificacao')]
    property identificacao: String read getIdentificacao write setIdentificacao;

    [NasajonSerializeAttribute('razaosocial')]
    property razaosocial: String read getRazaoSocial write setRazaoSocial;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TEmpresaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdEmpresa: String;
    var m_GrupoEmpresarial: String;
    var m_Codigo: String;
    var m_Identificacao: String;
    var m_RazaoSocial: String;
    var m_Descricao: String;
    

    function getIdEmpresa(): String;
    function getGrupoEmpresarial(): String;
    function getCodigo(): String;
    function getIdentificacao(): String;
    function getRazaoSocial(): String;
    function getDescricao(): String;
    

    procedure setIdEmpresa(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setIdentificacao(const a_Value: String);
    procedure setRazaoSocial(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idempresa')]
    property idempresa: String read getIdEmpresa write setIdEmpresa;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    /// <summary>
/// Informar o CNPJ [99.999.999/9999-99] ou CPF [999.999.999-99] dependendo do tipo de identificação. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('identificacao')]
    property identificacao: String read getIdentificacao write setIdentificacao;

    [NasajonSerializeAttribute('razaosocial')]
    property razaosocial: String read getRazaoSocial write setRazaoSocial;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TEmpresaAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Empresa: String;
    var m_GrupoEmpresarial: String;
    var m_Codigo: String;
    var m_Identificacao: String;
    var m_RazaoSocial: String;
    var m_Descricao: String;
    var m_CodigoCNAE: String;
    var m_InicioExercicio: TDate;
    

    function getEmpresa(): String;
    function getGrupoEmpresarial(): String;
    function getCodigo(): String;
    function getIdentificacao(): String;
    function getRazaoSocial(): String;
    function getDescricao(): String;
    function getCodigoCNAE(): String;
    function getInicioExercicio(): TDate;
    

    procedure setEmpresa(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setIdentificacao(const a_Value: String);
    procedure setRazaoSocial(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setCodigoCNAE(const a_Value: String);
    procedure setInicioExercicio(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    /// <summary>
/// Informar o CNPJ [99.999.999/9999-99] ou CPF [999.999.999-99] dependendo do tipo de identificação. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('identificacao')]
    property identificacao: String read getIdentificacao write setIdentificacao;

    [NasajonSerializeAttribute('razaosocial')]
    property razaosocial: String read getRazaoSocial write setRazaoSocial;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Conforme tabela de atividades econômicas do governo
    /// </summary>
    [NasajonSerializeAttribute('codigocnae')]
    property codigocnae: String read getCodigoCNAE write setCodigoCNAE;

    [NasajonSerializeAttribute('inicioexercicio')]
    property inicioexercicio: TDate read getInicioExercicio write setInicioExercicio;

    

end;

type TEmpresaAlterarDadosFolha = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Empresa: String;
    var m_CodigoCNAE: String;
    var m_CodigoNaturezaJuridica: String;
    var m_FormaPagamento: String;
    var m_TipoCooperativa: Integer;
    var m_Construtora: Integer;
    var m_PontoEletronico: Integer;
    var m_PossuiMultiplasTabelasRubrica: Boolean;
    var m_SituacaoPJ: Integer;
    var m_SituacaoPF: Integer;
    

    function getEmpresa(): String;
    function getCodigoCNAE(): String;
    function getCodigoNaturezaJuridica(): String;
    function getFormaPagamento(): String;
    function getTipoCooperativa(): Integer;
    function getConstrutora(): Integer;
    function getPontoEletronico(): Integer;
    function getPossuiMultiplasTabelasRubrica(): Boolean;
    function getSituacaoPJ(): Integer;
    function getSituacaoPF(): Integer;
    

    procedure setEmpresa(const a_Value: String);
    procedure setCodigoCNAE(const a_Value: String);
    procedure setCodigoNaturezaJuridica(const a_Value: String);
    procedure setFormaPagamento(const a_Value: String);
    procedure setTipoCooperativa(const a_Value: Integer);
    procedure setConstrutora(const a_Value: Integer);
    procedure setPontoEletronico(const a_Value: Integer);
    procedure setPossuiMultiplasTabelasRubrica(const a_Value: Boolean);
    procedure setSituacaoPJ(const a_Value: Integer);
    procedure setSituacaoPF(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Conforme tabela de atividades econômicas do governo
    /// </summary>
    [NasajonSerializeAttribute('codigocnae')]
    property codigocnae: String read getCodigoCNAE write setCodigoCNAE;

    /// <summary>
/// Conforme tabela de naturezas jurídicas do governo
    /// </summary>
    [NasajonSerializeAttribute('codigonaturezajuridica')]
    property codigonaturezajuridica: String read getCodigoNaturezaJuridica write setCodigoNaturezaJuridica;

    /// <summary>
/// M(Mensal) ou S(Semanal)
    /// </summary>
    [NasajonSerializeAttribute('formapagamento')]
    property formapagamento: String read getFormaPagamento write setFormaPagamento;

    /// <summary>
/// Não é cooperativa(0), Cooperativa de trabalho(1), Cooperativa de produção(2), Outras cooperativas(3)
    /// </summary>
    [NasajonSerializeAttribute('tipocooperativa')]
    property tipocooperativa: Integer read getTipoCooperativa write setTipoCooperativa;

    /// <summary>
/// Não é construtora(0) ou É construtora(1)
    /// </summary>
    [NasajonSerializeAttribute('construtora')]
    property construtora: Integer read getConstrutora write setConstrutora;

    /// <summary>
/// Não possui ponto eletrônicao(0) ou Possui ponto eletronico(1)
    /// </summary>
    [NasajonSerializeAttribute('pontoeletronico')]
    property pontoeletronico: Integer read getPontoEletronico write setPontoEletronico;

    /// <summary>
/// Indicar se a empresa trabalha ou não com tabelas distintas de rubricas para seus estabelecimentos
    /// </summary>
    [NasajonSerializeAttribute('possuimultiplastabelasrubrica')]
    property possuimultiplastabelasrubrica: Boolean read getPossuiMultiplasTabelasRubrica write setPossuiMultiplasTabelasRubrica;

    /// <summary>
/// Normal(0), Extinção(1), Fusão(2), Cisão(3) ou Incorporação(4)
    /// </summary>
    [NasajonSerializeAttribute('situacaopj')]
    property situacaopj: Integer read getSituacaoPJ write setSituacaoPJ;

    /// <summary>
/// Normal(0), Encerramento de espólio(1), Saída do país em caráter permanente(2)
    /// </summary>
    [NasajonSerializeAttribute('situacaopf')]
    property situacaopf: Integer read getSituacaoPF write setSituacaoPF;

    

end;

type TEmpresaAlterarDadosContato = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Empresa: String;
    var m_Nome: String;
    var m_CPF: String;
    var m_DDDTelefonefixo: String;
    var m_Telefonefixo: String;
    var m_DDDTelefoneCelular: String;
    var m_TelefoneCelular: String;
    var m_DDDFAX: String;
    var m_FAX: String;
    var m_Email: String;
    

    function getEmpresa(): String;
    function getNome(): String;
    function getCPF(): String;
    function getDDDTelefonefixo(): String;
    function getTelefonefixo(): String;
    function getDDDTelefoneCelular(): String;
    function getTelefoneCelular(): String;
    function getDDDFAX(): String;
    function getFAX(): String;
    function getEmail(): String;
    

    procedure setEmpresa(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCPF(const a_Value: String);
    procedure setDDDTelefonefixo(const a_Value: String);
    procedure setTelefonefixo(const a_Value: String);
    procedure setDDDTelefoneCelular(const a_Value: String);
    procedure setTelefoneCelular(const a_Value: String);
    procedure setDDDFAX(const a_Value: String);
    procedure setFAX(const a_Value: String);
    procedure setEmail(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// [999.999.999-99]. A máscara não é obrigatória
    /// </summary>
    [NasajonSerializeAttribute('cpf')]
    property cpf: String read getCPF write setCPF;

    [NasajonSerializeAttribute('dddtelefonefixo')]
    property dddtelefonefixo: String read getDDDTelefonefixo write setDDDTelefonefixo;

    [NasajonSerializeAttribute('telefonefixo')]
    property telefonefixo: String read getTelefonefixo write setTelefonefixo;

    [NasajonSerializeAttribute('dddtelefonecelular')]
    property dddtelefonecelular: String read getDDDTelefoneCelular write setDDDTelefoneCelular;

    [NasajonSerializeAttribute('telefonecelular')]
    property telefonecelular: String read getTelefoneCelular write setTelefoneCelular;

    [NasajonSerializeAttribute('dddfax')]
    property dddfax: String read getDDDFAX write setDDDFAX;

    [NasajonSerializeAttribute('fax')]
    property fax: String read getFAX write setFAX;

    [NasajonSerializeAttribute('email')]
    property email: String read getEmail write setEmail;

    

end;

type TEmpresaAlterarDadosFolhaEmpresaPublica = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Empresa: String;
    var m_CodigoMunicipioEnteFederativo: String;
    var m_DescricaoLeiSeguradoDiferenciado: String;
    var m_NumeroSIAFI: String;
    var m_AnosMaioridadeDependenteExecutivo: Integer;
    var m_AnosMaioridadeDependenteLegislativo: Integer;
    var m_AnosMaioridadeDependenteJudiciario: Integer;
    var m_AnosMaioridadeDependenteTodosPoderes: Integer;
    var m_RegimeProprioPrevidenciaSocial: Boolean;
    var m_ValorSubtetoINSSExecutivo: Currency;
    var m_ValorSubtetoINSSLegislativo: Currency;
    var m_ValorSubtetoINSSJudiciario: Currency;
    var m_ValorSubtetoINSSTodosPoderes: Currency;
    

    function getEmpresa(): String;
    function getCodigoMunicipioEnteFederativo(): String;
    function getDescricaoLeiSeguradoDiferenciado(): String;
    function getNumeroSIAFI(): String;
    function getAnosMaioridadeDependenteExecutivo(): Integer;
    function getAnosMaioridadeDependenteLegislativo(): Integer;
    function getAnosMaioridadeDependenteJudiciario(): Integer;
    function getAnosMaioridadeDependenteTodosPoderes(): Integer;
    function getRegimeProprioPrevidenciaSocial(): Boolean;
    function getValorSubtetoINSSExecutivo(): Currency;
    function getValorSubtetoINSSLegislativo(): Currency;
    function getValorSubtetoINSSJudiciario(): Currency;
    function getValorSubtetoINSSTodosPoderes(): Currency;
    

    procedure setEmpresa(const a_Value: String);
    procedure setCodigoMunicipioEnteFederativo(const a_Value: String);
    procedure setDescricaoLeiSeguradoDiferenciado(const a_Value: String);
    procedure setNumeroSIAFI(const a_Value: String);
    procedure setAnosMaioridadeDependenteExecutivo(const a_Value: Integer);
    procedure setAnosMaioridadeDependenteLegislativo(const a_Value: Integer);
    procedure setAnosMaioridadeDependenteJudiciario(const a_Value: Integer);
    procedure setAnosMaioridadeDependenteTodosPoderes(const a_Value: Integer);
    procedure setRegimeProprioPrevidenciaSocial(const a_Value: Boolean);
    procedure setValorSubtetoINSSExecutivo(const a_Value: Currency);
    procedure setValorSubtetoINSSLegislativo(const a_Value: Currency);
    procedure setValorSubtetoINSSJudiciario(const a_Value: Currency);
    procedure setValorSubtetoINSSTodosPoderes(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Conforme tabela do IBGE
    /// </summary>
    [NasajonSerializeAttribute('codigomunicipioentefederativo')]
    property codigomunicipioentefederativo: String read getCodigoMunicipioEnteFederativo write setCodigoMunicipioEnteFederativo;

    [NasajonSerializeAttribute('descricaoleiseguradodiferenciado')]
    property descricaoleiseguradodiferenciado: String read getDescricaoLeiSeguradoDiferenciado write setDescricaoLeiSeguradoDiferenciado;

    [NasajonSerializeAttribute('numerosiafi')]
    property numerosiafi: String read getNumeroSIAFI write setNumeroSIAFI;

    [NasajonSerializeAttribute('anosmaioridadedependenteexecutivo')]
    property anosmaioridadedependenteexecutivo: Integer read getAnosMaioridadeDependenteExecutivo write setAnosMaioridadeDependenteExecutivo;

    [NasajonSerializeAttribute('anosmaioridadedependentelegislativo')]
    property anosmaioridadedependentelegislativo: Integer read getAnosMaioridadeDependenteLegislativo write setAnosMaioridadeDependenteLegislativo;

    [NasajonSerializeAttribute('anosmaioridadedependentejudiciario')]
    property anosmaioridadedependentejudiciario: Integer read getAnosMaioridadeDependenteJudiciario write setAnosMaioridadeDependenteJudiciario;

    [NasajonSerializeAttribute('anosmaioridadedependentetodospoderes')]
    property anosmaioridadedependentetodospoderes: Integer read getAnosMaioridadeDependenteTodosPoderes write setAnosMaioridadeDependenteTodosPoderes;

    [NasajonSerializeAttribute('regimeproprioprevidenciasocial')]
    property regimeproprioprevidenciasocial: Boolean read getRegimeProprioPrevidenciaSocial write setRegimeProprioPrevidenciaSocial;

    [NasajonSerializeAttribute('valorsubtetoinssexecutivo')]
    property valorsubtetoinssexecutivo: Currency read getValorSubtetoINSSExecutivo write setValorSubtetoINSSExecutivo;

    [NasajonSerializeAttribute('valorsubtetoinsslegislativo')]
    property valorsubtetoinsslegislativo: Currency read getValorSubtetoINSSLegislativo write setValorSubtetoINSSLegislativo;

    [NasajonSerializeAttribute('valorsubtetoinssjudiciario')]
    property valorsubtetoinssjudiciario: Currency read getValorSubtetoINSSJudiciario write setValorSubtetoINSSJudiciario;

    [NasajonSerializeAttribute('valorsubtetoinsstodospoderes')]
    property valorsubtetoinsstodospoderes: Currency read getValorSubtetoINSSTodosPoderes write setValorSubtetoINSSTodosPoderes;

    

end;

type TEmpresaAlterarDadosFolhaEmpresaFilantropica = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Empresa: String;
    var m_Filantropica: Boolean;
    var m_NumeroCertificado: String;
    var m_Ministerio: String;
    var m_NumeroProtocoloRenovacao: String;
    var m_NumeroPaginaDiarioOficialUniao: String;
    var m_DataEmissaoCertificado: TDate;
    var m_DataVencimentoCertificado: TDate;
    var m_DataProtocoloRenovacaoIsencao: TDate;
    var m_DataPublicacaoDiarioOficialUniao: TDate;
    

    function getEmpresa(): String;
    function getFilantropica(): Boolean;
    function getNumeroCertificado(): String;
    function getMinisterio(): String;
    function getNumeroProtocoloRenovacao(): String;
    function getNumeroPaginaDiarioOficialUniao(): String;
    function getDataEmissaoCertificado(): TDate;
    function getDataVencimentoCertificado(): TDate;
    function getDataProtocoloRenovacaoIsencao(): TDate;
    function getDataPublicacaoDiarioOficialUniao(): TDate;
    

    procedure setEmpresa(const a_Value: String);
    procedure setFilantropica(const a_Value: Boolean);
    procedure setNumeroCertificado(const a_Value: String);
    procedure setMinisterio(const a_Value: String);
    procedure setNumeroProtocoloRenovacao(const a_Value: String);
    procedure setNumeroPaginaDiarioOficialUniao(const a_Value: String);
    procedure setDataEmissaoCertificado(const a_Value: TDate);
    procedure setDataVencimentoCertificado(const a_Value: TDate);
    procedure setDataProtocoloRenovacaoIsencao(const a_Value: TDate);
    procedure setDataPublicacaoDiarioOficialUniao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('filantropica')]
    property filantropica: Boolean read getFilantropica write setFilantropica;

    [NasajonSerializeAttribute('numerocertificado')]
    property numerocertificado: String read getNumeroCertificado write setNumeroCertificado;

    /// <summary>
/// CNAS, MEC, MS ou MDS
    /// </summary>
    [NasajonSerializeAttribute('ministerio')]
    property ministerio: String read getMinisterio write setMinisterio;

    [NasajonSerializeAttribute('numeroprotocolorenovacao')]
    property numeroprotocolorenovacao: String read getNumeroProtocoloRenovacao write setNumeroProtocoloRenovacao;

    [NasajonSerializeAttribute('numeropaginadiariooficialuniao')]
    property numeropaginadiariooficialuniao: String read getNumeroPaginaDiarioOficialUniao write setNumeroPaginaDiarioOficialUniao;

    [NasajonSerializeAttribute('dataemissaocertificado')]
    property dataemissaocertificado: TDate read getDataEmissaoCertificado write setDataEmissaoCertificado;

    [NasajonSerializeAttribute('datavencimentocertificado')]
    property datavencimentocertificado: TDate read getDataVencimentoCertificado write setDataVencimentoCertificado;

    [NasajonSerializeAttribute('dataprotocolorenovacaoisencao')]
    property dataprotocolorenovacaoisencao: TDate read getDataProtocoloRenovacaoIsencao write setDataProtocoloRenovacaoIsencao;

    [NasajonSerializeAttribute('datapublicacaodiariooficialuniao')]
    property datapublicacaodiariooficialuniao: TDate read getDataPublicacaoDiarioOficialUniao write setDataPublicacaoDiarioOficialUniao;

    

end;

type TEmpresaInativarEmpresa = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Empresa: String;
    var m_Inativa: Boolean;
    

    function getEmpresa(): String;
    function getInativa(): Boolean;
    

    procedure setEmpresa(const a_Value: String);
    procedure setInativa(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('inativa')]
    property inativa: Boolean read getInativa write setInativa;

    

end;

type TEmpresaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Empresa: String;
    

    function getEmpresa(): String;
    

    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TEmpresa.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEmpresa.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEmpresa.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TEmpresa.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TEmpresa.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TEmpresa.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TEmpresa.getIdentificacao: String;
begin
  Result := Self.m_Identificacao;
end;

procedure TEmpresa.setIdentificacao(const a_Value: String);
begin
  Self.m_Identificacao := a_Value;
end;

function TEmpresa.getRazaoSocial: String;
begin
  Result := Self.m_RazaoSocial;
end;

procedure TEmpresa.setRazaoSocial(const a_Value: String);
begin
  Self.m_RazaoSocial := a_Value;
end;

function TEmpresa.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TEmpresa.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TEmpresa.Destroy;
begin

end;

function TEmpresa.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEmpresa.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEmpresa.getNameAPI(): String;
begin
  Result := 'Empresa';
end;

function TEmpresa.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEmpresa.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEmpresaNovo.getIdEmpresa: String;
begin
  Result := Self.m_IdEmpresa;
end;

procedure TEmpresaNovo.setIdEmpresa(const a_Value: String);
begin
  Self.m_IdEmpresa := a_Value;
end;

function TEmpresaNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TEmpresaNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TEmpresaNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TEmpresaNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TEmpresaNovo.getIdentificacao: String;
begin
  Result := Self.m_Identificacao;
end;

procedure TEmpresaNovo.setIdentificacao(const a_Value: String);
begin
  Self.m_Identificacao := a_Value;
end;

function TEmpresaNovo.getRazaoSocial: String;
begin
  Result := Self.m_RazaoSocial;
end;

procedure TEmpresaNovo.setRazaoSocial(const a_Value: String);
begin
  Self.m_RazaoSocial := a_Value;
end;

function TEmpresaNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TEmpresaNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TEmpresaNovo.Destroy;
begin

end;

function TEmpresaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEmpresaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEmpresaNovo.getNameAPI(): String;
begin
  Result := 'EmpresaNovo';
end;

function TEmpresaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEmpresaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEmpresaAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEmpresaAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEmpresaAlterarDadosGerais.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TEmpresaAlterarDadosGerais.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TEmpresaAlterarDadosGerais.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TEmpresaAlterarDadosGerais.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TEmpresaAlterarDadosGerais.getIdentificacao: String;
begin
  Result := Self.m_Identificacao;
end;

procedure TEmpresaAlterarDadosGerais.setIdentificacao(const a_Value: String);
begin
  Self.m_Identificacao := a_Value;
end;

function TEmpresaAlterarDadosGerais.getRazaoSocial: String;
begin
  Result := Self.m_RazaoSocial;
end;

procedure TEmpresaAlterarDadosGerais.setRazaoSocial(const a_Value: String);
begin
  Self.m_RazaoSocial := a_Value;
end;

function TEmpresaAlterarDadosGerais.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TEmpresaAlterarDadosGerais.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TEmpresaAlterarDadosGerais.getCodigoCNAE: String;
begin
  Result := Self.m_CodigoCNAE;
end;

procedure TEmpresaAlterarDadosGerais.setCodigoCNAE(const a_Value: String);
begin
  Self.m_CodigoCNAE := a_Value;
end;

function TEmpresaAlterarDadosGerais.getInicioExercicio: TDate;
begin
  Result := Self.m_InicioExercicio;
end;

procedure TEmpresaAlterarDadosGerais.setInicioExercicio(const a_Value: TDate);
begin
  Self.m_InicioExercicio := a_Value;
end;

destructor TEmpresaAlterarDadosGerais.Destroy;
begin

end;

function TEmpresaAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEmpresaAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEmpresaAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'EmpresaAlterarDadosGerais';
end;

function TEmpresaAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEmpresaAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEmpresaAlterarDadosFolha.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEmpresaAlterarDadosFolha.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEmpresaAlterarDadosFolha.getCodigoCNAE: String;
begin
  Result := Self.m_CodigoCNAE;
end;

procedure TEmpresaAlterarDadosFolha.setCodigoCNAE(const a_Value: String);
begin
  Self.m_CodigoCNAE := a_Value;
end;

function TEmpresaAlterarDadosFolha.getCodigoNaturezaJuridica: String;
begin
  Result := Self.m_CodigoNaturezaJuridica;
end;

procedure TEmpresaAlterarDadosFolha.setCodigoNaturezaJuridica(const a_Value: String);
begin
  Self.m_CodigoNaturezaJuridica := a_Value;
end;

function TEmpresaAlterarDadosFolha.getFormaPagamento: String;
begin
  Result := Self.m_FormaPagamento;
end;

procedure TEmpresaAlterarDadosFolha.setFormaPagamento(const a_Value: String);
begin
  Self.m_FormaPagamento := a_Value;
end;

function TEmpresaAlterarDadosFolha.getTipoCooperativa: Integer;
begin
  Result := Self.m_TipoCooperativa;
end;

procedure TEmpresaAlterarDadosFolha.setTipoCooperativa(const a_Value: Integer);
begin
  Self.m_TipoCooperativa := a_Value;
end;

function TEmpresaAlterarDadosFolha.getConstrutora: Integer;
begin
  Result := Self.m_Construtora;
end;

procedure TEmpresaAlterarDadosFolha.setConstrutora(const a_Value: Integer);
begin
  Self.m_Construtora := a_Value;
end;

function TEmpresaAlterarDadosFolha.getPontoEletronico: Integer;
begin
  Result := Self.m_PontoEletronico;
end;

procedure TEmpresaAlterarDadosFolha.setPontoEletronico(const a_Value: Integer);
begin
  Self.m_PontoEletronico := a_Value;
end;

function TEmpresaAlterarDadosFolha.getPossuiMultiplasTabelasRubrica: Boolean;
begin
  Result := Self.m_PossuiMultiplasTabelasRubrica;
end;

procedure TEmpresaAlterarDadosFolha.setPossuiMultiplasTabelasRubrica(const a_Value: Boolean);
begin
  Self.m_PossuiMultiplasTabelasRubrica := a_Value;
end;

function TEmpresaAlterarDadosFolha.getSituacaoPJ: Integer;
begin
  Result := Self.m_SituacaoPJ;
end;

procedure TEmpresaAlterarDadosFolha.setSituacaoPJ(const a_Value: Integer);
begin
  Self.m_SituacaoPJ := a_Value;
end;

function TEmpresaAlterarDadosFolha.getSituacaoPF: Integer;
begin
  Result := Self.m_SituacaoPF;
end;

procedure TEmpresaAlterarDadosFolha.setSituacaoPF(const a_Value: Integer);
begin
  Self.m_SituacaoPF := a_Value;
end;

destructor TEmpresaAlterarDadosFolha.Destroy;
begin

end;

function TEmpresaAlterarDadosFolha.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEmpresaAlterarDadosFolha.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEmpresaAlterarDadosFolha.getNameAPI(): String;
begin
  Result := 'EmpresaAlterarDadosFolha';
end;

function TEmpresaAlterarDadosFolha.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEmpresaAlterarDadosFolha.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEmpresaAlterarDadosContato.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEmpresaAlterarDadosContato.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEmpresaAlterarDadosContato.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TEmpresaAlterarDadosContato.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TEmpresaAlterarDadosContato.getCPF: String;
begin
  Result := Self.m_CPF;
end;

procedure TEmpresaAlterarDadosContato.setCPF(const a_Value: String);
begin
  Self.m_CPF := a_Value;
end;

function TEmpresaAlterarDadosContato.getDDDTelefonefixo: String;
begin
  Result := Self.m_DDDTelefonefixo;
end;

procedure TEmpresaAlterarDadosContato.setDDDTelefonefixo(const a_Value: String);
begin
  Self.m_DDDTelefonefixo := a_Value;
end;

function TEmpresaAlterarDadosContato.getTelefonefixo: String;
begin
  Result := Self.m_Telefonefixo;
end;

procedure TEmpresaAlterarDadosContato.setTelefonefixo(const a_Value: String);
begin
  Self.m_Telefonefixo := a_Value;
end;

function TEmpresaAlterarDadosContato.getDDDTelefoneCelular: String;
begin
  Result := Self.m_DDDTelefoneCelular;
end;

procedure TEmpresaAlterarDadosContato.setDDDTelefoneCelular(const a_Value: String);
begin
  Self.m_DDDTelefoneCelular := a_Value;
end;

function TEmpresaAlterarDadosContato.getTelefoneCelular: String;
begin
  Result := Self.m_TelefoneCelular;
end;

procedure TEmpresaAlterarDadosContato.setTelefoneCelular(const a_Value: String);
begin
  Self.m_TelefoneCelular := a_Value;
end;

function TEmpresaAlterarDadosContato.getDDDFAX: String;
begin
  Result := Self.m_DDDFAX;
end;

procedure TEmpresaAlterarDadosContato.setDDDFAX(const a_Value: String);
begin
  Self.m_DDDFAX := a_Value;
end;

function TEmpresaAlterarDadosContato.getFAX: String;
begin
  Result := Self.m_FAX;
end;

procedure TEmpresaAlterarDadosContato.setFAX(const a_Value: String);
begin
  Self.m_FAX := a_Value;
end;

function TEmpresaAlterarDadosContato.getEmail: String;
begin
  Result := Self.m_Email;
end;

procedure TEmpresaAlterarDadosContato.setEmail(const a_Value: String);
begin
  Self.m_Email := a_Value;
end;

destructor TEmpresaAlterarDadosContato.Destroy;
begin

end;

function TEmpresaAlterarDadosContato.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEmpresaAlterarDadosContato.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEmpresaAlterarDadosContato.getNameAPI(): String;
begin
  Result := 'EmpresaAlterarDadosContato';
end;

function TEmpresaAlterarDadosContato.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEmpresaAlterarDadosContato.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getCodigoMunicipioEnteFederativo: String;
begin
  Result := Self.m_CodigoMunicipioEnteFederativo;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setCodigoMunicipioEnteFederativo(const a_Value: String);
begin
  Self.m_CodigoMunicipioEnteFederativo := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getDescricaoLeiSeguradoDiferenciado: String;
begin
  Result := Self.m_DescricaoLeiSeguradoDiferenciado;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setDescricaoLeiSeguradoDiferenciado(const a_Value: String);
begin
  Self.m_DescricaoLeiSeguradoDiferenciado := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getNumeroSIAFI: String;
begin
  Result := Self.m_NumeroSIAFI;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setNumeroSIAFI(const a_Value: String);
begin
  Self.m_NumeroSIAFI := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getAnosMaioridadeDependenteExecutivo: Integer;
begin
  Result := Self.m_AnosMaioridadeDependenteExecutivo;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setAnosMaioridadeDependenteExecutivo(const a_Value: Integer);
begin
  Self.m_AnosMaioridadeDependenteExecutivo := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getAnosMaioridadeDependenteLegislativo: Integer;
begin
  Result := Self.m_AnosMaioridadeDependenteLegislativo;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setAnosMaioridadeDependenteLegislativo(const a_Value: Integer);
begin
  Self.m_AnosMaioridadeDependenteLegislativo := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getAnosMaioridadeDependenteJudiciario: Integer;
begin
  Result := Self.m_AnosMaioridadeDependenteJudiciario;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setAnosMaioridadeDependenteJudiciario(const a_Value: Integer);
begin
  Self.m_AnosMaioridadeDependenteJudiciario := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getAnosMaioridadeDependenteTodosPoderes: Integer;
begin
  Result := Self.m_AnosMaioridadeDependenteTodosPoderes;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setAnosMaioridadeDependenteTodosPoderes(const a_Value: Integer);
begin
  Self.m_AnosMaioridadeDependenteTodosPoderes := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getRegimeProprioPrevidenciaSocial: Boolean;
begin
  Result := Self.m_RegimeProprioPrevidenciaSocial;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setRegimeProprioPrevidenciaSocial(const a_Value: Boolean);
begin
  Self.m_RegimeProprioPrevidenciaSocial := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getValorSubtetoINSSExecutivo: Currency;
begin
  Result := Self.m_ValorSubtetoINSSExecutivo;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setValorSubtetoINSSExecutivo(const a_Value: Currency);
begin
  Self.m_ValorSubtetoINSSExecutivo := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getValorSubtetoINSSLegislativo: Currency;
begin
  Result := Self.m_ValorSubtetoINSSLegislativo;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setValorSubtetoINSSLegislativo(const a_Value: Currency);
begin
  Self.m_ValorSubtetoINSSLegislativo := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getValorSubtetoINSSJudiciario: Currency;
begin
  Result := Self.m_ValorSubtetoINSSJudiciario;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setValorSubtetoINSSJudiciario(const a_Value: Currency);
begin
  Self.m_ValorSubtetoINSSJudiciario := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getValorSubtetoINSSTodosPoderes: Currency;
begin
  Result := Self.m_ValorSubtetoINSSTodosPoderes;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaPublica.setValorSubtetoINSSTodosPoderes(const a_Value: Currency);
begin
  Self.m_ValorSubtetoINSSTodosPoderes := a_Value;
end;

destructor TEmpresaAlterarDadosFolhaEmpresaPublica.Destroy;
begin

end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getNameAPI(): String;
begin
  Result := 'EmpresaAlterarDadosFolhaEmpresaPublica';
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEmpresaAlterarDadosFolhaEmpresaPublica.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaFilantropica.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getFilantropica: Boolean;
begin
  Result := Self.m_Filantropica;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaFilantropica.setFilantropica(const a_Value: Boolean);
begin
  Self.m_Filantropica := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getNumeroCertificado: String;
begin
  Result := Self.m_NumeroCertificado;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaFilantropica.setNumeroCertificado(const a_Value: String);
begin
  Self.m_NumeroCertificado := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getMinisterio: String;
begin
  Result := Self.m_Ministerio;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaFilantropica.setMinisterio(const a_Value: String);
begin
  Self.m_Ministerio := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getNumeroProtocoloRenovacao: String;
begin
  Result := Self.m_NumeroProtocoloRenovacao;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaFilantropica.setNumeroProtocoloRenovacao(const a_Value: String);
begin
  Self.m_NumeroProtocoloRenovacao := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getNumeroPaginaDiarioOficialUniao: String;
begin
  Result := Self.m_NumeroPaginaDiarioOficialUniao;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaFilantropica.setNumeroPaginaDiarioOficialUniao(const a_Value: String);
begin
  Self.m_NumeroPaginaDiarioOficialUniao := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getDataEmissaoCertificado: TDate;
begin
  Result := Self.m_DataEmissaoCertificado;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaFilantropica.setDataEmissaoCertificado(const a_Value: TDate);
begin
  Self.m_DataEmissaoCertificado := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getDataVencimentoCertificado: TDate;
begin
  Result := Self.m_DataVencimentoCertificado;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaFilantropica.setDataVencimentoCertificado(const a_Value: TDate);
begin
  Self.m_DataVencimentoCertificado := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getDataProtocoloRenovacaoIsencao: TDate;
begin
  Result := Self.m_DataProtocoloRenovacaoIsencao;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaFilantropica.setDataProtocoloRenovacaoIsencao(const a_Value: TDate);
begin
  Self.m_DataProtocoloRenovacaoIsencao := a_Value;
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getDataPublicacaoDiarioOficialUniao: TDate;
begin
  Result := Self.m_DataPublicacaoDiarioOficialUniao;
end;

procedure TEmpresaAlterarDadosFolhaEmpresaFilantropica.setDataPublicacaoDiarioOficialUniao(const a_Value: TDate);
begin
  Self.m_DataPublicacaoDiarioOficialUniao := a_Value;
end;

destructor TEmpresaAlterarDadosFolhaEmpresaFilantropica.Destroy;
begin

end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getNameAPI(): String;
begin
  Result := 'EmpresaAlterarDadosFolhaEmpresaFilantropica';
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEmpresaAlterarDadosFolhaEmpresaFilantropica.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEmpresaInativarEmpresa.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEmpresaInativarEmpresa.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEmpresaInativarEmpresa.getInativa: Boolean;
begin
  Result := Self.m_Inativa;
end;

procedure TEmpresaInativarEmpresa.setInativa(const a_Value: Boolean);
begin
  Self.m_Inativa := a_Value;
end;

destructor TEmpresaInativarEmpresa.Destroy;
begin

end;

function TEmpresaInativarEmpresa.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEmpresaInativarEmpresa.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEmpresaInativarEmpresa.getNameAPI(): String;
begin
  Result := 'EmpresaInativarEmpresa';
end;

function TEmpresaInativarEmpresa.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEmpresaInativarEmpresa.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEmpresaExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEmpresaExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TEmpresaExcluir.Destroy;
begin

end;

function TEmpresaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEmpresaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEmpresaExcluir.getNameAPI(): String;
begin
  Result := 'EmpresaExcluir';
end;

function TEmpresaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEmpresaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
