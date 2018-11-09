unit api.model.servicos.CatalogoDeOferta;

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

type TCatalogoDeOfertaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_catalogodeoferta: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_id_grupoempresarial: String;
    var m_catalogodeoferta_pai: String;
    var m_tipo: Integer;
    

    function getcatalogodeoferta(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getid_grupoempresarial(): String;
    function getcatalogodeoferta_pai(): String;
    function gettipo(): Integer;
    

    procedure setcatalogodeoferta(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setid_grupoempresarial(const a_Value: String);
    procedure setcatalogodeoferta_pai(const a_Value: String);
    procedure settipo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('catalogodeoferta')]
    property catalogodeoferta: String read getcatalogodeoferta write setcatalogodeoferta;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('id_grupoempresarial')]
    property id_grupoempresarial: String read getid_grupoempresarial write setid_grupoempresarial;

    [NasajonSerializeAttribute('catalogodeoferta_pai')]
    property catalogodeoferta_pai: String read getcatalogodeoferta_pai write setcatalogodeoferta_pai;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    

end;

type TCatalogoDeOfertaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_catalogodeoferta: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_id_grupoempresarial: String;
    var m_catalogodeoferta_pai: String;
    var m_tipo: Integer;
    

    function getcatalogodeoferta(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getid_grupoempresarial(): String;
    function getcatalogodeoferta_pai(): String;
    function gettipo(): Integer;
    

    procedure setcatalogodeoferta(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setid_grupoempresarial(const a_Value: String);
    procedure setcatalogodeoferta_pai(const a_Value: String);
    procedure settipo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('catalogodeoferta')]
    property catalogodeoferta: String read getcatalogodeoferta write setcatalogodeoferta;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('id_grupoempresarial')]
    property id_grupoempresarial: String read getid_grupoempresarial write setid_grupoempresarial;

    [NasajonSerializeAttribute('catalogodeoferta_pai')]
    property catalogodeoferta_pai: String read getcatalogodeoferta_pai write setcatalogodeoferta_pai;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    

end;

type TCatalogoDeOfertaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_catalogodeoferta: String;
    

    function getcatalogodeoferta(): String;
    

    procedure setcatalogodeoferta(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('catalogodeoferta')]
    property catalogodeoferta: String read getcatalogodeoferta write setcatalogodeoferta;

    

end;

	
implementation

  uses
      api.send;  

function TCatalogoDeOfertaNovo.getcatalogodeoferta: String;
begin
  Result := Self.m_catalogodeoferta;
end;

procedure TCatalogoDeOfertaNovo.setcatalogodeoferta(const a_Value: String);
begin
  Self.m_catalogodeoferta := a_Value;
end;

function TCatalogoDeOfertaNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TCatalogoDeOfertaNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TCatalogoDeOfertaNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TCatalogoDeOfertaNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TCatalogoDeOfertaNovo.getid_grupoempresarial: String;
begin
  Result := Self.m_id_grupoempresarial;
end;

procedure TCatalogoDeOfertaNovo.setid_grupoempresarial(const a_Value: String);
begin
  Self.m_id_grupoempresarial := a_Value;
end;

function TCatalogoDeOfertaNovo.getcatalogodeoferta_pai: String;
begin
  Result := Self.m_catalogodeoferta_pai;
end;

procedure TCatalogoDeOfertaNovo.setcatalogodeoferta_pai(const a_Value: String);
begin
  Self.m_catalogodeoferta_pai := a_Value;
end;

function TCatalogoDeOfertaNovo.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TCatalogoDeOfertaNovo.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

destructor TCatalogoDeOfertaNovo.Destroy;
begin

end;

function TCatalogoDeOfertaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCatalogoDeOfertaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCatalogoDeOfertaNovo.getNameAPI(): String;
begin
  Result := 'CatalogoDeOfertaNovo';
end;

function TCatalogoDeOfertaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCatalogoDeOfertaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCatalogoDeOfertaAlterar.getcatalogodeoferta: String;
begin
  Result := Self.m_catalogodeoferta;
end;

procedure TCatalogoDeOfertaAlterar.setcatalogodeoferta(const a_Value: String);
begin
  Self.m_catalogodeoferta := a_Value;
end;

function TCatalogoDeOfertaAlterar.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TCatalogoDeOfertaAlterar.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TCatalogoDeOfertaAlterar.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TCatalogoDeOfertaAlterar.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TCatalogoDeOfertaAlterar.getid_grupoempresarial: String;
begin
  Result := Self.m_id_grupoempresarial;
end;

procedure TCatalogoDeOfertaAlterar.setid_grupoempresarial(const a_Value: String);
begin
  Self.m_id_grupoempresarial := a_Value;
end;

function TCatalogoDeOfertaAlterar.getcatalogodeoferta_pai: String;
begin
  Result := Self.m_catalogodeoferta_pai;
end;

procedure TCatalogoDeOfertaAlterar.setcatalogodeoferta_pai(const a_Value: String);
begin
  Self.m_catalogodeoferta_pai := a_Value;
end;

function TCatalogoDeOfertaAlterar.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TCatalogoDeOfertaAlterar.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

destructor TCatalogoDeOfertaAlterar.Destroy;
begin

end;

function TCatalogoDeOfertaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCatalogoDeOfertaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCatalogoDeOfertaAlterar.getNameAPI(): String;
begin
  Result := 'CatalogoDeOfertaAlterar';
end;

function TCatalogoDeOfertaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCatalogoDeOfertaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCatalogoDeOfertaExcluir.getcatalogodeoferta: String;
begin
  Result := Self.m_catalogodeoferta;
end;

procedure TCatalogoDeOfertaExcluir.setcatalogodeoferta(const a_Value: String);
begin
  Self.m_catalogodeoferta := a_Value;
end;

destructor TCatalogoDeOfertaExcluir.Destroy;
begin

end;

function TCatalogoDeOfertaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCatalogoDeOfertaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCatalogoDeOfertaExcluir.getNameAPI(): String;
begin
  Result := 'CatalogoDeOfertaExcluir';
end;

function TCatalogoDeOfertaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCatalogoDeOfertaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
