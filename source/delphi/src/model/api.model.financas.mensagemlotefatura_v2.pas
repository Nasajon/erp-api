unit api.model.financas.MensagemLoteFatura_v2;

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

type TMensagemLoteFatura_v2 = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Tipo: Integer;
    var m_DataHora: TDate;
    var m_Mensagem: WideString;
    

    function getTipo(): Integer;
    function getDataHora(): TDate;
    function getMensagem(): WideString;
    

    procedure setTipo(const a_Value: Integer);
    procedure setDataHora(const a_Value: TDate);
    procedure setMensagem(const a_Value: WideString);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('datahora')]
    property datahora: TDate read getDataHora write setDataHora;

    [NasajonSerializeAttribute('mensagem')]
    property mensagem: WideString read getMensagem write setMensagem;

    

end;

	
implementation

  uses
      api.send;  

function TMensagemLoteFatura_v2.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TMensagemLoteFatura_v2.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TMensagemLoteFatura_v2.getDataHora: TDate;
begin
  Result := Self.m_DataHora;
end;

procedure TMensagemLoteFatura_v2.setDataHora(const a_Value: TDate);
begin
  Self.m_DataHora := a_Value;
end;

function TMensagemLoteFatura_v2.getMensagem: WideString;
begin
  Result := Self.m_Mensagem;
end;

procedure TMensagemLoteFatura_v2.setMensagem(const a_Value: WideString);
begin
  Self.m_Mensagem := a_Value;
end;

destructor TMensagemLoteFatura_v2.Destroy;
begin

end;

function TMensagemLoteFatura_v2.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMensagemLoteFatura_v2.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMensagemLoteFatura_v2.getNameAPI(): String;
begin
  Result := 'MensagemLoteFatura_v2';
end;

function TMensagemLoteFatura_v2.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMensagemLoteFatura_v2.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
