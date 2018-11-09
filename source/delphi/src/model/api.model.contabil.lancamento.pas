unit api.model.contabil.lancamento;

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

type TlancamentoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_lancamento: String;
    var m_tipo: Integer;
    var m_data: TDate;
    var m_numero: Integer;
    var m_contadebito: String;
    var m_contacredito: String;
    var m_centrodecusto: String;
    var m_indicadorlancamentofcont: Integer;
    var m_pessoa: String;
    var m_historico: WideString;
    var m_valor: Currency;
    var m_estabelecimento: String;
    var m_ano: Integer;
    var m_usuario: String;
    var m_nomemaquina: String;
    var m_datainclusao: TDate;
    var m_contabilizacao: String;
    var m_bemocorrencia: String;
    var m_lote: String;
    

    function getlancamento(): String;
    function gettipo(): Integer;
    function getdata(): TDate;
    function getnumero(): Integer;
    function getcontadebito(): String;
    function getcontacredito(): String;
    function getcentrodecusto(): String;
    function getindicadorlancamentofcont(): Integer;
    function getpessoa(): String;
    function gethistorico(): WideString;
    function getvalor(): Currency;
    function getestabelecimento(): String;
    function getano(): Integer;
    function getusuario(): String;
    function getnomemaquina(): String;
    function getdatainclusao(): TDate;
    function getcontabilizacao(): String;
    function getbemocorrencia(): String;
    function getlote(): String;
    

    procedure setlancamento(const a_Value: String);
    procedure settipo(const a_Value: Integer);
    procedure setdata(const a_Value: TDate);
    procedure setnumero(const a_Value: Integer);
    procedure setcontadebito(const a_Value: String);
    procedure setcontacredito(const a_Value: String);
    procedure setcentrodecusto(const a_Value: String);
    procedure setindicadorlancamentofcont(const a_Value: Integer);
    procedure setpessoa(const a_Value: String);
    procedure sethistorico(const a_Value: WideString);
    procedure setvalor(const a_Value: Currency);
    procedure setestabelecimento(const a_Value: String);
    procedure setano(const a_Value: Integer);
    procedure setusuario(const a_Value: String);
    procedure setnomemaquina(const a_Value: String);
    procedure setdatainclusao(const a_Value: TDate);
    procedure setcontabilizacao(const a_Value: String);
    procedure setbemocorrencia(const a_Value: String);
    procedure setlote(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lancamento')]
    property lancamento: String read getlancamento write setlancamento;

    /// <summary>
/// 0 - Indefinido, 1 - Lançamentos normal, 2 - Transferencia de Resultado, 3 - Ocorrências Active, 4 - Lançamento de correção monetária, 5 - Lançamento de depreciação, 6 - Conversão de Cruzeiro para Cruzeiro Real, 7 - Conversão de Cruzeiro Real para Real, 8 - Lançamentos de integração com o controller, 9 - Lançamentos de integração com o Persona, 10 - Lançamentos de integração com o Scritta, 11 - Lançamentos oriundos de lotes, 12 - Lançamentos da Contabilização do Imobilizado, 13 - Lançamentos oriundos da importação de extratos, 14 - Impairment, 15 - Reversão do impairment, 16 - Custo Atribuído, 17 - Implantação de Saldo Anterior, 18 - Acréscimo de Bem, 19 - Baixa de Bem, 20 - Perda de Bem e 21 - Reavaliação de Bem. Quando não informado será assumido o valor 0.
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getdata write setdata;

    [NasajonSerializeAttribute('numero')]
    property numero: Integer read getnumero write setnumero;

    [NasajonSerializeAttribute('contadebito')]
    property contadebito: String read getcontadebito write setcontadebito;

    [NasajonSerializeAttribute('contacredito')]
    property contacredito: String read getcontacredito write setcontacredito;

    [NasajonSerializeAttribute('centrodecusto')]
    property centrodecusto: String read getcentrodecusto write setcentrodecusto;

    /// <summary>
/// 1 - Lançamento de Expurgo, 2 - Lançamento Fiscal, 3 - Transferência Fiscal (alteração do plano fiscal - I050), 4 - Transferência de Saldo Fiscal (extinção da conta referencial), 5 - Transferência de Saldo Societário (extinção da conta referencial), 6 - Encerramento Fiscal, 7 - Inicialização de Saldo Fiscal, 8 - Inicialização de Saldo Societário e 9 - Sem Classificação.
    /// </summary>
    [NasajonSerializeAttribute('indicadorlancamentofcont')]
    property indicadorlancamentofcont: Integer read getindicadorlancamentofcont write setindicadorlancamentofcont;

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getpessoa write setpessoa;

    [NasajonSerializeAttribute('historico')]
    property historico: WideString read gethistorico write sethistorico;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getvalor write setvalor;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    /// <summary>
/// Informar o ano de exercício.
    /// </summary>
    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getusuario write setusuario;

    [NasajonSerializeAttribute('nomemaquina')]
    property nomemaquina: String read getnomemaquina write setnomemaquina;

    [NasajonSerializeAttribute('datainclusao')]
    property datainclusao: TDate read getdatainclusao write setdatainclusao;

    [NasajonSerializeAttribute('contabilizacao')]
    property contabilizacao: String read getcontabilizacao write setcontabilizacao;

    [NasajonSerializeAttribute('bemocorrencia')]
    property bemocorrencia: String read getbemocorrencia write setbemocorrencia;

    [NasajonSerializeAttribute('lote')]
    property lote: String read getlote write setlote;

    

end;

type TlancamentoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_lancamento: String;
    var m_data: TDate;
    var m_numero: Integer;
    var m_contadebito: String;
    var m_contacredito: String;
    var m_centrodecusto: String;
    var m_indicadorlancamentofcont: Integer;
    var m_pessoa: String;
    var m_historico: WideString;
    var m_valor: Currency;
    

    function getlancamento(): String;
    function getdata(): TDate;
    function getnumero(): Integer;
    function getcontadebito(): String;
    function getcontacredito(): String;
    function getcentrodecusto(): String;
    function getindicadorlancamentofcont(): Integer;
    function getpessoa(): String;
    function gethistorico(): WideString;
    function getvalor(): Currency;
    

    procedure setlancamento(const a_Value: String);
    procedure setdata(const a_Value: TDate);
    procedure setnumero(const a_Value: Integer);
    procedure setcontadebito(const a_Value: String);
    procedure setcontacredito(const a_Value: String);
    procedure setcentrodecusto(const a_Value: String);
    procedure setindicadorlancamentofcont(const a_Value: Integer);
    procedure setpessoa(const a_Value: String);
    procedure sethistorico(const a_Value: WideString);
    procedure setvalor(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lancamento')]
    property lancamento: String read getlancamento write setlancamento;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getdata write setdata;

    [NasajonSerializeAttribute('numero')]
    property numero: Integer read getnumero write setnumero;

    [NasajonSerializeAttribute('contadebito')]
    property contadebito: String read getcontadebito write setcontadebito;

    [NasajonSerializeAttribute('contacredito')]
    property contacredito: String read getcontacredito write setcontacredito;

    [NasajonSerializeAttribute('centrodecusto')]
    property centrodecusto: String read getcentrodecusto write setcentrodecusto;

    /// <summary>
/// 1 - Lançamento de Expurgo, 2 - Lançamento Fiscal, 3 - Transferência Fiscal (alteração do plano fiscal - I050), 4 - Transferência de Saldo Fiscal (extinção da conta referencial), 5 - Transferência de Saldo Societário (extinção da conta referencial), 6 - Encerramento Fiscal, 7 - Inicialização de Saldo Fiscal, 8 - Inicialização de Saldo Societário e 9 - Sem Classificação.
    /// </summary>
    [NasajonSerializeAttribute('indicadorlancamentofcont')]
    property indicadorlancamentofcont: Integer read getindicadorlancamentofcont write setindicadorlancamentofcont;

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getpessoa write setpessoa;

    [NasajonSerializeAttribute('historico')]
    property historico: WideString read gethistorico write sethistorico;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getvalor write setvalor;

    

end;

type TlancamentoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_lancamento: String;
    

    function getlancamento(): String;
    

    procedure setlancamento(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lancamento')]
    property lancamento: String read getlancamento write setlancamento;

    

end;

	
implementation

  uses
      api.send;  

function TlancamentoNovo.getlancamento: String;
begin
  Result := Self.m_lancamento;
end;

procedure TlancamentoNovo.setlancamento(const a_Value: String);
begin
  Self.m_lancamento := a_Value;
end;

function TlancamentoNovo.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TlancamentoNovo.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TlancamentoNovo.getdata: TDate;
begin
  Result := Self.m_data;
end;

procedure TlancamentoNovo.setdata(const a_Value: TDate);
begin
  Self.m_data := a_Value;
end;

function TlancamentoNovo.getnumero: Integer;
begin
  Result := Self.m_numero;
end;

procedure TlancamentoNovo.setnumero(const a_Value: Integer);
begin
  Self.m_numero := a_Value;
end;

function TlancamentoNovo.getcontadebito: String;
begin
  Result := Self.m_contadebito;
end;

procedure TlancamentoNovo.setcontadebito(const a_Value: String);
begin
  Self.m_contadebito := a_Value;
end;

function TlancamentoNovo.getcontacredito: String;
begin
  Result := Self.m_contacredito;
end;

procedure TlancamentoNovo.setcontacredito(const a_Value: String);
begin
  Self.m_contacredito := a_Value;
end;

function TlancamentoNovo.getcentrodecusto: String;
begin
  Result := Self.m_centrodecusto;
end;

procedure TlancamentoNovo.setcentrodecusto(const a_Value: String);
begin
  Self.m_centrodecusto := a_Value;
end;

function TlancamentoNovo.getindicadorlancamentofcont: Integer;
begin
  Result := Self.m_indicadorlancamentofcont;
end;

procedure TlancamentoNovo.setindicadorlancamentofcont(const a_Value: Integer);
begin
  Self.m_indicadorlancamentofcont := a_Value;
end;

function TlancamentoNovo.getpessoa: String;
begin
  Result := Self.m_pessoa;
end;

procedure TlancamentoNovo.setpessoa(const a_Value: String);
begin
  Self.m_pessoa := a_Value;
end;

function TlancamentoNovo.gethistorico: WideString;
begin
  Result := Self.m_historico;
end;

procedure TlancamentoNovo.sethistorico(const a_Value: WideString);
begin
  Self.m_historico := a_Value;
end;

function TlancamentoNovo.getvalor: Currency;
begin
  Result := Self.m_valor;
end;

procedure TlancamentoNovo.setvalor(const a_Value: Currency);
begin
  Self.m_valor := a_Value;
end;

function TlancamentoNovo.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TlancamentoNovo.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TlancamentoNovo.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TlancamentoNovo.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

function TlancamentoNovo.getusuario: String;
begin
  Result := Self.m_usuario;
end;

procedure TlancamentoNovo.setusuario(const a_Value: String);
begin
  Self.m_usuario := a_Value;
end;

function TlancamentoNovo.getnomemaquina: String;
begin
  Result := Self.m_nomemaquina;
end;

procedure TlancamentoNovo.setnomemaquina(const a_Value: String);
begin
  Self.m_nomemaquina := a_Value;
end;

function TlancamentoNovo.getdatainclusao: TDate;
begin
  Result := Self.m_datainclusao;
end;

procedure TlancamentoNovo.setdatainclusao(const a_Value: TDate);
begin
  Self.m_datainclusao := a_Value;
end;

function TlancamentoNovo.getcontabilizacao: String;
begin
  Result := Self.m_contabilizacao;
end;

procedure TlancamentoNovo.setcontabilizacao(const a_Value: String);
begin
  Self.m_contabilizacao := a_Value;
end;

function TlancamentoNovo.getbemocorrencia: String;
begin
  Result := Self.m_bemocorrencia;
end;

procedure TlancamentoNovo.setbemocorrencia(const a_Value: String);
begin
  Self.m_bemocorrencia := a_Value;
end;

function TlancamentoNovo.getlote: String;
begin
  Result := Self.m_lote;
end;

procedure TlancamentoNovo.setlote(const a_Value: String);
begin
  Self.m_lote := a_Value;
end;

destructor TlancamentoNovo.Destroy;
begin

end;

function TlancamentoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TlancamentoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TlancamentoNovo.getNameAPI(): String;
begin
  Result := 'lancamentoNovo';
end;

function TlancamentoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TlancamentoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TlancamentoAlterar.getlancamento: String;
begin
  Result := Self.m_lancamento;
end;

procedure TlancamentoAlterar.setlancamento(const a_Value: String);
begin
  Self.m_lancamento := a_Value;
end;

function TlancamentoAlterar.getdata: TDate;
begin
  Result := Self.m_data;
end;

procedure TlancamentoAlterar.setdata(const a_Value: TDate);
begin
  Self.m_data := a_Value;
end;

function TlancamentoAlterar.getnumero: Integer;
begin
  Result := Self.m_numero;
end;

procedure TlancamentoAlterar.setnumero(const a_Value: Integer);
begin
  Self.m_numero := a_Value;
end;

function TlancamentoAlterar.getcontadebito: String;
begin
  Result := Self.m_contadebito;
end;

procedure TlancamentoAlterar.setcontadebito(const a_Value: String);
begin
  Self.m_contadebito := a_Value;
end;

function TlancamentoAlterar.getcontacredito: String;
begin
  Result := Self.m_contacredito;
end;

procedure TlancamentoAlterar.setcontacredito(const a_Value: String);
begin
  Self.m_contacredito := a_Value;
end;

function TlancamentoAlterar.getcentrodecusto: String;
begin
  Result := Self.m_centrodecusto;
end;

procedure TlancamentoAlterar.setcentrodecusto(const a_Value: String);
begin
  Self.m_centrodecusto := a_Value;
end;

function TlancamentoAlterar.getindicadorlancamentofcont: Integer;
begin
  Result := Self.m_indicadorlancamentofcont;
end;

procedure TlancamentoAlterar.setindicadorlancamentofcont(const a_Value: Integer);
begin
  Self.m_indicadorlancamentofcont := a_Value;
end;

function TlancamentoAlterar.getpessoa: String;
begin
  Result := Self.m_pessoa;
end;

procedure TlancamentoAlterar.setpessoa(const a_Value: String);
begin
  Self.m_pessoa := a_Value;
end;

function TlancamentoAlterar.gethistorico: WideString;
begin
  Result := Self.m_historico;
end;

procedure TlancamentoAlterar.sethistorico(const a_Value: WideString);
begin
  Self.m_historico := a_Value;
end;

function TlancamentoAlterar.getvalor: Currency;
begin
  Result := Self.m_valor;
end;

procedure TlancamentoAlterar.setvalor(const a_Value: Currency);
begin
  Self.m_valor := a_Value;
end;

destructor TlancamentoAlterar.Destroy;
begin

end;

function TlancamentoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TlancamentoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TlancamentoAlterar.getNameAPI(): String;
begin
  Result := 'lancamentoAlterar';
end;

function TlancamentoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TlancamentoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TlancamentoExcluir.getlancamento: String;
begin
  Result := Self.m_lancamento;
end;

procedure TlancamentoExcluir.setlancamento(const a_Value: String);
begin
  Self.m_lancamento := a_Value;
end;

destructor TlancamentoExcluir.Destroy;
begin

end;

function TlancamentoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TlancamentoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TlancamentoExcluir.getNameAPI(): String;
begin
  Result := 'lancamentoExcluir';
end;

function TlancamentoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TlancamentoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
