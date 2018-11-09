unit api.model.servicos.importacao_rateio;

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

type Timportacao_rateio = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Discriminacao: String;
    var m_ClassificacaoFinanceira: String;
    var m_CentroCusto: String;
    var m_Projeto: String;
    var m_Valor: Currency;
    var m_Percentual: Currency;
    

    function getDiscriminacao(): String;
    function getClassificacaoFinanceira(): String;
    function getCentroCusto(): String;
    function getProjeto(): String;
    function getValor(): Currency;
    function getPercentual(): Currency;
    

    procedure setDiscriminacao(const a_Value: String);
    procedure setClassificacaoFinanceira(const a_Value: String);
    procedure setCentroCusto(const a_Value: String);
    procedure setProjeto(const a_Value: String);
    procedure setValor(const a_Value: Currency);
    procedure setPercentual(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Identifica o rateio financeiro
    /// </summary>
    [NasajonSerializeAttribute('discriminacao')]
    property discriminacao: String read getDiscriminacao write setDiscriminacao;

    /// <summary>
/// Identificador da classificação financeira do rateio financeiro
    /// </summary>
    [NasajonSerializeAttribute('classificacaofinanceira')]
    property classificacaofinanceira: String read getClassificacaoFinanceira write setClassificacaoFinanceira;

    /// <summary>
/// Identificador do centro de custo do rateio financeiro
    /// </summary>
    [NasajonSerializeAttribute('centrocusto')]
    property centrocusto: String read getCentroCusto write setCentroCusto;

    /// <summary>
/// Identificador do projeto do rateio financeiro
    /// </summary>
    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getProjeto write setProjeto;

    /// <summary>
/// Identifica o valor do rateio financeiro
    /// </summary>
    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    /// <summary>
/// Identifica o percentual do rateio financeiro
    /// </summary>
    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    

end;

	
implementation

  uses
      api.send;  

function Timportacao_rateio.getDiscriminacao: String;
begin
  Result := Self.m_Discriminacao;
end;

procedure Timportacao_rateio.setDiscriminacao(const a_Value: String);
begin
  Self.m_Discriminacao := a_Value;
end;

function Timportacao_rateio.getClassificacaoFinanceira: String;
begin
  Result := Self.m_ClassificacaoFinanceira;
end;

procedure Timportacao_rateio.setClassificacaoFinanceira(const a_Value: String);
begin
  Self.m_ClassificacaoFinanceira := a_Value;
end;

function Timportacao_rateio.getCentroCusto: String;
begin
  Result := Self.m_CentroCusto;
end;

procedure Timportacao_rateio.setCentroCusto(const a_Value: String);
begin
  Self.m_CentroCusto := a_Value;
end;

function Timportacao_rateio.getProjeto: String;
begin
  Result := Self.m_Projeto;
end;

procedure Timportacao_rateio.setProjeto(const a_Value: String);
begin
  Self.m_Projeto := a_Value;
end;

function Timportacao_rateio.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure Timportacao_rateio.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function Timportacao_rateio.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure Timportacao_rateio.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

destructor Timportacao_rateio.Destroy;
begin

end;

function Timportacao_rateio.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Timportacao_rateio.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Timportacao_rateio.getNameAPI(): String;
begin
  Result := 'importacao_rateio';
end;

function Timportacao_rateio.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Timportacao_rateio.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
