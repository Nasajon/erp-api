unit api.model.persona.FPAS;

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

type TFPASNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Codigo: String;
    var m_Descricao: String;
    

    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TFPASAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Codigo: String;
    var m_Descricao: String;
    

    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TFPASExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Codigo: String;
    

    function getCodigo(): String;
    

    procedure setCodigo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    

end;

	
implementation

  uses
      api.send;  

function TFPASNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TFPASNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TFPASNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TFPASNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TFPASNovo.Destroy;
begin

end;

function TFPASNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFPASNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFPASNovo.getNameAPI(): String;
begin
  Result := 'FPASNovo';
end;

function TFPASNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFPASNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFPASAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TFPASAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TFPASAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TFPASAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TFPASAlterar.Destroy;
begin

end;

function TFPASAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFPASAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFPASAlterar.getNameAPI(): String;
begin
  Result := 'FPASAlterar';
end;

function TFPASAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFPASAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFPASExcluir.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TFPASExcluir.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

destructor TFPASExcluir.Destroy;
begin

end;

function TFPASExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFPASExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFPASExcluir.getNameAPI(): String;
begin
  Result := 'FPASExcluir';
end;

function TFPASExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFPASExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
