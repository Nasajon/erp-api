unit api.model.ns.Parcela;

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

type TParcela = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Parcela: String;
    var m_Pagamento: String;
    var m_Numero: String;
    var m_Valor: Currency;
    var m_Vencimento: TDate;
    var m_Sequencial: Integer;
    var m_Conta: String;
    var m_ValorCreditoaUtilizar: Currency;
    var m_UsarSaldoCredito: Boolean;
    var m_id_owner: String;
    var m_competencia: TDate;
    var m_basevencimentoparcela: String;
    var m_percentual: Currency;
    var m_intervalo: Integer;
    var m_sinal: Boolean;
    

    function getParcela(): String;
    function getPagamento(): String;
    function getNumero(): String;
    function getValor(): Currency;
    function getVencimento(): TDate;
    function getSequencial(): Integer;
    function getConta(): String;
    function getValorCreditoaUtilizar(): Currency;
    function getUsarSaldoCredito(): Boolean;
    function getid_owner(): String;
    function getcompetencia(): TDate;
    function getbasevencimentoparcela(): String;
    function getpercentual(): Currency;
    function getintervalo(): Integer;
    function getsinal(): Boolean;
    

    procedure setParcela(const a_Value: String);
    procedure setPagamento(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setValor(const a_Value: Currency);
    procedure setVencimento(const a_Value: TDate);
    procedure setSequencial(const a_Value: Integer);
    procedure setConta(const a_Value: String);
    procedure setValorCreditoaUtilizar(const a_Value: Currency);
    procedure setUsarSaldoCredito(const a_Value: Boolean);
    procedure setid_owner(const a_Value: String);
    procedure setcompetencia(const a_Value: TDate);
    procedure setbasevencimentoparcela(const a_Value: String);
    procedure setpercentual(const a_Value: Currency);
    procedure setintervalo(const a_Value: Integer);
    procedure setsinal(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('parcela')]
    property parcela: String read getParcela write setParcela;

    [NasajonSerializeAttribute('pagamento')]
    property pagamento: String read getPagamento write setPagamento;

    /// <summary>
/// Informe o número do documento que originou a parcela.
    /// </summary>
    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    [NasajonSerializeAttribute('vencimento')]
    property vencimento: TDate read getVencimento write setVencimento;

    /// <summary>
/// Número da parcela.
    /// </summary>
    [NasajonSerializeAttribute('sequencial')]
    property sequencial: Integer read getSequencial write setSequencial;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    [NasajonSerializeAttribute('valorcreditoautilizar')]
    property valorcreditoautilizar: Currency read getValorCreditoaUtilizar write setValorCreditoaUtilizar;

    [NasajonSerializeAttribute('usarsaldocredito')]
    property usarsaldocredito: Boolean read getUsarSaldoCredito write setUsarSaldoCredito;

    [NasajonSerializeAttribute('id_owner')]
    property id_owner: String read getid_owner write setid_owner;

    [NasajonSerializeAttribute('competencia')]
    property competencia: TDate read getcompetencia write setcompetencia;

    [NasajonSerializeAttribute('basevencimentoparcela')]
    property basevencimentoparcela: String read getbasevencimentoparcela write setbasevencimentoparcela;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getpercentual write setpercentual;

    [NasajonSerializeAttribute('intervalo')]
    property intervalo: Integer read getintervalo write setintervalo;

    [NasajonSerializeAttribute('sinal')]
    property sinal: Boolean read getsinal write setsinal;

    

end;

	
implementation

  uses
      api.send;  

function TParcela.getParcela: String;
begin
  Result := Self.m_Parcela;
end;

procedure TParcela.setParcela(const a_Value: String);
begin
  Self.m_Parcela := a_Value;
end;

function TParcela.getPagamento: String;
begin
  Result := Self.m_Pagamento;
end;

procedure TParcela.setPagamento(const a_Value: String);
begin
  Self.m_Pagamento := a_Value;
end;

function TParcela.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TParcela.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TParcela.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TParcela.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TParcela.getVencimento: TDate;
begin
  Result := Self.m_Vencimento;
end;

procedure TParcela.setVencimento(const a_Value: TDate);
begin
  Self.m_Vencimento := a_Value;
end;

function TParcela.getSequencial: Integer;
begin
  Result := Self.m_Sequencial;
end;

procedure TParcela.setSequencial(const a_Value: Integer);
begin
  Self.m_Sequencial := a_Value;
end;

function TParcela.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TParcela.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TParcela.getValorCreditoaUtilizar: Currency;
begin
  Result := Self.m_ValorCreditoaUtilizar;
end;

procedure TParcela.setValorCreditoaUtilizar(const a_Value: Currency);
begin
  Self.m_ValorCreditoaUtilizar := a_Value;
end;

function TParcela.getUsarSaldoCredito: Boolean;
begin
  Result := Self.m_UsarSaldoCredito;
end;

procedure TParcela.setUsarSaldoCredito(const a_Value: Boolean);
begin
  Self.m_UsarSaldoCredito := a_Value;
end;

function TParcela.getid_owner: String;
begin
  Result := Self.m_id_owner;
end;

procedure TParcela.setid_owner(const a_Value: String);
begin
  Self.m_id_owner := a_Value;
end;

function TParcela.getcompetencia: TDate;
begin
  Result := Self.m_competencia;
end;

procedure TParcela.setcompetencia(const a_Value: TDate);
begin
  Self.m_competencia := a_Value;
end;

function TParcela.getbasevencimentoparcela: String;
begin
  Result := Self.m_basevencimentoparcela;
end;

procedure TParcela.setbasevencimentoparcela(const a_Value: String);
begin
  Self.m_basevencimentoparcela := a_Value;
end;

function TParcela.getpercentual: Currency;
begin
  Result := Self.m_percentual;
end;

procedure TParcela.setpercentual(const a_Value: Currency);
begin
  Self.m_percentual := a_Value;
end;

function TParcela.getintervalo: Integer;
begin
  Result := Self.m_intervalo;
end;

procedure TParcela.setintervalo(const a_Value: Integer);
begin
  Self.m_intervalo := a_Value;
end;

function TParcela.getsinal: Boolean;
begin
  Result := Self.m_sinal;
end;

procedure TParcela.setsinal(const a_Value: Boolean);
begin
  Self.m_sinal := a_Value;
end;

destructor TParcela.Destroy;
begin

end;

function TParcela.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TParcela.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TParcela.getNameAPI(): String;
begin
  Result := 'Parcela';
end;

function TParcela.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TParcela.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
