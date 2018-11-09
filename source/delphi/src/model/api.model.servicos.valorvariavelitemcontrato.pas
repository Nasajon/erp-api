unit api.model.servicos.ValorVariavelItemContrato;

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

type TValorVariavelItemContrato = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_data: TDate;
    var m_valor: Currency;
    

    function getdata(): TDate;
    function getvalor(): Currency;
    

    procedure setdata(const a_Value: TDate);
    procedure setvalor(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('data')]
    property data: TDate read getdata write setdata;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getvalor write setvalor;

    

end;

	
implementation

  uses
      api.send;  

function TValorVariavelItemContrato.getdata: TDate;
begin
  Result := Self.m_data;
end;

procedure TValorVariavelItemContrato.setdata(const a_Value: TDate);
begin
  Self.m_data := a_Value;
end;

function TValorVariavelItemContrato.getvalor: Currency;
begin
  Result := Self.m_valor;
end;

procedure TValorVariavelItemContrato.setvalor(const a_Value: Currency);
begin
  Self.m_valor := a_Value;
end;

destructor TValorVariavelItemContrato.Destroy;
begin

end;

function TValorVariavelItemContrato.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TValorVariavelItemContrato.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TValorVariavelItemContrato.getNameAPI(): String;
begin
  Result := 'ValorVariavelItemContrato';
end;

function TValorVariavelItemContrato.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TValorVariavelItemContrato.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
