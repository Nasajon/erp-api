unit api.model.servicos.importacao_parcela;

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

type Timportacao_parcela = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Valor: Currency;
    var m_DataVencimento: TDate;
    var m_Sequencial: Integer;
    

    function getValor(): Currency;
    function getDataVencimento(): TDate;
    function getSequencial(): Integer;
    

    procedure setValor(const a_Value: Currency);
    procedure setDataVencimento(const a_Value: TDate);
    procedure setSequencial(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Identifica o valor da parcela
    /// </summary>
    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    /// <summary>
/// Identifica a data de vencimento da parcela
    /// </summary>
    [NasajonSerializeAttribute('datavencimento')]
    property datavencimento: TDate read getDataVencimento write setDataVencimento;

    /// <summary>
/// Identifica o número da parcela
    /// </summary>
    [NasajonSerializeAttribute('sequencial')]
    property sequencial: Integer read getSequencial write setSequencial;

    

end;

	
implementation

  uses
      api.send;  

function Timportacao_parcela.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure Timportacao_parcela.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function Timportacao_parcela.getDataVencimento: TDate;
begin
  Result := Self.m_DataVencimento;
end;

procedure Timportacao_parcela.setDataVencimento(const a_Value: TDate);
begin
  Self.m_DataVencimento := a_Value;
end;

function Timportacao_parcela.getSequencial: Integer;
begin
  Result := Self.m_Sequencial;
end;

procedure Timportacao_parcela.setSequencial(const a_Value: Integer);
begin
  Self.m_Sequencial := a_Value;
end;

destructor Timportacao_parcela.Destroy;
begin

end;

function Timportacao_parcela.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Timportacao_parcela.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Timportacao_parcela.getNameAPI(): String;
begin
  Result := 'importacao_parcela';
end;

function Timportacao_parcela.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Timportacao_parcela.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
