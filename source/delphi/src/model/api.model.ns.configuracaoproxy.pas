unit api.model.ns.ConfiguracaoProxy;

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

type TConfiguracaoProxyNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_usuariosistema: String;
    var m_endereco: String;
    var m_prota: String;
    var m_usuarioproxy: String;
    var m_senhaproxy: String;
    

    function getid(): String;
    function getusuariosistema(): String;
    function getendereco(): String;
    function getprota(): String;
    function getusuarioproxy(): String;
    function getsenhaproxy(): String;
    

    procedure setid(const a_Value: String);
    procedure setusuariosistema(const a_Value: String);
    procedure setendereco(const a_Value: String);
    procedure setprota(const a_Value: String);
    procedure setusuarioproxy(const a_Value: String);
    procedure setsenhaproxy(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('usuariosistema')]
    property usuariosistema: String read getusuariosistema write setusuariosistema;

    [NasajonSerializeAttribute('endereco')]
    property endereco: String read getendereco write setendereco;

    [NasajonSerializeAttribute('prota')]
    property prota: String read getprota write setprota;

    [NasajonSerializeAttribute('usuarioproxy')]
    property usuarioproxy: String read getusuarioproxy write setusuarioproxy;

    [NasajonSerializeAttribute('senhaproxy')]
    property senhaproxy: String read getsenhaproxy write setsenhaproxy;

    

end;

type TConfiguracaoProxyAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Configuracaoproxy: String;
    var m_endereco: String;
    var m_prota: String;
    var m_usuarioproxy: String;
    var m_senhaproxy: String;
    

    function getConfiguracaoproxy(): String;
    function getendereco(): String;
    function getprota(): String;
    function getusuarioproxy(): String;
    function getsenhaproxy(): String;
    

    procedure setConfiguracaoproxy(const a_Value: String);
    procedure setendereco(const a_Value: String);
    procedure setprota(const a_Value: String);
    procedure setusuarioproxy(const a_Value: String);
    procedure setsenhaproxy(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('configuracaoproxy')]
    property configuracaoproxy: String read getConfiguracaoproxy write setConfiguracaoproxy;

    [NasajonSerializeAttribute('endereco')]
    property endereco: String read getendereco write setendereco;

    [NasajonSerializeAttribute('prota')]
    property prota: String read getprota write setprota;

    [NasajonSerializeAttribute('usuarioproxy')]
    property usuarioproxy: String read getusuarioproxy write setusuarioproxy;

    [NasajonSerializeAttribute('senhaproxy')]
    property senhaproxy: String read getsenhaproxy write setsenhaproxy;

    

end;

type TConfiguracaoProxyExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Configuracaoproxy: String;
    

    function getConfiguracaoproxy(): String;
    

    procedure setConfiguracaoproxy(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('configuracaoproxy')]
    property configuracaoproxy: String read getConfiguracaoproxy write setConfiguracaoproxy;

    

end;

	
implementation

  uses
      api.send;  

function TConfiguracaoProxyNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TConfiguracaoProxyNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TConfiguracaoProxyNovo.getusuariosistema: String;
begin
  Result := Self.m_usuariosistema;
end;

procedure TConfiguracaoProxyNovo.setusuariosistema(const a_Value: String);
begin
  Self.m_usuariosistema := a_Value;
end;

function TConfiguracaoProxyNovo.getendereco: String;
begin
  Result := Self.m_endereco;
end;

procedure TConfiguracaoProxyNovo.setendereco(const a_Value: String);
begin
  Self.m_endereco := a_Value;
end;

function TConfiguracaoProxyNovo.getprota: String;
begin
  Result := Self.m_prota;
end;

procedure TConfiguracaoProxyNovo.setprota(const a_Value: String);
begin
  Self.m_prota := a_Value;
end;

function TConfiguracaoProxyNovo.getusuarioproxy: String;
begin
  Result := Self.m_usuarioproxy;
end;

procedure TConfiguracaoProxyNovo.setusuarioproxy(const a_Value: String);
begin
  Self.m_usuarioproxy := a_Value;
end;

function TConfiguracaoProxyNovo.getsenhaproxy: String;
begin
  Result := Self.m_senhaproxy;
end;

procedure TConfiguracaoProxyNovo.setsenhaproxy(const a_Value: String);
begin
  Self.m_senhaproxy := a_Value;
end;

destructor TConfiguracaoProxyNovo.Destroy;
begin

end;

function TConfiguracaoProxyNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConfiguracaoProxyNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConfiguracaoProxyNovo.getNameAPI(): String;
begin
  Result := 'ConfiguracaoProxyNovo';
end;

function TConfiguracaoProxyNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConfiguracaoProxyNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TConfiguracaoProxyAlterar.getConfiguracaoproxy: String;
begin
  Result := Self.m_Configuracaoproxy;
end;

procedure TConfiguracaoProxyAlterar.setConfiguracaoproxy(const a_Value: String);
begin
  Self.m_Configuracaoproxy := a_Value;
end;

function TConfiguracaoProxyAlterar.getendereco: String;
begin
  Result := Self.m_endereco;
end;

procedure TConfiguracaoProxyAlterar.setendereco(const a_Value: String);
begin
  Self.m_endereco := a_Value;
end;

function TConfiguracaoProxyAlterar.getprota: String;
begin
  Result := Self.m_prota;
end;

procedure TConfiguracaoProxyAlterar.setprota(const a_Value: String);
begin
  Self.m_prota := a_Value;
end;

function TConfiguracaoProxyAlterar.getusuarioproxy: String;
begin
  Result := Self.m_usuarioproxy;
end;

procedure TConfiguracaoProxyAlterar.setusuarioproxy(const a_Value: String);
begin
  Self.m_usuarioproxy := a_Value;
end;

function TConfiguracaoProxyAlterar.getsenhaproxy: String;
begin
  Result := Self.m_senhaproxy;
end;

procedure TConfiguracaoProxyAlterar.setsenhaproxy(const a_Value: String);
begin
  Self.m_senhaproxy := a_Value;
end;

destructor TConfiguracaoProxyAlterar.Destroy;
begin

end;

function TConfiguracaoProxyAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConfiguracaoProxyAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConfiguracaoProxyAlterar.getNameAPI(): String;
begin
  Result := 'ConfiguracaoProxyAlterar';
end;

function TConfiguracaoProxyAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConfiguracaoProxyAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TConfiguracaoProxyExcluir.getConfiguracaoproxy: String;
begin
  Result := Self.m_Configuracaoproxy;
end;

procedure TConfiguracaoProxyExcluir.setConfiguracaoproxy(const a_Value: String);
begin
  Self.m_Configuracaoproxy := a_Value;
end;

destructor TConfiguracaoProxyExcluir.Destroy;
begin

end;

function TConfiguracaoProxyExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConfiguracaoProxyExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConfiguracaoProxyExcluir.getNameAPI(): String;
begin
  Result := 'ConfiguracaoProxyExcluir';
end;

function TConfiguracaoProxyExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConfiguracaoProxyExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
