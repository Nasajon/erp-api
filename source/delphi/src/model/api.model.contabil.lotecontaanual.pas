unit api.model.contabil.lotecontaanual;

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
	
  , api.model.contabil.contaanual
  , System.Generics.Collections
	

	;

type TlotecontaanualNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_listacontaanual: TObjectList<TContaAnualNovo>;
    

    function getlistacontaanual(): TObjectList<TContaAnualNovo>;
    

    procedure setlistacontaanual(const a_Value: TObjectList<TContaAnualNovo>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('listacontaanual')]
    property listacontaanual: TObjectList<TContaAnualNovo> read getlistacontaanual write setlistacontaanual;

    

end;

	
implementation

  uses
      api.send;  

function TlotecontaanualNovo.getlistacontaanual: TObjectList<TContaAnualNovo>;
begin
  if not Assigned(Self.m_listacontaanual)
    then Self.m_listacontaanual := TObjectList<TContaAnualNovo>.Create();
  Result := Self.m_listacontaanual;
end;

procedure TlotecontaanualNovo.setlistacontaanual(const a_Value: TObjectList<TContaAnualNovo>);
begin
  Self.m_listacontaanual := a_Value;
end;

destructor TlotecontaanualNovo.Destroy;
begin
  Self.listacontaanual.Free();
end;

function TlotecontaanualNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TlotecontaanualNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TlotecontaanualNovo.getNameAPI(): String;
begin
  Result := 'lotecontaanualNovo';
end;

function TlotecontaanualNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TlotecontaanualNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
