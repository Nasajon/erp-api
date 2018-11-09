unit api.model.ns.Pais;

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

type TPais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_codigo: String;
    var m_nome: String;
    

    function getid(): String;
    function getcodigo(): String;
    function getnome(): String;
    

    procedure setid(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    

end;

type TPaisNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_codigo: String;
    var m_nome: String;
    

    function getid(): String;
    function getcodigo(): String;
    function getnome(): String;
    

    procedure setid(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    

end;

type TPaisAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_codigo: String;
    var m_nome: String;
    

    function getid(): String;
    function getcodigo(): String;
    function getnome(): String;
    

    procedure setid(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    

end;

type TPaisExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    

    function getid(): String;
    

    procedure setid(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    

end;

	
implementation

  uses
      api.send;  

function TPais.getid: String;
begin
  Result := Self.m_id;
end;

procedure TPais.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TPais.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TPais.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TPais.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TPais.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

destructor TPais.Destroy;
begin

end;

function TPais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPais.getNameAPI(): String;
begin
  Result := 'Pais';
end;

function TPais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TPaisNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TPaisNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TPaisNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TPaisNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TPaisNovo.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TPaisNovo.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

destructor TPaisNovo.Destroy;
begin

end;

function TPaisNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPaisNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPaisNovo.getNameAPI(): String;
begin
  Result := 'PaisNovo';
end;

function TPaisNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPaisNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TPaisAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TPaisAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TPaisAlterar.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TPaisAlterar.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TPaisAlterar.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TPaisAlterar.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

destructor TPaisAlterar.Destroy;
begin

end;

function TPaisAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPaisAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPaisAlterar.getNameAPI(): String;
begin
  Result := 'PaisAlterar';
end;

function TPaisAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPaisAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TPaisExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TPaisExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

destructor TPaisExcluir.Destroy;
begin

end;

function TPaisExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPaisExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPaisExcluir.getNameAPI(): String;
begin
  Result := 'PaisExcluir';
end;

function TPaisExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPaisExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
