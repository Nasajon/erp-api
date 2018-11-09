unit api.model.financas.ItemPrestacaoDeConta;

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

type TItemPrestacaoDeContaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ID: String;
    var m_ID_PrestacaoDeConta: String;
    var m_ID_Titulo: String;
    

    function getID(): String;
    function getID_PrestacaoDeConta(): String;
    function getID_Titulo(): String;
    

    procedure setID(const a_Value: String);
    procedure setID_PrestacaoDeConta(const a_Value: String);
    procedure setID_Titulo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getID write setID;

    [NasajonSerializeAttribute('id_prestacaodeconta')]
    property id_prestacaodeconta: String read getID_PrestacaoDeConta write setID_PrestacaoDeConta;

    [NasajonSerializeAttribute('id_titulo')]
    property id_titulo: String read getID_Titulo write setID_Titulo;

    

end;

	
implementation

  uses
      api.send;  

function TItemPrestacaoDeContaNovo.getID: String;
begin
  Result := Self.m_ID;
end;

procedure TItemPrestacaoDeContaNovo.setID(const a_Value: String);
begin
  Self.m_ID := a_Value;
end;

function TItemPrestacaoDeContaNovo.getID_PrestacaoDeConta: String;
begin
  Result := Self.m_ID_PrestacaoDeConta;
end;

procedure TItemPrestacaoDeContaNovo.setID_PrestacaoDeConta(const a_Value: String);
begin
  Self.m_ID_PrestacaoDeConta := a_Value;
end;

function TItemPrestacaoDeContaNovo.getID_Titulo: String;
begin
  Result := Self.m_ID_Titulo;
end;

procedure TItemPrestacaoDeContaNovo.setID_Titulo(const a_Value: String);
begin
  Self.m_ID_Titulo := a_Value;
end;

destructor TItemPrestacaoDeContaNovo.Destroy;
begin

end;

function TItemPrestacaoDeContaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemPrestacaoDeContaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemPrestacaoDeContaNovo.getNameAPI(): String;
begin
  Result := 'ItemPrestacaoDeContaNovo';
end;

function TItemPrestacaoDeContaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemPrestacaoDeContaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
