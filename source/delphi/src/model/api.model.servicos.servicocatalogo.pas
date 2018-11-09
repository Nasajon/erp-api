unit api.model.servicos.ServicoCatalogo;

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

type TServicoCatalogoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_servicocatalogo: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_catalogooferta: String;
    var m_tipo: Integer;
    var m_id_grupo: String;
    

    function getservicocatalogo(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getcatalogooferta(): String;
    function gettipo(): Integer;
    function getid_grupo(): String;
    

    procedure setservicocatalogo(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setcatalogooferta(const a_Value: String);
    procedure settipo(const a_Value: Integer);
    procedure setid_grupo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('servicocatalogo')]
    property servicocatalogo: String read getservicocatalogo write setservicocatalogo;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('catalogooferta')]
    property catalogooferta: String read getcatalogooferta write setcatalogooferta;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    [NasajonSerializeAttribute('id_grupo')]
    property id_grupo: String read getid_grupo write setid_grupo;

    

end;

type TServicoCatalogoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_servicocatalogo: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_catalogooferta: String;
    var m_tipo: Integer;
    var m_id_grupo: String;
    

    function getservicocatalogo(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getcatalogooferta(): String;
    function gettipo(): Integer;
    function getid_grupo(): String;
    

    procedure setservicocatalogo(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setcatalogooferta(const a_Value: String);
    procedure settipo(const a_Value: Integer);
    procedure setid_grupo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('servicocatalogo')]
    property servicocatalogo: String read getservicocatalogo write setservicocatalogo;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('catalogooferta')]
    property catalogooferta: String read getcatalogooferta write setcatalogooferta;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    [NasajonSerializeAttribute('id_grupo')]
    property id_grupo: String read getid_grupo write setid_grupo;

    

end;

type TServicoCatalogoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_servicocatalogo: String;
    

    function getservicocatalogo(): String;
    

    procedure setservicocatalogo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('servicocatalogo')]
    property servicocatalogo: String read getservicocatalogo write setservicocatalogo;

    

end;

	
implementation

  uses
      api.send;  

function TServicoCatalogoNovo.getservicocatalogo: String;
begin
  Result := Self.m_servicocatalogo;
end;

procedure TServicoCatalogoNovo.setservicocatalogo(const a_Value: String);
begin
  Self.m_servicocatalogo := a_Value;
end;

function TServicoCatalogoNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TServicoCatalogoNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TServicoCatalogoNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TServicoCatalogoNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TServicoCatalogoNovo.getcatalogooferta: String;
begin
  Result := Self.m_catalogooferta;
end;

procedure TServicoCatalogoNovo.setcatalogooferta(const a_Value: String);
begin
  Self.m_catalogooferta := a_Value;
end;

function TServicoCatalogoNovo.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TServicoCatalogoNovo.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TServicoCatalogoNovo.getid_grupo: String;
begin
  Result := Self.m_id_grupo;
end;

procedure TServicoCatalogoNovo.setid_grupo(const a_Value: String);
begin
  Self.m_id_grupo := a_Value;
end;

destructor TServicoCatalogoNovo.Destroy;
begin

end;

function TServicoCatalogoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TServicoCatalogoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TServicoCatalogoNovo.getNameAPI(): String;
begin
  Result := 'ServicoCatalogoNovo';
end;

function TServicoCatalogoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TServicoCatalogoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TServicoCatalogoAlterar.getservicocatalogo: String;
begin
  Result := Self.m_servicocatalogo;
end;

procedure TServicoCatalogoAlterar.setservicocatalogo(const a_Value: String);
begin
  Self.m_servicocatalogo := a_Value;
end;

function TServicoCatalogoAlterar.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TServicoCatalogoAlterar.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TServicoCatalogoAlterar.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TServicoCatalogoAlterar.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TServicoCatalogoAlterar.getcatalogooferta: String;
begin
  Result := Self.m_catalogooferta;
end;

procedure TServicoCatalogoAlterar.setcatalogooferta(const a_Value: String);
begin
  Self.m_catalogooferta := a_Value;
end;

function TServicoCatalogoAlterar.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TServicoCatalogoAlterar.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TServicoCatalogoAlterar.getid_grupo: String;
begin
  Result := Self.m_id_grupo;
end;

procedure TServicoCatalogoAlterar.setid_grupo(const a_Value: String);
begin
  Self.m_id_grupo := a_Value;
end;

destructor TServicoCatalogoAlterar.Destroy;
begin

end;

function TServicoCatalogoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TServicoCatalogoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TServicoCatalogoAlterar.getNameAPI(): String;
begin
  Result := 'ServicoCatalogoAlterar';
end;

function TServicoCatalogoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TServicoCatalogoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TServicoCatalogoExcluir.getservicocatalogo: String;
begin
  Result := Self.m_servicocatalogo;
end;

procedure TServicoCatalogoExcluir.setservicocatalogo(const a_Value: String);
begin
  Self.m_servicocatalogo := a_Value;
end;

destructor TServicoCatalogoExcluir.Destroy;
begin

end;

function TServicoCatalogoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TServicoCatalogoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TServicoCatalogoExcluir.getNameAPI(): String;
begin
  Result := 'ServicoCatalogoExcluir';
end;

function TServicoCatalogoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TServicoCatalogoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
