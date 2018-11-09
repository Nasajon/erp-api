unit api.model.persona.AcordoProrrogacaoHora;

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

type TAcordoProrrogacaoHoraNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAcordo: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_DataInicio: TDate;
    var m_DataFim: TDate;
    var m_QuantidadeHoras: TDate;
    var m_PercentualHoras: Currency;
    

    function getIdAcordo(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getDataInicio(): TDate;
    function getDataFim(): TDate;
    function getQuantidadeHoras(): TDate;
    function getPercentualHoras(): Currency;
    

    procedure setIdAcordo(const a_Value: String);
    procedure setSindicato(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setDataInicio(const a_Value: TDate);
    procedure setDataFim(const a_Value: TDate);
    procedure setQuantidadeHoras(const a_Value: TDate);
    procedure setPercentualHoras(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idacordo')]
    property idacordo: String read getIdAcordo write setIdAcordo;

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('datainicio')]
    property datainicio: TDate read getDataInicio write setDataInicio;

    [NasajonSerializeAttribute('datafim')]
    property datafim: TDate read getDataFim write setDataFim;

    [NasajonSerializeAttribute('quantidadehoras')]
    property quantidadehoras: TDate read getQuantidadeHoras write setQuantidadeHoras;

    [NasajonSerializeAttribute('percentualhoras')]
    property percentualhoras: Currency read getPercentualHoras write setPercentualHoras;

    

end;

type TAcordoProrrogacaoHoraAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Acordo: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_DataInicio: TDate;
    var m_DataFim: TDate;
    var m_QuantidadeHoras: TDate;
    var m_PercentualHoras: Currency;
    

    function getAcordo(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getDataInicio(): TDate;
    function getDataFim(): TDate;
    function getQuantidadeHoras(): TDate;
    function getPercentualHoras(): Currency;
    

    procedure setAcordo(const a_Value: String);
    procedure setSindicato(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setDataInicio(const a_Value: TDate);
    procedure setDataFim(const a_Value: TDate);
    procedure setQuantidadeHoras(const a_Value: TDate);
    procedure setPercentualHoras(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('acordo')]
    property acordo: String read getAcordo write setAcordo;

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('datainicio')]
    property datainicio: TDate read getDataInicio write setDataInicio;

    [NasajonSerializeAttribute('datafim')]
    property datafim: TDate read getDataFim write setDataFim;

    [NasajonSerializeAttribute('quantidadehoras')]
    property quantidadehoras: TDate read getQuantidadeHoras write setQuantidadeHoras;

    [NasajonSerializeAttribute('percentualhoras')]
    property percentualhoras: Currency read getPercentualHoras write setPercentualHoras;

    

end;

type TAcordoProrrogacaoHoraExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Acordo: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    

    function getAcordo(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    

    procedure setAcordo(const a_Value: String);
    procedure setSindicato(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('acordo')]
    property acordo: String read getAcordo write setAcordo;

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TAcordoProrrogacaoHoraNovo.getIdAcordo: String;
begin
  Result := Self.m_IdAcordo;
end;

procedure TAcordoProrrogacaoHoraNovo.setIdAcordo(const a_Value: String);
begin
  Self.m_IdAcordo := a_Value;
end;

function TAcordoProrrogacaoHoraNovo.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TAcordoProrrogacaoHoraNovo.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TAcordoProrrogacaoHoraNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAcordoProrrogacaoHoraNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAcordoProrrogacaoHoraNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TAcordoProrrogacaoHoraNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TAcordoProrrogacaoHoraNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TAcordoProrrogacaoHoraNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TAcordoProrrogacaoHoraNovo.getDataInicio: TDate;
begin
  Result := Self.m_DataInicio;
end;

procedure TAcordoProrrogacaoHoraNovo.setDataInicio(const a_Value: TDate);
begin
  Self.m_DataInicio := a_Value;
end;

function TAcordoProrrogacaoHoraNovo.getDataFim: TDate;
begin
  Result := Self.m_DataFim;
end;

procedure TAcordoProrrogacaoHoraNovo.setDataFim(const a_Value: TDate);
begin
  Self.m_DataFim := a_Value;
end;

function TAcordoProrrogacaoHoraNovo.getQuantidadeHoras: TDate;
begin
  Result := Self.m_QuantidadeHoras;
end;

procedure TAcordoProrrogacaoHoraNovo.setQuantidadeHoras(const a_Value: TDate);
begin
  Self.m_QuantidadeHoras := a_Value;
end;

function TAcordoProrrogacaoHoraNovo.getPercentualHoras: Currency;
begin
  Result := Self.m_PercentualHoras;
end;

procedure TAcordoProrrogacaoHoraNovo.setPercentualHoras(const a_Value: Currency);
begin
  Self.m_PercentualHoras := a_Value;
end;

destructor TAcordoProrrogacaoHoraNovo.Destroy;
begin

end;

function TAcordoProrrogacaoHoraNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAcordoProrrogacaoHoraNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAcordoProrrogacaoHoraNovo.getNameAPI(): String;
begin
  Result := 'AcordoProrrogacaoHoraNovo';
end;

function TAcordoProrrogacaoHoraNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAcordoProrrogacaoHoraNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAcordoProrrogacaoHoraAlterar.getAcordo: String;
begin
  Result := Self.m_Acordo;
end;

procedure TAcordoProrrogacaoHoraAlterar.setAcordo(const a_Value: String);
begin
  Self.m_Acordo := a_Value;
end;

function TAcordoProrrogacaoHoraAlterar.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TAcordoProrrogacaoHoraAlterar.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TAcordoProrrogacaoHoraAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAcordoProrrogacaoHoraAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAcordoProrrogacaoHoraAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TAcordoProrrogacaoHoraAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TAcordoProrrogacaoHoraAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TAcordoProrrogacaoHoraAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TAcordoProrrogacaoHoraAlterar.getDataInicio: TDate;
begin
  Result := Self.m_DataInicio;
end;

procedure TAcordoProrrogacaoHoraAlterar.setDataInicio(const a_Value: TDate);
begin
  Self.m_DataInicio := a_Value;
end;

function TAcordoProrrogacaoHoraAlterar.getDataFim: TDate;
begin
  Result := Self.m_DataFim;
end;

procedure TAcordoProrrogacaoHoraAlterar.setDataFim(const a_Value: TDate);
begin
  Self.m_DataFim := a_Value;
end;

function TAcordoProrrogacaoHoraAlterar.getQuantidadeHoras: TDate;
begin
  Result := Self.m_QuantidadeHoras;
end;

procedure TAcordoProrrogacaoHoraAlterar.setQuantidadeHoras(const a_Value: TDate);
begin
  Self.m_QuantidadeHoras := a_Value;
end;

function TAcordoProrrogacaoHoraAlterar.getPercentualHoras: Currency;
begin
  Result := Self.m_PercentualHoras;
end;

procedure TAcordoProrrogacaoHoraAlterar.setPercentualHoras(const a_Value: Currency);
begin
  Self.m_PercentualHoras := a_Value;
end;

destructor TAcordoProrrogacaoHoraAlterar.Destroy;
begin

end;

function TAcordoProrrogacaoHoraAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAcordoProrrogacaoHoraAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAcordoProrrogacaoHoraAlterar.getNameAPI(): String;
begin
  Result := 'AcordoProrrogacaoHoraAlterar';
end;

function TAcordoProrrogacaoHoraAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAcordoProrrogacaoHoraAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAcordoProrrogacaoHoraExcluir.getAcordo: String;
begin
  Result := Self.m_Acordo;
end;

procedure TAcordoProrrogacaoHoraExcluir.setAcordo(const a_Value: String);
begin
  Self.m_Acordo := a_Value;
end;

function TAcordoProrrogacaoHoraExcluir.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TAcordoProrrogacaoHoraExcluir.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TAcordoProrrogacaoHoraExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAcordoProrrogacaoHoraExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TAcordoProrrogacaoHoraExcluir.Destroy;
begin

end;

function TAcordoProrrogacaoHoraExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAcordoProrrogacaoHoraExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAcordoProrrogacaoHoraExcluir.getNameAPI(): String;
begin
  Result := 'AcordoProrrogacaoHoraExcluir';
end;

function TAcordoProrrogacaoHoraExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAcordoProrrogacaoHoraExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
