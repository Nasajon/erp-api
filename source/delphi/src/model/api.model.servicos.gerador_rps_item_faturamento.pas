unit api.model.servicos.gerador_rps_item_faturamento;

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

type Tgerador_rps_item_faturamento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_quantidade: Currency;
    var m_valor_unitario: Currency;
    var m_valor_total: Currency;
    var m_id_owner: String;
    

    function getid(): String;
    function getquantidade(): Currency;
    function getvalor_unitario(): Currency;
    function getvalor_total(): Currency;
    function getid_owner(): String;
    

    procedure setid(const a_Value: String);
    procedure setquantidade(const a_Value: Currency);
    procedure setvalor_unitario(const a_Value: Currency);
    procedure setvalor_total(const a_Value: Currency);
    procedure setid_owner(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Identificador do estabelecimento
    /// </summary>
    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    /// <summary>
/// Indica a quantidade de serviços prestados
    /// </summary>
    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Currency read getquantidade write setquantidade;

    /// <summary>
/// Indica o valor unitário do serviço prestado.
    /// </summary>
    [NasajonSerializeAttribute('valor_unitario')]
    property valor_unitario: Currency read getvalor_unitario write setvalor_unitario;

    /// <summary>
/// Indica o valor total do serviço prestado.
    /// </summary>
    [NasajonSerializeAttribute('valor_total')]
    property valor_total: Currency read getvalor_total write setvalor_total;

    [NasajonSerializeAttribute('id_owner')]
    property id_owner: String read getid_owner write setid_owner;

    

end;

	
implementation

  uses
      api.send;  

function Tgerador_rps_item_faturamento.getid: String;
begin
  Result := Self.m_id;
end;

procedure Tgerador_rps_item_faturamento.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function Tgerador_rps_item_faturamento.getquantidade: Currency;
begin
  Result := Self.m_quantidade;
end;

procedure Tgerador_rps_item_faturamento.setquantidade(const a_Value: Currency);
begin
  Self.m_quantidade := a_Value;
end;

function Tgerador_rps_item_faturamento.getvalor_unitario: Currency;
begin
  Result := Self.m_valor_unitario;
end;

procedure Tgerador_rps_item_faturamento.setvalor_unitario(const a_Value: Currency);
begin
  Self.m_valor_unitario := a_Value;
end;

function Tgerador_rps_item_faturamento.getvalor_total: Currency;
begin
  Result := Self.m_valor_total;
end;

procedure Tgerador_rps_item_faturamento.setvalor_total(const a_Value: Currency);
begin
  Self.m_valor_total := a_Value;
end;

function Tgerador_rps_item_faturamento.getid_owner: String;
begin
  Result := Self.m_id_owner;
end;

procedure Tgerador_rps_item_faturamento.setid_owner(const a_Value: String);
begin
  Self.m_id_owner := a_Value;
end;

destructor Tgerador_rps_item_faturamento.Destroy;
begin

end;

function Tgerador_rps_item_faturamento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Tgerador_rps_item_faturamento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Tgerador_rps_item_faturamento.getNameAPI(): String;
begin
  Result := 'gerador_rps_item_faturamento';
end;

function Tgerador_rps_item_faturamento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Tgerador_rps_item_faturamento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
