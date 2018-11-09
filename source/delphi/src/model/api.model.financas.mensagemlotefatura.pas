unit api.model.financas.MensagemLoteFatura;

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

type TMensagemLoteFaturaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Lote: String;
    var m_Tipo: Integer;
    var m_DataHora: TDate;
    var m_Mensagem: WideString;
    

    function getLote(): String;
    function getTipo(): Integer;
    function getDataHora(): TDate;
    function getMensagem(): WideString;
    

    procedure setLote(const a_Value: String);
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
    

    [NasajonSerializeAttribute('lote')]
    property lote: String read getLote write setLote;

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

function TMensagemLoteFaturaNovo.getLote: String;
begin
  Result := Self.m_Lote;
end;

procedure TMensagemLoteFaturaNovo.setLote(const a_Value: String);
begin
  Self.m_Lote := a_Value;
end;

function TMensagemLoteFaturaNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TMensagemLoteFaturaNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TMensagemLoteFaturaNovo.getDataHora: TDate;
begin
  Result := Self.m_DataHora;
end;

procedure TMensagemLoteFaturaNovo.setDataHora(const a_Value: TDate);
begin
  Self.m_DataHora := a_Value;
end;

function TMensagemLoteFaturaNovo.getMensagem: WideString;
begin
  Result := Self.m_Mensagem;
end;

procedure TMensagemLoteFaturaNovo.setMensagem(const a_Value: WideString);
begin
  Self.m_Mensagem := a_Value;
end;

destructor TMensagemLoteFaturaNovo.Destroy;
begin

end;

function TMensagemLoteFaturaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMensagemLoteFaturaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMensagemLoteFaturaNovo.getNameAPI(): String;
begin
  Result := 'MensagemLoteFaturaNovo';
end;

function TMensagemLoteFaturaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMensagemLoteFaturaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
