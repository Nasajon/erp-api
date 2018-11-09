unit api.model.persona.Solicitacoes;

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

type TSolicitacoesAlteracaoEndereco = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoLogradouro: String;
    var m_Logradouro: String;
    var m_Numero: String;
    var m_Complemento: String;
    var m_Bairro: String;
    var m_CEP: String;
    var m_MunicipioResidencia: String;
    

    function getTipoLogradouro(): String;
    function getLogradouro(): String;
    function getNumero(): String;
    function getComplemento(): String;
    function getBairro(): String;
    function getCEP(): String;
    function getMunicipioResidencia(): String;
    

    procedure setTipoLogradouro(const a_Value: String);
    procedure setLogradouro(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setComplemento(const a_Value: String);
    procedure setBairro(const a_Value: String);
    procedure setCEP(const a_Value: String);
    procedure setMunicipioResidencia(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Conforme tabela de tipos de logradouro do eSocial
    /// </summary>
    [NasajonSerializeAttribute('tipologradouro')]
    property tipologradouro: String read getTipoLogradouro write setTipoLogradouro;

    [NasajonSerializeAttribute('logradouro')]
    property logradouro: String read getLogradouro write setLogradouro;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('complemento')]
    property complemento: String read getComplemento write setComplemento;

    [NasajonSerializeAttribute('bairro')]
    property bairro: String read getBairro write setBairro;

    /// <summary>
/// [99999-999]. A máscara não é obrigatória
    /// </summary>
    [NasajonSerializeAttribute('cep')]
    property cep: String read getCEP write setCEP;

    /// <summary>
/// Conforme tabela do IBGE
    /// </summary>
    [NasajonSerializeAttribute('municipioresidencia')]
    property municipioresidencia: String read getMunicipioResidencia write setMunicipioResidencia;

    

end;

	
implementation

  uses
      api.send;  

function TSolicitacoesAlteracaoEndereco.getTipoLogradouro: String;
begin
  Result := Self.m_TipoLogradouro;
end;

procedure TSolicitacoesAlteracaoEndereco.setTipoLogradouro(const a_Value: String);
begin
  Self.m_TipoLogradouro := a_Value;
end;

function TSolicitacoesAlteracaoEndereco.getLogradouro: String;
begin
  Result := Self.m_Logradouro;
end;

procedure TSolicitacoesAlteracaoEndereco.setLogradouro(const a_Value: String);
begin
  Self.m_Logradouro := a_Value;
end;

function TSolicitacoesAlteracaoEndereco.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TSolicitacoesAlteracaoEndereco.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TSolicitacoesAlteracaoEndereco.getComplemento: String;
begin
  Result := Self.m_Complemento;
end;

procedure TSolicitacoesAlteracaoEndereco.setComplemento(const a_Value: String);
begin
  Self.m_Complemento := a_Value;
end;

function TSolicitacoesAlteracaoEndereco.getBairro: String;
begin
  Result := Self.m_Bairro;
end;

procedure TSolicitacoesAlteracaoEndereco.setBairro(const a_Value: String);
begin
  Self.m_Bairro := a_Value;
end;

function TSolicitacoesAlteracaoEndereco.getCEP: String;
begin
  Result := Self.m_CEP;
end;

procedure TSolicitacoesAlteracaoEndereco.setCEP(const a_Value: String);
begin
  Self.m_CEP := a_Value;
end;

function TSolicitacoesAlteracaoEndereco.getMunicipioResidencia: String;
begin
  Result := Self.m_MunicipioResidencia;
end;

procedure TSolicitacoesAlteracaoEndereco.setMunicipioResidencia(const a_Value: String);
begin
  Self.m_MunicipioResidencia := a_Value;
end;

destructor TSolicitacoesAlteracaoEndereco.Destroy;
begin

end;

function TSolicitacoesAlteracaoEndereco.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSolicitacoesAlteracaoEndereco.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSolicitacoesAlteracaoEndereco.getNameAPI(): String;
begin
  Result := 'SolicitacoesAlteracaoEndereco';
end;

function TSolicitacoesAlteracaoEndereco.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSolicitacoesAlteracaoEndereco.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
