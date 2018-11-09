unit api.model.financas.InformacaoCartao;

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

type TInformacaoCartao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoOperacao: Integer;
    var m_Bandeira: String;
    var m_Operadora: String;
    var m_MeioEletronico: String;
    

    function getTipoOperacao(): Integer;
    function getBandeira(): String;
    function getOperadora(): String;
    function getMeioEletronico(): String;
    

    procedure setTipoOperacao(const a_Value: Integer);
    procedure setBandeira(const a_Value: String);
    procedure setOperadora(const a_Value: String);
    procedure setMeioEletronico(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Indica a operação do cartão: 1-Débito, 2-Crédito a vista, 3-Parcelado pela empresa, 4-Parcelado pela administradora.
    /// </summary>
    [NasajonSerializeAttribute('tipooperacao')]
    property tipooperacao: Integer read getTipoOperacao write setTipoOperacao;

    /// <summary>
/// Indica a bandeira utilizada na venda com cartão.
    /// </summary>
    [NasajonSerializeAttribute('bandeira')]
    property bandeira: String read getBandeira write setBandeira;

    /// <summary>
/// Indica a operadora do cartão. Preencher BNDES quando for o mesmo ou Não Informado quando não for. Pode-se passar o Guid também.
    /// </summary>
    [NasajonSerializeAttribute('operadora')]
    property operadora: String read getOperadora write setOperadora;

    /// <summary>
/// Indica o meio eletronico na qual a operação foi realizada.
    /// </summary>
    [NasajonSerializeAttribute('meioeletronico')]
    property meioeletronico: String read getMeioEletronico write setMeioEletronico;

    

end;

	
implementation

  uses
      api.send;  

function TInformacaoCartao.getTipoOperacao: Integer;
begin
  Result := Self.m_TipoOperacao;
end;

procedure TInformacaoCartao.setTipoOperacao(const a_Value: Integer);
begin
  Self.m_TipoOperacao := a_Value;
end;

function TInformacaoCartao.getBandeira: String;
begin
  Result := Self.m_Bandeira;
end;

procedure TInformacaoCartao.setBandeira(const a_Value: String);
begin
  Self.m_Bandeira := a_Value;
end;

function TInformacaoCartao.getOperadora: String;
begin
  Result := Self.m_Operadora;
end;

procedure TInformacaoCartao.setOperadora(const a_Value: String);
begin
  Self.m_Operadora := a_Value;
end;

function TInformacaoCartao.getMeioEletronico: String;
begin
  Result := Self.m_MeioEletronico;
end;

procedure TInformacaoCartao.setMeioEletronico(const a_Value: String);
begin
  Self.m_MeioEletronico := a_Value;
end;

destructor TInformacaoCartao.Destroy;
begin

end;

function TInformacaoCartao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TInformacaoCartao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TInformacaoCartao.getNameAPI(): String;
begin
  Result := 'InformacaoCartao';
end;

function TInformacaoCartao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TInformacaoCartao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
