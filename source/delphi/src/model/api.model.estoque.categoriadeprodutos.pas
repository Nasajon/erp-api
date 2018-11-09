unit api.model.estoque.CategoriaDeProdutos;

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

type TCategoriaDeProdutosNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_completarcodigoproduto: Boolean;
    var m_sigla: String;
    var m_categoriasuperior: String;
    var m_figuratributaria: String;
    var m_ncm: String;
    var m_controlaestoque: Boolean;
    var m_quantidademinima: Currency;
    var m_quantidademaxima: Currency;
    var m_quantidadealerta: Currency;
    var m_dimensaohorizontal: String;
    var m_dimensaovertical: String;
    var m_classificacaofinanceiracompra: String;
    var m_classificacaofinanceiravenda: String;
    

    function getid(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getcompletarcodigoproduto(): Boolean;
    function getsigla(): String;
    function getcategoriasuperior(): String;
    function getfiguratributaria(): String;
    function getncm(): String;
    function getcontrolaestoque(): Boolean;
    function getquantidademinima(): Currency;
    function getquantidademaxima(): Currency;
    function getquantidadealerta(): Currency;
    function getdimensaohorizontal(): String;
    function getdimensaovertical(): String;
    function getclassificacaofinanceiracompra(): String;
    function getclassificacaofinanceiravenda(): String;
    

    procedure setid(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setcompletarcodigoproduto(const a_Value: Boolean);
    procedure setsigla(const a_Value: String);
    procedure setcategoriasuperior(const a_Value: String);
    procedure setfiguratributaria(const a_Value: String);
    procedure setncm(const a_Value: String);
    procedure setcontrolaestoque(const a_Value: Boolean);
    procedure setquantidademinima(const a_Value: Currency);
    procedure setquantidademaxima(const a_Value: Currency);
    procedure setquantidadealerta(const a_Value: Currency);
    procedure setdimensaohorizontal(const a_Value: String);
    procedure setdimensaovertical(const a_Value: String);
    procedure setclassificacaofinanceiracompra(const a_Value: String);
    procedure setclassificacaofinanceiravenda(const a_Value: String);
    

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
/// Este recurso fará com que o código do produto seja concatenado com a sigla da categoria.
    /// </summary>
    [NasajonSerializeAttribute('completarcodigoproduto')]
    property completarcodigoproduto: Boolean read getcompletarcodigoproduto write setcompletarcodigoproduto;

    /// <summary>
/// Sigla para concatenação com o código do produto
    /// </summary>
    [NasajonSerializeAttribute('sigla')]
    property sigla: String read getsigla write setsigla;

    /// <summary>
/// Categoria pai. Este campo é responsável por determinar a árvore hierárquica das categorias.
    /// </summary>
    [NasajonSerializeAttribute('categoriasuperior')]
    property categoriasuperior: String read getcategoriasuperior write setcategoriasuperior;

    /// <summary>
/// Figura Tributária à ser aplicada em todos os produtos da categoria
    /// </summary>
    [NasajonSerializeAttribute('figuratributaria')]
    property figuratributaria: String read getfiguratributaria write setfiguratributaria;

    /// <summary>
/// NCM à ser aplicado em todos os produtos da categoria
    /// </summary>
    [NasajonSerializeAttribute('ncm')]
    property ncm: String read getncm write setncm;

    /// <summary>
/// Este campo habilita o gerenciamento do estoque na categoria.
    /// </summary>
    [NasajonSerializeAttribute('controlaestoque')]
    property controlaestoque: Boolean read getcontrolaestoque write setcontrolaestoque;

    /// <summary>
/// Quantidade mínima em estoque
    /// </summary>
    [NasajonSerializeAttribute('quantidademinima')]
    property quantidademinima: Currency read getquantidademinima write setquantidademinima;

    /// <summary>
/// Quantidade máxima em estoque
    /// </summary>
    [NasajonSerializeAttribute('quantidademaxima')]
    property quantidademaxima: Currency read getquantidademaxima write setquantidademaxima;

    /// <summary>
/// Quantidade de alerta para o estoque
    /// </summary>
    [NasajonSerializeAttribute('quantidadealerta')]
    property quantidadealerta: Currency read getquantidadealerta write setquantidadealerta;

    /// <summary>
/// Dimensão horizontal na grade dos produtos da categoria
    /// </summary>
    [NasajonSerializeAttribute('dimensaohorizontal')]
    property dimensaohorizontal: String read getdimensaohorizontal write setdimensaohorizontal;

    /// <summary>
/// Dimensão vertical na grade dos produtos da categoria
    /// </summary>
    [NasajonSerializeAttribute('dimensaovertical')]
    property dimensaovertical: String read getdimensaovertical write setdimensaovertical;

    /// <summary>
/// Categoria de Compra
    /// </summary>
    [NasajonSerializeAttribute('classificacaofinanceiracompra')]
    property classificacaofinanceiracompra: String read getclassificacaofinanceiracompra write setclassificacaofinanceiracompra;

    /// <summary>
/// Categoria de Venda
    /// </summary>
    [NasajonSerializeAttribute('classificacaofinanceiravenda')]
    property classificacaofinanceiravenda: String read getclassificacaofinanceiravenda write setclassificacaofinanceiravenda;

    

end;

type TCategoriaDeProdutosAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_descricao: String;
    var m_categoriasuperior: String;
    var m_figuratributaria: String;
    var m_ncm: String;
    var m_controlaestoque: Boolean;
    var m_quantidademinima: Currency;
    var m_quantidademaxima: Currency;
    var m_quantidadealerta: Currency;
    var m_dimensaohorizontal: String;
    var m_dimensaovertical: String;
    var m_completarcodigoproduto: Boolean;
    var m_sigla: String;
    var m_classificacaofinanceiracompra: String;
    var m_classificacaofinanceiravenda: String;
    

    function getid(): String;
    function getdescricao(): String;
    function getcategoriasuperior(): String;
    function getfiguratributaria(): String;
    function getncm(): String;
    function getcontrolaestoque(): Boolean;
    function getquantidademinima(): Currency;
    function getquantidademaxima(): Currency;
    function getquantidadealerta(): Currency;
    function getdimensaohorizontal(): String;
    function getdimensaovertical(): String;
    function getcompletarcodigoproduto(): Boolean;
    function getsigla(): String;
    function getclassificacaofinanceiracompra(): String;
    function getclassificacaofinanceiravenda(): String;
    

    procedure setid(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setcategoriasuperior(const a_Value: String);
    procedure setfiguratributaria(const a_Value: String);
    procedure setncm(const a_Value: String);
    procedure setcontrolaestoque(const a_Value: Boolean);
    procedure setquantidademinima(const a_Value: Currency);
    procedure setquantidademaxima(const a_Value: Currency);
    procedure setquantidadealerta(const a_Value: Currency);
    procedure setdimensaohorizontal(const a_Value: String);
    procedure setdimensaovertical(const a_Value: String);
    procedure setcompletarcodigoproduto(const a_Value: Boolean);
    procedure setsigla(const a_Value: String);
    procedure setclassificacaofinanceiracompra(const a_Value: String);
    procedure setclassificacaofinanceiravenda(const a_Value: String);
    

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
/// Figura Tributária à ser aplicada em todos os produtos da categoria
    /// </summary>
    [NasajonSerializeAttribute('figuratributaria')]
    property figuratributaria: String read getfiguratributaria write setfiguratributaria;

    /// <summary>
/// NCM à ser aplicado em todos os produtos da categoria
    /// </summary>
    [NasajonSerializeAttribute('ncm')]
    property ncm: String read getncm write setncm;

    /// <summary>
/// Este campo habilita o gerenciamento do estoque na categoria.
    /// </summary>
    [NasajonSerializeAttribute('controlaestoque')]
    property controlaestoque: Boolean read getcontrolaestoque write setcontrolaestoque;

    /// <summary>
/// Quantidade mínima em estoque
    /// </summary>
    [NasajonSerializeAttribute('quantidademinima')]
    property quantidademinima: Currency read getquantidademinima write setquantidademinima;

    /// <summary>
/// Quantidade máxima em estoque
    /// </summary>
    [NasajonSerializeAttribute('quantidademaxima')]
    property quantidademaxima: Currency read getquantidademaxima write setquantidademaxima;

    /// <summary>
/// Quantidade de alerta para o estoque
    /// </summary>
    [NasajonSerializeAttribute('quantidadealerta')]
    property quantidadealerta: Currency read getquantidadealerta write setquantidadealerta;

    /// <summary>
/// Dimensão horizontal na grade dos produtos da categoria
    /// </summary>
    [NasajonSerializeAttribute('dimensaohorizontal')]
    property dimensaohorizontal: String read getdimensaohorizontal write setdimensaohorizontal;

    /// <summary>
/// Dimensão vertical na grade dos produtos da categoria
    /// </summary>
    [NasajonSerializeAttribute('dimensaovertical')]
    property dimensaovertical: String read getdimensaovertical write setdimensaovertical;

    /// <summary>
/// Este recurso fará com que o código do produto seja concatenado com a sigla da categoria.
    /// </summary>
    [NasajonSerializeAttribute('completarcodigoproduto')]
    property completarcodigoproduto: Boolean read getcompletarcodigoproduto write setcompletarcodigoproduto;

    /// <summary>
/// Sigla para concatenação com o código do produto
    /// </summary>
    [NasajonSerializeAttribute('sigla')]
    property sigla: String read getsigla write setsigla;

    /// <summary>
/// Categoria de Compra
    /// </summary>
    [NasajonSerializeAttribute('classificacaofinanceiracompra')]
    property classificacaofinanceiracompra: String read getclassificacaofinanceiracompra write setclassificacaofinanceiracompra;

    /// <summary>
/// Categoria de Venda
    /// </summary>
    [NasajonSerializeAttribute('classificacaofinanceiravenda')]
    property classificacaofinanceiravenda: String read getclassificacaofinanceiravenda write setclassificacaofinanceiravenda;

    

end;

type TCategoriaDeProdutosExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TCategoriaDeProdutosNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TCategoriaDeProdutosNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TCategoriaDeProdutosNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TCategoriaDeProdutosNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TCategoriaDeProdutosNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TCategoriaDeProdutosNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TCategoriaDeProdutosNovo.getcompletarcodigoproduto: Boolean;
begin
  Result := Self.m_completarcodigoproduto;
end;

procedure TCategoriaDeProdutosNovo.setcompletarcodigoproduto(const a_Value: Boolean);
begin
  Self.m_completarcodigoproduto := a_Value;
end;

function TCategoriaDeProdutosNovo.getsigla: String;
begin
  Result := Self.m_sigla;
end;

procedure TCategoriaDeProdutosNovo.setsigla(const a_Value: String);
begin
  Self.m_sigla := a_Value;
end;

function TCategoriaDeProdutosNovo.getcategoriasuperior: String;
begin
  Result := Self.m_categoriasuperior;
end;

procedure TCategoriaDeProdutosNovo.setcategoriasuperior(const a_Value: String);
begin
  Self.m_categoriasuperior := a_Value;
end;

function TCategoriaDeProdutosNovo.getfiguratributaria: String;
begin
  Result := Self.m_figuratributaria;
end;

procedure TCategoriaDeProdutosNovo.setfiguratributaria(const a_Value: String);
begin
  Self.m_figuratributaria := a_Value;
end;

function TCategoriaDeProdutosNovo.getncm: String;
begin
  Result := Self.m_ncm;
end;

procedure TCategoriaDeProdutosNovo.setncm(const a_Value: String);
begin
  Self.m_ncm := a_Value;
end;

function TCategoriaDeProdutosNovo.getcontrolaestoque: Boolean;
begin
  Result := Self.m_controlaestoque;
end;

procedure TCategoriaDeProdutosNovo.setcontrolaestoque(const a_Value: Boolean);
begin
  Self.m_controlaestoque := a_Value;
end;

function TCategoriaDeProdutosNovo.getquantidademinima: Currency;
begin
  Result := Self.m_quantidademinima;
end;

procedure TCategoriaDeProdutosNovo.setquantidademinima(const a_Value: Currency);
begin
  Self.m_quantidademinima := a_Value;
end;

function TCategoriaDeProdutosNovo.getquantidademaxima: Currency;
begin
  Result := Self.m_quantidademaxima;
end;

procedure TCategoriaDeProdutosNovo.setquantidademaxima(const a_Value: Currency);
begin
  Self.m_quantidademaxima := a_Value;
end;

function TCategoriaDeProdutosNovo.getquantidadealerta: Currency;
begin
  Result := Self.m_quantidadealerta;
end;

procedure TCategoriaDeProdutosNovo.setquantidadealerta(const a_Value: Currency);
begin
  Self.m_quantidadealerta := a_Value;
end;

function TCategoriaDeProdutosNovo.getdimensaohorizontal: String;
begin
  Result := Self.m_dimensaohorizontal;
end;

procedure TCategoriaDeProdutosNovo.setdimensaohorizontal(const a_Value: String);
begin
  Self.m_dimensaohorizontal := a_Value;
end;

function TCategoriaDeProdutosNovo.getdimensaovertical: String;
begin
  Result := Self.m_dimensaovertical;
end;

procedure TCategoriaDeProdutosNovo.setdimensaovertical(const a_Value: String);
begin
  Self.m_dimensaovertical := a_Value;
end;

function TCategoriaDeProdutosNovo.getclassificacaofinanceiracompra: String;
begin
  Result := Self.m_classificacaofinanceiracompra;
end;

procedure TCategoriaDeProdutosNovo.setclassificacaofinanceiracompra(const a_Value: String);
begin
  Self.m_classificacaofinanceiracompra := a_Value;
end;

function TCategoriaDeProdutosNovo.getclassificacaofinanceiravenda: String;
begin
  Result := Self.m_classificacaofinanceiravenda;
end;

procedure TCategoriaDeProdutosNovo.setclassificacaofinanceiravenda(const a_Value: String);
begin
  Self.m_classificacaofinanceiravenda := a_Value;
end;

destructor TCategoriaDeProdutosNovo.Destroy;
begin

end;

function TCategoriaDeProdutosNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCategoriaDeProdutosNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCategoriaDeProdutosNovo.getNameAPI(): String;
begin
  Result := 'CategoriaDeProdutosNovo';
end;

function TCategoriaDeProdutosNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCategoriaDeProdutosNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCategoriaDeProdutosAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TCategoriaDeProdutosAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TCategoriaDeProdutosAlterar.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TCategoriaDeProdutosAlterar.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TCategoriaDeProdutosAlterar.getcategoriasuperior: String;
begin
  Result := Self.m_categoriasuperior;
end;

procedure TCategoriaDeProdutosAlterar.setcategoriasuperior(const a_Value: String);
begin
  Self.m_categoriasuperior := a_Value;
end;

function TCategoriaDeProdutosAlterar.getfiguratributaria: String;
begin
  Result := Self.m_figuratributaria;
end;

procedure TCategoriaDeProdutosAlterar.setfiguratributaria(const a_Value: String);
begin
  Self.m_figuratributaria := a_Value;
end;

function TCategoriaDeProdutosAlterar.getncm: String;
begin
  Result := Self.m_ncm;
end;

procedure TCategoriaDeProdutosAlterar.setncm(const a_Value: String);
begin
  Self.m_ncm := a_Value;
end;

function TCategoriaDeProdutosAlterar.getcontrolaestoque: Boolean;
begin
  Result := Self.m_controlaestoque;
end;

procedure TCategoriaDeProdutosAlterar.setcontrolaestoque(const a_Value: Boolean);
begin
  Self.m_controlaestoque := a_Value;
end;

function TCategoriaDeProdutosAlterar.getquantidademinima: Currency;
begin
  Result := Self.m_quantidademinima;
end;

procedure TCategoriaDeProdutosAlterar.setquantidademinima(const a_Value: Currency);
begin
  Self.m_quantidademinima := a_Value;
end;

function TCategoriaDeProdutosAlterar.getquantidademaxima: Currency;
begin
  Result := Self.m_quantidademaxima;
end;

procedure TCategoriaDeProdutosAlterar.setquantidademaxima(const a_Value: Currency);
begin
  Self.m_quantidademaxima := a_Value;
end;

function TCategoriaDeProdutosAlterar.getquantidadealerta: Currency;
begin
  Result := Self.m_quantidadealerta;
end;

procedure TCategoriaDeProdutosAlterar.setquantidadealerta(const a_Value: Currency);
begin
  Self.m_quantidadealerta := a_Value;
end;

function TCategoriaDeProdutosAlterar.getdimensaohorizontal: String;
begin
  Result := Self.m_dimensaohorizontal;
end;

procedure TCategoriaDeProdutosAlterar.setdimensaohorizontal(const a_Value: String);
begin
  Self.m_dimensaohorizontal := a_Value;
end;

function TCategoriaDeProdutosAlterar.getdimensaovertical: String;
begin
  Result := Self.m_dimensaovertical;
end;

procedure TCategoriaDeProdutosAlterar.setdimensaovertical(const a_Value: String);
begin
  Self.m_dimensaovertical := a_Value;
end;

function TCategoriaDeProdutosAlterar.getcompletarcodigoproduto: Boolean;
begin
  Result := Self.m_completarcodigoproduto;
end;

procedure TCategoriaDeProdutosAlterar.setcompletarcodigoproduto(const a_Value: Boolean);
begin
  Self.m_completarcodigoproduto := a_Value;
end;

function TCategoriaDeProdutosAlterar.getsigla: String;
begin
  Result := Self.m_sigla;
end;

procedure TCategoriaDeProdutosAlterar.setsigla(const a_Value: String);
begin
  Self.m_sigla := a_Value;
end;

function TCategoriaDeProdutosAlterar.getclassificacaofinanceiracompra: String;
begin
  Result := Self.m_classificacaofinanceiracompra;
end;

procedure TCategoriaDeProdutosAlterar.setclassificacaofinanceiracompra(const a_Value: String);
begin
  Self.m_classificacaofinanceiracompra := a_Value;
end;

function TCategoriaDeProdutosAlterar.getclassificacaofinanceiravenda: String;
begin
  Result := Self.m_classificacaofinanceiravenda;
end;

procedure TCategoriaDeProdutosAlterar.setclassificacaofinanceiravenda(const a_Value: String);
begin
  Self.m_classificacaofinanceiravenda := a_Value;
end;

destructor TCategoriaDeProdutosAlterar.Destroy;
begin

end;

function TCategoriaDeProdutosAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCategoriaDeProdutosAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCategoriaDeProdutosAlterar.getNameAPI(): String;
begin
  Result := 'CategoriaDeProdutosAlterar';
end;

function TCategoriaDeProdutosAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCategoriaDeProdutosAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCategoriaDeProdutosExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TCategoriaDeProdutosExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

destructor TCategoriaDeProdutosExcluir.Destroy;
begin

end;

function TCategoriaDeProdutosExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCategoriaDeProdutosExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCategoriaDeProdutosExcluir.getNameAPI(): String;
begin
  Result := 'CategoriaDeProdutosExcluir';
end;

function TCategoriaDeProdutosExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCategoriaDeProdutosExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
