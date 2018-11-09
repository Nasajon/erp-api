unit api.model.ns.GrupoDeUsuario;

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

type TGrupoDeUsuario = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_GrupoDeUsuario: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getGrupoDeUsuario(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setGrupoDeUsuario(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('grupodeusuario')]
    property grupodeusuario: String read getGrupoDeUsuario write setGrupoDeUsuario;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TGrupoDeUsuarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdGrupoDeUsuario: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getIdGrupoDeUsuario(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setIdGrupoDeUsuario(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idgrupodeusuario')]
    property idgrupodeusuario: String read getIdGrupoDeUsuario write setIdGrupoDeUsuario;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TGrupoDeUsuarioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_GrupoDeUsuario: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getGrupoDeUsuario(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setGrupoDeUsuario(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('grupodeusuario')]
    property grupodeusuario: String read getGrupoDeUsuario write setGrupoDeUsuario;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TGrupoDeUsuarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_GrupoDeUsuario: String;
    

    function getGrupoDeUsuario(): String;
    

    procedure setGrupoDeUsuario(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('grupodeusuario')]
    property grupodeusuario: String read getGrupoDeUsuario write setGrupoDeUsuario;

    

end;

	
implementation

  uses
      api.send;  

function TGrupoDeUsuario.getGrupoDeUsuario: String;
begin
  Result := Self.m_GrupoDeUsuario;
end;

procedure TGrupoDeUsuario.setGrupoDeUsuario(const a_Value: String);
begin
  Self.m_GrupoDeUsuario := a_Value;
end;

function TGrupoDeUsuario.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TGrupoDeUsuario.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TGrupoDeUsuario.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TGrupoDeUsuario.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TGrupoDeUsuario.Destroy;
begin

end;

function TGrupoDeUsuario.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TGrupoDeUsuario.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TGrupoDeUsuario.getNameAPI(): String;
begin
  Result := 'GrupoDeUsuario';
end;

function TGrupoDeUsuario.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TGrupoDeUsuario.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TGrupoDeUsuarioNovo.getIdGrupoDeUsuario: String;
begin
  Result := Self.m_IdGrupoDeUsuario;
end;

procedure TGrupoDeUsuarioNovo.setIdGrupoDeUsuario(const a_Value: String);
begin
  Self.m_IdGrupoDeUsuario := a_Value;
end;

function TGrupoDeUsuarioNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TGrupoDeUsuarioNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TGrupoDeUsuarioNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TGrupoDeUsuarioNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TGrupoDeUsuarioNovo.Destroy;
begin

end;

function TGrupoDeUsuarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TGrupoDeUsuarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TGrupoDeUsuarioNovo.getNameAPI(): String;
begin
  Result := 'GrupoDeUsuarioNovo';
end;

function TGrupoDeUsuarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TGrupoDeUsuarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TGrupoDeUsuarioAlterar.getGrupoDeUsuario: String;
begin
  Result := Self.m_GrupoDeUsuario;
end;

procedure TGrupoDeUsuarioAlterar.setGrupoDeUsuario(const a_Value: String);
begin
  Self.m_GrupoDeUsuario := a_Value;
end;

function TGrupoDeUsuarioAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TGrupoDeUsuarioAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TGrupoDeUsuarioAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TGrupoDeUsuarioAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TGrupoDeUsuarioAlterar.Destroy;
begin

end;

function TGrupoDeUsuarioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TGrupoDeUsuarioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TGrupoDeUsuarioAlterar.getNameAPI(): String;
begin
  Result := 'GrupoDeUsuarioAlterar';
end;

function TGrupoDeUsuarioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TGrupoDeUsuarioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TGrupoDeUsuarioExcluir.getGrupoDeUsuario: String;
begin
  Result := Self.m_GrupoDeUsuario;
end;

procedure TGrupoDeUsuarioExcluir.setGrupoDeUsuario(const a_Value: String);
begin
  Self.m_GrupoDeUsuario := a_Value;
end;

destructor TGrupoDeUsuarioExcluir.Destroy;
begin

end;

function TGrupoDeUsuarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TGrupoDeUsuarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TGrupoDeUsuarioExcluir.getNameAPI(): String;
begin
  Result := 'GrupoDeUsuarioExcluir';
end;

function TGrupoDeUsuarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TGrupoDeUsuarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
