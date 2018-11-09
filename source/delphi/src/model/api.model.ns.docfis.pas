unit api.model.ns.DocFis;

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

type TDocFisprocessarXML = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_XML: WideString;
    

    function getXML(): WideString;
    

    procedure setXML(const a_Value: WideString);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('xml')]
    property xml: WideString read getXML write setXML;

    

end;

	
implementation

  uses
      api.send;  

function TDocFisprocessarXML.getXML: WideString;
begin
  Result := Self.m_XML;
end;

procedure TDocFisprocessarXML.setXML(const a_Value: WideString);
begin
  Self.m_XML := a_Value;
end;

destructor TDocFisprocessarXML.Destroy;
begin

end;

function TDocFisprocessarXML.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocFisprocessarXML.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocFisprocessarXML.getNameAPI(): String;
begin
  Result := 'DocFisprocessarXML';
end;

function TDocFisprocessarXML.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocFisprocessarXML.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
