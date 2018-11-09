unit api.model.ns.PerfilUsuario;

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

type TPerfilUsuarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdPerfilUsuario: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getIdPerfilUsuario(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setIdPerfilUsuario(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idperfilusuario')]
    property idperfilusuario: String read getIdPerfilUsuario write setIdPerfilUsuario;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TPerfilUsuarioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_PerfilUsuario: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getPerfilUsuario(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setPerfilUsuario(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('perfilusuario')]
    property perfilusuario: String read getPerfilUsuario write setPerfilUsuario;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TPerfilUsuarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_PerfilUsuario: String;
    

    function getPerfilUsuario(): String;
    

    procedure setPerfilUsuario(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('perfilusuario')]
    property perfilusuario: String read getPerfilUsuario write setPerfilUsuario;

    

end;

	
implementation

  uses
      api.send;  

function TPerfilUsuarioNovo.getIdPerfilUsuario: String;
begin
  Result := Self.m_IdPerfilUsuario;
end;

procedure TPerfilUsuarioNovo.setIdPerfilUsuario(const a_Value: String);
begin
  Self.m_IdPerfilUsuario := a_Value;
end;

function TPerfilUsuarioNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TPerfilUsuarioNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TPerfilUsuarioNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TPerfilUsuarioNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TPerfilUsuarioNovo.Destroy;
begin

end;

function TPerfilUsuarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPerfilUsuarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPerfilUsuarioNovo.getNameAPI(): String;
begin
  Result := 'PerfilUsuarioNovo';
end;

function TPerfilUsuarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPerfilUsuarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TPerfilUsuarioAlterar.getPerfilUsuario: String;
begin
  Result := Self.m_PerfilUsuario;
end;

procedure TPerfilUsuarioAlterar.setPerfilUsuario(const a_Value: String);
begin
  Self.m_PerfilUsuario := a_Value;
end;

function TPerfilUsuarioAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TPerfilUsuarioAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TPerfilUsuarioAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TPerfilUsuarioAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TPerfilUsuarioAlterar.Destroy;
begin

end;

function TPerfilUsuarioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPerfilUsuarioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPerfilUsuarioAlterar.getNameAPI(): String;
begin
  Result := 'PerfilUsuarioAlterar';
end;

function TPerfilUsuarioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPerfilUsuarioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TPerfilUsuarioExcluir.getPerfilUsuario: String;
begin
  Result := Self.m_PerfilUsuario;
end;

procedure TPerfilUsuarioExcluir.setPerfilUsuario(const a_Value: String);
begin
  Self.m_PerfilUsuario := a_Value;
end;

destructor TPerfilUsuarioExcluir.Destroy;
begin

end;

function TPerfilUsuarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPerfilUsuarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPerfilUsuarioExcluir.getNameAPI(): String;
begin
  Result := 'PerfilUsuarioExcluir';
end;

function TPerfilUsuarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPerfilUsuarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
