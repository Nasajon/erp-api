unit api.model.financas.TituloRenegociado;

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

type TTituloRenegociado = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_id_renegociacao_gerada: String;
    

    function getId(): String;
    function getid_renegociacao_gerada(): String;
    

    procedure setId(const a_Value: String);
    procedure setid_renegociacao_gerada(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('id_renegociacao_gerada')]
    property id_renegociacao_gerada: String read getid_renegociacao_gerada write setid_renegociacao_gerada;

    

end;

	
implementation

  uses
      api.send;  

function TTituloRenegociado.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TTituloRenegociado.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TTituloRenegociado.getid_renegociacao_gerada: String;
begin
  Result := Self.m_id_renegociacao_gerada;
end;

procedure TTituloRenegociado.setid_renegociacao_gerada(const a_Value: String);
begin
  Self.m_id_renegociacao_gerada := a_Value;
end;

destructor TTituloRenegociado.Destroy;
begin

end;

function TTituloRenegociado.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTituloRenegociado.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTituloRenegociado.getNameAPI(): String;
begin
  Result := 'TituloRenegociado';
end;

function TTituloRenegociado.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTituloRenegociado.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
