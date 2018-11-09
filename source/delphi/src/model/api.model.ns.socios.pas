unit api.model.ns.Socios;

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

type TSociosNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdSocio: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Cargo: String;
    var m_Pais: String;
    var m_UFCaixaPostal: String;
    var m_Identidade: String;
    var m_Documento: String;
    var m_Telefone: String;
    var m_Email: String;
    var m_Imprimir: Boolean;
    var m_IndicadorQualificacao: String;
    var m_Qualificacao: String;
    

    function getIdSocio(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCargo(): String;
    function getPais(): String;
    function getUFCaixaPostal(): String;
    function getIdentidade(): String;
    function getDocumento(): String;
    function getTelefone(): String;
    function getEmail(): String;
    function getImprimir(): Boolean;
    function getIndicadorQualificacao(): String;
    function getQualificacao(): String;
    

    procedure setIdSocio(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setPais(const a_Value: String);
    procedure setUFCaixaPostal(const a_Value: String);
    procedure setIdentidade(const a_Value: String);
    procedure setDocumento(const a_Value: String);
    procedure setTelefone(const a_Value: String);
    procedure setEmail(const a_Value: String);
    procedure setImprimir(const a_Value: Boolean);
    procedure setIndicadorQualificacao(const a_Value: String);
    procedure setQualificacao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idsocio')]
    property idsocio: String read getIdSocio write setIdSocio;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('pais')]
    property pais: String read getPais write setPais;

    [NasajonSerializeAttribute('ufcaixapostal')]
    property ufcaixapostal: String read getUFCaixaPostal write setUFCaixaPostal;

    [NasajonSerializeAttribute('identidade')]
    property identidade: String read getIdentidade write setIdentidade;

    /// <summary>
/// Este campo aceita CPF ou CNPJ com ou sem mascara.
    /// </summary>
    [NasajonSerializeAttribute('documento')]
    property documento: String read getDocumento write setDocumento;

    [NasajonSerializeAttribute('telefone')]
    property telefone: String read getTelefone write setTelefone;

    [NasajonSerializeAttribute('email')]
    property email: String read getEmail write setEmail;

    /// <summary>
/// Define se o sócio será impresso nos relatórios
    /// </summary>
    [NasajonSerializeAttribute('imprimir')]
    property imprimir: Boolean read getImprimir write setImprimir;

    /// <summary>
/// Disponível para este campo os valores: Pessoa Física, Pessoa Jurídica, Fundo de Investimento
    /// </summary>
    [NasajonSerializeAttribute('indicadorqualificacao')]
    property indicadorqualificacao: String read getIndicadorQualificacao write setIndicadorQualificacao;

    /// <summary>
/// Disponível para este campo os valores: Acionista Pessoa Física Domiciliada no Brasil, 
/// 			Sócio Pessoa Física Domiciliado no Brasil, 
/// 			Acionista Pessoa Jurídica Domiciliado no Brasil, 
/// 			Sócio Pessoa Jurídica Domiciliado no Brasil, 
/// 			Sócio Pessoa Física Residente ou Domiciliado no Exterior, 
/// 			Acionista Pessoa Física Residente ou Domiciliado no Exterior, 
/// 			Acionista Pessoa Jurídica Residente ou Domiciliado no Exterior, 
/// 			Sócio Pessoa Jurídica Residente ou Domiciliado no Exterior, 
/// 			Titular, 
/// 			Administrador sem Vínculo Empregatício,
/// 			Diretor sem Vínculo Empregatício,
/// 			Presidente sem Vínculo Empregatício,
/// 			Administrador com Vínculo Empregatício,
/// 			Conselheiro de Administração ou Fiscal,
/// 			Diretor com Vínculo Empregatício,
/// 			Presidente com Vínculo Empregatício
    /// </summary>
    [NasajonSerializeAttribute('qualificacao')]
    property qualificacao: String read getQualificacao write setQualificacao;

    

end;

type TSociosAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Socio: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Cargo: String;
    var m_Pais: String;
    var m_UFCaixaPostal: String;
    var m_Identidade: String;
    var m_Documento: String;
    var m_Telefone: String;
    var m_Email: String;
    var m_Imprimir: Boolean;
    var m_IndicadorQualificacao: String;
    var m_Qualificacao: String;
    

    function getSocio(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCargo(): String;
    function getPais(): String;
    function getUFCaixaPostal(): String;
    function getIdentidade(): String;
    function getDocumento(): String;
    function getTelefone(): String;
    function getEmail(): String;
    function getImprimir(): Boolean;
    function getIndicadorQualificacao(): String;
    function getQualificacao(): String;
    

    procedure setSocio(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setPais(const a_Value: String);
    procedure setUFCaixaPostal(const a_Value: String);
    procedure setIdentidade(const a_Value: String);
    procedure setDocumento(const a_Value: String);
    procedure setTelefone(const a_Value: String);
    procedure setEmail(const a_Value: String);
    procedure setImprimir(const a_Value: Boolean);
    procedure setIndicadorQualificacao(const a_Value: String);
    procedure setQualificacao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('socio')]
    property socio: String read getSocio write setSocio;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('pais')]
    property pais: String read getPais write setPais;

    [NasajonSerializeAttribute('ufcaixapostal')]
    property ufcaixapostal: String read getUFCaixaPostal write setUFCaixaPostal;

    [NasajonSerializeAttribute('identidade')]
    property identidade: String read getIdentidade write setIdentidade;

    /// <summary>
/// Este campo aceita CPF ou CNPJ com ou sem mascara.
    /// </summary>
    [NasajonSerializeAttribute('documento')]
    property documento: String read getDocumento write setDocumento;

    [NasajonSerializeAttribute('telefone')]
    property telefone: String read getTelefone write setTelefone;

    [NasajonSerializeAttribute('email')]
    property email: String read getEmail write setEmail;

    /// <summary>
/// Define se o sócio será impresso nos relatórios
    /// </summary>
    [NasajonSerializeAttribute('imprimir')]
    property imprimir: Boolean read getImprimir write setImprimir;

    /// <summary>
/// Disponível para este campo os valores: Pessoa Física, Pessoa Jurídica, Fundo de Investimento
    /// </summary>
    [NasajonSerializeAttribute('indicadorqualificacao')]
    property indicadorqualificacao: String read getIndicadorQualificacao write setIndicadorQualificacao;

    /// <summary>
/// Disponível para este campo os valores: Acionista Pessoa Física Domiciliada no Brasil, 
/// 			Sócio Pessoa Física Domiciliado no Brasil, 
/// 			Acionista Pessoa Jurídica Domiciliado no Brasil, 
/// 			Sócio Pessoa Jurídica Domiciliado no Brasil, 
/// 			Sócio Pessoa Física Residente ou Domiciliado no Exterior, 
/// 			Acionista Pessoa Física Residente ou Domiciliado no Exterior, 
/// 			Acionista Pessoa Jurídica Residente ou Domiciliado no Exterior, 
/// 			Sócio Pessoa Jurídica Residente ou Domiciliado no Exterior, 
/// 			Titular, 
/// 			Administrador sem Vínculo Empregatício,
/// 			Diretor sem Vínculo Empregatício,
/// 			Presidente sem Vínculo Empregatício,
/// 			Administrador com Vínculo Empregatício,
/// 			Conselheiro de Administração ou Fiscal,
/// 			Diretor com Vínculo Empregatício,
/// 			Presidente com Vínculo Empregatício
    /// </summary>
    [NasajonSerializeAttribute('qualificacao')]
    property qualificacao: String read getQualificacao write setQualificacao;

    

end;

type TSociosExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Socio: String;
    var m_Empresa: String;
    

    function getSocio(): String;
    function getEmpresa(): String;
    

    procedure setSocio(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('socio')]
    property socio: String read getSocio write setSocio;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TSociosNovo.getIdSocio: String;
begin
  Result := Self.m_IdSocio;
end;

procedure TSociosNovo.setIdSocio(const a_Value: String);
begin
  Self.m_IdSocio := a_Value;
end;

function TSociosNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TSociosNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TSociosNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TSociosNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TSociosNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TSociosNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TSociosNovo.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TSociosNovo.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TSociosNovo.getPais: String;
begin
  Result := Self.m_Pais;
end;

procedure TSociosNovo.setPais(const a_Value: String);
begin
  Self.m_Pais := a_Value;
end;

function TSociosNovo.getUFCaixaPostal: String;
begin
  Result := Self.m_UFCaixaPostal;
end;

procedure TSociosNovo.setUFCaixaPostal(const a_Value: String);
begin
  Self.m_UFCaixaPostal := a_Value;
end;

function TSociosNovo.getIdentidade: String;
begin
  Result := Self.m_Identidade;
end;

procedure TSociosNovo.setIdentidade(const a_Value: String);
begin
  Self.m_Identidade := a_Value;
end;

function TSociosNovo.getDocumento: String;
begin
  Result := Self.m_Documento;
end;

procedure TSociosNovo.setDocumento(const a_Value: String);
begin
  Self.m_Documento := a_Value;
end;

function TSociosNovo.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TSociosNovo.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

function TSociosNovo.getEmail: String;
begin
  Result := Self.m_Email;
end;

procedure TSociosNovo.setEmail(const a_Value: String);
begin
  Self.m_Email := a_Value;
end;

function TSociosNovo.getImprimir: Boolean;
begin
  Result := Self.m_Imprimir;
end;

procedure TSociosNovo.setImprimir(const a_Value: Boolean);
begin
  Self.m_Imprimir := a_Value;
end;

function TSociosNovo.getIndicadorQualificacao: String;
begin
  Result := Self.m_IndicadorQualificacao;
end;

procedure TSociosNovo.setIndicadorQualificacao(const a_Value: String);
begin
  Self.m_IndicadorQualificacao := a_Value;
end;

function TSociosNovo.getQualificacao: String;
begin
  Result := Self.m_Qualificacao;
end;

procedure TSociosNovo.setQualificacao(const a_Value: String);
begin
  Self.m_Qualificacao := a_Value;
end;

destructor TSociosNovo.Destroy;
begin

end;

function TSociosNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSociosNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSociosNovo.getNameAPI(): String;
begin
  Result := 'SociosNovo';
end;

function TSociosNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSociosNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSociosAlterar.getSocio: String;
begin
  Result := Self.m_Socio;
end;

procedure TSociosAlterar.setSocio(const a_Value: String);
begin
  Self.m_Socio := a_Value;
end;

function TSociosAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TSociosAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TSociosAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TSociosAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TSociosAlterar.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TSociosAlterar.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TSociosAlterar.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TSociosAlterar.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TSociosAlterar.getPais: String;
begin
  Result := Self.m_Pais;
end;

procedure TSociosAlterar.setPais(const a_Value: String);
begin
  Self.m_Pais := a_Value;
end;

function TSociosAlterar.getUFCaixaPostal: String;
begin
  Result := Self.m_UFCaixaPostal;
end;

procedure TSociosAlterar.setUFCaixaPostal(const a_Value: String);
begin
  Self.m_UFCaixaPostal := a_Value;
end;

function TSociosAlterar.getIdentidade: String;
begin
  Result := Self.m_Identidade;
end;

procedure TSociosAlterar.setIdentidade(const a_Value: String);
begin
  Self.m_Identidade := a_Value;
end;

function TSociosAlterar.getDocumento: String;
begin
  Result := Self.m_Documento;
end;

procedure TSociosAlterar.setDocumento(const a_Value: String);
begin
  Self.m_Documento := a_Value;
end;

function TSociosAlterar.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TSociosAlterar.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

function TSociosAlterar.getEmail: String;
begin
  Result := Self.m_Email;
end;

procedure TSociosAlterar.setEmail(const a_Value: String);
begin
  Self.m_Email := a_Value;
end;

function TSociosAlterar.getImprimir: Boolean;
begin
  Result := Self.m_Imprimir;
end;

procedure TSociosAlterar.setImprimir(const a_Value: Boolean);
begin
  Self.m_Imprimir := a_Value;
end;

function TSociosAlterar.getIndicadorQualificacao: String;
begin
  Result := Self.m_IndicadorQualificacao;
end;

procedure TSociosAlterar.setIndicadorQualificacao(const a_Value: String);
begin
  Self.m_IndicadorQualificacao := a_Value;
end;

function TSociosAlterar.getQualificacao: String;
begin
  Result := Self.m_Qualificacao;
end;

procedure TSociosAlterar.setQualificacao(const a_Value: String);
begin
  Self.m_Qualificacao := a_Value;
end;

destructor TSociosAlterar.Destroy;
begin

end;

function TSociosAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSociosAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSociosAlterar.getNameAPI(): String;
begin
  Result := 'SociosAlterar';
end;

function TSociosAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSociosAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSociosExcluir.getSocio: String;
begin
  Result := Self.m_Socio;
end;

procedure TSociosExcluir.setSocio(const a_Value: String);
begin
  Self.m_Socio := a_Value;
end;

function TSociosExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TSociosExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TSociosExcluir.Destroy;
begin

end;

function TSociosExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSociosExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSociosExcluir.getNameAPI(): String;
begin
  Result := 'SociosExcluir';
end;

function TSociosExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSociosExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
