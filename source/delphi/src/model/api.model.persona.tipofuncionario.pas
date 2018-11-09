unit api.model.persona.TipoFuncionario;

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

type TTipoFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdTipo: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getIdTipo(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setIdTipo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idtipo')]
    property idtipo: String read getIdTipo write setIdTipo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TTipoFuncionarioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Tipo: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getTipo(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setTipo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tipo')]
    property tipo: String read getTipo write setTipo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TTipoFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Tipo: String;
    var m_Empresa: String;
    

    function getTipo(): String;
    function getEmpresa(): String;
    

    procedure setTipo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tipo')]
    property tipo: String read getTipo write setTipo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TTipoFuncionarioNovo.getIdTipo: String;
begin
  Result := Self.m_IdTipo;
end;

procedure TTipoFuncionarioNovo.setIdTipo(const a_Value: String);
begin
  Self.m_IdTipo := a_Value;
end;

function TTipoFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TTipoFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TTipoFuncionarioNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TTipoFuncionarioNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TTipoFuncionarioNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TTipoFuncionarioNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TTipoFuncionarioNovo.Destroy;
begin

end;

function TTipoFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'TipoFuncionarioNovo';
end;

function TTipoFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTipoFuncionarioAlterar.getTipo: String;
begin
  Result := Self.m_Tipo;
end;

procedure TTipoFuncionarioAlterar.setTipo(const a_Value: String);
begin
  Self.m_Tipo := a_Value;
end;

function TTipoFuncionarioAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TTipoFuncionarioAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TTipoFuncionarioAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TTipoFuncionarioAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TTipoFuncionarioAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TTipoFuncionarioAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TTipoFuncionarioAlterar.Destroy;
begin

end;

function TTipoFuncionarioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoFuncionarioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoFuncionarioAlterar.getNameAPI(): String;
begin
  Result := 'TipoFuncionarioAlterar';
end;

function TTipoFuncionarioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoFuncionarioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTipoFuncionarioExcluir.getTipo: String;
begin
  Result := Self.m_Tipo;
end;

procedure TTipoFuncionarioExcluir.setTipo(const a_Value: String);
begin
  Self.m_Tipo := a_Value;
end;

function TTipoFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TTipoFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TTipoFuncionarioExcluir.Destroy;
begin

end;

function TTipoFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'TipoFuncionarioExcluir';
end;

function TTipoFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
