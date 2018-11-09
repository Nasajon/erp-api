unit api.model.ns.PendenciaAdministrativa;

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

type TPendenciaAdministrativaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Sistema: Integer;
    var m_Tipo: Integer;
    var m_Situacao: Integer;
    var m_LinkId: String;
    var m_LinkType: Integer;
    var m_CriadoPor: String;
    var m_ResolvidoPor: String;
    var m_DataResolucao: TDate;
    var m_Observacao: String;
    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_DataCriacao: TDate;
    

    function getId(): String;
    function getSistema(): Integer;
    function getTipo(): Integer;
    function getSituacao(): Integer;
    function getLinkId(): String;
    function getLinkType(): Integer;
    function getCriadoPor(): String;
    function getResolvidoPor(): String;
    function getDataResolucao(): TDate;
    function getObservacao(): String;
    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getDataCriacao(): TDate;
    

    procedure setId(const a_Value: String);
    procedure setSistema(const a_Value: Integer);
    procedure setTipo(const a_Value: Integer);
    procedure setSituacao(const a_Value: Integer);
    procedure setLinkId(const a_Value: String);
    procedure setLinkType(const a_Value: Integer);
    procedure setCriadoPor(const a_Value: String);
    procedure setResolvidoPor(const a_Value: String);
    procedure setDataResolucao(const a_Value: TDate);
    procedure setObservacao(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setDataCriacao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    /// <summary>
/// siGeral = 0
/// siPersona         = 1
/// siContabil        = 2
/// siScritta         = 3
/// siFinancas        = 4
/// siCRM             = 5
/// siEstoque         = 6
/// siServicos        = 7
/// siAdmin           = 8
/// siLauncher        = 9
/// siContabilizacao  = 10
/// siMANAD           = 11
/// siDIPJ            = 12
/// siDIRF            = 13
/// siSyncBrutus      = 14
/// siSyncDiretorio   = 15
/// siAgente          = 16
/// siSolicitacoes    = 17
/// siAPI             = 18
/// siLojaPDV         = 19
/// siECF             = 20
/// siFamilyOffice    = 21
/// siCompras         = 22
/// siServiceDocument = 23
    /// </summary>
    [NasajonSerializeAttribute('sistema')]
    property sistema: Integer read getSistema write setSistema;

    /// <summary>
/// Manual = 0 
/// Desprocessamento de Proposta = 1
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    /// <summary>
/// Pendente = 0
/// Resolvida = 1
    /// </summary>
    [NasajonSerializeAttribute('situacao')]
    property situacao: Integer read getSituacao write setSituacao;

    /// <summary>
/// Id da Entidade
    /// </summary>
    [NasajonSerializeAttribute('linkid')]
    property linkid: String read getLinkId write setLinkId;

    [NasajonSerializeAttribute('linktype')]
    property linktype: Integer read getLinkType write setLinkType;

    [NasajonSerializeAttribute('criadopor')]
    property criadopor: String read getCriadoPor write setCriadoPor;

    [NasajonSerializeAttribute('resolvidopor')]
    property resolvidopor: String read getResolvidoPor write setResolvidoPor;

    [NasajonSerializeAttribute('dataresolucao')]
    property dataresolucao: TDate read getDataResolucao write setDataResolucao;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('datacriacao')]
    property datacriacao: TDate read getDataCriacao write setDataCriacao;

    

end;

type TPendenciaAdministrativaResolver = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_ResolvidoPor: String;
    var m_DataResolucao: TDate;
    

    function getId(): String;
    function getResolvidoPor(): String;
    function getDataResolucao(): TDate;
    

    procedure setId(const a_Value: String);
    procedure setResolvidoPor(const a_Value: String);
    procedure setDataResolucao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('resolvidopor')]
    property resolvidopor: String read getResolvidoPor write setResolvidoPor;

    [NasajonSerializeAttribute('dataresolucao')]
    property dataresolucao: TDate read getDataResolucao write setDataResolucao;

    

end;

	
implementation

  uses
      api.send;  

function TPendenciaAdministrativaNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TPendenciaAdministrativaNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TPendenciaAdministrativaNovo.getSistema: Integer;
begin
  Result := Self.m_Sistema;
end;

procedure TPendenciaAdministrativaNovo.setSistema(const a_Value: Integer);
begin
  Self.m_Sistema := a_Value;
end;

function TPendenciaAdministrativaNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TPendenciaAdministrativaNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TPendenciaAdministrativaNovo.getSituacao: Integer;
begin
  Result := Self.m_Situacao;
end;

procedure TPendenciaAdministrativaNovo.setSituacao(const a_Value: Integer);
begin
  Self.m_Situacao := a_Value;
end;

function TPendenciaAdministrativaNovo.getLinkId: String;
begin
  Result := Self.m_LinkId;
end;

procedure TPendenciaAdministrativaNovo.setLinkId(const a_Value: String);
begin
  Self.m_LinkId := a_Value;
end;

function TPendenciaAdministrativaNovo.getLinkType: Integer;
begin
  Result := Self.m_LinkType;
end;

procedure TPendenciaAdministrativaNovo.setLinkType(const a_Value: Integer);
begin
  Self.m_LinkType := a_Value;
end;

function TPendenciaAdministrativaNovo.getCriadoPor: String;
begin
  Result := Self.m_CriadoPor;
end;

procedure TPendenciaAdministrativaNovo.setCriadoPor(const a_Value: String);
begin
  Self.m_CriadoPor := a_Value;
end;

function TPendenciaAdministrativaNovo.getResolvidoPor: String;
begin
  Result := Self.m_ResolvidoPor;
end;

procedure TPendenciaAdministrativaNovo.setResolvidoPor(const a_Value: String);
begin
  Self.m_ResolvidoPor := a_Value;
end;

function TPendenciaAdministrativaNovo.getDataResolucao: TDate;
begin
  Result := Self.m_DataResolucao;
end;

procedure TPendenciaAdministrativaNovo.setDataResolucao(const a_Value: TDate);
begin
  Self.m_DataResolucao := a_Value;
end;

function TPendenciaAdministrativaNovo.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TPendenciaAdministrativaNovo.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TPendenciaAdministrativaNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TPendenciaAdministrativaNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TPendenciaAdministrativaNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TPendenciaAdministrativaNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TPendenciaAdministrativaNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TPendenciaAdministrativaNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TPendenciaAdministrativaNovo.getDataCriacao: TDate;
begin
  Result := Self.m_DataCriacao;
end;

procedure TPendenciaAdministrativaNovo.setDataCriacao(const a_Value: TDate);
begin
  Self.m_DataCriacao := a_Value;
end;

destructor TPendenciaAdministrativaNovo.Destroy;
begin

end;

function TPendenciaAdministrativaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPendenciaAdministrativaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPendenciaAdministrativaNovo.getNameAPI(): String;
begin
  Result := 'PendenciaAdministrativaNovo';
end;

function TPendenciaAdministrativaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPendenciaAdministrativaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TPendenciaAdministrativaResolver.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TPendenciaAdministrativaResolver.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TPendenciaAdministrativaResolver.getResolvidoPor: String;
begin
  Result := Self.m_ResolvidoPor;
end;

procedure TPendenciaAdministrativaResolver.setResolvidoPor(const a_Value: String);
begin
  Self.m_ResolvidoPor := a_Value;
end;

function TPendenciaAdministrativaResolver.getDataResolucao: TDate;
begin
  Result := Self.m_DataResolucao;
end;

procedure TPendenciaAdministrativaResolver.setDataResolucao(const a_Value: TDate);
begin
  Self.m_DataResolucao := a_Value;
end;

destructor TPendenciaAdministrativaResolver.Destroy;
begin

end;

function TPendenciaAdministrativaResolver.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPendenciaAdministrativaResolver.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPendenciaAdministrativaResolver.getNameAPI(): String;
begin
  Result := 'PendenciaAdministrativaResolver';
end;

function TPendenciaAdministrativaResolver.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPendenciaAdministrativaResolver.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
