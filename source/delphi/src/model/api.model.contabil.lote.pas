unit api.model.contabil.lote;

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
	
  , api.model.contabil.lotelancamento
  , System.Generics.Collections
	

	;

type TloteNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_lote: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_datainicial: TDate;
    var m_datafinal: TDate;
    var m_conta: String;
    var m_usuariocriacao: String;
    var m_ano: Integer;
    var m_estabelecimento: String;
    var m_lancamento: TObjectList<TlotelancamentoNovo>;
    

    function getlote(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getdatainicial(): TDate;
    function getdatafinal(): TDate;
    function getconta(): String;
    function getusuariocriacao(): String;
    function getano(): Integer;
    function getestabelecimento(): String;
    function getlancamento(): TObjectList<TlotelancamentoNovo>;
    

    procedure setlote(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setdatainicial(const a_Value: TDate);
    procedure setdatafinal(const a_Value: TDate);
    procedure setconta(const a_Value: String);
    procedure setusuariocriacao(const a_Value: String);
    procedure setano(const a_Value: Integer);
    procedure setestabelecimento(const a_Value: String);
    procedure setlancamento(const a_Value: TObjectList<TlotelancamentoNovo>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lote')]
    property lote: String read getlote write setlote;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('datainicial')]
    property datainicial: TDate read getdatainicial write setdatainicial;

    [NasajonSerializeAttribute('datafinal')]
    property datafinal: TDate read getdatafinal write setdatafinal;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getconta write setconta;

    [NasajonSerializeAttribute('usuariocriacao')]
    property usuariocriacao: String read getusuariocriacao write setusuariocriacao;

    /// <summary>
/// Informar o ano de excercício do lote
    /// </summary>
    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    [NasajonSerializeAttribute('lancamento')]
    property lancamento: TObjectList<TlotelancamentoNovo> read getlancamento write setlancamento;

    

end;

type TloteExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_lote: String;
    var m_ano: Integer;
    var m_estabelecimento: String;
    

    function getlote(): String;
    function getano(): Integer;
    function getestabelecimento(): String;
    

    procedure setlote(const a_Value: String);
    procedure setano(const a_Value: Integer);
    procedure setestabelecimento(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lote')]
    property lote: String read getlote write setlote;

    /// <summary>
/// Informar o ano de excercício do lote
    /// </summary>
    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    

end;

	
implementation

  uses
      api.send;  

function TloteNovo.getlote: String;
begin
  Result := Self.m_lote;
end;

procedure TloteNovo.setlote(const a_Value: String);
begin
  Self.m_lote := a_Value;
end;

function TloteNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TloteNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TloteNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TloteNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TloteNovo.getdatainicial: TDate;
begin
  Result := Self.m_datainicial;
end;

procedure TloteNovo.setdatainicial(const a_Value: TDate);
begin
  Self.m_datainicial := a_Value;
end;

function TloteNovo.getdatafinal: TDate;
begin
  Result := Self.m_datafinal;
end;

procedure TloteNovo.setdatafinal(const a_Value: TDate);
begin
  Self.m_datafinal := a_Value;
end;

function TloteNovo.getconta: String;
begin
  Result := Self.m_conta;
end;

procedure TloteNovo.setconta(const a_Value: String);
begin
  Self.m_conta := a_Value;
end;

function TloteNovo.getusuariocriacao: String;
begin
  Result := Self.m_usuariocriacao;
end;

procedure TloteNovo.setusuariocriacao(const a_Value: String);
begin
  Self.m_usuariocriacao := a_Value;
end;

function TloteNovo.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TloteNovo.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

function TloteNovo.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TloteNovo.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TloteNovo.getlancamento: TObjectList<TlotelancamentoNovo>;
begin
  if not Assigned(Self.m_lancamento)
    then Self.m_lancamento := TObjectList<TlotelancamentoNovo>.Create();
  Result := Self.m_lancamento;
end;

procedure TloteNovo.setlancamento(const a_Value: TObjectList<TlotelancamentoNovo>);
begin
  Self.m_lancamento := a_Value;
end;

destructor TloteNovo.Destroy;
begin
  Self.lancamento.Free();
end;

function TloteNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TloteNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TloteNovo.getNameAPI(): String;
begin
  Result := 'loteNovo';
end;

function TloteNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TloteNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TloteExcluir.getlote: String;
begin
  Result := Self.m_lote;
end;

procedure TloteExcluir.setlote(const a_Value: String);
begin
  Self.m_lote := a_Value;
end;

function TloteExcluir.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TloteExcluir.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

function TloteExcluir.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TloteExcluir.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

destructor TloteExcluir.Destroy;
begin

end;

function TloteExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TloteExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TloteExcluir.getNameAPI(): String;
begin
  Result := 'loteExcluir';
end;

function TloteExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TloteExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
