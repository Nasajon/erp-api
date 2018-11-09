unit api.model.servicos.Impostos_Tributo;

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

type TImpostos_Tributo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_tipo: Integer;
    var m_tributado: Boolean;
    var m_base: Currency;
    var m_aliquota: Currency;
    var m_valor: Currency;
    

    function gettipo(): Integer;
    function gettributado(): Boolean;
    function getbase(): Currency;
    function getaliquota(): Currency;
    function getvalor(): Currency;
    

    procedure settipo(const a_Value: Integer);
    procedure settributado(const a_Value: Boolean);
    procedure setbase(const a_Value: Currency);
    procedure setaliquota(const a_Value: Currency);
    procedure setvalor(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    [NasajonSerializeAttribute('tributado')]
    property tributado: Boolean read gettributado write settributado;

    [NasajonSerializeAttribute('base')]
    property base: Currency read getbase write setbase;

    [NasajonSerializeAttribute('aliquota')]
    property aliquota: Currency read getaliquota write setaliquota;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getvalor write setvalor;

    

end;

	
implementation

  uses
      api.send;  

function TImpostos_Tributo.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TImpostos_Tributo.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TImpostos_Tributo.gettributado: Boolean;
begin
  Result := Self.m_tributado;
end;

procedure TImpostos_Tributo.settributado(const a_Value: Boolean);
begin
  Self.m_tributado := a_Value;
end;

function TImpostos_Tributo.getbase: Currency;
begin
  Result := Self.m_base;
end;

procedure TImpostos_Tributo.setbase(const a_Value: Currency);
begin
  Self.m_base := a_Value;
end;

function TImpostos_Tributo.getaliquota: Currency;
begin
  Result := Self.m_aliquota;
end;

procedure TImpostos_Tributo.setaliquota(const a_Value: Currency);
begin
  Self.m_aliquota := a_Value;
end;

function TImpostos_Tributo.getvalor: Currency;
begin
  Result := Self.m_valor;
end;

procedure TImpostos_Tributo.setvalor(const a_Value: Currency);
begin
  Self.m_valor := a_Value;
end;

destructor TImpostos_Tributo.Destroy;
begin

end;

function TImpostos_Tributo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TImpostos_Tributo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TImpostos_Tributo.getNameAPI(): String;
begin
  Result := 'Impostos_Tributo';
end;

function TImpostos_Tributo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TImpostos_Tributo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
