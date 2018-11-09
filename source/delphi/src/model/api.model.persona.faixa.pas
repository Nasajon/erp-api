unit api.model.persona.Faixa;

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

type TFaixaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdFaixa: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getIdFaixa(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setIdFaixa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idfaixa')]
    property idfaixa: String read getIdFaixa write setIdFaixa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TFaixaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Faixa: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getFaixa(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setFaixa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('faixa')]
    property faixa: String read getFaixa write setFaixa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TFaixaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Faixa: String;
    

    function getFaixa(): String;
    

    procedure setFaixa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('faixa')]
    property faixa: String read getFaixa write setFaixa;

    

end;

	
implementation

  uses
      api.send;  

function TFaixaNovo.getIdFaixa: String;
begin
  Result := Self.m_IdFaixa;
end;

procedure TFaixaNovo.setIdFaixa(const a_Value: String);
begin
  Self.m_IdFaixa := a_Value;
end;

function TFaixaNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TFaixaNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TFaixaNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TFaixaNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TFaixaNovo.Destroy;
begin

end;

function TFaixaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFaixaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFaixaNovo.getNameAPI(): String;
begin
  Result := 'FaixaNovo';
end;

function TFaixaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFaixaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFaixaAlterar.getFaixa: String;
begin
  Result := Self.m_Faixa;
end;

procedure TFaixaAlterar.setFaixa(const a_Value: String);
begin
  Self.m_Faixa := a_Value;
end;

function TFaixaAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TFaixaAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TFaixaAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TFaixaAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TFaixaAlterar.Destroy;
begin

end;

function TFaixaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFaixaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFaixaAlterar.getNameAPI(): String;
begin
  Result := 'FaixaAlterar';
end;

function TFaixaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFaixaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFaixaExcluir.getFaixa: String;
begin
  Result := Self.m_Faixa;
end;

procedure TFaixaExcluir.setFaixa(const a_Value: String);
begin
  Self.m_Faixa := a_Value;
end;

destructor TFaixaExcluir.Destroy;
begin

end;

function TFaixaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFaixaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFaixaExcluir.getNameAPI(): String;
begin
  Result := 'FaixaExcluir';
end;

function TFaixaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFaixaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
