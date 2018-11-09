unit api.model.ns.DocumentoFiscalNs;

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
	
  , api.model.ns.estabelecimento
	

	;

type TDocumentoFiscalNs = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_DocumentoFiscal: String;
    var m_ChaveAcesso: String;
    var m_Estabelecimento: TEstabelecimento;
    var m_Valor: Currency;
    var m_Emissao: TDate;
    var m_DataSaida: TDate;
    var m_Tipo: Integer;
    

    function getDocumentoFiscal(): String;
    function getChaveAcesso(): String;
    function getEstabelecimento(): TEstabelecimento;
    function getValor(): Currency;
    function getEmissao(): TDate;
    function getDataSaida(): TDate;
    function getTipo(): Integer;
    

    procedure setDocumentoFiscal(const a_Value: String);
    procedure setChaveAcesso(const a_Value: String);
    procedure setEstabelecimento(const a_Value: TEstabelecimento);
    procedure setValor(const a_Value: Currency);
    procedure setEmissao(const a_Value: TDate);
    procedure setDataSaida(const a_Value: TDate);
    procedure setTipo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('documentofiscal')]
    property documentofiscal: String read getDocumentoFiscal write setDocumentoFiscal;

    [NasajonSerializeAttribute('chaveacesso')]
    property chaveacesso: String read getChaveAcesso write setChaveAcesso;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: TEstabelecimento read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getEmissao write setEmissao;

    [NasajonSerializeAttribute('datasaida')]
    property datasaida: TDate read getDataSaida write setDataSaida;

    /// <summary>
/// 087 - Conhecimento de Transporte
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    

end;

type TDocumentoFiscalNsExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_DocumentoFiscal: String;
    

    function getDocumentoFiscal(): String;
    

    procedure setDocumentoFiscal(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('documentofiscal')]
    property documentofiscal: String read getDocumentoFiscal write setDocumentoFiscal;

    

end;

	
implementation

  uses
      api.send;  

function TDocumentoFiscalNs.getDocumentoFiscal: String;
begin
  Result := Self.m_DocumentoFiscal;
end;

procedure TDocumentoFiscalNs.setDocumentoFiscal(const a_Value: String);
begin
  Self.m_DocumentoFiscal := a_Value;
end;

function TDocumentoFiscalNs.getChaveAcesso: String;
begin
  Result := Self.m_ChaveAcesso;
end;

procedure TDocumentoFiscalNs.setChaveAcesso(const a_Value: String);
begin
  Self.m_ChaveAcesso := a_Value;
end;

function TDocumentoFiscalNs.getEstabelecimento: TEstabelecimento;
begin
  if not Assigned(Self.m_Estabelecimento)
    then Self.m_Estabelecimento := TEstabelecimento.Create();
  Result := Self.m_Estabelecimento;
end;

procedure TDocumentoFiscalNs.setEstabelecimento(const a_Value: TEstabelecimento);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TDocumentoFiscalNs.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TDocumentoFiscalNs.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TDocumentoFiscalNs.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TDocumentoFiscalNs.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TDocumentoFiscalNs.getDataSaida: TDate;
begin
  Result := Self.m_DataSaida;
end;

procedure TDocumentoFiscalNs.setDataSaida(const a_Value: TDate);
begin
  Self.m_DataSaida := a_Value;
end;

function TDocumentoFiscalNs.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TDocumentoFiscalNs.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

destructor TDocumentoFiscalNs.Destroy;
begin
  Self.Estabelecimento.Free();
end;

function TDocumentoFiscalNs.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocumentoFiscalNs.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocumentoFiscalNs.getNameAPI(): String;
begin
  Result := 'DocumentoFiscalNs';
end;

function TDocumentoFiscalNs.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocumentoFiscalNs.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDocumentoFiscalNsExcluir.getDocumentoFiscal: String;
begin
  Result := Self.m_DocumentoFiscal;
end;

procedure TDocumentoFiscalNsExcluir.setDocumentoFiscal(const a_Value: String);
begin
  Self.m_DocumentoFiscal := a_Value;
end;

destructor TDocumentoFiscalNsExcluir.Destroy;
begin

end;

function TDocumentoFiscalNsExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocumentoFiscalNsExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocumentoFiscalNsExcluir.getNameAPI(): String;
begin
  Result := 'DocumentoFiscalNsExcluir';
end;

function TDocumentoFiscalNsExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocumentoFiscalNsExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
