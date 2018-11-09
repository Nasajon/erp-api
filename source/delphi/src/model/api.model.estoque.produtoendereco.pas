unit api.model.estoque.ProdutoEndereco;

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

type TProdutoEnderecoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idprodutoendereco: String;
    var m_produto: String;
    var m_localdeestoqueendereco: String;
    var m_localdeestoque: String;
    var m_padrao: Boolean;
    

    function getidprodutoendereco(): String;
    function getproduto(): String;
    function getlocaldeestoqueendereco(): String;
    function getlocaldeestoque(): String;
    function getpadrao(): Boolean;
    

    procedure setidprodutoendereco(const a_Value: String);
    procedure setproduto(const a_Value: String);
    procedure setlocaldeestoqueendereco(const a_Value: String);
    procedure setlocaldeestoque(const a_Value: String);
    procedure setpadrao(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idprodutoendereco')]
    property idprodutoendereco: String read getidprodutoendereco write setidprodutoendereco;

    [NasajonSerializeAttribute('produto')]
    property produto: String read getproduto write setproduto;

    [NasajonSerializeAttribute('localdeestoqueendereco')]
    property localdeestoqueendereco: String read getlocaldeestoqueendereco write setlocaldeestoqueendereco;

    [NasajonSerializeAttribute('localdeestoque')]
    property localdeestoque: String read getlocaldeestoque write setlocaldeestoque;

    [NasajonSerializeAttribute('padrao')]
    property padrao: Boolean read getpadrao write setpadrao;

    

end;

type TProdutoEnderecoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idprodutoendereco: String;
    var m_padrao: Boolean;
    

    function getidprodutoendereco(): String;
    function getpadrao(): Boolean;
    

    procedure setidprodutoendereco(const a_Value: String);
    procedure setpadrao(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idprodutoendereco')]
    property idprodutoendereco: String read getidprodutoendereco write setidprodutoendereco;

    [NasajonSerializeAttribute('padrao')]
    property padrao: Boolean read getpadrao write setpadrao;

    

end;

type TProdutoEnderecoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idprodutoendereco: String;
    

    function getidprodutoendereco(): String;
    

    procedure setidprodutoendereco(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idprodutoendereco')]
    property idprodutoendereco: String read getidprodutoendereco write setidprodutoendereco;

    

end;

	
implementation

  uses
      api.send;  

function TProdutoEnderecoNovo.getidprodutoendereco: String;
begin
  Result := Self.m_idprodutoendereco;
end;

procedure TProdutoEnderecoNovo.setidprodutoendereco(const a_Value: String);
begin
  Self.m_idprodutoendereco := a_Value;
end;

function TProdutoEnderecoNovo.getproduto: String;
begin
  Result := Self.m_produto;
end;

procedure TProdutoEnderecoNovo.setproduto(const a_Value: String);
begin
  Self.m_produto := a_Value;
end;

function TProdutoEnderecoNovo.getlocaldeestoqueendereco: String;
begin
  Result := Self.m_localdeestoqueendereco;
end;

procedure TProdutoEnderecoNovo.setlocaldeestoqueendereco(const a_Value: String);
begin
  Self.m_localdeestoqueendereco := a_Value;
end;

function TProdutoEnderecoNovo.getlocaldeestoque: String;
begin
  Result := Self.m_localdeestoque;
end;

procedure TProdutoEnderecoNovo.setlocaldeestoque(const a_Value: String);
begin
  Self.m_localdeestoque := a_Value;
end;

function TProdutoEnderecoNovo.getpadrao: Boolean;
begin
  Result := Self.m_padrao;
end;

procedure TProdutoEnderecoNovo.setpadrao(const a_Value: Boolean);
begin
  Self.m_padrao := a_Value;
end;

destructor TProdutoEnderecoNovo.Destroy;
begin

end;

function TProdutoEnderecoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProdutoEnderecoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProdutoEnderecoNovo.getNameAPI(): String;
begin
  Result := 'ProdutoEnderecoNovo';
end;

function TProdutoEnderecoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProdutoEnderecoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProdutoEnderecoAlterar.getidprodutoendereco: String;
begin
  Result := Self.m_idprodutoendereco;
end;

procedure TProdutoEnderecoAlterar.setidprodutoendereco(const a_Value: String);
begin
  Self.m_idprodutoendereco := a_Value;
end;

function TProdutoEnderecoAlterar.getpadrao: Boolean;
begin
  Result := Self.m_padrao;
end;

procedure TProdutoEnderecoAlterar.setpadrao(const a_Value: Boolean);
begin
  Self.m_padrao := a_Value;
end;

destructor TProdutoEnderecoAlterar.Destroy;
begin

end;

function TProdutoEnderecoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProdutoEnderecoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProdutoEnderecoAlterar.getNameAPI(): String;
begin
  Result := 'ProdutoEnderecoAlterar';
end;

function TProdutoEnderecoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProdutoEnderecoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProdutoEnderecoExcluir.getidprodutoendereco: String;
begin
  Result := Self.m_idprodutoendereco;
end;

procedure TProdutoEnderecoExcluir.setidprodutoendereco(const a_Value: String);
begin
  Self.m_idprodutoendereco := a_Value;
end;

destructor TProdutoEnderecoExcluir.Destroy;
begin

end;

function TProdutoEnderecoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProdutoEnderecoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProdutoEnderecoExcluir.getNameAPI(): String;
begin
  Result := 'ProdutoEnderecoExcluir';
end;

function TProdutoEnderecoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProdutoEnderecoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
