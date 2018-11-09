unit api.model.financas.LancamentoConta;

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
	
  , api.model.financas.Conta_v2
  , api.model.financas.ItemRateioFinanceiro
  , System.Generics.Collections
	

	;

type TLancamentoContaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Conta: TConta_v2Novo;
    var m_Data: TDate;
    var m_Documento: String;
    var m_Sinal: Integer;
    var m_Valor: Currency;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    var m_Contabilizar: Boolean;
    var m_Historico: String;
    

    function getId(): String;
    function getConta(): TConta_v2Novo;
    function getData(): TDate;
    function getDocumento(): String;
    function getSinal(): Integer;
    function getValor(): Currency;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    function getContabilizar(): Boolean;
    function getHistorico(): String;
    

    procedure setId(const a_Value: String);
    procedure setConta(const a_Value: TConta_v2Novo);
    procedure setData(const a_Value: TDate);
    procedure setDocumento(const a_Value: String);
    procedure setSinal(const a_Value: Integer);
    procedure setValor(const a_Value: Currency);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setContabilizar(const a_Value: Boolean);
    procedure setHistorico(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('conta')]
    property conta: TConta_v2Novo read getConta write setConta;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('documento')]
    property documento: String read getDocumento write setDocumento;

    /// <summary>
/// Débito - 0; Crédito - 1;
    /// </summary>
    [NasajonSerializeAttribute('sinal')]
    property sinal: Integer read getSinal write setSinal;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira e centro de custo.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    /// <summary>
/// Default False
    /// </summary>
    [NasajonSerializeAttribute('contabilizar')]
    property contabilizar: Boolean read getContabilizar write setContabilizar;

    [NasajonSerializeAttribute('historico')]
    property historico: String read getHistorico write setHistorico;

    

end;

	
implementation

  uses
      api.send;  

function TLancamentoContaNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TLancamentoContaNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TLancamentoContaNovo.getConta: TConta_v2Novo;
begin
  if not Assigned(Self.m_Conta)
    then Self.m_Conta := TConta_v2Novo.Create();
  Result := Self.m_Conta;
end;

procedure TLancamentoContaNovo.setConta(const a_Value: TConta_v2Novo);
begin
  Self.m_Conta := a_Value;
end;

function TLancamentoContaNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TLancamentoContaNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TLancamentoContaNovo.getDocumento: String;
begin
  Result := Self.m_Documento;
end;

procedure TLancamentoContaNovo.setDocumento(const a_Value: String);
begin
  Self.m_Documento := a_Value;
end;

function TLancamentoContaNovo.getSinal: Integer;
begin
  Result := Self.m_Sinal;
end;

procedure TLancamentoContaNovo.setSinal(const a_Value: Integer);
begin
  Self.m_Sinal := a_Value;
end;

function TLancamentoContaNovo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TLancamentoContaNovo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TLancamentoContaNovo.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TLancamentoContaNovo.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TLancamentoContaNovo.getContabilizar: Boolean;
begin
  Result := Self.m_Contabilizar;
end;

procedure TLancamentoContaNovo.setContabilizar(const a_Value: Boolean);
begin
  Self.m_Contabilizar := a_Value;
end;

function TLancamentoContaNovo.getHistorico: String;
begin
  Result := Self.m_Historico;
end;

procedure TLancamentoContaNovo.setHistorico(const a_Value: String);
begin
  Self.m_Historico := a_Value;
end;

destructor TLancamentoContaNovo.Destroy;
begin
  Self.Conta.Free();  Self.RateioFinanceiro.Free();
end;

function TLancamentoContaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLancamentoContaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLancamentoContaNovo.getNameAPI(): String;
begin
  Result := 'LancamentoContaNovo';
end;

function TLancamentoContaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLancamentoContaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
