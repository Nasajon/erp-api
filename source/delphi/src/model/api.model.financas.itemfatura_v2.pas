unit api.model.financas.ItemFatura_v2;

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
	
  , api.model.ns.documentofiscalNs
	

	;

type TItemFatura_v2 = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ItemFatura: String;
    var m_Fatura: String;
    var m_DocumentoFiscal: TDocumentoFiscalNs;
    

    function getItemFatura(): String;
    function getFatura(): String;
    function getDocumentoFiscal(): TDocumentoFiscalNs;
    

    procedure setItemFatura(const a_Value: String);
    procedure setFatura(const a_Value: String);
    procedure setDocumentoFiscal(const a_Value: TDocumentoFiscalNs);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('itemfatura')]
    property itemfatura: String read getItemFatura write setItemFatura;

    [NasajonSerializeAttribute('fatura')]
    property fatura: String read getFatura write setFatura;

    [NasajonSerializeAttribute('documentofiscal')]
    property documentofiscal: TDocumentoFiscalNs read getDocumentoFiscal write setDocumentoFiscal;

    

end;

type TItemFatura_v2Novo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ItemFatura: String;
    var m_Fatura: String;
    var m_DocumentoFiscal: TDocumentoFiscalNs;
    

    function getItemFatura(): String;
    function getFatura(): String;
    function getDocumentoFiscal(): TDocumentoFiscalNs;
    

    procedure setItemFatura(const a_Value: String);
    procedure setFatura(const a_Value: String);
    procedure setDocumentoFiscal(const a_Value: TDocumentoFiscalNs);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('itemfatura')]
    property itemfatura: String read getItemFatura write setItemFatura;

    [NasajonSerializeAttribute('fatura')]
    property fatura: String read getFatura write setFatura;

    [NasajonSerializeAttribute('documentofiscal')]
    property documentofiscal: TDocumentoFiscalNs read getDocumentoFiscal write setDocumentoFiscal;

    

end;

type TItemFatura_v2Excluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ItemFatura: String;
    var m_Fatura: String;
    var m_DocumentoFiscal: TDocumentoFiscalNs;
    

    function getItemFatura(): String;
    function getFatura(): String;
    function getDocumentoFiscal(): TDocumentoFiscalNs;
    

    procedure setItemFatura(const a_Value: String);
    procedure setFatura(const a_Value: String);
    procedure setDocumentoFiscal(const a_Value: TDocumentoFiscalNs);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Não é requerido pois o registro poderá ser encontrado pelos campos fatura e documentofiscal.
    /// </summary>
    [NasajonSerializeAttribute('itemfatura')]
    property itemfatura: String read getItemFatura write setItemFatura;

    /// <summary>
/// Não é requerido pois o registro poderá ser encontrado pelo campo ItemFatura.
    /// </summary>
    [NasajonSerializeAttribute('fatura')]
    property fatura: String read getFatura write setFatura;

    /// <summary>
/// Não é requerido pois o registro poderá ser encontrado pelo campo ItemFatura.
    /// </summary>
    [NasajonSerializeAttribute('documentofiscal')]
    property documentofiscal: TDocumentoFiscalNs read getDocumentoFiscal write setDocumentoFiscal;

    

end;

	
implementation

  uses
      api.send;  

function TItemFatura_v2.getItemFatura: String;
begin
  Result := Self.m_ItemFatura;
end;

procedure TItemFatura_v2.setItemFatura(const a_Value: String);
begin
  Self.m_ItemFatura := a_Value;
end;

function TItemFatura_v2.getFatura: String;
begin
  Result := Self.m_Fatura;
end;

procedure TItemFatura_v2.setFatura(const a_Value: String);
begin
  Self.m_Fatura := a_Value;
end;

function TItemFatura_v2.getDocumentoFiscal: TDocumentoFiscalNs;
begin
  if not Assigned(Self.m_DocumentoFiscal)
    then Self.m_DocumentoFiscal := TDocumentoFiscalNs.Create();
  Result := Self.m_DocumentoFiscal;
end;

procedure TItemFatura_v2.setDocumentoFiscal(const a_Value: TDocumentoFiscalNs);
begin
  Self.m_DocumentoFiscal := a_Value;
end;

destructor TItemFatura_v2.Destroy;
begin
  Self.DocumentoFiscal.Free();
end;

function TItemFatura_v2.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemFatura_v2.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemFatura_v2.getNameAPI(): String;
begin
  Result := 'ItemFatura_v2';
end;

function TItemFatura_v2.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemFatura_v2.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TItemFatura_v2Novo.getItemFatura: String;
begin
  Result := Self.m_ItemFatura;
end;

procedure TItemFatura_v2Novo.setItemFatura(const a_Value: String);
begin
  Self.m_ItemFatura := a_Value;
end;

function TItemFatura_v2Novo.getFatura: String;
begin
  Result := Self.m_Fatura;
end;

procedure TItemFatura_v2Novo.setFatura(const a_Value: String);
begin
  Self.m_Fatura := a_Value;
end;

function TItemFatura_v2Novo.getDocumentoFiscal: TDocumentoFiscalNs;
begin
  if not Assigned(Self.m_DocumentoFiscal)
    then Self.m_DocumentoFiscal := TDocumentoFiscalNs.Create();
  Result := Self.m_DocumentoFiscal;
end;

procedure TItemFatura_v2Novo.setDocumentoFiscal(const a_Value: TDocumentoFiscalNs);
begin
  Self.m_DocumentoFiscal := a_Value;
end;

destructor TItemFatura_v2Novo.Destroy;
begin
  Self.DocumentoFiscal.Free();
end;

function TItemFatura_v2Novo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemFatura_v2Novo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemFatura_v2Novo.getNameAPI(): String;
begin
  Result := 'ItemFatura_v2Novo';
end;

function TItemFatura_v2Novo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemFatura_v2Novo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TItemFatura_v2Excluir.getItemFatura: String;
begin
  Result := Self.m_ItemFatura;
end;

procedure TItemFatura_v2Excluir.setItemFatura(const a_Value: String);
begin
  Self.m_ItemFatura := a_Value;
end;

function TItemFatura_v2Excluir.getFatura: String;
begin
  Result := Self.m_Fatura;
end;

procedure TItemFatura_v2Excluir.setFatura(const a_Value: String);
begin
  Self.m_Fatura := a_Value;
end;

function TItemFatura_v2Excluir.getDocumentoFiscal: TDocumentoFiscalNs;
begin
  if not Assigned(Self.m_DocumentoFiscal)
    then Self.m_DocumentoFiscal := TDocumentoFiscalNs.Create();
  Result := Self.m_DocumentoFiscal;
end;

procedure TItemFatura_v2Excluir.setDocumentoFiscal(const a_Value: TDocumentoFiscalNs);
begin
  Self.m_DocumentoFiscal := a_Value;
end;

destructor TItemFatura_v2Excluir.Destroy;
begin
  Self.DocumentoFiscal.Free();
end;

function TItemFatura_v2Excluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemFatura_v2Excluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemFatura_v2Excluir.getNameAPI(): String;
begin
  Result := 'ItemFatura_v2Excluir';
end;

function TItemFatura_v2Excluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemFatura_v2Excluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
