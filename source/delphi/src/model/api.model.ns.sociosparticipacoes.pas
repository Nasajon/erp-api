unit api.model.ns.SociosParticipacoes;

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

type TSociosParticipacoesNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdSocioParticipacao: String;
    var m_Socio: String;
    var m_Empresa: String;
    var m_DataInicial: TDate;
    var m_DataFinal: TDate;
    var m_PercentualCapitalTotal: Currency;
    var m_PercentualCapitalVotante: Currency;
    

    function getIdSocioParticipacao(): String;
    function getSocio(): String;
    function getEmpresa(): String;
    function getDataInicial(): TDate;
    function getDataFinal(): TDate;
    function getPercentualCapitalTotal(): Currency;
    function getPercentualCapitalVotante(): Currency;
    

    procedure setIdSocioParticipacao(const a_Value: String);
    procedure setSocio(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataInicial(const a_Value: TDate);
    procedure setDataFinal(const a_Value: TDate);
    procedure setPercentualCapitalTotal(const a_Value: Currency);
    procedure setPercentualCapitalVotante(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idsocioparticipacao')]
    property idsocioparticipacao: String read getIdSocioParticipacao write setIdSocioParticipacao;

    [NasajonSerializeAttribute('socio')]
    property socio: String read getSocio write setSocio;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datainicial')]
    property datainicial: TDate read getDataInicial write setDataInicial;

    [NasajonSerializeAttribute('datafinal')]
    property datafinal: TDate read getDataFinal write setDataFinal;

    [NasajonSerializeAttribute('percentualcapitaltotal')]
    property percentualcapitaltotal: Currency read getPercentualCapitalTotal write setPercentualCapitalTotal;

    [NasajonSerializeAttribute('percentualcapitalvotante')]
    property percentualcapitalvotante: Currency read getPercentualCapitalVotante write setPercentualCapitalVotante;

    

end;

type TSociosParticipacoesAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_SocioParticipacao: String;
    var m_Socio: String;
    var m_Empresa: String;
    var m_DataInicial: TDate;
    var m_DataInicial_Anterior: TDate;
    var m_DataFinal: TDate;
    var m_PercentualCapitalTotal: Currency;
    var m_PercentualCapitalVotante: Currency;
    

    function getSocioParticipacao(): String;
    function getSocio(): String;
    function getEmpresa(): String;
    function getDataInicial(): TDate;
    function getDataInicial_Anterior(): TDate;
    function getDataFinal(): TDate;
    function getPercentualCapitalTotal(): Currency;
    function getPercentualCapitalVotante(): Currency;
    

    procedure setSocioParticipacao(const a_Value: String);
    procedure setSocio(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataInicial(const a_Value: TDate);
    procedure setDataInicial_Anterior(const a_Value: TDate);
    procedure setDataFinal(const a_Value: TDate);
    procedure setPercentualCapitalTotal(const a_Value: Currency);
    procedure setPercentualCapitalVotante(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('socioparticipacao')]
    property socioparticipacao: String read getSocioParticipacao write setSocioParticipacao;

    [NasajonSerializeAttribute('socio')]
    property socio: String read getSocio write setSocio;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datainicial')]
    property datainicial: TDate read getDataInicial write setDataInicial;

    /// <summary>
/// Define a data início anterior. Simplesmente para localização do registro
    /// </summary>
    [NasajonSerializeAttribute('datainicial_anterior')]
    property datainicial_anterior: TDate read getDataInicial_Anterior write setDataInicial_Anterior;

    [NasajonSerializeAttribute('datafinal')]
    property datafinal: TDate read getDataFinal write setDataFinal;

    [NasajonSerializeAttribute('percentualcapitaltotal')]
    property percentualcapitaltotal: Currency read getPercentualCapitalTotal write setPercentualCapitalTotal;

    [NasajonSerializeAttribute('percentualcapitalvotante')]
    property percentualcapitalvotante: Currency read getPercentualCapitalVotante write setPercentualCapitalVotante;

    

end;

type TSociosParticipacoesExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_SocioParticipacao: String;
    var m_Socio: String;
    var m_Empresa: String;
    var m_DataInicial: TDate;
    

    function getSocioParticipacao(): String;
    function getSocio(): String;
    function getEmpresa(): String;
    function getDataInicial(): TDate;
    

    procedure setSocioParticipacao(const a_Value: String);
    procedure setSocio(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataInicial(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('socioparticipacao')]
    property socioparticipacao: String read getSocioParticipacao write setSocioParticipacao;

    [NasajonSerializeAttribute('socio')]
    property socio: String read getSocio write setSocio;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Define a data início. Simplesmente para localização do registro
    /// </summary>
    [NasajonSerializeAttribute('datainicial')]
    property datainicial: TDate read getDataInicial write setDataInicial;

    

end;

	
implementation

  uses
      api.send;  

function TSociosParticipacoesNovo.getIdSocioParticipacao: String;
begin
  Result := Self.m_IdSocioParticipacao;
end;

procedure TSociosParticipacoesNovo.setIdSocioParticipacao(const a_Value: String);
begin
  Self.m_IdSocioParticipacao := a_Value;
end;

function TSociosParticipacoesNovo.getSocio: String;
begin
  Result := Self.m_Socio;
end;

procedure TSociosParticipacoesNovo.setSocio(const a_Value: String);
begin
  Self.m_Socio := a_Value;
end;

function TSociosParticipacoesNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TSociosParticipacoesNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TSociosParticipacoesNovo.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TSociosParticipacoesNovo.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TSociosParticipacoesNovo.getDataFinal: TDate;
begin
  Result := Self.m_DataFinal;
end;

procedure TSociosParticipacoesNovo.setDataFinal(const a_Value: TDate);
begin
  Self.m_DataFinal := a_Value;
end;

function TSociosParticipacoesNovo.getPercentualCapitalTotal: Currency;
begin
  Result := Self.m_PercentualCapitalTotal;
end;

procedure TSociosParticipacoesNovo.setPercentualCapitalTotal(const a_Value: Currency);
begin
  Self.m_PercentualCapitalTotal := a_Value;
end;

function TSociosParticipacoesNovo.getPercentualCapitalVotante: Currency;
begin
  Result := Self.m_PercentualCapitalVotante;
end;

procedure TSociosParticipacoesNovo.setPercentualCapitalVotante(const a_Value: Currency);
begin
  Self.m_PercentualCapitalVotante := a_Value;
end;

destructor TSociosParticipacoesNovo.Destroy;
begin

end;

function TSociosParticipacoesNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSociosParticipacoesNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSociosParticipacoesNovo.getNameAPI(): String;
begin
  Result := 'SociosParticipacoesNovo';
end;

function TSociosParticipacoesNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSociosParticipacoesNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSociosParticipacoesAlterar.getSocioParticipacao: String;
begin
  Result := Self.m_SocioParticipacao;
end;

procedure TSociosParticipacoesAlterar.setSocioParticipacao(const a_Value: String);
begin
  Self.m_SocioParticipacao := a_Value;
end;

function TSociosParticipacoesAlterar.getSocio: String;
begin
  Result := Self.m_Socio;
end;

procedure TSociosParticipacoesAlterar.setSocio(const a_Value: String);
begin
  Self.m_Socio := a_Value;
end;

function TSociosParticipacoesAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TSociosParticipacoesAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TSociosParticipacoesAlterar.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TSociosParticipacoesAlterar.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TSociosParticipacoesAlterar.getDataInicial_Anterior: TDate;
begin
  Result := Self.m_DataInicial_Anterior;
end;

procedure TSociosParticipacoesAlterar.setDataInicial_Anterior(const a_Value: TDate);
begin
  Self.m_DataInicial_Anterior := a_Value;
end;

function TSociosParticipacoesAlterar.getDataFinal: TDate;
begin
  Result := Self.m_DataFinal;
end;

procedure TSociosParticipacoesAlterar.setDataFinal(const a_Value: TDate);
begin
  Self.m_DataFinal := a_Value;
end;

function TSociosParticipacoesAlterar.getPercentualCapitalTotal: Currency;
begin
  Result := Self.m_PercentualCapitalTotal;
end;

procedure TSociosParticipacoesAlterar.setPercentualCapitalTotal(const a_Value: Currency);
begin
  Self.m_PercentualCapitalTotal := a_Value;
end;

function TSociosParticipacoesAlterar.getPercentualCapitalVotante: Currency;
begin
  Result := Self.m_PercentualCapitalVotante;
end;

procedure TSociosParticipacoesAlterar.setPercentualCapitalVotante(const a_Value: Currency);
begin
  Self.m_PercentualCapitalVotante := a_Value;
end;

destructor TSociosParticipacoesAlterar.Destroy;
begin

end;

function TSociosParticipacoesAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSociosParticipacoesAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSociosParticipacoesAlterar.getNameAPI(): String;
begin
  Result := 'SociosParticipacoesAlterar';
end;

function TSociosParticipacoesAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSociosParticipacoesAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSociosParticipacoesExcluir.getSocioParticipacao: String;
begin
  Result := Self.m_SocioParticipacao;
end;

procedure TSociosParticipacoesExcluir.setSocioParticipacao(const a_Value: String);
begin
  Self.m_SocioParticipacao := a_Value;
end;

function TSociosParticipacoesExcluir.getSocio: String;
begin
  Result := Self.m_Socio;
end;

procedure TSociosParticipacoesExcluir.setSocio(const a_Value: String);
begin
  Self.m_Socio := a_Value;
end;

function TSociosParticipacoesExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TSociosParticipacoesExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TSociosParticipacoesExcluir.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TSociosParticipacoesExcluir.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

destructor TSociosParticipacoesExcluir.Destroy;
begin

end;

function TSociosParticipacoesExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSociosParticipacoesExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSociosParticipacoesExcluir.getNameAPI(): String;
begin
  Result := 'SociosParticipacoesExcluir';
end;

function TSociosParticipacoesExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSociosParticipacoesExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
