unit api.model.persona.EscalaFolgaFuncionario;

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

type TEscalaFolgaFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdEscalaFolga: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Horario: String;
    var m_Data: TDate;
    

    function getIdEscalaFolga(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getHorario(): String;
    function getData(): TDate;
    

    procedure setIdEscalaFolga(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setHorario(const a_Value: String);
    procedure setData(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idescalafolga')]
    property idescalafolga: String read getIdEscalaFolga write setIdEscalaFolga;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    

end;

type TEscalaFolgaFuncionarioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdEscalaFolga: String;
    var m_Data: TDate;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Horario: String;
    var m_DataNova: TDate;
    

    function getIdEscalaFolga(): String;
    function getData(): TDate;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getHorario(): String;
    function getDataNova(): TDate;
    

    procedure setIdEscalaFolga(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setHorario(const a_Value: String);
    procedure setDataNova(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idescalafolga')]
    property idescalafolga: String read getIdEscalaFolga write setIdEscalaFolga;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

    [NasajonSerializeAttribute('datanova')]
    property datanova: TDate read getDataNova write setDataNova;

    

end;

type TEscalaFolgaFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdEscalaFolga: String;
    var m_Data: TDate;
    var m_Funcionario: String;
    var m_Empresa: String;
    

    function getIdEscalaFolga(): String;
    function getData(): TDate;
    function getFuncionario(): String;
    function getEmpresa(): String;
    

    procedure setIdEscalaFolga(const a_Value: String);
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
    

    [NasajonSerializeAttribute('idescalafolga')]
    property idescalafolga: String read getIdEscalaFolga write setIdEscalaFolga;

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

function TEscalaFolgaFuncionarioNovo.getIdEscalaFolga: String;
begin
  Result := Self.m_IdEscalaFolga;
end;

procedure TEscalaFolgaFuncionarioNovo.setIdEscalaFolga(const a_Value: String);
begin
  Self.m_IdEscalaFolga := a_Value;
end;

function TEscalaFolgaFuncionarioNovo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TEscalaFolgaFuncionarioNovo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TEscalaFolgaFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEscalaFolgaFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEscalaFolgaFuncionarioNovo.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure TEscalaFolgaFuncionarioNovo.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function TEscalaFolgaFuncionarioNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TEscalaFolgaFuncionarioNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

destructor TEscalaFolgaFuncionarioNovo.Destroy;
begin

end;

function TEscalaFolgaFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEscalaFolgaFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEscalaFolgaFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'EscalaFolgaFuncionarioNovo';
end;

function TEscalaFolgaFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEscalaFolgaFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEscalaFolgaFuncionarioAlterar.getIdEscalaFolga: String;
begin
  Result := Self.m_IdEscalaFolga;
end;

procedure TEscalaFolgaFuncionarioAlterar.setIdEscalaFolga(const a_Value: String);
begin
  Self.m_IdEscalaFolga := a_Value;
end;

function TEscalaFolgaFuncionarioAlterar.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TEscalaFolgaFuncionarioAlterar.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TEscalaFolgaFuncionarioAlterar.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TEscalaFolgaFuncionarioAlterar.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TEscalaFolgaFuncionarioAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEscalaFolgaFuncionarioAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEscalaFolgaFuncionarioAlterar.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure TEscalaFolgaFuncionarioAlterar.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function TEscalaFolgaFuncionarioAlterar.getDataNova: TDate;
begin
  Result := Self.m_DataNova;
end;

procedure TEscalaFolgaFuncionarioAlterar.setDataNova(const a_Value: TDate);
begin
  Self.m_DataNova := a_Value;
end;

destructor TEscalaFolgaFuncionarioAlterar.Destroy;
begin

end;

function TEscalaFolgaFuncionarioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEscalaFolgaFuncionarioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEscalaFolgaFuncionarioAlterar.getNameAPI(): String;
begin
  Result := 'EscalaFolgaFuncionarioAlterar';
end;

function TEscalaFolgaFuncionarioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEscalaFolgaFuncionarioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEscalaFolgaFuncionarioExcluir.getIdEscalaFolga: String;
begin
  Result := Self.m_IdEscalaFolga;
end;

procedure TEscalaFolgaFuncionarioExcluir.setIdEscalaFolga(const a_Value: String);
begin
  Self.m_IdEscalaFolga := a_Value;
end;

function TEscalaFolgaFuncionarioExcluir.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TEscalaFolgaFuncionarioExcluir.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TEscalaFolgaFuncionarioExcluir.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TEscalaFolgaFuncionarioExcluir.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TEscalaFolgaFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEscalaFolgaFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TEscalaFolgaFuncionarioExcluir.Destroy;
begin

end;

function TEscalaFolgaFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEscalaFolgaFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEscalaFolgaFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'EscalaFolgaFuncionarioExcluir';
end;

function TEscalaFolgaFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEscalaFolgaFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
