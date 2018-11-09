unit api.model.financas.AdiantamentoSaldo;

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

type TAdiantamentoSaldo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_tituloadiantamento: String;
    var m_titulonotafiscal: String;
    var m_valorresgatado: Currency;
    

    function gettituloadiantamento(): String;
    function gettitulonotafiscal(): String;
    function getvalorresgatado(): Currency;
    

    procedure settituloadiantamento(const a_Value: String);
    procedure settitulonotafiscal(const a_Value: String);
    procedure setvalorresgatado(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tituloadiantamento')]
    property tituloadiantamento: String read gettituloadiantamento write settituloadiantamento;

    [NasajonSerializeAttribute('titulonotafiscal')]
    property titulonotafiscal: String read gettitulonotafiscal write settitulonotafiscal;

    [NasajonSerializeAttribute('valorresgatado')]
    property valorresgatado: Currency read getvalorresgatado write setvalorresgatado;

    

end;

	
implementation

  uses
      api.send;  

function TAdiantamentoSaldo.gettituloadiantamento: String;
begin
  Result := Self.m_tituloadiantamento;
end;

procedure TAdiantamentoSaldo.settituloadiantamento(const a_Value: String);
begin
  Self.m_tituloadiantamento := a_Value;
end;

function TAdiantamentoSaldo.gettitulonotafiscal: String;
begin
  Result := Self.m_titulonotafiscal;
end;

procedure TAdiantamentoSaldo.settitulonotafiscal(const a_Value: String);
begin
  Self.m_titulonotafiscal := a_Value;
end;

function TAdiantamentoSaldo.getvalorresgatado: Currency;
begin
  Result := Self.m_valorresgatado;
end;

procedure TAdiantamentoSaldo.setvalorresgatado(const a_Value: Currency);
begin
  Self.m_valorresgatado := a_Value;
end;

destructor TAdiantamentoSaldo.Destroy;
begin

end;

function TAdiantamentoSaldo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAdiantamentoSaldo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAdiantamentoSaldo.getNameAPI(): String;
begin
  Result := 'AdiantamentoSaldo';
end;

function TAdiantamentoSaldo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAdiantamentoSaldo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
