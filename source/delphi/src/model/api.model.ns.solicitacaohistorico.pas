unit api.model.ns.SolicitacaoHistorico;

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

type TSolicitacaoHistorico = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_SolicitacaoHistorico: String;
    var m_Solicitacao: String;
    var m_Usuario: String;
    var m_Comentario: String;
    var m_Data: String;
    var m_Status: Integer;
    var m_UsuarioDestino: String;
    

    function getSolicitacaoHistorico(): String;
    function getSolicitacao(): String;
    function getUsuario(): String;
    function getComentario(): String;
    function getData(): String;
    function getStatus(): Integer;
    function getUsuarioDestino(): String;
    

    procedure setSolicitacaoHistorico(const a_Value: String);
    procedure setSolicitacao(const a_Value: String);
    procedure setUsuario(const a_Value: String);
    procedure setComentario(const a_Value: String);
    procedure setData(const a_Value: String);
    procedure setStatus(const a_Value: Integer);
    procedure setUsuarioDestino(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('solicitacaohistorico')]
    property solicitacaohistorico: String read getSolicitacaoHistorico write setSolicitacaoHistorico;

    [NasajonSerializeAttribute('solicitacao')]
    property solicitacao: String read getSolicitacao write setSolicitacao;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('comentario')]
    property comentario: String read getComentario write setComentario;

    [NasajonSerializeAttribute('data')]
    property data: String read getData write setData;

    [NasajonSerializeAttribute('status')]
    property status: Integer read getStatus write setStatus;

    [NasajonSerializeAttribute('usuariodestino')]
    property usuariodestino: String read getUsuarioDestino write setUsuarioDestino;

    

end;

	
implementation

  uses
      api.send;  

function TSolicitacaoHistorico.getSolicitacaoHistorico: String;
begin
  Result := Self.m_SolicitacaoHistorico;
end;

procedure TSolicitacaoHistorico.setSolicitacaoHistorico(const a_Value: String);
begin
  Self.m_SolicitacaoHistorico := a_Value;
end;

function TSolicitacaoHistorico.getSolicitacao: String;
begin
  Result := Self.m_Solicitacao;
end;

procedure TSolicitacaoHistorico.setSolicitacao(const a_Value: String);
begin
  Self.m_Solicitacao := a_Value;
end;

function TSolicitacaoHistorico.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TSolicitacaoHistorico.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TSolicitacaoHistorico.getComentario: String;
begin
  Result := Self.m_Comentario;
end;

procedure TSolicitacaoHistorico.setComentario(const a_Value: String);
begin
  Self.m_Comentario := a_Value;
end;

function TSolicitacaoHistorico.getData: String;
begin
  Result := Self.m_Data;
end;

procedure TSolicitacaoHistorico.setData(const a_Value: String);
begin
  Self.m_Data := a_Value;
end;

function TSolicitacaoHistorico.getStatus: Integer;
begin
  Result := Self.m_Status;
end;

procedure TSolicitacaoHistorico.setStatus(const a_Value: Integer);
begin
  Self.m_Status := a_Value;
end;

function TSolicitacaoHistorico.getUsuarioDestino: String;
begin
  Result := Self.m_UsuarioDestino;
end;

procedure TSolicitacaoHistorico.setUsuarioDestino(const a_Value: String);
begin
  Self.m_UsuarioDestino := a_Value;
end;

destructor TSolicitacaoHistorico.Destroy;
begin

end;

function TSolicitacaoHistorico.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSolicitacaoHistorico.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSolicitacaoHistorico.getNameAPI(): String;
begin
  Result := 'SolicitacaoHistorico';
end;

function TSolicitacaoHistorico.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSolicitacaoHistorico.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
