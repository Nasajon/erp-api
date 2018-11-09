unit api.model.persona.FaltaFuncionario;

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

type TFaltaFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdFalta: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_Descricao: TDate;
    var m_Tipo: Integer;
    var m_AbateNoCalculoDoPonto: Boolean;
    

    function getIdFalta(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getDescricao(): TDate;
    function getTipo(): Integer;
    function getAbateNoCalculoDoPonto(): Boolean;
    

    procedure setIdFalta(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setDescricao(const a_Value: TDate);
    procedure setTipo(const a_Value: Integer);
    procedure setAbateNoCalculoDoPonto(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idfalta')]
    property idfalta: String read getIdFalta write setIdFalta;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('descricao')]
    property descricao: TDate read getDescricao write setDescricao;

    /// <summary>
/// Injustificada(0) ou Justificada(1)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('abatenocalculodoponto')]
    property abatenocalculodoponto: Boolean read getAbateNoCalculoDoPonto write setAbateNoCalculoDoPonto;

    

end;

type TFaltaFuncionarioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdFalta: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_Descricao: TDate;
    var m_Tipo: Integer;
    var m_AbateNoCalculoDoPonto: Boolean;
    

    function getIdFalta(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getDescricao(): TDate;
    function getTipo(): Integer;
    function getAbateNoCalculoDoPonto(): Boolean;
    

    procedure setIdFalta(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setDescricao(const a_Value: TDate);
    procedure setTipo(const a_Value: Integer);
    procedure setAbateNoCalculoDoPonto(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idfalta')]
    property idfalta: String read getIdFalta write setIdFalta;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('descricao')]
    property descricao: TDate read getDescricao write setDescricao;

    /// <summary>
/// Injustificada(0) ou Justificada(1)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('abatenocalculodoponto')]
    property abatenocalculodoponto: Boolean read getAbateNoCalculoDoPonto write setAbateNoCalculoDoPonto;

    

end;

type TFaltaFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdFalta: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    

    function getIdFalta(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    

    procedure setIdFalta(const a_Value: String);
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
    

    [NasajonSerializeAttribute('idfalta')]
    property idfalta: String read getIdFalta write setIdFalta;

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

function TFaltaFuncionarioNovo.getIdFalta: String;
begin
  Result := Self.m_IdFalta;
end;

procedure TFaltaFuncionarioNovo.setIdFalta(const a_Value: String);
begin
  Self.m_IdFalta := a_Value;
end;

function TFaltaFuncionarioNovo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFaltaFuncionarioNovo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFaltaFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFaltaFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFaltaFuncionarioNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TFaltaFuncionarioNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TFaltaFuncionarioNovo.getDescricao: TDate;
begin
  Result := Self.m_Descricao;
end;

procedure TFaltaFuncionarioNovo.setDescricao(const a_Value: TDate);
begin
  Self.m_Descricao := a_Value;
end;

function TFaltaFuncionarioNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TFaltaFuncionarioNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TFaltaFuncionarioNovo.getAbateNoCalculoDoPonto: Boolean;
begin
  Result := Self.m_AbateNoCalculoDoPonto;
end;

procedure TFaltaFuncionarioNovo.setAbateNoCalculoDoPonto(const a_Value: Boolean);
begin
  Self.m_AbateNoCalculoDoPonto := a_Value;
end;

destructor TFaltaFuncionarioNovo.Destroy;
begin

end;

function TFaltaFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFaltaFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFaltaFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'FaltaFuncionarioNovo';
end;

function TFaltaFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFaltaFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFaltaFuncionarioAlterar.getIdFalta: String;
begin
  Result := Self.m_IdFalta;
end;

procedure TFaltaFuncionarioAlterar.setIdFalta(const a_Value: String);
begin
  Self.m_IdFalta := a_Value;
end;

function TFaltaFuncionarioAlterar.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFaltaFuncionarioAlterar.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFaltaFuncionarioAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFaltaFuncionarioAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFaltaFuncionarioAlterar.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TFaltaFuncionarioAlterar.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TFaltaFuncionarioAlterar.getDescricao: TDate;
begin
  Result := Self.m_Descricao;
end;

procedure TFaltaFuncionarioAlterar.setDescricao(const a_Value: TDate);
begin
  Self.m_Descricao := a_Value;
end;

function TFaltaFuncionarioAlterar.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TFaltaFuncionarioAlterar.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TFaltaFuncionarioAlterar.getAbateNoCalculoDoPonto: Boolean;
begin
  Result := Self.m_AbateNoCalculoDoPonto;
end;

procedure TFaltaFuncionarioAlterar.setAbateNoCalculoDoPonto(const a_Value: Boolean);
begin
  Self.m_AbateNoCalculoDoPonto := a_Value;
end;

destructor TFaltaFuncionarioAlterar.Destroy;
begin

end;

function TFaltaFuncionarioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFaltaFuncionarioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFaltaFuncionarioAlterar.getNameAPI(): String;
begin
  Result := 'FaltaFuncionarioAlterar';
end;

function TFaltaFuncionarioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFaltaFuncionarioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFaltaFuncionarioExcluir.getIdFalta: String;
begin
  Result := Self.m_IdFalta;
end;

procedure TFaltaFuncionarioExcluir.setIdFalta(const a_Value: String);
begin
  Self.m_IdFalta := a_Value;
end;

function TFaltaFuncionarioExcluir.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFaltaFuncionarioExcluir.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFaltaFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFaltaFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFaltaFuncionarioExcluir.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TFaltaFuncionarioExcluir.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

destructor TFaltaFuncionarioExcluir.Destroy;
begin

end;

function TFaltaFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFaltaFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFaltaFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'FaltaFuncionarioExcluir';
end;

function TFaltaFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFaltaFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
