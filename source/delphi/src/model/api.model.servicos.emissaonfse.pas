unit api.model.servicos.EmissaoNFSe;

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

type TEmissaoNFSeEmitir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_AtributoEstabelecimento: String;
    var m_AtributoRPS: String;
    var m_AtributoSerie: String;
    var m_AtributoCertificado: String;
    var m_AtributoUsuario: String;
    

    function getAtributoEstabelecimento(): String;
    function getAtributoRPS(): String;
    function getAtributoSerie(): String;
    function getAtributoCertificado(): String;
    function getAtributoUsuario(): String;
    

    procedure setAtributoEstabelecimento(const a_Value: String);
    procedure setAtributoRPS(const a_Value: String);
    procedure setAtributoSerie(const a_Value: String);
    procedure setAtributoCertificado(const a_Value: String);
    procedure setAtributoUsuario(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('atributoestabelecimento')]
    property atributoestabelecimento: String read getAtributoEstabelecimento write setAtributoEstabelecimento;

    [NasajonSerializeAttribute('atributorps')]
    property atributorps: String read getAtributoRPS write setAtributoRPS;

    [NasajonSerializeAttribute('atributoserie')]
    property atributoserie: String read getAtributoSerie write setAtributoSerie;

    [NasajonSerializeAttribute('atributocertificado')]
    property atributocertificado: String read getAtributoCertificado write setAtributoCertificado;

    [NasajonSerializeAttribute('atributousuario')]
    property atributousuario: String read getAtributoUsuario write setAtributoUsuario;

    

end;

type TEmissaoNFSeConsultar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_AtributoEstabelecimento: String;
    var m_AtributoRPS: String;
    var m_AtributoSerie: String;
    var m_AtributoCertificado: String;
    var m_AtributoUsuario: String;
    

    function getAtributoEstabelecimento(): String;
    function getAtributoRPS(): String;
    function getAtributoSerie(): String;
    function getAtributoCertificado(): String;
    function getAtributoUsuario(): String;
    

    procedure setAtributoEstabelecimento(const a_Value: String);
    procedure setAtributoRPS(const a_Value: String);
    procedure setAtributoSerie(const a_Value: String);
    procedure setAtributoCertificado(const a_Value: String);
    procedure setAtributoUsuario(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('atributoestabelecimento')]
    property atributoestabelecimento: String read getAtributoEstabelecimento write setAtributoEstabelecimento;

    [NasajonSerializeAttribute('atributorps')]
    property atributorps: String read getAtributoRPS write setAtributoRPS;

    [NasajonSerializeAttribute('atributoserie')]
    property atributoserie: String read getAtributoSerie write setAtributoSerie;

    [NasajonSerializeAttribute('atributocertificado')]
    property atributocertificado: String read getAtributoCertificado write setAtributoCertificado;

    [NasajonSerializeAttribute('atributousuario')]
    property atributousuario: String read getAtributoUsuario write setAtributoUsuario;

    

end;

type TEmissaoNFSeCancelar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_AtributoEstabelecimento: String;
    var m_AtributoRPS: String;
    var m_AtributoSerie: String;
    var m_AtributoMotivo: String;
    var m_AtributoCodigoMotivo: Integer;
    var m_AtributoCertificado: String;
    var m_AtributoUsuario: String;
    

    function getAtributoEstabelecimento(): String;
    function getAtributoRPS(): String;
    function getAtributoSerie(): String;
    function getAtributoMotivo(): String;
    function getAtributoCodigoMotivo(): Integer;
    function getAtributoCertificado(): String;
    function getAtributoUsuario(): String;
    

    procedure setAtributoEstabelecimento(const a_Value: String);
    procedure setAtributoRPS(const a_Value: String);
    procedure setAtributoSerie(const a_Value: String);
    procedure setAtributoMotivo(const a_Value: String);
    procedure setAtributoCodigoMotivo(const a_Value: Integer);
    procedure setAtributoCertificado(const a_Value: String);
    procedure setAtributoUsuario(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('atributoestabelecimento')]
    property atributoestabelecimento: String read getAtributoEstabelecimento write setAtributoEstabelecimento;

    [NasajonSerializeAttribute('atributorps')]
    property atributorps: String read getAtributoRPS write setAtributoRPS;

    [NasajonSerializeAttribute('atributoserie')]
    property atributoserie: String read getAtributoSerie write setAtributoSerie;

    [NasajonSerializeAttribute('atributomotivo')]
    property atributomotivo: String read getAtributoMotivo write setAtributoMotivo;

    /// <summary>
/// Indica o Código do Motivo de cancelamento.
///                                              1 - Erro na emissão,
///                                              2 - Serviço não prestado,
///                                              3 - Duplicidade da nota,
///                                              9 - Outros
    /// </summary>
    [NasajonSerializeAttribute('atributocodigomotivo')]
    property atributocodigomotivo: Integer read getAtributoCodigoMotivo write setAtributoCodigoMotivo;

    [NasajonSerializeAttribute('atributocertificado')]
    property atributocertificado: String read getAtributoCertificado write setAtributoCertificado;

    [NasajonSerializeAttribute('atributousuario')]
    property atributousuario: String read getAtributoUsuario write setAtributoUsuario;

    

end;

	
implementation

  uses
      api.send;  

function TEmissaoNFSeEmitir.getAtributoEstabelecimento: String;
begin
  Result := Self.m_AtributoEstabelecimento;
end;

procedure TEmissaoNFSeEmitir.setAtributoEstabelecimento(const a_Value: String);
begin
  Self.m_AtributoEstabelecimento := a_Value;
end;

function TEmissaoNFSeEmitir.getAtributoRPS: String;
begin
  Result := Self.m_AtributoRPS;
end;

procedure TEmissaoNFSeEmitir.setAtributoRPS(const a_Value: String);
begin
  Self.m_AtributoRPS := a_Value;
end;

function TEmissaoNFSeEmitir.getAtributoSerie: String;
begin
  Result := Self.m_AtributoSerie;
end;

procedure TEmissaoNFSeEmitir.setAtributoSerie(const a_Value: String);
begin
  Self.m_AtributoSerie := a_Value;
end;

function TEmissaoNFSeEmitir.getAtributoCertificado: String;
begin
  Result := Self.m_AtributoCertificado;
end;

procedure TEmissaoNFSeEmitir.setAtributoCertificado(const a_Value: String);
begin
  Self.m_AtributoCertificado := a_Value;
end;

function TEmissaoNFSeEmitir.getAtributoUsuario: String;
begin
  Result := Self.m_AtributoUsuario;
end;

procedure TEmissaoNFSeEmitir.setAtributoUsuario(const a_Value: String);
begin
  Self.m_AtributoUsuario := a_Value;
end;

destructor TEmissaoNFSeEmitir.Destroy;
begin

end;

function TEmissaoNFSeEmitir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEmissaoNFSeEmitir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEmissaoNFSeEmitir.getNameAPI(): String;
begin
  Result := 'EmissaoNFSeEmitir';
end;

function TEmissaoNFSeEmitir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEmissaoNFSeEmitir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEmissaoNFSeConsultar.getAtributoEstabelecimento: String;
begin
  Result := Self.m_AtributoEstabelecimento;
end;

procedure TEmissaoNFSeConsultar.setAtributoEstabelecimento(const a_Value: String);
begin
  Self.m_AtributoEstabelecimento := a_Value;
end;

function TEmissaoNFSeConsultar.getAtributoRPS: String;
begin
  Result := Self.m_AtributoRPS;
end;

procedure TEmissaoNFSeConsultar.setAtributoRPS(const a_Value: String);
begin
  Self.m_AtributoRPS := a_Value;
end;

function TEmissaoNFSeConsultar.getAtributoSerie: String;
begin
  Result := Self.m_AtributoSerie;
end;

procedure TEmissaoNFSeConsultar.setAtributoSerie(const a_Value: String);
begin
  Self.m_AtributoSerie := a_Value;
end;

function TEmissaoNFSeConsultar.getAtributoCertificado: String;
begin
  Result := Self.m_AtributoCertificado;
end;

procedure TEmissaoNFSeConsultar.setAtributoCertificado(const a_Value: String);
begin
  Self.m_AtributoCertificado := a_Value;
end;

function TEmissaoNFSeConsultar.getAtributoUsuario: String;
begin
  Result := Self.m_AtributoUsuario;
end;

procedure TEmissaoNFSeConsultar.setAtributoUsuario(const a_Value: String);
begin
  Self.m_AtributoUsuario := a_Value;
end;

destructor TEmissaoNFSeConsultar.Destroy;
begin

end;

function TEmissaoNFSeConsultar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEmissaoNFSeConsultar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEmissaoNFSeConsultar.getNameAPI(): String;
begin
  Result := 'EmissaoNFSeConsultar';
end;

function TEmissaoNFSeConsultar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEmissaoNFSeConsultar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEmissaoNFSeCancelar.getAtributoEstabelecimento: String;
begin
  Result := Self.m_AtributoEstabelecimento;
end;

procedure TEmissaoNFSeCancelar.setAtributoEstabelecimento(const a_Value: String);
begin
  Self.m_AtributoEstabelecimento := a_Value;
end;

function TEmissaoNFSeCancelar.getAtributoRPS: String;
begin
  Result := Self.m_AtributoRPS;
end;

procedure TEmissaoNFSeCancelar.setAtributoRPS(const a_Value: String);
begin
  Self.m_AtributoRPS := a_Value;
end;

function TEmissaoNFSeCancelar.getAtributoSerie: String;
begin
  Result := Self.m_AtributoSerie;
end;

procedure TEmissaoNFSeCancelar.setAtributoSerie(const a_Value: String);
begin
  Self.m_AtributoSerie := a_Value;
end;

function TEmissaoNFSeCancelar.getAtributoMotivo: String;
begin
  Result := Self.m_AtributoMotivo;
end;

procedure TEmissaoNFSeCancelar.setAtributoMotivo(const a_Value: String);
begin
  Self.m_AtributoMotivo := a_Value;
end;

function TEmissaoNFSeCancelar.getAtributoCodigoMotivo: Integer;
begin
  Result := Self.m_AtributoCodigoMotivo;
end;

procedure TEmissaoNFSeCancelar.setAtributoCodigoMotivo(const a_Value: Integer);
begin
  Self.m_AtributoCodigoMotivo := a_Value;
end;

function TEmissaoNFSeCancelar.getAtributoCertificado: String;
begin
  Result := Self.m_AtributoCertificado;
end;

procedure TEmissaoNFSeCancelar.setAtributoCertificado(const a_Value: String);
begin
  Self.m_AtributoCertificado := a_Value;
end;

function TEmissaoNFSeCancelar.getAtributoUsuario: String;
begin
  Result := Self.m_AtributoUsuario;
end;

procedure TEmissaoNFSeCancelar.setAtributoUsuario(const a_Value: String);
begin
  Self.m_AtributoUsuario := a_Value;
end;

destructor TEmissaoNFSeCancelar.Destroy;
begin

end;

function TEmissaoNFSeCancelar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEmissaoNFSeCancelar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEmissaoNFSeCancelar.getNameAPI(): String;
begin
  Result := 'EmissaoNFSeCancelar';
end;

function TEmissaoNFSeCancelar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEmissaoNFSeCancelar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
