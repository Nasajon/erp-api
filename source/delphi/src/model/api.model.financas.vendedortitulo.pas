unit api.model.financas.VendedorTitulo;

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

type TVendedorTitulo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Vendedor: String;
    var m_PercentualParticipacao: Currency;
    var m_PercentualComissao: Currency;
    var m_ValorComissao: Currency;
    

    function getVendedor(): String;
    function getPercentualParticipacao(): Currency;
    function getPercentualComissao(): Currency;
    function getValorComissao(): Currency;
    

    procedure setVendedor(const a_Value: String);
    procedure setPercentualParticipacao(const a_Value: Currency);
    procedure setPercentualComissao(const a_Value: Currency);
    procedure setValorComissao(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('vendedor')]
    property vendedor: String read getVendedor write setVendedor;

    [NasajonSerializeAttribute('percentualparticipacao')]
    property percentualparticipacao: Currency read getPercentualParticipacao write setPercentualParticipacao;

    [NasajonSerializeAttribute('percentualcomissao')]
    property percentualcomissao: Currency read getPercentualComissao write setPercentualComissao;

    [NasajonSerializeAttribute('valorcomissao')]
    property valorcomissao: Currency read getValorComissao write setValorComissao;

    

end;

	
implementation

  uses
      api.send;  

function TVendedorTitulo.getVendedor: String;
begin
  Result := Self.m_Vendedor;
end;

procedure TVendedorTitulo.setVendedor(const a_Value: String);
begin
  Self.m_Vendedor := a_Value;
end;

function TVendedorTitulo.getPercentualParticipacao: Currency;
begin
  Result := Self.m_PercentualParticipacao;
end;

procedure TVendedorTitulo.setPercentualParticipacao(const a_Value: Currency);
begin
  Self.m_PercentualParticipacao := a_Value;
end;

function TVendedorTitulo.getPercentualComissao: Currency;
begin
  Result := Self.m_PercentualComissao;
end;

procedure TVendedorTitulo.setPercentualComissao(const a_Value: Currency);
begin
  Self.m_PercentualComissao := a_Value;
end;

function TVendedorTitulo.getValorComissao: Currency;
begin
  Result := Self.m_ValorComissao;
end;

procedure TVendedorTitulo.setValorComissao(const a_Value: Currency);
begin
  Self.m_ValorComissao := a_Value;
end;

destructor TVendedorTitulo.Destroy;
begin

end;

function TVendedorTitulo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TVendedorTitulo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TVendedorTitulo.getNameAPI(): String;
begin
  Result := 'VendedorTitulo';
end;

function TVendedorTitulo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TVendedorTitulo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
