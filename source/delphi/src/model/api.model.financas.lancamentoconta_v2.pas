unit api.model.financas.LancamentoConta_v2;

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
	
  , api.model.financas.ItemRateioFinanceiro
  , System.Generics.Collections
	

	;

type TLancamentoConta_v2Novo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Conta: String;
    var m_Data: TDate;
    var m_DataCompetencia: TDate;
    var m_Documento: String;
    var m_Historico: String;
    var m_Sinal: Integer;
    var m_Valor: Currency;
    var m_ImprimeCheque: Boolean;
    var m_VersoCheque: String;
    var m_Favorecido: String;
    var m_Contabilizar: Boolean;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getConta(): String;
    function getData(): TDate;
    function getDataCompetencia(): TDate;
    function getDocumento(): String;
    function getHistorico(): String;
    function getSinal(): Integer;
    function getValor(): Currency;
    function getImprimeCheque(): Boolean;
    function getVersoCheque(): String;
    function getFavorecido(): String;
    function getContabilizar(): Boolean;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setConta(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setDataCompetencia(const a_Value: TDate);
    procedure setDocumento(const a_Value: String);
    procedure setHistorico(const a_Value: String);
    procedure setSinal(const a_Value: Integer);
    procedure setValor(const a_Value: Currency);
    procedure setImprimeCheque(const a_Value: Boolean);
    procedure setVersoCheque(const a_Value: String);
    procedure setFavorecido(const a_Value: String);
    procedure setContabilizar(const a_Value: Boolean);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Identificador do lançamento. Quando não informado será gerado automaticamente.
    /// </summary>
    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    /// <summary>
/// Estabelecimento da conta na qual o lançamento pertence.
    /// </summary>
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Conta na qual o lançamento pertence.
    /// </summary>
    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    /// <summary>
/// Data do lançamento. Quando não informada assumirá a data do servidor.
    /// </summary>
    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    /// <summary>
/// Data da competência do lançamento. Quando não informada assumirá a data do próprio lançamento.
    /// </summary>
    [NasajonSerializeAttribute('datacompetencia')]
    property datacompetencia: TDate read getDataCompetencia write setDataCompetencia;

    /// <summary>
/// Código para identificar o lançamento.
    /// </summary>
    [NasajonSerializeAttribute('documento')]
    property documento: String read getDocumento write setDocumento;

    /// <summary>
/// Histórico do lançamento.
    /// </summary>
    [NasajonSerializeAttribute('historico')]
    property historico: String read getHistorico write setHistorico;

    /// <summary>
/// Indica se é um débito ou crédito: 0 - Débito; 1 - Crédito;
    /// </summary>
    [NasajonSerializeAttribute('sinal')]
    property sinal: Integer read getSinal write setSinal;

    /// <summary>
/// Valor do lançamento.
    /// </summary>
    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    /// <summary>
/// Quando for uma lançamento de débito, ter a possibilidade de gerar um lançamento preparado para uma impressão em cheque.
    /// </summary>
    [NasajonSerializeAttribute('imprimecheque')]
    property imprimecheque: Boolean read getImprimeCheque write setImprimeCheque;

    /// <summary>
/// Informações para ser impressa no verso do cheque caso o mesmo seja impresso.
    /// </summary>
    [NasajonSerializeAttribute('versocheque')]
    property versocheque: String read getVersoCheque write setVersoCheque;

    /// <summary>
/// Nome do favorecido para ser usado na impressão do cheque.
    /// </summary>
    [NasajonSerializeAttribute('favorecido')]
    property favorecido: String read getFavorecido write setFavorecido;

    /// <summary>
/// Indica se o lançamento pode ser contabilizado. Quando não informado assume o valor False.
    /// </summary>
    [NasajonSerializeAttribute('contabilizar')]
    property contabilizar: Boolean read getContabilizar write setContabilizar;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira, centro de custo e projeto.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    

end;

	
implementation

  uses
      api.send;  

function TLancamentoConta_v2Novo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TLancamentoConta_v2Novo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TLancamentoConta_v2Novo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TLancamentoConta_v2Novo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TLancamentoConta_v2Novo.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TLancamentoConta_v2Novo.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TLancamentoConta_v2Novo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TLancamentoConta_v2Novo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TLancamentoConta_v2Novo.getDataCompetencia: TDate;
begin
  Result := Self.m_DataCompetencia;
end;

procedure TLancamentoConta_v2Novo.setDataCompetencia(const a_Value: TDate);
begin
  Self.m_DataCompetencia := a_Value;
end;

function TLancamentoConta_v2Novo.getDocumento: String;
begin
  Result := Self.m_Documento;
end;

procedure TLancamentoConta_v2Novo.setDocumento(const a_Value: String);
begin
  Self.m_Documento := a_Value;
end;

function TLancamentoConta_v2Novo.getHistorico: String;
begin
  Result := Self.m_Historico;
end;

procedure TLancamentoConta_v2Novo.setHistorico(const a_Value: String);
begin
  Self.m_Historico := a_Value;
end;

function TLancamentoConta_v2Novo.getSinal: Integer;
begin
  Result := Self.m_Sinal;
end;

procedure TLancamentoConta_v2Novo.setSinal(const a_Value: Integer);
begin
  Self.m_Sinal := a_Value;
end;

function TLancamentoConta_v2Novo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TLancamentoConta_v2Novo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TLancamentoConta_v2Novo.getImprimeCheque: Boolean;
begin
  Result := Self.m_ImprimeCheque;
end;

procedure TLancamentoConta_v2Novo.setImprimeCheque(const a_Value: Boolean);
begin
  Self.m_ImprimeCheque := a_Value;
end;

function TLancamentoConta_v2Novo.getVersoCheque: String;
begin
  Result := Self.m_VersoCheque;
end;

procedure TLancamentoConta_v2Novo.setVersoCheque(const a_Value: String);
begin
  Self.m_VersoCheque := a_Value;
end;

function TLancamentoConta_v2Novo.getFavorecido: String;
begin
  Result := Self.m_Favorecido;
end;

procedure TLancamentoConta_v2Novo.setFavorecido(const a_Value: String);
begin
  Self.m_Favorecido := a_Value;
end;

function TLancamentoConta_v2Novo.getContabilizar: Boolean;
begin
  Result := Self.m_Contabilizar;
end;

procedure TLancamentoConta_v2Novo.setContabilizar(const a_Value: Boolean);
begin
  Self.m_Contabilizar := a_Value;
end;

function TLancamentoConta_v2Novo.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TLancamentoConta_v2Novo.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

destructor TLancamentoConta_v2Novo.Destroy;
begin
  Self.RateioFinanceiro.Free();
end;

function TLancamentoConta_v2Novo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLancamentoConta_v2Novo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLancamentoConta_v2Novo.getNameAPI(): String;
begin
  Result := 'LancamentoConta_v2Novo';
end;

function TLancamentoConta_v2Novo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLancamentoConta_v2Novo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
