unit api.model.estoque.AcordosFornecimentoProdutosItens;

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

type TAcordosFornecimentoProdutosItensNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Identificador: String;
    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Unidade: String;
    var m_Item: String;
    var m_AcordosFornecimentoProdutos: String;
    var m_Tipo_Fornecimento: String;
    var m_Quantidade: Currency;
    var m_Valor_Unitario: Currency;
    var m_Recorrencia: Currency;
    

    function getIdentificador(): String;
    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getUnidade(): String;
    function getItem(): String;
    function getAcordosFornecimentoProdutos(): String;
    function getTipo_Fornecimento(): String;
    function getQuantidade(): Currency;
    function getValor_Unitario(): Currency;
    function getRecorrencia(): Currency;
    

    procedure setIdentificador(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setUnidade(const a_Value: String);
    procedure setItem(const a_Value: String);
    procedure setAcordosFornecimentoProdutos(const a_Value: String);
    procedure setTipo_Fornecimento(const a_Value: String);
    procedure setQuantidade(const a_Value: Currency);
    procedure setValor_Unitario(const a_Value: Currency);
    procedure setRecorrencia(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('identificador')]
    property identificador: String read getIdentificador write setIdentificador;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('unidade')]
    property unidade: String read getUnidade write setUnidade;

    [NasajonSerializeAttribute('item')]
    property item: String read getItem write setItem;

    [NasajonSerializeAttribute('acordosfornecimentoprodutos')]
    property acordosfornecimentoprodutos: String read getAcordosFornecimentoProdutos write setAcordosFornecimentoProdutos;

    [NasajonSerializeAttribute('tipo_fornecimento')]
    property tipo_fornecimento: String read getTipo_Fornecimento write setTipo_Fornecimento;

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Currency read getQuantidade write setQuantidade;

    [NasajonSerializeAttribute('valor_unitario')]
    property valor_unitario: Currency read getValor_Unitario write setValor_Unitario;

    [NasajonSerializeAttribute('recorrencia')]
    property recorrencia: Currency read getRecorrencia write setRecorrencia;

    

end;

	
implementation

  uses
      api.send;  

function TAcordosFornecimentoProdutosItensNovo.getIdentificador: String;
begin
  Result := Self.m_Identificador;
end;

procedure TAcordosFornecimentoProdutosItensNovo.setIdentificador(const a_Value: String);
begin
  Self.m_Identificador := a_Value;
end;

function TAcordosFornecimentoProdutosItensNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TAcordosFornecimentoProdutosItensNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TAcordosFornecimentoProdutosItensNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAcordosFornecimentoProdutosItensNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAcordosFornecimentoProdutosItensNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TAcordosFornecimentoProdutosItensNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TAcordosFornecimentoProdutosItensNovo.getUnidade: String;
begin
  Result := Self.m_Unidade;
end;

procedure TAcordosFornecimentoProdutosItensNovo.setUnidade(const a_Value: String);
begin
  Self.m_Unidade := a_Value;
end;

function TAcordosFornecimentoProdutosItensNovo.getItem: String;
begin
  Result := Self.m_Item;
end;

procedure TAcordosFornecimentoProdutosItensNovo.setItem(const a_Value: String);
begin
  Self.m_Item := a_Value;
end;

function TAcordosFornecimentoProdutosItensNovo.getAcordosFornecimentoProdutos: String;
begin
  Result := Self.m_AcordosFornecimentoProdutos;
end;

procedure TAcordosFornecimentoProdutosItensNovo.setAcordosFornecimentoProdutos(const a_Value: String);
begin
  Self.m_AcordosFornecimentoProdutos := a_Value;
end;

function TAcordosFornecimentoProdutosItensNovo.getTipo_Fornecimento: String;
begin
  Result := Self.m_Tipo_Fornecimento;
end;

procedure TAcordosFornecimentoProdutosItensNovo.setTipo_Fornecimento(const a_Value: String);
begin
  Self.m_Tipo_Fornecimento := a_Value;
end;

function TAcordosFornecimentoProdutosItensNovo.getQuantidade: Currency;
begin
  Result := Self.m_Quantidade;
end;

procedure TAcordosFornecimentoProdutosItensNovo.setQuantidade(const a_Value: Currency);
begin
  Self.m_Quantidade := a_Value;
end;

function TAcordosFornecimentoProdutosItensNovo.getValor_Unitario: Currency;
begin
  Result := Self.m_Valor_Unitario;
end;

procedure TAcordosFornecimentoProdutosItensNovo.setValor_Unitario(const a_Value: Currency);
begin
  Self.m_Valor_Unitario := a_Value;
end;

function TAcordosFornecimentoProdutosItensNovo.getRecorrencia: Currency;
begin
  Result := Self.m_Recorrencia;
end;

procedure TAcordosFornecimentoProdutosItensNovo.setRecorrencia(const a_Value: Currency);
begin
  Self.m_Recorrencia := a_Value;
end;

destructor TAcordosFornecimentoProdutosItensNovo.Destroy;
begin

end;

function TAcordosFornecimentoProdutosItensNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAcordosFornecimentoProdutosItensNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAcordosFornecimentoProdutosItensNovo.getNameAPI(): String;
begin
  Result := 'AcordosFornecimentoProdutosItensNovo';
end;

function TAcordosFornecimentoProdutosItensNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAcordosFornecimentoProdutosItensNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
