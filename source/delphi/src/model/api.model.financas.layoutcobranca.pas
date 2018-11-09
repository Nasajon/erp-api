unit api.model.financas.LayoutCobranca;

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

type TLayoutCobranca = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_LayoutCobranca: String;
    var m_Nome: String;
    var m_Implementacao: Integer;
    

    function getLayoutCobranca(): String;
    function getNome(): String;
    function getImplementacao(): Integer;
    

    procedure setLayoutCobranca(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setImplementacao(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Não é requerido pois pode ser utilizada a chave única(nome, implementacao).
    /// </summary>
    [NasajonSerializeAttribute('layoutcobranca')]
    property layoutcobranca: String read getLayoutCobranca write setLayoutCobranca;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('implementacao')]
    property implementacao: Integer read getImplementacao write setImplementacao;

    

end;

	
implementation

  uses
      api.send;  

function TLayoutCobranca.getLayoutCobranca: String;
begin
  Result := Self.m_LayoutCobranca;
end;

procedure TLayoutCobranca.setLayoutCobranca(const a_Value: String);
begin
  Self.m_LayoutCobranca := a_Value;
end;

function TLayoutCobranca.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TLayoutCobranca.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TLayoutCobranca.getImplementacao: Integer;
begin
  Result := Self.m_Implementacao;
end;

procedure TLayoutCobranca.setImplementacao(const a_Value: Integer);
begin
  Self.m_Implementacao := a_Value;
end;

destructor TLayoutCobranca.Destroy;
begin

end;

function TLayoutCobranca.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLayoutCobranca.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLayoutCobranca.getNameAPI(): String;
begin
  Result := 'LayoutCobranca';
end;

function TLayoutCobranca.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLayoutCobranca.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
