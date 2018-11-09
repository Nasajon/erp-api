unit api.model.servicos.VendedorRPS;

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

type TVendedorRPS = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Vendedor: String;
    var m_Percentual: Currency;
    var m_PercentualComissao: Currency;
    

    function getVendedor(): String;
    function getPercentual(): Currency;
    function getPercentualComissao(): Currency;
    

    procedure setVendedor(const a_Value: String);
    procedure setPercentual(const a_Value: Currency);
    procedure setPercentualComissao(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('vendedor')]
    property vendedor: String read getVendedor write setVendedor;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    [NasajonSerializeAttribute('percentualcomissao')]
    property percentualcomissao: Currency read getPercentualComissao write setPercentualComissao;

    

end;

	
implementation

  uses
      api.send;  

function TVendedorRPS.getVendedor: String;
begin
  Result := Self.m_Vendedor;
end;

procedure TVendedorRPS.setVendedor(const a_Value: String);
begin
  Self.m_Vendedor := a_Value;
end;

function TVendedorRPS.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure TVendedorRPS.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

function TVendedorRPS.getPercentualComissao: Currency;
begin
  Result := Self.m_PercentualComissao;
end;

procedure TVendedorRPS.setPercentualComissao(const a_Value: Currency);
begin
  Self.m_PercentualComissao := a_Value;
end;

destructor TVendedorRPS.Destroy;
begin

end;

function TVendedorRPS.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TVendedorRPS.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TVendedorRPS.getNameAPI(): String;
begin
  Result := 'VendedorRPS';
end;

function TVendedorRPS.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TVendedorRPS.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
