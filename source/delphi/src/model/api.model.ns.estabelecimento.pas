unit api.model.ns.Estabelecimento;

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

type TEstabelecimento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estabelecimento: String;
    var m_Empresa: String;
    

    function getEstabelecimento(): String;
    function getEmpresa(): String;
    

    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TEstabelecimentoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdEstabelecimento: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Identificacao: String;
    var m_InscricaoEstadual: String;
    var m_InscricaoMunicipal: String;
    var m_NomeFantasia: String;
    var m_CEI: String;
    var m_DataInicioAtividades: TDate;
    var m_DataFinalAtividades: TDate;
    

    function getIdEstabelecimento(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getIdentificacao(): String;
    function getInscricaoEstadual(): String;
    function getInscricaoMunicipal(): String;
    function getNomeFantasia(): String;
    function getCEI(): String;
    function getDataInicioAtividades(): TDate;
    function getDataFinalAtividades(): TDate;
    

    procedure setIdEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setIdentificacao(const a_Value: String);
    procedure setInscricaoEstadual(const a_Value: String);
    procedure setInscricaoMunicipal(const a_Value: String);
    procedure setNomeFantasia(const a_Value: String);
    procedure setCEI(const a_Value: String);
    procedure setDataInicioAtividades(const a_Value: TDate);
    procedure setDataFinalAtividades(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idestabelecimento')]
    property idestabelecimento: String read getIdEstabelecimento write setIdEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Informar o CNPJ [99.999.999/9999-99] ou CPF [999.999.999-99] dependendo do tipo de identificação da empresa. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('identificacao')]
    property identificacao: String read getIdentificacao write setIdentificacao;

    [NasajonSerializeAttribute('inscricaoestadual')]
    property inscricaoestadual: String read getInscricaoEstadual write setInscricaoEstadual;

    [NasajonSerializeAttribute('inscricaomunicipal')]
    property inscricaomunicipal: String read getInscricaoMunicipal write setInscricaoMunicipal;

    [NasajonSerializeAttribute('nomefantasia')]
    property nomefantasia: String read getNomeFantasia write setNomeFantasia;

    [NasajonSerializeAttribute('cei')]
    property cei: String read getCEI write setCEI;

    [NasajonSerializeAttribute('datainicioatividades')]
    property datainicioatividades: TDate read getDataInicioAtividades write setDataInicioAtividades;

    [NasajonSerializeAttribute('datafinalatividades')]
    property datafinalatividades: TDate read getDataFinalAtividades write setDataFinalAtividades;

    

end;

type TEstabelecimentoAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Identificacao: String;
    var m_InscricaoEstadual: String;
    var m_InscricaoMunicipal: String;
    var m_Nomefantasia: String;
    var m_CEI: String;
    var m_DataInicioAtividades: TDate;
    var m_DataFinalAtividades: TDate;
    var m_CodigoCNAE: String;
    var m_InicioExercicio: TDate;
    

    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getIdentificacao(): String;
    function getInscricaoEstadual(): String;
    function getInscricaoMunicipal(): String;
    function getNomefantasia(): String;
    function getCEI(): String;
    function getDataInicioAtividades(): TDate;
    function getDataFinalAtividades(): TDate;
    function getCodigoCNAE(): String;
    function getInicioExercicio(): TDate;
    

    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setIdentificacao(const a_Value: String);
    procedure setInscricaoEstadual(const a_Value: String);
    procedure setInscricaoMunicipal(const a_Value: String);
    procedure setNomefantasia(const a_Value: String);
    procedure setCEI(const a_Value: String);
    procedure setDataInicioAtividades(const a_Value: TDate);
    procedure setDataFinalAtividades(const a_Value: TDate);
    procedure setCodigoCNAE(const a_Value: String);
    procedure setInicioExercicio(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Informar o CNPJ [99.999.999/9999-99] ou CPF [999.999.999-99] dependendo do tipo de identificação da empresa. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('identificacao')]
    property identificacao: String read getIdentificacao write setIdentificacao;

    [NasajonSerializeAttribute('inscricaoestadual')]
    property inscricaoestadual: String read getInscricaoEstadual write setInscricaoEstadual;

    [NasajonSerializeAttribute('inscricaomunicipal')]
    property inscricaomunicipal: String read getInscricaoMunicipal write setInscricaoMunicipal;

    [NasajonSerializeAttribute('nomefantasia')]
    property nomefantasia: String read getNomefantasia write setNomefantasia;

    [NasajonSerializeAttribute('cei')]
    property cei: String read getCEI write setCEI;

    [NasajonSerializeAttribute('datainicioatividades')]
    property datainicioatividades: TDate read getDataInicioAtividades write setDataInicioAtividades;

    [NasajonSerializeAttribute('datafinalatividades')]
    property datafinalatividades: TDate read getDataFinalAtividades write setDataFinalAtividades;

    /// <summary>
/// Conforme tabela de atividades econômicas do governo
    /// </summary>
    [NasajonSerializeAttribute('codigocnae')]
    property codigocnae: String read getCodigoCNAE write setCodigoCNAE;

    [NasajonSerializeAttribute('inicioexercicio')]
    property inicioexercicio: TDate read getInicioExercicio write setInicioExercicio;

    

end;

type TEstabelecimentoAlterarDadosFolha = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_CodigoFPAS: String;
    var m_CodigoTerceiros: String;
    var m_CodigoCNAE: String;
    var m_NumeroProprietarios: Integer;
    var m_NumeroFamiliares: Integer;
    var m_Porte: Integer;
    var m_CapitalSocial: Currency;
    var m_FazPartePAT: Boolean;
    var m_PagaPIS: Boolean;
    var m_CentralizaContribuicaoSindical: Boolean;
    var m_Sindicato: String;
    var m_NumeroContaDepositoFGTS: String;
    var m_TipoContaDepositoFGTS: Integer;
    var m_AgenciaDepositoFGTS: String;
    var m_BancoDepositoFGTS: String;
    

    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCodigoFPAS(): String;
    function getCodigoTerceiros(): String;
    function getCodigoCNAE(): String;
    function getNumeroProprietarios(): Integer;
    function getNumeroFamiliares(): Integer;
    function getPorte(): Integer;
    function getCapitalSocial(): Currency;
    function getFazPartePAT(): Boolean;
    function getPagaPIS(): Boolean;
    function getCentralizaContribuicaoSindical(): Boolean;
    function getSindicato(): String;
    function getNumeroContaDepositoFGTS(): String;
    function getTipoContaDepositoFGTS(): Integer;
    function getAgenciaDepositoFGTS(): String;
    function getBancoDepositoFGTS(): String;
    

    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigoFPAS(const a_Value: String);
    procedure setCodigoTerceiros(const a_Value: String);
    procedure setCodigoCNAE(const a_Value: String);
    procedure setNumeroProprietarios(const a_Value: Integer);
    procedure setNumeroFamiliares(const a_Value: Integer);
    procedure setPorte(const a_Value: Integer);
    procedure setCapitalSocial(const a_Value: Currency);
    procedure setFazPartePAT(const a_Value: Boolean);
    procedure setPagaPIS(const a_Value: Boolean);
    procedure setCentralizaContribuicaoSindical(const a_Value: Boolean);
    procedure setSindicato(const a_Value: String);
    procedure setNumeroContaDepositoFGTS(const a_Value: String);
    procedure setTipoContaDepositoFGTS(const a_Value: Integer);
    procedure setAgenciaDepositoFGTS(const a_Value: String);
    procedure setBancoDepositoFGTS(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Conforme tabela de Fundo da Previdência e Assistência Social do governo
    /// </summary>
    [NasajonSerializeAttribute('codigofpas')]
    property codigofpas: String read getCodigoFPAS write setCodigoFPAS;

    /// <summary>
/// Conforme tabela de outras entidades do governo
    /// </summary>
    [NasajonSerializeAttribute('codigoterceiros')]
    property codigoterceiros: String read getCodigoTerceiros write setCodigoTerceiros;

    /// <summary>
/// Conforme tabela de atividades econômicas do governo
    /// </summary>
    [NasajonSerializeAttribute('codigocnae')]
    property codigocnae: String read getCodigoCNAE write setCodigoCNAE;

    [NasajonSerializeAttribute('numeroproprietarios')]
    property numeroproprietarios: Integer read getNumeroProprietarios write setNumeroProprietarios;

    [NasajonSerializeAttribute('numerofamiliares')]
    property numerofamiliares: Integer read getNumeroFamiliares write setNumeroFamiliares;

    /// <summary>
/// Normal(1), Pequeno(2) ou Micro(3)
    /// </summary>
    [NasajonSerializeAttribute('porte')]
    property porte: Integer read getPorte write setPorte;

    [NasajonSerializeAttribute('capitalsocial')]
    property capitalsocial: Currency read getCapitalSocial write setCapitalSocial;

    [NasajonSerializeAttribute('fazpartepat')]
    property fazpartepat: Boolean read getFazPartePAT write setFazPartePAT;

    [NasajonSerializeAttribute('pagapis')]
    property pagapis: Boolean read getPagaPIS write setPagaPIS;

    [NasajonSerializeAttribute('centralizacontribuicaosindical')]
    property centralizacontribuicaosindical: Boolean read getCentralizaContribuicaoSindical write setCentralizaContribuicaoSindical;

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('numerocontadepositofgts')]
    property numerocontadepositofgts: String read getNumeroContaDepositoFGTS write setNumeroContaDepositoFGTS;

    [NasajonSerializeAttribute('tipocontadepositofgts')]
    property tipocontadepositofgts: Integer read getTipoContaDepositoFGTS write setTipoContaDepositoFGTS;

    [NasajonSerializeAttribute('agenciadepositofgts')]
    property agenciadepositofgts: String read getAgenciaDepositoFGTS write setAgenciaDepositoFGTS;

    [NasajonSerializeAttribute('bancodepositofgts')]
    property bancodepositofgts: String read getBancoDepositoFGTS write setBancoDepositoFGTS;

    

end;

type TEstabelecimentoAlterarDadosEndereco = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_CodigoMunicipio: String;
    var m_TipoLogradouro: String;
    var m_Logradouro: String;
    var m_Numero: String;
    var m_Complemento: String;
    var m_Bairro: String;
    var m_CEP: String;
    var m_Cidade: String;
    var m_CaixaPostal: String;
    var m_UFCaixaPostal: String;
    var m_CEPCaixaPostal: String;
    var m_Email: String;
    var m_Site: String;
    var m_DDDTelefone: String;
    var m_Telefone: String;
    var m_DDDFAX: String;
    var m_FAX: String;
    

    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCodigoMunicipio(): String;
    function getTipoLogradouro(): String;
    function getLogradouro(): String;
    function getNumero(): String;
    function getComplemento(): String;
    function getBairro(): String;
    function getCEP(): String;
    function getCidade(): String;
    function getCaixaPostal(): String;
    function getUFCaixaPostal(): String;
    function getCEPCaixaPostal(): String;
    function getEmail(): String;
    function getSite(): String;
    function getDDDTelefone(): String;
    function getTelefone(): String;
    function getDDDFAX(): String;
    function getFAX(): String;
    

    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigoMunicipio(const a_Value: String);
    procedure setTipoLogradouro(const a_Value: String);
    procedure setLogradouro(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setComplemento(const a_Value: String);
    procedure setBairro(const a_Value: String);
    procedure setCEP(const a_Value: String);
    procedure setCidade(const a_Value: String);
    procedure setCaixaPostal(const a_Value: String);
    procedure setUFCaixaPostal(const a_Value: String);
    procedure setCEPCaixaPostal(const a_Value: String);
    procedure setEmail(const a_Value: String);
    procedure setSite(const a_Value: String);
    procedure setDDDTelefone(const a_Value: String);
    procedure setTelefone(const a_Value: String);
    procedure setDDDFAX(const a_Value: String);
    procedure setFAX(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Conforme tabela do IBGE
    /// </summary>
    [NasajonSerializeAttribute('codigomunicipio')]
    property codigomunicipio: String read getCodigoMunicipio write setCodigoMunicipio;

    /// <summary>
/// Conforme tabela de tipos de logradouro do eSocial
    /// </summary>
    [NasajonSerializeAttribute('tipologradouro')]
    property tipologradouro: String read getTipoLogradouro write setTipoLogradouro;

    [NasajonSerializeAttribute('logradouro')]
    property logradouro: String read getLogradouro write setLogradouro;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('complemento')]
    property complemento: String read getComplemento write setComplemento;

    [NasajonSerializeAttribute('bairro')]
    property bairro: String read getBairro write setBairro;

    /// <summary>
/// [99999-999]. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('cep')]
    property cep: String read getCEP write setCEP;

    [NasajonSerializeAttribute('cidade')]
    property cidade: String read getCidade write setCidade;

    [NasajonSerializeAttribute('caixapostal')]
    property caixapostal: String read getCaixaPostal write setCaixaPostal;

    [NasajonSerializeAttribute('ufcaixapostal')]
    property ufcaixapostal: String read getUFCaixaPostal write setUFCaixaPostal;

    /// <summary>
/// [99999-999]. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('cepcaixapostal')]
    property cepcaixapostal: String read getCEPCaixaPostal write setCEPCaixaPostal;

    [NasajonSerializeAttribute('email')]
    property email: String read getEmail write setEmail;

    [NasajonSerializeAttribute('site')]
    property site: String read getSite write setSite;

    [NasajonSerializeAttribute('dddtelefone')]
    property dddtelefone: String read getDDDTelefone write setDDDTelefone;

    [NasajonSerializeAttribute('telefone')]
    property telefone: String read getTelefone write setTelefone;

    [NasajonSerializeAttribute('dddfax')]
    property dddfax: String read getDDDFAX write setDDDFAX;

    [NasajonSerializeAttribute('fax')]
    property fax: String read getFAX write setFAX;

    

end;

type TEstabelecimentoAlterarDadosRepresentante = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Nome: String;
    var m_CPF: String;
    var m_DDDTelefone: String;
    var m_Telefone: String;
    var m_Ramal: String;
    var m_DDDFAX: String;
    var m_FAX: String;
    var m_Email: String;
    var m_Sexo: Integer;
    var m_DataNascimento: TDate;
    

    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getNome(): String;
    function getCPF(): String;
    function getDDDTelefone(): String;
    function getTelefone(): String;
    function getRamal(): String;
    function getDDDFAX(): String;
    function getFAX(): String;
    function getEmail(): String;
    function getSexo(): Integer;
    function getDataNascimento(): TDate;
    

    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCPF(const a_Value: String);
    procedure setDDDTelefone(const a_Value: String);
    procedure setTelefone(const a_Value: String);
    procedure setRamal(const a_Value: String);
    procedure setDDDFAX(const a_Value: String);
    procedure setFAX(const a_Value: String);
    procedure setEmail(const a_Value: String);
    procedure setSexo(const a_Value: Integer);
    procedure setDataNascimento(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// [999.999.999-99]. A máscara não é obrigatória
    /// </summary>
    [NasajonSerializeAttribute('cpf')]
    property cpf: String read getCPF write setCPF;

    [NasajonSerializeAttribute('dddtelefone')]
    property dddtelefone: String read getDDDTelefone write setDDDTelefone;

    [NasajonSerializeAttribute('telefone')]
    property telefone: String read getTelefone write setTelefone;

    [NasajonSerializeAttribute('ramal')]
    property ramal: String read getRamal write setRamal;

    [NasajonSerializeAttribute('dddfax')]
    property dddfax: String read getDDDFAX write setDDDFAX;

    [NasajonSerializeAttribute('fax')]
    property fax: String read getFAX write setFAX;

    [NasajonSerializeAttribute('email')]
    property email: String read getEmail write setEmail;

    /// <summary>
/// Masculino(1) ou Feminino(2)
    /// </summary>
    [NasajonSerializeAttribute('sexo')]
    property sexo: Integer read getSexo write setSexo;

    [NasajonSerializeAttribute('datanascimento')]
    property datanascimento: TDate read getDataNascimento write setDataNascimento;

    

end;

type TEstabelecimentoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estabelecimento: String;
    var m_Empresa: String;
    

    function getEstabelecimento(): String;
    function getEmpresa(): String;
    

    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TEstabelecimentoExcluir_v2 = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    

    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    

    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    

end;

	
implementation

  uses
      api.send;  

function TEstabelecimento.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TEstabelecimento.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TEstabelecimento.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstabelecimento.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TEstabelecimento.Destroy;
begin

end;

function TEstabelecimento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstabelecimento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstabelecimento.getNameAPI(): String;
begin
  Result := 'Estabelecimento';
end;

function TEstabelecimento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstabelecimento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstabelecimentoNovo.getIdEstabelecimento: String;
begin
  Result := Self.m_IdEstabelecimento;
end;

procedure TEstabelecimentoNovo.setIdEstabelecimento(const a_Value: String);
begin
  Self.m_IdEstabelecimento := a_Value;
end;

function TEstabelecimentoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstabelecimentoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstabelecimentoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TEstabelecimentoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TEstabelecimentoNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TEstabelecimentoNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TEstabelecimentoNovo.getIdentificacao: String;
begin
  Result := Self.m_Identificacao;
end;

procedure TEstabelecimentoNovo.setIdentificacao(const a_Value: String);
begin
  Self.m_Identificacao := a_Value;
end;

function TEstabelecimentoNovo.getInscricaoEstadual: String;
begin
  Result := Self.m_InscricaoEstadual;
end;

procedure TEstabelecimentoNovo.setInscricaoEstadual(const a_Value: String);
begin
  Self.m_InscricaoEstadual := a_Value;
end;

function TEstabelecimentoNovo.getInscricaoMunicipal: String;
begin
  Result := Self.m_InscricaoMunicipal;
end;

procedure TEstabelecimentoNovo.setInscricaoMunicipal(const a_Value: String);
begin
  Self.m_InscricaoMunicipal := a_Value;
end;

function TEstabelecimentoNovo.getNomeFantasia: String;
begin
  Result := Self.m_NomeFantasia;
end;

procedure TEstabelecimentoNovo.setNomeFantasia(const a_Value: String);
begin
  Self.m_NomeFantasia := a_Value;
end;

function TEstabelecimentoNovo.getCEI: String;
begin
  Result := Self.m_CEI;
end;

procedure TEstabelecimentoNovo.setCEI(const a_Value: String);
begin
  Self.m_CEI := a_Value;
end;

function TEstabelecimentoNovo.getDataInicioAtividades: TDate;
begin
  Result := Self.m_DataInicioAtividades;
end;

procedure TEstabelecimentoNovo.setDataInicioAtividades(const a_Value: TDate);
begin
  Self.m_DataInicioAtividades := a_Value;
end;

function TEstabelecimentoNovo.getDataFinalAtividades: TDate;
begin
  Result := Self.m_DataFinalAtividades;
end;

procedure TEstabelecimentoNovo.setDataFinalAtividades(const a_Value: TDate);
begin
  Self.m_DataFinalAtividades := a_Value;
end;

destructor TEstabelecimentoNovo.Destroy;
begin

end;

function TEstabelecimentoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstabelecimentoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstabelecimentoNovo.getNameAPI(): String;
begin
  Result := 'EstabelecimentoNovo';
end;

function TEstabelecimentoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstabelecimentoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstabelecimentoAlterarDadosGerais.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TEstabelecimentoAlterarDadosGerais.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TEstabelecimentoAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstabelecimentoAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstabelecimentoAlterarDadosGerais.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TEstabelecimentoAlterarDadosGerais.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TEstabelecimentoAlterarDadosGerais.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TEstabelecimentoAlterarDadosGerais.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TEstabelecimentoAlterarDadosGerais.getIdentificacao: String;
begin
  Result := Self.m_Identificacao;
end;

procedure TEstabelecimentoAlterarDadosGerais.setIdentificacao(const a_Value: String);
begin
  Self.m_Identificacao := a_Value;
end;

function TEstabelecimentoAlterarDadosGerais.getInscricaoEstadual: String;
begin
  Result := Self.m_InscricaoEstadual;
end;

procedure TEstabelecimentoAlterarDadosGerais.setInscricaoEstadual(const a_Value: String);
begin
  Self.m_InscricaoEstadual := a_Value;
end;

function TEstabelecimentoAlterarDadosGerais.getInscricaoMunicipal: String;
begin
  Result := Self.m_InscricaoMunicipal;
end;

procedure TEstabelecimentoAlterarDadosGerais.setInscricaoMunicipal(const a_Value: String);
begin
  Self.m_InscricaoMunicipal := a_Value;
end;

function TEstabelecimentoAlterarDadosGerais.getNomefantasia: String;
begin
  Result := Self.m_Nomefantasia;
end;

procedure TEstabelecimentoAlterarDadosGerais.setNomefantasia(const a_Value: String);
begin
  Self.m_Nomefantasia := a_Value;
end;

function TEstabelecimentoAlterarDadosGerais.getCEI: String;
begin
  Result := Self.m_CEI;
end;

procedure TEstabelecimentoAlterarDadosGerais.setCEI(const a_Value: String);
begin
  Self.m_CEI := a_Value;
end;

function TEstabelecimentoAlterarDadosGerais.getDataInicioAtividades: TDate;
begin
  Result := Self.m_DataInicioAtividades;
end;

procedure TEstabelecimentoAlterarDadosGerais.setDataInicioAtividades(const a_Value: TDate);
begin
  Self.m_DataInicioAtividades := a_Value;
end;

function TEstabelecimentoAlterarDadosGerais.getDataFinalAtividades: TDate;
begin
  Result := Self.m_DataFinalAtividades;
end;

procedure TEstabelecimentoAlterarDadosGerais.setDataFinalAtividades(const a_Value: TDate);
begin
  Self.m_DataFinalAtividades := a_Value;
end;

function TEstabelecimentoAlterarDadosGerais.getCodigoCNAE: String;
begin
  Result := Self.m_CodigoCNAE;
end;

procedure TEstabelecimentoAlterarDadosGerais.setCodigoCNAE(const a_Value: String);
begin
  Self.m_CodigoCNAE := a_Value;
end;

function TEstabelecimentoAlterarDadosGerais.getInicioExercicio: TDate;
begin
  Result := Self.m_InicioExercicio;
end;

procedure TEstabelecimentoAlterarDadosGerais.setInicioExercicio(const a_Value: TDate);
begin
  Self.m_InicioExercicio := a_Value;
end;

destructor TEstabelecimentoAlterarDadosGerais.Destroy;
begin

end;

function TEstabelecimentoAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstabelecimentoAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstabelecimentoAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'EstabelecimentoAlterarDadosGerais';
end;

function TEstabelecimentoAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstabelecimentoAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstabelecimentoAlterarDadosFolha.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TEstabelecimentoAlterarDadosFolha.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstabelecimentoAlterarDadosFolha.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getCodigoFPAS: String;
begin
  Result := Self.m_CodigoFPAS;
end;

procedure TEstabelecimentoAlterarDadosFolha.setCodigoFPAS(const a_Value: String);
begin
  Self.m_CodigoFPAS := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getCodigoTerceiros: String;
begin
  Result := Self.m_CodigoTerceiros;
end;

procedure TEstabelecimentoAlterarDadosFolha.setCodigoTerceiros(const a_Value: String);
begin
  Self.m_CodigoTerceiros := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getCodigoCNAE: String;
begin
  Result := Self.m_CodigoCNAE;
end;

procedure TEstabelecimentoAlterarDadosFolha.setCodigoCNAE(const a_Value: String);
begin
  Self.m_CodigoCNAE := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getNumeroProprietarios: Integer;
begin
  Result := Self.m_NumeroProprietarios;
end;

procedure TEstabelecimentoAlterarDadosFolha.setNumeroProprietarios(const a_Value: Integer);
begin
  Self.m_NumeroProprietarios := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getNumeroFamiliares: Integer;
begin
  Result := Self.m_NumeroFamiliares;
end;

procedure TEstabelecimentoAlterarDadosFolha.setNumeroFamiliares(const a_Value: Integer);
begin
  Self.m_NumeroFamiliares := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getPorte: Integer;
begin
  Result := Self.m_Porte;
end;

procedure TEstabelecimentoAlterarDadosFolha.setPorte(const a_Value: Integer);
begin
  Self.m_Porte := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getCapitalSocial: Currency;
begin
  Result := Self.m_CapitalSocial;
end;

procedure TEstabelecimentoAlterarDadosFolha.setCapitalSocial(const a_Value: Currency);
begin
  Self.m_CapitalSocial := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getFazPartePAT: Boolean;
begin
  Result := Self.m_FazPartePAT;
end;

procedure TEstabelecimentoAlterarDadosFolha.setFazPartePAT(const a_Value: Boolean);
begin
  Self.m_FazPartePAT := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getPagaPIS: Boolean;
begin
  Result := Self.m_PagaPIS;
end;

procedure TEstabelecimentoAlterarDadosFolha.setPagaPIS(const a_Value: Boolean);
begin
  Self.m_PagaPIS := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getCentralizaContribuicaoSindical: Boolean;
begin
  Result := Self.m_CentralizaContribuicaoSindical;
end;

procedure TEstabelecimentoAlterarDadosFolha.setCentralizaContribuicaoSindical(const a_Value: Boolean);
begin
  Self.m_CentralizaContribuicaoSindical := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TEstabelecimentoAlterarDadosFolha.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getNumeroContaDepositoFGTS: String;
begin
  Result := Self.m_NumeroContaDepositoFGTS;
end;

procedure TEstabelecimentoAlterarDadosFolha.setNumeroContaDepositoFGTS(const a_Value: String);
begin
  Self.m_NumeroContaDepositoFGTS := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getTipoContaDepositoFGTS: Integer;
begin
  Result := Self.m_TipoContaDepositoFGTS;
end;

procedure TEstabelecimentoAlterarDadosFolha.setTipoContaDepositoFGTS(const a_Value: Integer);
begin
  Self.m_TipoContaDepositoFGTS := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getAgenciaDepositoFGTS: String;
begin
  Result := Self.m_AgenciaDepositoFGTS;
end;

procedure TEstabelecimentoAlterarDadosFolha.setAgenciaDepositoFGTS(const a_Value: String);
begin
  Self.m_AgenciaDepositoFGTS := a_Value;
end;

function TEstabelecimentoAlterarDadosFolha.getBancoDepositoFGTS: String;
begin
  Result := Self.m_BancoDepositoFGTS;
end;

procedure TEstabelecimentoAlterarDadosFolha.setBancoDepositoFGTS(const a_Value: String);
begin
  Self.m_BancoDepositoFGTS := a_Value;
end;

destructor TEstabelecimentoAlterarDadosFolha.Destroy;
begin

end;

function TEstabelecimentoAlterarDadosFolha.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstabelecimentoAlterarDadosFolha.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstabelecimentoAlterarDadosFolha.getNameAPI(): String;
begin
  Result := 'EstabelecimentoAlterarDadosFolha';
end;

function TEstabelecimentoAlterarDadosFolha.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstabelecimentoAlterarDadosFolha.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstabelecimentoAlterarDadosEndereco.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getCodigoMunicipio: String;
begin
  Result := Self.m_CodigoMunicipio;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setCodigoMunicipio(const a_Value: String);
begin
  Self.m_CodigoMunicipio := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getTipoLogradouro: String;
begin
  Result := Self.m_TipoLogradouro;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setTipoLogradouro(const a_Value: String);
begin
  Self.m_TipoLogradouro := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getLogradouro: String;
begin
  Result := Self.m_Logradouro;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setLogradouro(const a_Value: String);
begin
  Self.m_Logradouro := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getComplemento: String;
begin
  Result := Self.m_Complemento;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setComplemento(const a_Value: String);
begin
  Self.m_Complemento := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getBairro: String;
begin
  Result := Self.m_Bairro;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setBairro(const a_Value: String);
begin
  Self.m_Bairro := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getCEP: String;
begin
  Result := Self.m_CEP;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setCEP(const a_Value: String);
begin
  Self.m_CEP := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getCaixaPostal: String;
begin
  Result := Self.m_CaixaPostal;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setCaixaPostal(const a_Value: String);
begin
  Self.m_CaixaPostal := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getUFCaixaPostal: String;
begin
  Result := Self.m_UFCaixaPostal;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setUFCaixaPostal(const a_Value: String);
begin
  Self.m_UFCaixaPostal := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getCEPCaixaPostal: String;
begin
  Result := Self.m_CEPCaixaPostal;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setCEPCaixaPostal(const a_Value: String);
begin
  Self.m_CEPCaixaPostal := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getEmail: String;
begin
  Result := Self.m_Email;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setEmail(const a_Value: String);
begin
  Self.m_Email := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getSite: String;
begin
  Result := Self.m_Site;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setSite(const a_Value: String);
begin
  Self.m_Site := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getDDDTelefone: String;
begin
  Result := Self.m_DDDTelefone;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setDDDTelefone(const a_Value: String);
begin
  Self.m_DDDTelefone := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getDDDFAX: String;
begin
  Result := Self.m_DDDFAX;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setDDDFAX(const a_Value: String);
begin
  Self.m_DDDFAX := a_Value;
end;

function TEstabelecimentoAlterarDadosEndereco.getFAX: String;
begin
  Result := Self.m_FAX;
end;

procedure TEstabelecimentoAlterarDadosEndereco.setFAX(const a_Value: String);
begin
  Self.m_FAX := a_Value;
end;

destructor TEstabelecimentoAlterarDadosEndereco.Destroy;
begin

end;

function TEstabelecimentoAlterarDadosEndereco.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstabelecimentoAlterarDadosEndereco.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstabelecimentoAlterarDadosEndereco.getNameAPI(): String;
begin
  Result := 'EstabelecimentoAlterarDadosEndereco';
end;

function TEstabelecimentoAlterarDadosEndereco.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstabelecimentoAlterarDadosEndereco.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstabelecimentoAlterarDadosRepresentante.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TEstabelecimentoAlterarDadosRepresentante.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TEstabelecimentoAlterarDadosRepresentante.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstabelecimentoAlterarDadosRepresentante.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstabelecimentoAlterarDadosRepresentante.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TEstabelecimentoAlterarDadosRepresentante.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TEstabelecimentoAlterarDadosRepresentante.getCPF: String;
begin
  Result := Self.m_CPF;
end;

procedure TEstabelecimentoAlterarDadosRepresentante.setCPF(const a_Value: String);
begin
  Self.m_CPF := a_Value;
end;

function TEstabelecimentoAlterarDadosRepresentante.getDDDTelefone: String;
begin
  Result := Self.m_DDDTelefone;
end;

procedure TEstabelecimentoAlterarDadosRepresentante.setDDDTelefone(const a_Value: String);
begin
  Self.m_DDDTelefone := a_Value;
end;

function TEstabelecimentoAlterarDadosRepresentante.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TEstabelecimentoAlterarDadosRepresentante.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

function TEstabelecimentoAlterarDadosRepresentante.getRamal: String;
begin
  Result := Self.m_Ramal;
end;

procedure TEstabelecimentoAlterarDadosRepresentante.setRamal(const a_Value: String);
begin
  Self.m_Ramal := a_Value;
end;

function TEstabelecimentoAlterarDadosRepresentante.getDDDFAX: String;
begin
  Result := Self.m_DDDFAX;
end;

procedure TEstabelecimentoAlterarDadosRepresentante.setDDDFAX(const a_Value: String);
begin
  Self.m_DDDFAX := a_Value;
end;

function TEstabelecimentoAlterarDadosRepresentante.getFAX: String;
begin
  Result := Self.m_FAX;
end;

procedure TEstabelecimentoAlterarDadosRepresentante.setFAX(const a_Value: String);
begin
  Self.m_FAX := a_Value;
end;

function TEstabelecimentoAlterarDadosRepresentante.getEmail: String;
begin
  Result := Self.m_Email;
end;

procedure TEstabelecimentoAlterarDadosRepresentante.setEmail(const a_Value: String);
begin
  Self.m_Email := a_Value;
end;

function TEstabelecimentoAlterarDadosRepresentante.getSexo: Integer;
begin
  Result := Self.m_Sexo;
end;

procedure TEstabelecimentoAlterarDadosRepresentante.setSexo(const a_Value: Integer);
begin
  Self.m_Sexo := a_Value;
end;

function TEstabelecimentoAlterarDadosRepresentante.getDataNascimento: TDate;
begin
  Result := Self.m_DataNascimento;
end;

procedure TEstabelecimentoAlterarDadosRepresentante.setDataNascimento(const a_Value: TDate);
begin
  Self.m_DataNascimento := a_Value;
end;

destructor TEstabelecimentoAlterarDadosRepresentante.Destroy;
begin

end;

function TEstabelecimentoAlterarDadosRepresentante.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstabelecimentoAlterarDadosRepresentante.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstabelecimentoAlterarDadosRepresentante.getNameAPI(): String;
begin
  Result := 'EstabelecimentoAlterarDadosRepresentante';
end;

function TEstabelecimentoAlterarDadosRepresentante.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstabelecimentoAlterarDadosRepresentante.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstabelecimentoExcluir.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TEstabelecimentoExcluir.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TEstabelecimentoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstabelecimentoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TEstabelecimentoExcluir.Destroy;
begin

end;

function TEstabelecimentoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstabelecimentoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstabelecimentoExcluir.getNameAPI(): String;
begin
  Result := 'EstabelecimentoExcluir';
end;

function TEstabelecimentoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstabelecimentoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstabelecimentoExcluir_v2.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TEstabelecimentoExcluir_v2.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TEstabelecimentoExcluir_v2.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstabelecimentoExcluir_v2.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstabelecimentoExcluir_v2.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TEstabelecimentoExcluir_v2.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

destructor TEstabelecimentoExcluir_v2.Destroy;
begin

end;

function TEstabelecimentoExcluir_v2.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstabelecimentoExcluir_v2.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstabelecimentoExcluir_v2.getNameAPI(): String;
begin
  Result := 'EstabelecimentoExcluir_v2';
end;

function TEstabelecimentoExcluir_v2.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstabelecimentoExcluir_v2.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
