unit api.model.persona.NaturezaJuridica;

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

type TNaturezaJuridicaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

type TNaturezaJuridicaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

type TNaturezaJuridicaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TNaturezaJuridicaNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TNaturezaJuridicaNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TNaturezaJuridicaNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TNaturezaJuridicaNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TNaturezaJuridicaNovo.Destroy;
begin

end;

function TNaturezaJuridicaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TNaturezaJuridicaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TNaturezaJuridicaNovo.getNameAPI(): String;
begin
  Result := 'NaturezaJuridicaNovo';
end;

function TNaturezaJuridicaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TNaturezaJuridicaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TNaturezaJuridicaAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TNaturezaJuridicaAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TNaturezaJuridicaAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TNaturezaJuridicaAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TNaturezaJuridicaAlterar.Destroy;
begin

end;

function TNaturezaJuridicaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TNaturezaJuridicaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TNaturezaJuridicaAlterar.getNameAPI(): String;
begin
  Result := 'NaturezaJuridicaAlterar';
end;

function TNaturezaJuridicaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TNaturezaJuridicaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TNaturezaJuridicaExcluir.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TNaturezaJuridicaExcluir.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

destructor TNaturezaJuridicaExcluir.Destroy;
begin

end;

function TNaturezaJuridicaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TNaturezaJuridicaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TNaturezaJuridicaExcluir.getNameAPI(): String;
begin
  Result := 'NaturezaJuridicaExcluir';
end;

function TNaturezaJuridicaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TNaturezaJuridicaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
