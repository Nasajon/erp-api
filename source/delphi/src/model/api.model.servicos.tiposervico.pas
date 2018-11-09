unit api.model.servicos.TipoServico;

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

type TTipoServicoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoServico: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getTipoServico(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setTipoServico(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tiposervico')]
    property tiposervico: String read getTipoServico write setTipoServico;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TTipoServicoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoServico: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getTipoServico(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setTipoServico(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tiposervico')]
    property tiposervico: String read getTipoServico write setTipoServico;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TTipoServicoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoServico: String;
    

    function getTipoServico(): String;
    

    procedure setTipoServico(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tiposervico')]
    property tiposervico: String read getTipoServico write setTipoServico;

    

end;

	
implementation

  uses
      api.send;  

function TTipoServicoNovo.getTipoServico: String;
begin
  Result := Self.m_TipoServico;
end;

procedure TTipoServicoNovo.setTipoServico(const a_Value: String);
begin
  Self.m_TipoServico := a_Value;
end;

function TTipoServicoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TTipoServicoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TTipoServicoNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TTipoServicoNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TTipoServicoNovo.Destroy;
begin

end;

function TTipoServicoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoServicoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoServicoNovo.getNameAPI(): String;
begin
  Result := 'TipoServicoNovo';
end;

function TTipoServicoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoServicoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTipoServicoAlterar.getTipoServico: String;
begin
  Result := Self.m_TipoServico;
end;

procedure TTipoServicoAlterar.setTipoServico(const a_Value: String);
begin
  Self.m_TipoServico := a_Value;
end;

function TTipoServicoAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TTipoServicoAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TTipoServicoAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TTipoServicoAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TTipoServicoAlterar.Destroy;
begin

end;

function TTipoServicoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoServicoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoServicoAlterar.getNameAPI(): String;
begin
  Result := 'TipoServicoAlterar';
end;

function TTipoServicoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoServicoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTipoServicoExcluir.getTipoServico: String;
begin
  Result := Self.m_TipoServico;
end;

procedure TTipoServicoExcluir.setTipoServico(const a_Value: String);
begin
  Self.m_TipoServico := a_Value;
end;

destructor TTipoServicoExcluir.Destroy;
begin

end;

function TTipoServicoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoServicoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoServicoExcluir.getNameAPI(): String;
begin
  Result := 'TipoServicoExcluir';
end;

function TTipoServicoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoServicoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
