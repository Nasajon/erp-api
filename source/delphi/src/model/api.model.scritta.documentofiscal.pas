unit api.model.scritta.DocumentoFiscal;

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

type TDocumentoFiscalCancelar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    

    function getid(): String;
    

    procedure setid(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    

end;

	
implementation

  uses
      api.send;  

function TDocumentoFiscalCancelar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TDocumentoFiscalCancelar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

destructor TDocumentoFiscalCancelar.Destroy;
begin

end;

function TDocumentoFiscalCancelar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocumentoFiscalCancelar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocumentoFiscalCancelar.getNameAPI(): String;
begin
  Result := 'DocumentoFiscalCancelar';
end;

function TDocumentoFiscalCancelar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocumentoFiscalCancelar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
