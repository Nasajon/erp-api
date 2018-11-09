unit api.model.financas.TipoConta;

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

type TTipoContaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoConta: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getTipoConta(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setTipoConta(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tipoconta')]
    property tipoconta: String read getTipoConta write setTipoConta;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TTipoContaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoConta: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getTipoConta(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setTipoConta(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tipoconta')]
    property tipoconta: String read getTipoConta write setTipoConta;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TTipoContaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoConta: String;
    

    function getTipoConta(): String;
    

    procedure setTipoConta(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tipoconta')]
    property tipoconta: String read getTipoConta write setTipoConta;

    

end;

	
implementation

  uses
      api.send;  

function TTipoContaNovo.getTipoConta: String;
begin
  Result := Self.m_TipoConta;
end;

procedure TTipoContaNovo.setTipoConta(const a_Value: String);
begin
  Self.m_TipoConta := a_Value;
end;

function TTipoContaNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TTipoContaNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TTipoContaNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TTipoContaNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TTipoContaNovo.Destroy;
begin

end;

function TTipoContaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoContaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoContaNovo.getNameAPI(): String;
begin
  Result := 'TipoContaNovo';
end;

function TTipoContaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoContaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTipoContaAlterar.getTipoConta: String;
begin
  Result := Self.m_TipoConta;
end;

procedure TTipoContaAlterar.setTipoConta(const a_Value: String);
begin
  Self.m_TipoConta := a_Value;
end;

function TTipoContaAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TTipoContaAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TTipoContaAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TTipoContaAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TTipoContaAlterar.Destroy;
begin

end;

function TTipoContaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoContaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoContaAlterar.getNameAPI(): String;
begin
  Result := 'TipoContaAlterar';
end;

function TTipoContaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoContaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTipoContaExcluir.getTipoConta: String;
begin
  Result := Self.m_TipoConta;
end;

procedure TTipoContaExcluir.setTipoConta(const a_Value: String);
begin
  Self.m_TipoConta := a_Value;
end;

destructor TTipoContaExcluir.Destroy;
begin

end;

function TTipoContaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoContaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoContaExcluir.getNameAPI(): String;
begin
  Result := 'TipoContaExcluir';
end;

function TTipoContaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoContaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
