unit api.model.persona.AvisoFeriasFuncionario;

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

type TAvisoFeriasFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAvisoFerias: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_Tipo: Integer;
    var m_DataInicioGozo: TDate;
    var m_DataFimGozo: TDate;
    var m_DataInicioPeriodoAquisitivo: TDate;
    var m_DataFimPeriodoAquisitivo: TDate;
    var m_TemAbonoPecuniario: Boolean;
    var m_Observacao: WideString;
    var m_DiasVendidos: Integer;
    var m_DiasFeriasColetivas: Integer;
    

    function getIdAvisoFerias(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getTipo(): Integer;
    function getDataInicioGozo(): TDate;
    function getDataFimGozo(): TDate;
    function getDataInicioPeriodoAquisitivo(): TDate;
    function getDataFimPeriodoAquisitivo(): TDate;
    function getTemAbonoPecuniario(): Boolean;
    function getObservacao(): WideString;
    function getDiasVendidos(): Integer;
    function getDiasFeriasColetivas(): Integer;
    

    procedure setIdAvisoFerias(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setTipo(const a_Value: Integer);
    procedure setDataInicioGozo(const a_Value: TDate);
    procedure setDataFimGozo(const a_Value: TDate);
    procedure setDataInicioPeriodoAquisitivo(const a_Value: TDate);
    procedure setDataFimPeriodoAquisitivo(const a_Value: TDate);
    procedure setTemAbonoPecuniario(const a_Value: Boolean);
    procedure setObservacao(const a_Value: WideString);
    procedure setDiasVendidos(const a_Value: Integer);
    procedure setDiasFeriasColetivas(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idavisoferias')]
    property idavisoferias: String read getIdAvisoFerias write setIdAvisoFerias;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('datainiciogozo')]
    property datainiciogozo: TDate read getDataInicioGozo write setDataInicioGozo;

    [NasajonSerializeAttribute('datafimgozo')]
    property datafimgozo: TDate read getDataFimGozo write setDataFimGozo;

    [NasajonSerializeAttribute('datainicioperiodoaquisitivo')]
    property datainicioperiodoaquisitivo: TDate read getDataInicioPeriodoAquisitivo write setDataInicioPeriodoAquisitivo;

    [NasajonSerializeAttribute('datafimperiodoaquisitivo')]
    property datafimperiodoaquisitivo: TDate read getDataFimPeriodoAquisitivo write setDataFimPeriodoAquisitivo;

    [NasajonSerializeAttribute('temabonopecuniario')]
    property temabonopecuniario: Boolean read getTemAbonoPecuniario write setTemAbonoPecuniario;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getObservacao write setObservacao;

    [NasajonSerializeAttribute('diasvendidos')]
    property diasvendidos: Integer read getDiasVendidos write setDiasVendidos;

    [NasajonSerializeAttribute('diasferiascoletivas')]
    property diasferiascoletivas: Integer read getDiasFeriasColetivas write setDiasFeriasColetivas;

    

end;

type TAvisoFeriasFuncionarioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAvisoFerias: String;
    var m_Data: TDate;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_DataNova: TDate;
    var m_Tipo: Integer;
    var m_DataInicioGozo: TDate;
    var m_DataFimGozo: TDate;
    var m_DataInicioPeriodoAquisitivo: TDate;
    var m_DataFimPeriodoAquisitivo: TDate;
    var m_TemAbonoPecuniario: Boolean;
    var m_Observacao: WideString;
    var m_DiasVendidos: Integer;
    var m_DiasFeriasColetivas: Integer;
    

    function getIdAvisoFerias(): String;
    function getData(): TDate;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getDataNova(): TDate;
    function getTipo(): Integer;
    function getDataInicioGozo(): TDate;
    function getDataFimGozo(): TDate;
    function getDataInicioPeriodoAquisitivo(): TDate;
    function getDataFimPeriodoAquisitivo(): TDate;
    function getTemAbonoPecuniario(): Boolean;
    function getObservacao(): WideString;
    function getDiasVendidos(): Integer;
    function getDiasFeriasColetivas(): Integer;
    

    procedure setIdAvisoFerias(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataNova(const a_Value: TDate);
    procedure setTipo(const a_Value: Integer);
    procedure setDataInicioGozo(const a_Value: TDate);
    procedure setDataFimGozo(const a_Value: TDate);
    procedure setDataInicioPeriodoAquisitivo(const a_Value: TDate);
    procedure setDataFimPeriodoAquisitivo(const a_Value: TDate);
    procedure setTemAbonoPecuniario(const a_Value: Boolean);
    procedure setObservacao(const a_Value: WideString);
    procedure setDiasVendidos(const a_Value: Integer);
    procedure setDiasFeriasColetivas(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idavisoferias')]
    property idavisoferias: String read getIdAvisoFerias write setIdAvisoFerias;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datanova')]
    property datanova: TDate read getDataNova write setDataNova;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('datainiciogozo')]
    property datainiciogozo: TDate read getDataInicioGozo write setDataInicioGozo;

    [NasajonSerializeAttribute('datafimgozo')]
    property datafimgozo: TDate read getDataFimGozo write setDataFimGozo;

    [NasajonSerializeAttribute('datainicioperiodoaquisitivo')]
    property datainicioperiodoaquisitivo: TDate read getDataInicioPeriodoAquisitivo write setDataInicioPeriodoAquisitivo;

    [NasajonSerializeAttribute('datafimperiodoaquisitivo')]
    property datafimperiodoaquisitivo: TDate read getDataFimPeriodoAquisitivo write setDataFimPeriodoAquisitivo;

    [NasajonSerializeAttribute('temabonopecuniario')]
    property temabonopecuniario: Boolean read getTemAbonoPecuniario write setTemAbonoPecuniario;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getObservacao write setObservacao;

    [NasajonSerializeAttribute('diasvendidos')]
    property diasvendidos: Integer read getDiasVendidos write setDiasVendidos;

    [NasajonSerializeAttribute('diasferiascoletivas')]
    property diasferiascoletivas: Integer read getDiasFeriasColetivas write setDiasFeriasColetivas;

    

end;

type TAvisoFeriasFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAvisoFerias: String;
    var m_Data: TDate;
    var m_Funcionario: String;
    var m_Empresa: String;
    

    function getIdAvisoFerias(): String;
    function getData(): TDate;
    function getFuncionario(): String;
    function getEmpresa(): String;
    

    procedure setIdAvisoFerias(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idavisoferias')]
    property idavisoferias: String read getIdAvisoFerias write setIdAvisoFerias;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TAvisoFeriasFuncionarioNovo.getIdAvisoFerias: String;
begin
  Result := Self.m_IdAvisoFerias;
end;

procedure TAvisoFeriasFuncionarioNovo.setIdAvisoFerias(const a_Value: String);
begin
  Self.m_IdAvisoFerias := a_Value;
end;

function TAvisoFeriasFuncionarioNovo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TAvisoFeriasFuncionarioNovo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TAvisoFeriasFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAvisoFeriasFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAvisoFeriasFuncionarioNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TAvisoFeriasFuncionarioNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TAvisoFeriasFuncionarioNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TAvisoFeriasFuncionarioNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TAvisoFeriasFuncionarioNovo.getDataInicioGozo: TDate;
begin
  Result := Self.m_DataInicioGozo;
end;

procedure TAvisoFeriasFuncionarioNovo.setDataInicioGozo(const a_Value: TDate);
begin
  Self.m_DataInicioGozo := a_Value;
end;

function TAvisoFeriasFuncionarioNovo.getDataFimGozo: TDate;
begin
  Result := Self.m_DataFimGozo;
end;

procedure TAvisoFeriasFuncionarioNovo.setDataFimGozo(const a_Value: TDate);
begin
  Self.m_DataFimGozo := a_Value;
end;

function TAvisoFeriasFuncionarioNovo.getDataInicioPeriodoAquisitivo: TDate;
begin
  Result := Self.m_DataInicioPeriodoAquisitivo;
end;

procedure TAvisoFeriasFuncionarioNovo.setDataInicioPeriodoAquisitivo(const a_Value: TDate);
begin
  Self.m_DataInicioPeriodoAquisitivo := a_Value;
end;

function TAvisoFeriasFuncionarioNovo.getDataFimPeriodoAquisitivo: TDate;
begin
  Result := Self.m_DataFimPeriodoAquisitivo;
end;

procedure TAvisoFeriasFuncionarioNovo.setDataFimPeriodoAquisitivo(const a_Value: TDate);
begin
  Self.m_DataFimPeriodoAquisitivo := a_Value;
end;

function TAvisoFeriasFuncionarioNovo.getTemAbonoPecuniario: Boolean;
begin
  Result := Self.m_TemAbonoPecuniario;
end;

procedure TAvisoFeriasFuncionarioNovo.setTemAbonoPecuniario(const a_Value: Boolean);
begin
  Self.m_TemAbonoPecuniario := a_Value;
end;

function TAvisoFeriasFuncionarioNovo.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TAvisoFeriasFuncionarioNovo.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

function TAvisoFeriasFuncionarioNovo.getDiasVendidos: Integer;
begin
  Result := Self.m_DiasVendidos;
end;

procedure TAvisoFeriasFuncionarioNovo.setDiasVendidos(const a_Value: Integer);
begin
  Self.m_DiasVendidos := a_Value;
end;

function TAvisoFeriasFuncionarioNovo.getDiasFeriasColetivas: Integer;
begin
  Result := Self.m_DiasFeriasColetivas;
end;

procedure TAvisoFeriasFuncionarioNovo.setDiasFeriasColetivas(const a_Value: Integer);
begin
  Self.m_DiasFeriasColetivas := a_Value;
end;

destructor TAvisoFeriasFuncionarioNovo.Destroy;
begin

end;

function TAvisoFeriasFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAvisoFeriasFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAvisoFeriasFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'AvisoFeriasFuncionarioNovo';
end;

function TAvisoFeriasFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAvisoFeriasFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAvisoFeriasFuncionarioAlterar.getIdAvisoFerias: String;
begin
  Result := Self.m_IdAvisoFerias;
end;

procedure TAvisoFeriasFuncionarioAlterar.setIdAvisoFerias(const a_Value: String);
begin
  Self.m_IdAvisoFerias := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TAvisoFeriasFuncionarioAlterar.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TAvisoFeriasFuncionarioAlterar.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAvisoFeriasFuncionarioAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getDataNova: TDate;
begin
  Result := Self.m_DataNova;
end;

procedure TAvisoFeriasFuncionarioAlterar.setDataNova(const a_Value: TDate);
begin
  Self.m_DataNova := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TAvisoFeriasFuncionarioAlterar.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getDataInicioGozo: TDate;
begin
  Result := Self.m_DataInicioGozo;
end;

procedure TAvisoFeriasFuncionarioAlterar.setDataInicioGozo(const a_Value: TDate);
begin
  Self.m_DataInicioGozo := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getDataFimGozo: TDate;
begin
  Result := Self.m_DataFimGozo;
end;

procedure TAvisoFeriasFuncionarioAlterar.setDataFimGozo(const a_Value: TDate);
begin
  Self.m_DataFimGozo := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getDataInicioPeriodoAquisitivo: TDate;
begin
  Result := Self.m_DataInicioPeriodoAquisitivo;
end;

procedure TAvisoFeriasFuncionarioAlterar.setDataInicioPeriodoAquisitivo(const a_Value: TDate);
begin
  Self.m_DataInicioPeriodoAquisitivo := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getDataFimPeriodoAquisitivo: TDate;
begin
  Result := Self.m_DataFimPeriodoAquisitivo;
end;

procedure TAvisoFeriasFuncionarioAlterar.setDataFimPeriodoAquisitivo(const a_Value: TDate);
begin
  Self.m_DataFimPeriodoAquisitivo := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getTemAbonoPecuniario: Boolean;
begin
  Result := Self.m_TemAbonoPecuniario;
end;

procedure TAvisoFeriasFuncionarioAlterar.setTemAbonoPecuniario(const a_Value: Boolean);
begin
  Self.m_TemAbonoPecuniario := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TAvisoFeriasFuncionarioAlterar.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getDiasVendidos: Integer;
begin
  Result := Self.m_DiasVendidos;
end;

procedure TAvisoFeriasFuncionarioAlterar.setDiasVendidos(const a_Value: Integer);
begin
  Self.m_DiasVendidos := a_Value;
end;

function TAvisoFeriasFuncionarioAlterar.getDiasFeriasColetivas: Integer;
begin
  Result := Self.m_DiasFeriasColetivas;
end;

procedure TAvisoFeriasFuncionarioAlterar.setDiasFeriasColetivas(const a_Value: Integer);
begin
  Self.m_DiasFeriasColetivas := a_Value;
end;

destructor TAvisoFeriasFuncionarioAlterar.Destroy;
begin

end;

function TAvisoFeriasFuncionarioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAvisoFeriasFuncionarioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAvisoFeriasFuncionarioAlterar.getNameAPI(): String;
begin
  Result := 'AvisoFeriasFuncionarioAlterar';
end;

function TAvisoFeriasFuncionarioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAvisoFeriasFuncionarioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAvisoFeriasFuncionarioExcluir.getIdAvisoFerias: String;
begin
  Result := Self.m_IdAvisoFerias;
end;

procedure TAvisoFeriasFuncionarioExcluir.setIdAvisoFerias(const a_Value: String);
begin
  Self.m_IdAvisoFerias := a_Value;
end;

function TAvisoFeriasFuncionarioExcluir.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TAvisoFeriasFuncionarioExcluir.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TAvisoFeriasFuncionarioExcluir.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TAvisoFeriasFuncionarioExcluir.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TAvisoFeriasFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAvisoFeriasFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TAvisoFeriasFuncionarioExcluir.Destroy;
begin

end;

function TAvisoFeriasFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAvisoFeriasFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAvisoFeriasFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'AvisoFeriasFuncionarioExcluir';
end;

function TAvisoFeriasFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAvisoFeriasFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
