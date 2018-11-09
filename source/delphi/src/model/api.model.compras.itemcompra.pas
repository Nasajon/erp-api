unit api.model.compras.ItemCompra;

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

type TItemCompraNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_comodato: Boolean;
    var m_tipo: Integer;
    var m_categoriadeproduto: String;
    var m_categoriadeservico: String;
    var m_detalhamento: String;
    var m_grupoempresarial: String;
    

    function getid(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getcomodato(): Boolean;
    function gettipo(): Integer;
    function getcategoriadeproduto(): String;
    function getcategoriadeservico(): String;
    function getdetalhamento(): String;
    function getgrupoempresarial(): String;
    

    procedure setid(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setcomodato(const a_Value: Boolean);
    procedure settipo(const a_Value: Integer);
    procedure setcategoriadeproduto(const a_Value: String);
    procedure setcategoriadeservico(const a_Value: String);
    procedure setdetalhamento(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    

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

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('comodato')]
    property comodato: Boolean read getcomodato write setcomodato;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    [NasajonSerializeAttribute('categoriadeproduto')]
    property categoriadeproduto: String read getcategoriadeproduto write setcategoriadeproduto;

    [NasajonSerializeAttribute('categoriadeservico')]
    property categoriadeservico: String read getcategoriadeservico write setcategoriadeservico;

    [NasajonSerializeAttribute('detalhamento')]
    property detalhamento: String read getdetalhamento write setdetalhamento;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    

end;

type TItemCompraAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_comodato: Boolean;
    var m_tipo: Integer;
    var m_categoriadeproduto: String;
    var m_categoriadeservico: String;
    var m_detalhamento: String;
    var m_grupoempresarial: String;
    

    function getid(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getcomodato(): Boolean;
    function gettipo(): Integer;
    function getcategoriadeproduto(): String;
    function getcategoriadeservico(): String;
    function getdetalhamento(): String;
    function getgrupoempresarial(): String;
    

    procedure setid(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setcomodato(const a_Value: Boolean);
    procedure settipo(const a_Value: Integer);
    procedure setcategoriadeproduto(const a_Value: String);
    procedure setcategoriadeservico(const a_Value: String);
    procedure setdetalhamento(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    

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

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('comodato')]
    property comodato: Boolean read getcomodato write setcomodato;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    [NasajonSerializeAttribute('categoriadeproduto')]
    property categoriadeproduto: String read getcategoriadeproduto write setcategoriadeproduto;

    [NasajonSerializeAttribute('categoriadeservico')]
    property categoriadeservico: String read getcategoriadeservico write setcategoriadeservico;

    [NasajonSerializeAttribute('detalhamento')]
    property detalhamento: String read getdetalhamento write setdetalhamento;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    

end;

type TItemCompraExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TItemCompraNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TItemCompraNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TItemCompraNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TItemCompraNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TItemCompraNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TItemCompraNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TItemCompraNovo.getcomodato: Boolean;
begin
  Result := Self.m_comodato;
end;

procedure TItemCompraNovo.setcomodato(const a_Value: Boolean);
begin
  Self.m_comodato := a_Value;
end;

function TItemCompraNovo.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TItemCompraNovo.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TItemCompraNovo.getcategoriadeproduto: String;
begin
  Result := Self.m_categoriadeproduto;
end;

procedure TItemCompraNovo.setcategoriadeproduto(const a_Value: String);
begin
  Self.m_categoriadeproduto := a_Value;
end;

function TItemCompraNovo.getcategoriadeservico: String;
begin
  Result := Self.m_categoriadeservico;
end;

procedure TItemCompraNovo.setcategoriadeservico(const a_Value: String);
begin
  Self.m_categoriadeservico := a_Value;
end;

function TItemCompraNovo.getdetalhamento: String;
begin
  Result := Self.m_detalhamento;
end;

procedure TItemCompraNovo.setdetalhamento(const a_Value: String);
begin
  Self.m_detalhamento := a_Value;
end;

function TItemCompraNovo.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TItemCompraNovo.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

destructor TItemCompraNovo.Destroy;
begin

end;

function TItemCompraNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemCompraNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemCompraNovo.getNameAPI(): String;
begin
  Result := 'ItemCompraNovo';
end;

function TItemCompraNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemCompraNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TItemCompraAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TItemCompraAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TItemCompraAlterar.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TItemCompraAlterar.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TItemCompraAlterar.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TItemCompraAlterar.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TItemCompraAlterar.getcomodato: Boolean;
begin
  Result := Self.m_comodato;
end;

procedure TItemCompraAlterar.setcomodato(const a_Value: Boolean);
begin
  Self.m_comodato := a_Value;
end;

function TItemCompraAlterar.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TItemCompraAlterar.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TItemCompraAlterar.getcategoriadeproduto: String;
begin
  Result := Self.m_categoriadeproduto;
end;

procedure TItemCompraAlterar.setcategoriadeproduto(const a_Value: String);
begin
  Self.m_categoriadeproduto := a_Value;
end;

function TItemCompraAlterar.getcategoriadeservico: String;
begin
  Result := Self.m_categoriadeservico;
end;

procedure TItemCompraAlterar.setcategoriadeservico(const a_Value: String);
begin
  Self.m_categoriadeservico := a_Value;
end;

function TItemCompraAlterar.getdetalhamento: String;
begin
  Result := Self.m_detalhamento;
end;

procedure TItemCompraAlterar.setdetalhamento(const a_Value: String);
begin
  Self.m_detalhamento := a_Value;
end;

function TItemCompraAlterar.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TItemCompraAlterar.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

destructor TItemCompraAlterar.Destroy;
begin

end;

function TItemCompraAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemCompraAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemCompraAlterar.getNameAPI(): String;
begin
  Result := 'ItemCompraAlterar';
end;

function TItemCompraAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemCompraAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TItemCompraExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TItemCompraExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

destructor TItemCompraExcluir.Destroy;
begin

end;

function TItemCompraExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemCompraExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemCompraExcluir.getNameAPI(): String;
begin
  Result := 'ItemCompraExcluir';
end;

function TItemCompraExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemCompraExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
