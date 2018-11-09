unit api.model.persona.HistoricoFuncionario;

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

type THistoricoFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdHistorico: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_Descricao: TDate;
    var m_TipoHistorico: String;
    

    function getIdHistorico(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getDescricao(): TDate;
    function getTipoHistorico(): String;
    

    procedure setIdHistorico(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setDescricao(const a_Value: TDate);
    procedure setTipoHistorico(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idhistorico')]
    property idhistorico: String read getIdHistorico write setIdHistorico;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('descricao')]
    property descricao: TDate read getDescricao write setDescricao;

    /// <summary>
/// Conforme coluna tipo da tela de históricos do funcionário
    /// </summary>
    [NasajonSerializeAttribute('tipohistorico')]
    property tipohistorico: String read getTipoHistorico write setTipoHistorico;

    

end;

type THistoricoFuncionarioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdHistorico: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_Descricao: TDate;
    var m_TipoHistorico: String;
    

    function getIdHistorico(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getDescricao(): TDate;
    function getTipoHistorico(): String;
    

    procedure setIdHistorico(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setDescricao(const a_Value: TDate);
    procedure setTipoHistorico(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idhistorico')]
    property idhistorico: String read getIdHistorico write setIdHistorico;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('descricao')]
    property descricao: TDate read getDescricao write setDescricao;

    /// <summary>
/// Conforme coluna tipo da tela de históricos do funcionário
    /// </summary>
    [NasajonSerializeAttribute('tipohistorico')]
    property tipohistorico: String read getTipoHistorico write setTipoHistorico;

    

end;

type THistoricoFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdHistorico: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    

    function getIdHistorico(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    

    procedure setIdHistorico(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idhistorico')]
    property idhistorico: String read getIdHistorico write setIdHistorico;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    

end;

	
implementation

  uses
      api.send;  

function THistoricoFuncionarioNovo.getIdHistorico: String;
begin
  Result := Self.m_IdHistorico;
end;

procedure THistoricoFuncionarioNovo.setIdHistorico(const a_Value: String);
begin
  Self.m_IdHistorico := a_Value;
end;

function THistoricoFuncionarioNovo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure THistoricoFuncionarioNovo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function THistoricoFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THistoricoFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function THistoricoFuncionarioNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure THistoricoFuncionarioNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function THistoricoFuncionarioNovo.getDescricao: TDate;
begin
  Result := Self.m_Descricao;
end;

procedure THistoricoFuncionarioNovo.setDescricao(const a_Value: TDate);
begin
  Self.m_Descricao := a_Value;
end;

function THistoricoFuncionarioNovo.getTipoHistorico: String;
begin
  Result := Self.m_TipoHistorico;
end;

procedure THistoricoFuncionarioNovo.setTipoHistorico(const a_Value: String);
begin
  Self.m_TipoHistorico := a_Value;
end;

destructor THistoricoFuncionarioNovo.Destroy;
begin

end;

function THistoricoFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THistoricoFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THistoricoFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'HistoricoFuncionarioNovo';
end;

function THistoricoFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THistoricoFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function THistoricoFuncionarioAlterar.getIdHistorico: String;
begin
  Result := Self.m_IdHistorico;
end;

procedure THistoricoFuncionarioAlterar.setIdHistorico(const a_Value: String);
begin
  Self.m_IdHistorico := a_Value;
end;

function THistoricoFuncionarioAlterar.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure THistoricoFuncionarioAlterar.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function THistoricoFuncionarioAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THistoricoFuncionarioAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function THistoricoFuncionarioAlterar.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure THistoricoFuncionarioAlterar.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function THistoricoFuncionarioAlterar.getDescricao: TDate;
begin
  Result := Self.m_Descricao;
end;

procedure THistoricoFuncionarioAlterar.setDescricao(const a_Value: TDate);
begin
  Self.m_Descricao := a_Value;
end;

function THistoricoFuncionarioAlterar.getTipoHistorico: String;
begin
  Result := Self.m_TipoHistorico;
end;

procedure THistoricoFuncionarioAlterar.setTipoHistorico(const a_Value: String);
begin
  Self.m_TipoHistorico := a_Value;
end;

destructor THistoricoFuncionarioAlterar.Destroy;
begin

end;

function THistoricoFuncionarioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THistoricoFuncionarioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THistoricoFuncionarioAlterar.getNameAPI(): String;
begin
  Result := 'HistoricoFuncionarioAlterar';
end;

function THistoricoFuncionarioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THistoricoFuncionarioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function THistoricoFuncionarioExcluir.getIdHistorico: String;
begin
  Result := Self.m_IdHistorico;
end;

procedure THistoricoFuncionarioExcluir.setIdHistorico(const a_Value: String);
begin
  Self.m_IdHistorico := a_Value;
end;

function THistoricoFuncionarioExcluir.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure THistoricoFuncionarioExcluir.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function THistoricoFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THistoricoFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function THistoricoFuncionarioExcluir.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure THistoricoFuncionarioExcluir.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

destructor THistoricoFuncionarioExcluir.Destroy;
begin

end;

function THistoricoFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THistoricoFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THistoricoFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'HistoricoFuncionarioExcluir';
end;

function THistoricoFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THistoricoFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
