unit api.model.servicos.SerieRPS;

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

type TSerieRPSNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estabelecimento: String;
    var m_Serie: String;
    var m_SubSerie: String;
    var m_Padrao: Boolean;
    var m_NumeroInicial: Integer;
    var m_NumeroFinal: Integer;
    var m_ProximoNumero: Integer;
    

    function getEstabelecimento(): String;
    function getSerie(): String;
    function getSubSerie(): String;
    function getPadrao(): Boolean;
    function getNumeroInicial(): Integer;
    function getNumeroFinal(): Integer;
    function getProximoNumero(): Integer;
    

    procedure setEstabelecimento(const a_Value: String);
    procedure setSerie(const a_Value: String);
    procedure setSubSerie(const a_Value: String);
    procedure setPadrao(const a_Value: Boolean);
    procedure setNumeroInicial(const a_Value: Integer);
    procedure setNumeroFinal(const a_Value: Integer);
    procedure setProximoNumero(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('serie')]
    property serie: String read getSerie write setSerie;

    [NasajonSerializeAttribute('subserie')]
    property subserie: String read getSubSerie write setSubSerie;

    /// <summary>
/// Informa se esse RPS é o RPS padrão a ser considerado
    /// </summary>
    [NasajonSerializeAttribute('padrao')]
    property padrao: Boolean read getPadrao write setPadrao;

    [NasajonSerializeAttribute('numeroinicial')]
    property numeroinicial: Integer read getNumeroInicial write setNumeroInicial;

    [NasajonSerializeAttribute('numerofinal')]
    property numerofinal: Integer read getNumeroFinal write setNumeroFinal;

    [NasajonSerializeAttribute('proximonumero')]
    property proximonumero: Integer read getProximoNumero write setProximoNumero;

    

end;

type TSerieRPSAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estabelecimento: String;
    var m_Serie: String;
    var m_SubSerie: String;
    var m_Situacao: Integer;
    var m_Padrao: Boolean;
    var m_NumeroInicial: Integer;
    var m_NumeroFinal: Integer;
    var m_ProximoNumero: Integer;
    

    function getEstabelecimento(): String;
    function getSerie(): String;
    function getSubSerie(): String;
    function getSituacao(): Integer;
    function getPadrao(): Boolean;
    function getNumeroInicial(): Integer;
    function getNumeroFinal(): Integer;
    function getProximoNumero(): Integer;
    

    procedure setEstabelecimento(const a_Value: String);
    procedure setSerie(const a_Value: String);
    procedure setSubSerie(const a_Value: String);
    procedure setSituacao(const a_Value: Integer);
    procedure setPadrao(const a_Value: Boolean);
    procedure setNumeroInicial(const a_Value: Integer);
    procedure setNumeroFinal(const a_Value: Integer);
    procedure setProximoNumero(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('serie')]
    property serie: String read getSerie write setSerie;

    [NasajonSerializeAttribute('subserie')]
    property subserie: String read getSubSerie write setSubSerie;

    /// <summary>
/// Informa se esse RPS está aberto ou fechado. 0-Aberto 1-Fechado.
    /// </summary>
    [NasajonSerializeAttribute('situacao')]
    property situacao: Integer read getSituacao write setSituacao;

    /// <summary>
/// Informa se esse RPS é o RPS padrão a ser considerado
    /// </summary>
    [NasajonSerializeAttribute('padrao')]
    property padrao: Boolean read getPadrao write setPadrao;

    [NasajonSerializeAttribute('numeroinicial')]
    property numeroinicial: Integer read getNumeroInicial write setNumeroInicial;

    [NasajonSerializeAttribute('numerofinal')]
    property numerofinal: Integer read getNumeroFinal write setNumeroFinal;

    [NasajonSerializeAttribute('proximonumero')]
    property proximonumero: Integer read getProximoNumero write setProximoNumero;

    

end;

type TSerieRPSExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    

    function getId(): String;
    

    procedure setId(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    

end;

	
implementation

  uses
      api.send;  

function TSerieRPSNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TSerieRPSNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TSerieRPSNovo.getSerie: String;
begin
  Result := Self.m_Serie;
end;

procedure TSerieRPSNovo.setSerie(const a_Value: String);
begin
  Self.m_Serie := a_Value;
end;

function TSerieRPSNovo.getSubSerie: String;
begin
  Result := Self.m_SubSerie;
end;

procedure TSerieRPSNovo.setSubSerie(const a_Value: String);
begin
  Self.m_SubSerie := a_Value;
end;

function TSerieRPSNovo.getPadrao: Boolean;
begin
  Result := Self.m_Padrao;
end;

procedure TSerieRPSNovo.setPadrao(const a_Value: Boolean);
begin
  Self.m_Padrao := a_Value;
end;

function TSerieRPSNovo.getNumeroInicial: Integer;
begin
  Result := Self.m_NumeroInicial;
end;

procedure TSerieRPSNovo.setNumeroInicial(const a_Value: Integer);
begin
  Self.m_NumeroInicial := a_Value;
end;

function TSerieRPSNovo.getNumeroFinal: Integer;
begin
  Result := Self.m_NumeroFinal;
end;

procedure TSerieRPSNovo.setNumeroFinal(const a_Value: Integer);
begin
  Self.m_NumeroFinal := a_Value;
end;

function TSerieRPSNovo.getProximoNumero: Integer;
begin
  Result := Self.m_ProximoNumero;
end;

procedure TSerieRPSNovo.setProximoNumero(const a_Value: Integer);
begin
  Self.m_ProximoNumero := a_Value;
end;

destructor TSerieRPSNovo.Destroy;
begin

end;

function TSerieRPSNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSerieRPSNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSerieRPSNovo.getNameAPI(): String;
begin
  Result := 'SerieRPSNovo';
end;

function TSerieRPSNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSerieRPSNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSerieRPSAlterar.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TSerieRPSAlterar.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TSerieRPSAlterar.getSerie: String;
begin
  Result := Self.m_Serie;
end;

procedure TSerieRPSAlterar.setSerie(const a_Value: String);
begin
  Self.m_Serie := a_Value;
end;

function TSerieRPSAlterar.getSubSerie: String;
begin
  Result := Self.m_SubSerie;
end;

procedure TSerieRPSAlterar.setSubSerie(const a_Value: String);
begin
  Self.m_SubSerie := a_Value;
end;

function TSerieRPSAlterar.getSituacao: Integer;
begin
  Result := Self.m_Situacao;
end;

procedure TSerieRPSAlterar.setSituacao(const a_Value: Integer);
begin
  Self.m_Situacao := a_Value;
end;

function TSerieRPSAlterar.getPadrao: Boolean;
begin
  Result := Self.m_Padrao;
end;

procedure TSerieRPSAlterar.setPadrao(const a_Value: Boolean);
begin
  Self.m_Padrao := a_Value;
end;

function TSerieRPSAlterar.getNumeroInicial: Integer;
begin
  Result := Self.m_NumeroInicial;
end;

procedure TSerieRPSAlterar.setNumeroInicial(const a_Value: Integer);
begin
  Self.m_NumeroInicial := a_Value;
end;

function TSerieRPSAlterar.getNumeroFinal: Integer;
begin
  Result := Self.m_NumeroFinal;
end;

procedure TSerieRPSAlterar.setNumeroFinal(const a_Value: Integer);
begin
  Self.m_NumeroFinal := a_Value;
end;

function TSerieRPSAlterar.getProximoNumero: Integer;
begin
  Result := Self.m_ProximoNumero;
end;

procedure TSerieRPSAlterar.setProximoNumero(const a_Value: Integer);
begin
  Self.m_ProximoNumero := a_Value;
end;

destructor TSerieRPSAlterar.Destroy;
begin

end;

function TSerieRPSAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSerieRPSAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSerieRPSAlterar.getNameAPI(): String;
begin
  Result := 'SerieRPSAlterar';
end;

function TSerieRPSAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSerieRPSAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSerieRPSExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TSerieRPSExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TSerieRPSExcluir.Destroy;
begin

end;

function TSerieRPSExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSerieRPSExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSerieRPSExcluir.getNameAPI(): String;
begin
  Result := 'SerieRPSExcluir';
end;

function TSerieRPSExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSerieRPSExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
