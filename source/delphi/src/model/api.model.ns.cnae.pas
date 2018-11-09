unit api.model.ns.CNAE;

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

type TCNAENovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Codigo: String;
    var m_Descricao: String;
    var m_CodigoPai: String;
    

    function getCodigo(): String;
    function getDescricao(): String;
    function getCodigoPai(): String;
    

    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setCodigoPai(const a_Value: String);
    

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

    [NasajonSerializeAttribute('codigopai')]
    property codigopai: String read getCodigoPai write setCodigoPai;

    

end;

type TCNAEAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Codigo: String;
    var m_Descricao: String;
    var m_CodigoPai: String;
    

    function getCodigo(): String;
    function getDescricao(): String;
    function getCodigoPai(): String;
    

    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setCodigoPai(const a_Value: String);
    

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

    [NasajonSerializeAttribute('codigopai')]
    property codigopai: String read getCodigoPai write setCodigoPai;

    

end;

type TCNAEExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TCNAENovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TCNAENovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TCNAENovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TCNAENovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TCNAENovo.getCodigoPai: String;
begin
  Result := Self.m_CodigoPai;
end;

procedure TCNAENovo.setCodigoPai(const a_Value: String);
begin
  Self.m_CodigoPai := a_Value;
end;

destructor TCNAENovo.Destroy;
begin

end;

function TCNAENovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCNAENovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCNAENovo.getNameAPI(): String;
begin
  Result := 'CNAENovo';
end;

function TCNAENovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCNAENovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCNAEAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TCNAEAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TCNAEAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TCNAEAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TCNAEAlterar.getCodigoPai: String;
begin
  Result := Self.m_CodigoPai;
end;

procedure TCNAEAlterar.setCodigoPai(const a_Value: String);
begin
  Self.m_CodigoPai := a_Value;
end;

destructor TCNAEAlterar.Destroy;
begin

end;

function TCNAEAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCNAEAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCNAEAlterar.getNameAPI(): String;
begin
  Result := 'CNAEAlterar';
end;

function TCNAEAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCNAEAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCNAEExcluir.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TCNAEExcluir.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

destructor TCNAEExcluir.Destroy;
begin

end;

function TCNAEExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCNAEExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCNAEExcluir.getNameAPI(): String;
begin
  Result := 'CNAEExcluir';
end;

function TCNAEExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCNAEExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
