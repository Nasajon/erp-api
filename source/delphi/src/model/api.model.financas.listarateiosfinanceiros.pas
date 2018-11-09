unit api.model.financas.ListaRateiosFinanceiros;

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

type TListaRateiosFinanceirosNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    

    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    

    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira e centro de custo.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    

end;

	
implementation

  uses
      api.send;  

function TListaRateiosFinanceirosNovo.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TListaRateiosFinanceirosNovo.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

destructor TListaRateiosFinanceirosNovo.Destroy;
begin
  Self.RateioFinanceiro.Free();
end;

function TListaRateiosFinanceirosNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TListaRateiosFinanceirosNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TListaRateiosFinanceirosNovo.getNameAPI(): String;
begin
  Result := 'ListaRateiosFinanceirosNovo';
end;

function TListaRateiosFinanceirosNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TListaRateiosFinanceirosNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
