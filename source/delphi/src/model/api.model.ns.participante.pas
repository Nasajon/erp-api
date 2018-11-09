unit api.model.ns.Participante;

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

type TParticipanteRecuperar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_identificador: String;
    

    function getidentificador(): String;
    

    procedure setidentificador(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('identificador')]
    property identificador: String read getidentificador write setidentificador;

    

end;

	
implementation

  uses
      api.send;  

function TParticipanteRecuperar.getidentificador: String;
begin
  Result := Self.m_identificador;
end;

procedure TParticipanteRecuperar.setidentificador(const a_Value: String);
begin
  Self.m_identificador := a_Value;
end;

destructor TParticipanteRecuperar.Destroy;
begin

end;

function TParticipanteRecuperar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TParticipanteRecuperar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TParticipanteRecuperar.getNameAPI(): String;
begin
  Result := 'ParticipanteRecuperar';
end;

function TParticipanteRecuperar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TParticipanteRecuperar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
