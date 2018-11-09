unit api.model.contabil.lotelancamento;

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

type TlotelancamentoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_lancamento: String;
    var m_data: TDate;
    var m_ano: Integer;
    var m_contadebito: String;
    var m_contacredito: String;
    var m_historico: WideString;
    var m_numero: String;
    var m_valor: Currency;
    var m_estabelecimento: String;
    var m_lote: String;
    

    function getlancamento(): String;
    function getdata(): TDate;
    function getano(): Integer;
    function getcontadebito(): String;
    function getcontacredito(): String;
    function gethistorico(): WideString;
    function getnumero(): String;
    function getvalor(): Currency;
    function getestabelecimento(): String;
    function getlote(): String;
    

    procedure setlancamento(const a_Value: String);
    procedure setdata(const a_Value: TDate);
    procedure setano(const a_Value: Integer);
    procedure setcontadebito(const a_Value: String);
    procedure setcontacredito(const a_Value: String);
    procedure sethistorico(const a_Value: WideString);
    procedure setnumero(const a_Value: String);
    procedure setvalor(const a_Value: Currency);
    procedure setestabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('data')]
    property data: TDate read getdata write setdata;

    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    [NasajonSerializeAttribute('contadebito')]
    property contadebito: String read getcontadebito write setcontadebito;

    [NasajonSerializeAttribute('contacredito')]
    property contacredito: String read getcontacredito write setcontacredito;

    [NasajonSerializeAttribute('historico')]
    property historico: WideString read gethistorico write sethistorico;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getnumero write setnumero;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getvalor write setvalor;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    [NasajonSerializeAttribute('lote')]
    property lote: String read getlote write setlote;

    

end;

type TlotelancamentoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_lancamento: String;
    var m_estabelecimento: String;
    var m_lote: String;
    var m_ano: Integer;
    

    function getlancamento(): String;
    function getestabelecimento(): String;
    function getlote(): String;
    function getano(): Integer;
    

    procedure setlancamento(const a_Value: String);
    procedure setestabelecimento(const a_Value: String);
    procedure setlote(const a_Value: String);
    procedure setano(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lancamento')]
    property lancamento: String read getlancamento write setlancamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    [NasajonSerializeAttribute('lote')]
    property lote: String read getlote write setlote;

    /// <summary>
/// Informar o ano de excercício do lote
    /// </summary>
    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    

end;

	
implementation

  uses
      api.send;  

function TlotelancamentoNovo.getlancamento: String;
begin
  Result := Self.m_lancamento;
end;

procedure TlotelancamentoNovo.setlancamento(const a_Value: String);
begin
  Self.m_lancamento := a_Value;
end;

function TlotelancamentoNovo.getdata: TDate;
begin
  Result := Self.m_data;
end;

procedure TlotelancamentoNovo.setdata(const a_Value: TDate);
begin
  Self.m_data := a_Value;
end;

function TlotelancamentoNovo.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TlotelancamentoNovo.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

function TlotelancamentoNovo.getcontadebito: String;
begin
  Result := Self.m_contadebito;
end;

procedure TlotelancamentoNovo.setcontadebito(const a_Value: String);
begin
  Self.m_contadebito := a_Value;
end;

function TlotelancamentoNovo.getcontacredito: String;
begin
  Result := Self.m_contacredito;
end;

procedure TlotelancamentoNovo.setcontacredito(const a_Value: String);
begin
  Self.m_contacredito := a_Value;
end;

function TlotelancamentoNovo.gethistorico: WideString;
begin
  Result := Self.m_historico;
end;

procedure TlotelancamentoNovo.sethistorico(const a_Value: WideString);
begin
  Self.m_historico := a_Value;
end;

function TlotelancamentoNovo.getnumero: String;
begin
  Result := Self.m_numero;
end;

procedure TlotelancamentoNovo.setnumero(const a_Value: String);
begin
  Self.m_numero := a_Value;
end;

function TlotelancamentoNovo.getvalor: Currency;
begin
  Result := Self.m_valor;
end;

procedure TlotelancamentoNovo.setvalor(const a_Value: Currency);
begin
  Self.m_valor := a_Value;
end;

function TlotelancamentoNovo.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TlotelancamentoNovo.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TlotelancamentoNovo.getlote: String;
begin
  Result := Self.m_lote;
end;

procedure TlotelancamentoNovo.setlote(const a_Value: String);
begin
  Self.m_lote := a_Value;
end;

destructor TlotelancamentoNovo.Destroy;
begin

end;

function TlotelancamentoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TlotelancamentoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TlotelancamentoNovo.getNameAPI(): String;
begin
  Result := 'lotelancamentoNovo';
end;

function TlotelancamentoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TlotelancamentoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TlotelancamentoExcluir.getlancamento: String;
begin
  Result := Self.m_lancamento;
end;

procedure TlotelancamentoExcluir.setlancamento(const a_Value: String);
begin
  Self.m_lancamento := a_Value;
end;

function TlotelancamentoExcluir.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TlotelancamentoExcluir.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TlotelancamentoExcluir.getlote: String;
begin
  Result := Self.m_lote;
end;

procedure TlotelancamentoExcluir.setlote(const a_Value: String);
begin
  Self.m_lote := a_Value;
end;

function TlotelancamentoExcluir.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TlotelancamentoExcluir.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

destructor TlotelancamentoExcluir.Destroy;
begin

end;

function TlotelancamentoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TlotelancamentoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TlotelancamentoExcluir.getNameAPI(): String;
begin
  Result := 'lotelancamentoExcluir';
end;

function TlotelancamentoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TlotelancamentoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
