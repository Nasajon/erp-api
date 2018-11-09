unit api.model.estoque.LocalDeEstoque;

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

type TLocalDeEstoqueNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idlocaldeestoque: String;
    var m_estabelecimento: String;
    var m_codigo: String;
    var m_nome: String;
    var m_tipo: Integer;
    

    function getidlocaldeestoque(): String;
    function getestabelecimento(): String;
    function getcodigo(): String;
    function getnome(): String;
    function gettipo(): Integer;
    

    procedure setidlocaldeestoque(const a_Value: String);
    procedure setestabelecimento(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure settipo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idlocaldeestoque')]
    property idlocaldeestoque: String read getidlocaldeestoque write setidlocaldeestoque;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    

end;

type TLocalDeEstoqueAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idlocaldeestoque: String;
    var m_codigo: String;
    var m_nome: String;
    var m_tipo: Integer;
    

    function getidlocaldeestoque(): String;
    function getcodigo(): String;
    function getnome(): String;
    function gettipo(): Integer;
    

    procedure setidlocaldeestoque(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure settipo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idlocaldeestoque')]
    property idlocaldeestoque: String read getidlocaldeestoque write setidlocaldeestoque;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    

end;

type TLocalDeEstoqueExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idlocaldeestoque: String;
    

    function getidlocaldeestoque(): String;
    

    procedure setidlocaldeestoque(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idlocaldeestoque')]
    property idlocaldeestoque: String read getidlocaldeestoque write setidlocaldeestoque;

    

end;

	
implementation

  uses
      api.send;  

function TLocalDeEstoqueNovo.getidlocaldeestoque: String;
begin
  Result := Self.m_idlocaldeestoque;
end;

procedure TLocalDeEstoqueNovo.setidlocaldeestoque(const a_Value: String);
begin
  Self.m_idlocaldeestoque := a_Value;
end;

function TLocalDeEstoqueNovo.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TLocalDeEstoqueNovo.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TLocalDeEstoqueNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TLocalDeEstoqueNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TLocalDeEstoqueNovo.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TLocalDeEstoqueNovo.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TLocalDeEstoqueNovo.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TLocalDeEstoqueNovo.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

destructor TLocalDeEstoqueNovo.Destroy;
begin

end;

function TLocalDeEstoqueNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLocalDeEstoqueNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLocalDeEstoqueNovo.getNameAPI(): String;
begin
  Result := 'LocalDeEstoqueNovo';
end;

function TLocalDeEstoqueNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLocalDeEstoqueNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLocalDeEstoqueAlterar.getidlocaldeestoque: String;
begin
  Result := Self.m_idlocaldeestoque;
end;

procedure TLocalDeEstoqueAlterar.setidlocaldeestoque(const a_Value: String);
begin
  Self.m_idlocaldeestoque := a_Value;
end;

function TLocalDeEstoqueAlterar.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TLocalDeEstoqueAlterar.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TLocalDeEstoqueAlterar.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TLocalDeEstoqueAlterar.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TLocalDeEstoqueAlterar.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TLocalDeEstoqueAlterar.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

destructor TLocalDeEstoqueAlterar.Destroy;
begin

end;

function TLocalDeEstoqueAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLocalDeEstoqueAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLocalDeEstoqueAlterar.getNameAPI(): String;
begin
  Result := 'LocalDeEstoqueAlterar';
end;

function TLocalDeEstoqueAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLocalDeEstoqueAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLocalDeEstoqueExcluir.getidlocaldeestoque: String;
begin
  Result := Self.m_idlocaldeestoque;
end;

procedure TLocalDeEstoqueExcluir.setidlocaldeestoque(const a_Value: String);
begin
  Self.m_idlocaldeestoque := a_Value;
end;

destructor TLocalDeEstoqueExcluir.Destroy;
begin

end;

function TLocalDeEstoqueExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLocalDeEstoqueExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLocalDeEstoqueExcluir.getNameAPI(): String;
begin
  Result := 'LocalDeEstoqueExcluir';
end;

function TLocalDeEstoqueExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLocalDeEstoqueExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
