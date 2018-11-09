unit api.model.servicos.gerador_rps_cliente;

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

type Tgerador_rps_cliente = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_tabeladepreco: String;
    

    function getid(): String;
    function gettabeladepreco(): String;
    

    procedure setid(const a_Value: String);
    procedure settabeladepreco(const a_Value: String);
    

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
/// Identificador da Tabela de Preço
    /// </summary>
    [NasajonSerializeAttribute('tabeladepreco')]
    property tabeladepreco: String read gettabeladepreco write settabeladepreco;

    

end;

	
implementation

  uses
      api.send;  

function Tgerador_rps_cliente.getid: String;
begin
  Result := Self.m_id;
end;

procedure Tgerador_rps_cliente.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function Tgerador_rps_cliente.gettabeladepreco: String;
begin
  Result := Self.m_tabeladepreco;
end;

procedure Tgerador_rps_cliente.settabeladepreco(const a_Value: String);
begin
  Self.m_tabeladepreco := a_Value;
end;

destructor Tgerador_rps_cliente.Destroy;
begin

end;

function Tgerador_rps_cliente.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Tgerador_rps_cliente.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Tgerador_rps_cliente.getNameAPI(): String;
begin
  Result := 'gerador_rps_cliente';
end;

function Tgerador_rps_cliente.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Tgerador_rps_cliente.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
