unit api.model.financas.ItemFatura;

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

type TItemFaturaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Id_fatura: String;
    var m_Id_docfis: String;
    

    function getId(): String;
    function getId_fatura(): String;
    function getId_docfis(): String;
    

    procedure setId(const a_Value: String);
    procedure setId_fatura(const a_Value: String);
    procedure setId_docfis(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('id_fatura')]
    property id_fatura: String read getId_fatura write setId_fatura;

    [NasajonSerializeAttribute('id_docfis')]
    property id_docfis: String read getId_docfis write setId_docfis;

    

end;

type TItemFaturaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    

    function getId(): String;
    

    procedure setId(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    

end;

	
implementation

  uses
      api.send;  

function TItemFaturaNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TItemFaturaNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TItemFaturaNovo.getId_fatura: String;
begin
  Result := Self.m_Id_fatura;
end;

procedure TItemFaturaNovo.setId_fatura(const a_Value: String);
begin
  Self.m_Id_fatura := a_Value;
end;

function TItemFaturaNovo.getId_docfis: String;
begin
  Result := Self.m_Id_docfis;
end;

procedure TItemFaturaNovo.setId_docfis(const a_Value: String);
begin
  Self.m_Id_docfis := a_Value;
end;

destructor TItemFaturaNovo.Destroy;
begin

end;

function TItemFaturaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemFaturaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemFaturaNovo.getNameAPI(): String;
begin
  Result := 'ItemFaturaNovo';
end;

function TItemFaturaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemFaturaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TItemFaturaExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TItemFaturaExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TItemFaturaExcluir.Destroy;
begin

end;

function TItemFaturaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemFaturaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemFaturaExcluir.getNameAPI(): String;
begin
  Result := 'ItemFaturaExcluir';
end;

function TItemFaturaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemFaturaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
