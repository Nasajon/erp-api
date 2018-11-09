unit api.model.ns.Conjunto;

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
	
  , api.model.ns.estabelecimento
  , System.Generics.Collections
	

	;

type TConjunto = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Conjunto: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Cadastro: Integer;
    var m_Estabelecimentos: TObjectList<TEstabelecimento>;
    

    function getConjunto(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getCadastro(): Integer;
    function getEstabelecimentos(): TObjectList<TEstabelecimento>;
    

    procedure setConjunto(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setCadastro(const a_Value: Integer);
    procedure setEstabelecimentos(const a_Value: TObjectList<TEstabelecimento>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Indica que tipo de cadastro o cojunto suporta:
/// 				   			0 - Produto
/// 				   			1 - Unidade
/// 				   			2 - Combustível
/// 				   			3 - Serviço
/// 				   			4 - Classificação dos Participantes
/// 				   			5 - Ficha
/// 				   			6 - Cliente
/// 				   			7 - Fornecedor
/// 				   			8 - Transportadora
/// 				   			9 - Vendedor
/// 				   			10 - Serviço de Catálogo
/// 				   			11 - Modelo de Contrato
/// 				   			12 - Técnico
/// 				   			13 - Rubrica
    /// </summary>
    [NasajonSerializeAttribute('cadastro')]
    property cadastro: Integer read getCadastro write setCadastro;

    [NasajonSerializeAttribute('estabelecimentos')]
    property estabelecimentos: TObjectList<TEstabelecimento> read getEstabelecimentos write setEstabelecimentos;

    

end;

type TConjuntoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Conjunto: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Cadastro: Integer;
    var m_Estabelecimentos: TObjectList<TEstabelecimento>;
    

    function getConjunto(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getCadastro(): Integer;
    function getEstabelecimentos(): TObjectList<TEstabelecimento>;
    

    procedure setConjunto(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setCadastro(const a_Value: Integer);
    procedure setEstabelecimentos(const a_Value: TObjectList<TEstabelecimento>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Indica que tipo de cadastro o cojunto suporta:
/// 				   			0 - Produto
/// 				   			1 - Unidade
/// 				   			2 - Combustível
/// 				   			3 - Serviço
/// 				   			4 - Classificação dos Participantes
/// 				   			5 - Ficha
/// 				   			6 - Cliente
/// 				   			7 - Fornecedor
/// 				   			8 - Transportadora
/// 				   			9 - Vendedor
/// 				   			10 - Serviço de Catálogo
/// 				   			11 - Modelo de Contrato
/// 				   			12 - Técnico
/// 				   			13 - Rubrica
    /// </summary>
    [NasajonSerializeAttribute('cadastro')]
    property cadastro: Integer read getCadastro write setCadastro;

    [NasajonSerializeAttribute('estabelecimentos')]
    property estabelecimentos: TObjectList<TEstabelecimento> read getEstabelecimentos write setEstabelecimentos;

    

end;

type TConjuntoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Conjunto: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Cadastro: Integer;
    var m_Estabelecimentos: TObjectList<TEstabelecimento>;
    

    function getConjunto(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getCadastro(): Integer;
    function getEstabelecimentos(): TObjectList<TEstabelecimento>;
    

    procedure setConjunto(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setCadastro(const a_Value: Integer);
    procedure setEstabelecimentos(const a_Value: TObjectList<TEstabelecimento>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Indica que tipo de cadastro o cojunto suporta:
/// 				   			0 - Produto
/// 				   			1 - Unidade
/// 				   			2 - Combustível
/// 				   			3 - Serviço
/// 				   			4 - Classificação dos Participantes
/// 				   			5 - Ficha
/// 				   			6 - Cliente
/// 				   			7 - Fornecedor
/// 				   			8 - Transportadora
/// 				   			9 - Vendedor
/// 				   			10 - Serviço de Catálogo
/// 				   			11 - Modelo de Contrato
/// 				   			12 - Técnico
/// 				   			13 - Rubrica
    /// </summary>
    [NasajonSerializeAttribute('cadastro')]
    property cadastro: Integer read getCadastro write setCadastro;

    [NasajonSerializeAttribute('estabelecimentos')]
    property estabelecimentos: TObjectList<TEstabelecimento> read getEstabelecimentos write setEstabelecimentos;

    

end;

type TConjuntoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Conjunto: String;
    var m_Cadastro: Integer;
    

    function getConjunto(): String;
    function getCadastro(): Integer;
    

    procedure setConjunto(const a_Value: String);
    procedure setCadastro(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    /// <summary>
/// Indica que tipo de cadastro o cojunto suporta:
/// 				   			0 - Produto
/// 				   			1 - Unidade
/// 				   			2 - Combustível
/// 				   			3 - Serviço
/// 				   			4 - Classificação dos Participantes
/// 				   			5 - Ficha
/// 				   			6 - Cliente
/// 				   			7 - Fornecedor
/// 				   			8 - Transportadora
/// 				   			9 - Vendedor
/// 				   			10 - Serviço de Catálogo
/// 				   			11 - Modelo de Contrato
/// 				   			12 - Técnico
/// 				   			13 - Rubrica
    /// </summary>
    [NasajonSerializeAttribute('cadastro')]
    property cadastro: Integer read getCadastro write setCadastro;

    

end;

	
implementation

  uses
      api.send;  

function TConjunto.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TConjunto.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TConjunto.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TConjunto.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TConjunto.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TConjunto.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TConjunto.getCadastro: Integer;
begin
  Result := Self.m_Cadastro;
end;

procedure TConjunto.setCadastro(const a_Value: Integer);
begin
  Self.m_Cadastro := a_Value;
end;

function TConjunto.getEstabelecimentos: TObjectList<TEstabelecimento>;
begin
  if not Assigned(Self.m_Estabelecimentos)
    then Self.m_Estabelecimentos := TObjectList<TEstabelecimento>.Create();
  Result := Self.m_Estabelecimentos;
end;

procedure TConjunto.setEstabelecimentos(const a_Value: TObjectList<TEstabelecimento>);
begin
  Self.m_Estabelecimentos := a_Value;
end;

destructor TConjunto.Destroy;
begin
  Self.Estabelecimentos.Free();
end;

function TConjunto.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConjunto.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConjunto.getNameAPI(): String;
begin
  Result := 'Conjunto';
end;

function TConjunto.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConjunto.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TConjuntoNovo.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TConjuntoNovo.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TConjuntoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TConjuntoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TConjuntoNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TConjuntoNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TConjuntoNovo.getCadastro: Integer;
begin
  Result := Self.m_Cadastro;
end;

procedure TConjuntoNovo.setCadastro(const a_Value: Integer);
begin
  Self.m_Cadastro := a_Value;
end;

function TConjuntoNovo.getEstabelecimentos: TObjectList<TEstabelecimento>;
begin
  if not Assigned(Self.m_Estabelecimentos)
    then Self.m_Estabelecimentos := TObjectList<TEstabelecimento>.Create();
  Result := Self.m_Estabelecimentos;
end;

procedure TConjuntoNovo.setEstabelecimentos(const a_Value: TObjectList<TEstabelecimento>);
begin
  Self.m_Estabelecimentos := a_Value;
end;

destructor TConjuntoNovo.Destroy;
begin
  Self.Estabelecimentos.Free();
end;

function TConjuntoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConjuntoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConjuntoNovo.getNameAPI(): String;
begin
  Result := 'ConjuntoNovo';
end;

function TConjuntoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConjuntoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TConjuntoAlterar.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TConjuntoAlterar.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TConjuntoAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TConjuntoAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TConjuntoAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TConjuntoAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TConjuntoAlterar.getCadastro: Integer;
begin
  Result := Self.m_Cadastro;
end;

procedure TConjuntoAlterar.setCadastro(const a_Value: Integer);
begin
  Self.m_Cadastro := a_Value;
end;

function TConjuntoAlterar.getEstabelecimentos: TObjectList<TEstabelecimento>;
begin
  if not Assigned(Self.m_Estabelecimentos)
    then Self.m_Estabelecimentos := TObjectList<TEstabelecimento>.Create();
  Result := Self.m_Estabelecimentos;
end;

procedure TConjuntoAlterar.setEstabelecimentos(const a_Value: TObjectList<TEstabelecimento>);
begin
  Self.m_Estabelecimentos := a_Value;
end;

destructor TConjuntoAlterar.Destroy;
begin
  Self.Estabelecimentos.Free();
end;

function TConjuntoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConjuntoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConjuntoAlterar.getNameAPI(): String;
begin
  Result := 'ConjuntoAlterar';
end;

function TConjuntoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConjuntoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TConjuntoExcluir.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TConjuntoExcluir.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TConjuntoExcluir.getCadastro: Integer;
begin
  Result := Self.m_Cadastro;
end;

procedure TConjuntoExcluir.setCadastro(const a_Value: Integer);
begin
  Self.m_Cadastro := a_Value;
end;

destructor TConjuntoExcluir.Destroy;
begin

end;

function TConjuntoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConjuntoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConjuntoExcluir.getNameAPI(): String;
begin
  Result := 'ConjuntoExcluir';
end;

function TConjuntoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConjuntoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
