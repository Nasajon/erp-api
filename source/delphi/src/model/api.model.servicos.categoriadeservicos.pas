unit api.model.servicos.CategoriaDeServicos;

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

type TCategoriaDeServicosNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_completarcodigoservico: Boolean;
    var m_sigla: String;
    var m_categoriasuperior: String;
    

    function getid(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getcompletarcodigoservico(): Boolean;
    function getsigla(): String;
    function getcategoriasuperior(): String;
    

    procedure setid(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setcompletarcodigoservico(const a_Value: Boolean);
    procedure setsigla(const a_Value: String);
    procedure setcategoriasuperior(const a_Value: String);
    

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

    /// <summary>
/// Este recurso fará com que o código do servico seja concatenado com a sigla da categoria.
    /// </summary>
    [NasajonSerializeAttribute('completarcodigoservico')]
    property completarcodigoservico: Boolean read getcompletarcodigoservico write setcompletarcodigoservico;

    /// <summary>
/// Sigla para concatenação com o código do servico
    /// </summary>
    [NasajonSerializeAttribute('sigla')]
    property sigla: String read getsigla write setsigla;

    /// <summary>
/// Categoria pai. Este campo é responsável por determinar a árvore hierárquica das categorias.
    /// </summary>
    [NasajonSerializeAttribute('categoriasuperior')]
    property categoriasuperior: String read getcategoriasuperior write setcategoriasuperior;

    

end;

type TCategoriaDeServicosAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_descricao: String;
    var m_categoriasuperior: String;
    var m_completarcodigoservico: Boolean;
    var m_sigla: String;
    

    function getid(): String;
    function getdescricao(): String;
    function getcategoriasuperior(): String;
    function getcompletarcodigoservico(): Boolean;
    function getsigla(): String;
    

    procedure setid(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setcategoriasuperior(const a_Value: String);
    procedure setcompletarcodigoservico(const a_Value: Boolean);
    procedure setsigla(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    /// <summary>
/// Categoria pai. Este campo é responsável por determinar a árvore hierárquica das categorias.
    /// </summary>
    [NasajonSerializeAttribute('categoriasuperior')]
    property categoriasuperior: String read getcategoriasuperior write setcategoriasuperior;

    /// <summary>
/// Este recurso fará com que o código do servico seja concatenado com a sigla da categoria.
    /// </summary>
    [NasajonSerializeAttribute('completarcodigoservico')]
    property completarcodigoservico: Boolean read getcompletarcodigoservico write setcompletarcodigoservico;

    /// <summary>
/// Sigla para concatenação com o código do produto
    /// </summary>
    [NasajonSerializeAttribute('sigla')]
    property sigla: String read getsigla write setsigla;

    

end;

type TCategoriaDeServicosExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TCategoriaDeServicosNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TCategoriaDeServicosNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TCategoriaDeServicosNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TCategoriaDeServicosNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TCategoriaDeServicosNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TCategoriaDeServicosNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TCategoriaDeServicosNovo.getcompletarcodigoservico: Boolean;
begin
  Result := Self.m_completarcodigoservico;
end;

procedure TCategoriaDeServicosNovo.setcompletarcodigoservico(const a_Value: Boolean);
begin
  Self.m_completarcodigoservico := a_Value;
end;

function TCategoriaDeServicosNovo.getsigla: String;
begin
  Result := Self.m_sigla;
end;

procedure TCategoriaDeServicosNovo.setsigla(const a_Value: String);
begin
  Self.m_sigla := a_Value;
end;

function TCategoriaDeServicosNovo.getcategoriasuperior: String;
begin
  Result := Self.m_categoriasuperior;
end;

procedure TCategoriaDeServicosNovo.setcategoriasuperior(const a_Value: String);
begin
  Self.m_categoriasuperior := a_Value;
end;

destructor TCategoriaDeServicosNovo.Destroy;
begin

end;

function TCategoriaDeServicosNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCategoriaDeServicosNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCategoriaDeServicosNovo.getNameAPI(): String;
begin
  Result := 'CategoriaDeServicosNovo';
end;

function TCategoriaDeServicosNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCategoriaDeServicosNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCategoriaDeServicosAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TCategoriaDeServicosAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TCategoriaDeServicosAlterar.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TCategoriaDeServicosAlterar.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TCategoriaDeServicosAlterar.getcategoriasuperior: String;
begin
  Result := Self.m_categoriasuperior;
end;

procedure TCategoriaDeServicosAlterar.setcategoriasuperior(const a_Value: String);
begin
  Self.m_categoriasuperior := a_Value;
end;

function TCategoriaDeServicosAlterar.getcompletarcodigoservico: Boolean;
begin
  Result := Self.m_completarcodigoservico;
end;

procedure TCategoriaDeServicosAlterar.setcompletarcodigoservico(const a_Value: Boolean);
begin
  Self.m_completarcodigoservico := a_Value;
end;

function TCategoriaDeServicosAlterar.getsigla: String;
begin
  Result := Self.m_sigla;
end;

procedure TCategoriaDeServicosAlterar.setsigla(const a_Value: String);
begin
  Self.m_sigla := a_Value;
end;

destructor TCategoriaDeServicosAlterar.Destroy;
begin

end;

function TCategoriaDeServicosAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCategoriaDeServicosAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCategoriaDeServicosAlterar.getNameAPI(): String;
begin
  Result := 'CategoriaDeServicosAlterar';
end;

function TCategoriaDeServicosAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCategoriaDeServicosAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCategoriaDeServicosExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TCategoriaDeServicosExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

destructor TCategoriaDeServicosExcluir.Destroy;
begin

end;

function TCategoriaDeServicosExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCategoriaDeServicosExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCategoriaDeServicosExcluir.getNameAPI(): String;
begin
  Result := 'CategoriaDeServicosExcluir';
end;

function TCategoriaDeServicosExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCategoriaDeServicosExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
