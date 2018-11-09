unit api.model.servicos.Oferta;

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

type TOfertaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_oferta: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_catalogooferta: String;
    var m_tipo: Integer;
    var m_id_grupo: String;
    

    function getoferta(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getcatalogooferta(): String;
    function gettipo(): Integer;
    function getid_grupo(): String;
    

    procedure setoferta(const a_Value: String);
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
    

    [NasajonSerializeAttribute('oferta')]
    property oferta: String read getoferta write setoferta;

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

type TOfertaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_oferta: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_catalogooferta: String;
    var m_tipo: Integer;
    var m_id_grupo: String;
    

    function getoferta(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getcatalogooferta(): String;
    function gettipo(): Integer;
    function getid_grupo(): String;
    

    procedure setoferta(const a_Value: String);
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
    

    [NasajonSerializeAttribute('oferta')]
    property oferta: String read getoferta write setoferta;

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

type TOfertaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_oferta: String;
    

    function getoferta(): String;
    

    procedure setoferta(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('oferta')]
    property oferta: String read getoferta write setoferta;

    

end;

	
implementation

  uses
      api.send;  

function TOfertaNovo.getoferta: String;
begin
  Result := Self.m_oferta;
end;

procedure TOfertaNovo.setoferta(const a_Value: String);
begin
  Self.m_oferta := a_Value;
end;

function TOfertaNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TOfertaNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TOfertaNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TOfertaNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TOfertaNovo.getcatalogooferta: String;
begin
  Result := Self.m_catalogooferta;
end;

procedure TOfertaNovo.setcatalogooferta(const a_Value: String);
begin
  Self.m_catalogooferta := a_Value;
end;

function TOfertaNovo.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TOfertaNovo.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TOfertaNovo.getid_grupo: String;
begin
  Result := Self.m_id_grupo;
end;

procedure TOfertaNovo.setid_grupo(const a_Value: String);
begin
  Self.m_id_grupo := a_Value;
end;

destructor TOfertaNovo.Destroy;
begin

end;

function TOfertaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TOfertaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TOfertaNovo.getNameAPI(): String;
begin
  Result := 'OfertaNovo';
end;

function TOfertaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TOfertaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TOfertaAlterar.getoferta: String;
begin
  Result := Self.m_oferta;
end;

procedure TOfertaAlterar.setoferta(const a_Value: String);
begin
  Self.m_oferta := a_Value;
end;

function TOfertaAlterar.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TOfertaAlterar.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TOfertaAlterar.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TOfertaAlterar.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TOfertaAlterar.getcatalogooferta: String;
begin
  Result := Self.m_catalogooferta;
end;

procedure TOfertaAlterar.setcatalogooferta(const a_Value: String);
begin
  Self.m_catalogooferta := a_Value;
end;

function TOfertaAlterar.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TOfertaAlterar.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TOfertaAlterar.getid_grupo: String;
begin
  Result := Self.m_id_grupo;
end;

procedure TOfertaAlterar.setid_grupo(const a_Value: String);
begin
  Self.m_id_grupo := a_Value;
end;

destructor TOfertaAlterar.Destroy;
begin

end;

function TOfertaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TOfertaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TOfertaAlterar.getNameAPI(): String;
begin
  Result := 'OfertaAlterar';
end;

function TOfertaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TOfertaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TOfertaExcluir.getoferta: String;
begin
  Result := Self.m_oferta;
end;

procedure TOfertaExcluir.setoferta(const a_Value: String);
begin
  Self.m_oferta := a_Value;
end;

destructor TOfertaExcluir.Destroy;
begin

end;

function TOfertaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TOfertaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TOfertaExcluir.getNameAPI(): String;
begin
  Result := 'OfertaExcluir';
end;

function TOfertaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TOfertaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
