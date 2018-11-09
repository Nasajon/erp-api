unit api.model.persona.ItemFaixa;

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

type TItemFaixaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdItem: String;
    var m_Faixa: String;
    var m_DataInicioValidade: TDate;
    var m_ValorFinal: Currency;
    var m_Percentual: Currency;
    var m_ValorConstante: Currency;
    

    function getIdItem(): String;
    function getFaixa(): String;
    function getDataInicioValidade(): TDate;
    function getValorFinal(): Currency;
    function getPercentual(): Currency;
    function getValorConstante(): Currency;
    

    procedure setIdItem(const a_Value: String);
    procedure setFaixa(const a_Value: String);
    procedure setDataInicioValidade(const a_Value: TDate);
    procedure setValorFinal(const a_Value: Currency);
    procedure setPercentual(const a_Value: Currency);
    procedure setValorConstante(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('iditem')]
    property iditem: String read getIdItem write setIdItem;

    [NasajonSerializeAttribute('faixa')]
    property faixa: String read getFaixa write setFaixa;

    [NasajonSerializeAttribute('datainiciovalidade')]
    property datainiciovalidade: TDate read getDataInicioValidade write setDataInicioValidade;

    [NasajonSerializeAttribute('valorfinal')]
    property valorfinal: Currency read getValorFinal write setValorFinal;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    [NasajonSerializeAttribute('valorconstante')]
    property valorconstante: Currency read getValorConstante write setValorConstante;

    

end;

type TItemFaixaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdItem: String;
    var m_Faixa: String;
    var m_DataInicioValidade: TDate;
    var m_ValorFinal: Currency;
    var m_Percentual: Currency;
    var m_ValorConstante: Currency;
    

    function getIdItem(): String;
    function getFaixa(): String;
    function getDataInicioValidade(): TDate;
    function getValorFinal(): Currency;
    function getPercentual(): Currency;
    function getValorConstante(): Currency;
    

    procedure setIdItem(const a_Value: String);
    procedure setFaixa(const a_Value: String);
    procedure setDataInicioValidade(const a_Value: TDate);
    procedure setValorFinal(const a_Value: Currency);
    procedure setPercentual(const a_Value: Currency);
    procedure setValorConstante(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('iditem')]
    property iditem: String read getIdItem write setIdItem;

    [NasajonSerializeAttribute('faixa')]
    property faixa: String read getFaixa write setFaixa;

    [NasajonSerializeAttribute('datainiciovalidade')]
    property datainiciovalidade: TDate read getDataInicioValidade write setDataInicioValidade;

    [NasajonSerializeAttribute('valorfinal')]
    property valorfinal: Currency read getValorFinal write setValorFinal;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    [NasajonSerializeAttribute('valorconstante')]
    property valorconstante: Currency read getValorConstante write setValorConstante;

    

end;

type TItemFaixaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdItem: String;
    var m_Faixa: String;
    var m_DataInicioValidade: TDate;
    var m_ValorFinal: Currency;
    

    function getIdItem(): String;
    function getFaixa(): String;
    function getDataInicioValidade(): TDate;
    function getValorFinal(): Currency;
    

    procedure setIdItem(const a_Value: String);
    procedure setFaixa(const a_Value: String);
    procedure setDataInicioValidade(const a_Value: TDate);
    procedure setValorFinal(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('iditem')]
    property iditem: String read getIdItem write setIdItem;

    [NasajonSerializeAttribute('faixa')]
    property faixa: String read getFaixa write setFaixa;

    [NasajonSerializeAttribute('datainiciovalidade')]
    property datainiciovalidade: TDate read getDataInicioValidade write setDataInicioValidade;

    [NasajonSerializeAttribute('valorfinal')]
    property valorfinal: Currency read getValorFinal write setValorFinal;

    

end;

	
implementation

  uses
      api.send;  

function TItemFaixaNovo.getIdItem: String;
begin
  Result := Self.m_IdItem;
end;

procedure TItemFaixaNovo.setIdItem(const a_Value: String);
begin
  Self.m_IdItem := a_Value;
end;

function TItemFaixaNovo.getFaixa: String;
begin
  Result := Self.m_Faixa;
end;

procedure TItemFaixaNovo.setFaixa(const a_Value: String);
begin
  Self.m_Faixa := a_Value;
end;

function TItemFaixaNovo.getDataInicioValidade: TDate;
begin
  Result := Self.m_DataInicioValidade;
end;

procedure TItemFaixaNovo.setDataInicioValidade(const a_Value: TDate);
begin
  Self.m_DataInicioValidade := a_Value;
end;

function TItemFaixaNovo.getValorFinal: Currency;
begin
  Result := Self.m_ValorFinal;
end;

procedure TItemFaixaNovo.setValorFinal(const a_Value: Currency);
begin
  Self.m_ValorFinal := a_Value;
end;

function TItemFaixaNovo.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure TItemFaixaNovo.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

function TItemFaixaNovo.getValorConstante: Currency;
begin
  Result := Self.m_ValorConstante;
end;

procedure TItemFaixaNovo.setValorConstante(const a_Value: Currency);
begin
  Self.m_ValorConstante := a_Value;
end;

destructor TItemFaixaNovo.Destroy;
begin

end;

function TItemFaixaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemFaixaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemFaixaNovo.getNameAPI(): String;
begin
  Result := 'ItemFaixaNovo';
end;

function TItemFaixaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemFaixaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TItemFaixaAlterar.getIdItem: String;
begin
  Result := Self.m_IdItem;
end;

procedure TItemFaixaAlterar.setIdItem(const a_Value: String);
begin
  Self.m_IdItem := a_Value;
end;

function TItemFaixaAlterar.getFaixa: String;
begin
  Result := Self.m_Faixa;
end;

procedure TItemFaixaAlterar.setFaixa(const a_Value: String);
begin
  Self.m_Faixa := a_Value;
end;

function TItemFaixaAlterar.getDataInicioValidade: TDate;
begin
  Result := Self.m_DataInicioValidade;
end;

procedure TItemFaixaAlterar.setDataInicioValidade(const a_Value: TDate);
begin
  Self.m_DataInicioValidade := a_Value;
end;

function TItemFaixaAlterar.getValorFinal: Currency;
begin
  Result := Self.m_ValorFinal;
end;

procedure TItemFaixaAlterar.setValorFinal(const a_Value: Currency);
begin
  Self.m_ValorFinal := a_Value;
end;

function TItemFaixaAlterar.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure TItemFaixaAlterar.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

function TItemFaixaAlterar.getValorConstante: Currency;
begin
  Result := Self.m_ValorConstante;
end;

procedure TItemFaixaAlterar.setValorConstante(const a_Value: Currency);
begin
  Self.m_ValorConstante := a_Value;
end;

destructor TItemFaixaAlterar.Destroy;
begin

end;

function TItemFaixaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemFaixaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemFaixaAlterar.getNameAPI(): String;
begin
  Result := 'ItemFaixaAlterar';
end;

function TItemFaixaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemFaixaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TItemFaixaExcluir.getIdItem: String;
begin
  Result := Self.m_IdItem;
end;

procedure TItemFaixaExcluir.setIdItem(const a_Value: String);
begin
  Self.m_IdItem := a_Value;
end;

function TItemFaixaExcluir.getFaixa: String;
begin
  Result := Self.m_Faixa;
end;

procedure TItemFaixaExcluir.setFaixa(const a_Value: String);
begin
  Self.m_Faixa := a_Value;
end;

function TItemFaixaExcluir.getDataInicioValidade: TDate;
begin
  Result := Self.m_DataInicioValidade;
end;

procedure TItemFaixaExcluir.setDataInicioValidade(const a_Value: TDate);
begin
  Self.m_DataInicioValidade := a_Value;
end;

function TItemFaixaExcluir.getValorFinal: Currency;
begin
  Result := Self.m_ValorFinal;
end;

procedure TItemFaixaExcluir.setValorFinal(const a_Value: Currency);
begin
  Self.m_ValorFinal := a_Value;
end;

destructor TItemFaixaExcluir.Destroy;
begin

end;

function TItemFaixaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemFaixaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemFaixaExcluir.getNameAPI(): String;
begin
  Result := 'ItemFaixaExcluir';
end;

function TItemFaixaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemFaixaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
