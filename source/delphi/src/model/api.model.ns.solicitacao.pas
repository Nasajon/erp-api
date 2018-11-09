unit api.model.ns.Solicitacao;

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

type TSolicitacaoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Solicitacao: String;
    var m_Status: Integer;
    var m_FuncionarioNome: String;
    var m_FuncionarioCodigo: String;
    var m_FuncionarioDepartamento: String;
    var m_FuncionarioCargo: String;
    var m_Solicitante: String;
    var m_FuncionarioFoto: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_Rascunho: Boolean;
    var m_Tenant: Integer;
    var m_Fila: String;
    var m_Colaborador: String;
    var m_Conteudo: WideString;
    var m_UsuarioDestino: String;
    var m_Tipo: String;
    

    function getSolicitacao(): String;
    function getStatus(): Integer;
    function getFuncionarioNome(): String;
    function getFuncionarioCodigo(): String;
    function getFuncionarioDepartamento(): String;
    function getFuncionarioCargo(): String;
    function getSolicitante(): String;
    function getFuncionarioFoto(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getRascunho(): Boolean;
    function getTenant(): Integer;
    function getFila(): String;
    function getColaborador(): String;
    function getConteudo(): WideString;
    function getUsuarioDestino(): String;
    function getTipo(): String;
    

    procedure setSolicitacao(const a_Value: String);
    procedure setStatus(const a_Value: Integer);
    procedure setFuncionarioNome(const a_Value: String);
    procedure setFuncionarioCodigo(const a_Value: String);
    procedure setFuncionarioDepartamento(const a_Value: String);
    procedure setFuncionarioCargo(const a_Value: String);
    procedure setSolicitante(const a_Value: String);
    procedure setFuncionarioFoto(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setRascunho(const a_Value: Boolean);
    procedure setTenant(const a_Value: Integer);
    procedure setFila(const a_Value: String);
    procedure setColaborador(const a_Value: String);
    procedure setConteudo(const a_Value: WideString);
    procedure setUsuarioDestino(const a_Value: String);
    procedure setTipo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('solicitacao')]
    property solicitacao: String read getSolicitacao write setSolicitacao;

    [NasajonSerializeAttribute('status')]
    property status: Integer read getStatus write setStatus;

    [NasajonSerializeAttribute('funcionarionome')]
    property funcionarionome: String read getFuncionarioNome write setFuncionarioNome;

    [NasajonSerializeAttribute('funcionariocodigo')]
    property funcionariocodigo: String read getFuncionarioCodigo write setFuncionarioCodigo;

    [NasajonSerializeAttribute('funcionariodepartamento')]
    property funcionariodepartamento: String read getFuncionarioDepartamento write setFuncionarioDepartamento;

    [NasajonSerializeAttribute('funcionariocargo')]
    property funcionariocargo: String read getFuncionarioCargo write setFuncionarioCargo;

    [NasajonSerializeAttribute('solicitante')]
    property solicitante: String read getSolicitante write setSolicitante;

    [NasajonSerializeAttribute('funcionariofoto')]
    property funcionariofoto: String read getFuncionarioFoto write setFuncionarioFoto;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('rascunho')]
    property rascunho: Boolean read getRascunho write setRascunho;

    [NasajonSerializeAttribute('tenant')]
    property tenant: Integer read getTenant write setTenant;

    [NasajonSerializeAttribute('fila')]
    property fila: String read getFila write setFila;

    [NasajonSerializeAttribute('colaborador')]
    property colaborador: String read getColaborador write setColaborador;

    [NasajonSerializeAttribute('conteudo')]
    property conteudo: WideString read getConteudo write setConteudo;

    [NasajonSerializeAttribute('usuariodestino')]
    property usuariodestino: String read getUsuarioDestino write setUsuarioDestino;

    [NasajonSerializeAttribute('tipo')]
    property tipo: String read getTipo write setTipo;

    

end;

	
implementation

  uses
      api.send;  

function TSolicitacaoNovo.getSolicitacao: String;
begin
  Result := Self.m_Solicitacao;
end;

procedure TSolicitacaoNovo.setSolicitacao(const a_Value: String);
begin
  Self.m_Solicitacao := a_Value;
end;

function TSolicitacaoNovo.getStatus: Integer;
begin
  Result := Self.m_Status;
end;

procedure TSolicitacaoNovo.setStatus(const a_Value: Integer);
begin
  Self.m_Status := a_Value;
end;

function TSolicitacaoNovo.getFuncionarioNome: String;
begin
  Result := Self.m_FuncionarioNome;
end;

procedure TSolicitacaoNovo.setFuncionarioNome(const a_Value: String);
begin
  Self.m_FuncionarioNome := a_Value;
end;

function TSolicitacaoNovo.getFuncionarioCodigo: String;
begin
  Result := Self.m_FuncionarioCodigo;
end;

procedure TSolicitacaoNovo.setFuncionarioCodigo(const a_Value: String);
begin
  Self.m_FuncionarioCodigo := a_Value;
end;

function TSolicitacaoNovo.getFuncionarioDepartamento: String;
begin
  Result := Self.m_FuncionarioDepartamento;
end;

procedure TSolicitacaoNovo.setFuncionarioDepartamento(const a_Value: String);
begin
  Self.m_FuncionarioDepartamento := a_Value;
end;

function TSolicitacaoNovo.getFuncionarioCargo: String;
begin
  Result := Self.m_FuncionarioCargo;
end;

procedure TSolicitacaoNovo.setFuncionarioCargo(const a_Value: String);
begin
  Self.m_FuncionarioCargo := a_Value;
end;

function TSolicitacaoNovo.getSolicitante: String;
begin
  Result := Self.m_Solicitante;
end;

procedure TSolicitacaoNovo.setSolicitante(const a_Value: String);
begin
  Self.m_Solicitante := a_Value;
end;

function TSolicitacaoNovo.getFuncionarioFoto: String;
begin
  Result := Self.m_FuncionarioFoto;
end;

procedure TSolicitacaoNovo.setFuncionarioFoto(const a_Value: String);
begin
  Self.m_FuncionarioFoto := a_Value;
end;

function TSolicitacaoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TSolicitacaoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TSolicitacaoNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TSolicitacaoNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TSolicitacaoNovo.getRascunho: Boolean;
begin
  Result := Self.m_Rascunho;
end;

procedure TSolicitacaoNovo.setRascunho(const a_Value: Boolean);
begin
  Self.m_Rascunho := a_Value;
end;

function TSolicitacaoNovo.getTenant: Integer;
begin
  Result := Self.m_Tenant;
end;

procedure TSolicitacaoNovo.setTenant(const a_Value: Integer);
begin
  Self.m_Tenant := a_Value;
end;

function TSolicitacaoNovo.getFila: String;
begin
  Result := Self.m_Fila;
end;

procedure TSolicitacaoNovo.setFila(const a_Value: String);
begin
  Self.m_Fila := a_Value;
end;

function TSolicitacaoNovo.getColaborador: String;
begin
  Result := Self.m_Colaborador;
end;

procedure TSolicitacaoNovo.setColaborador(const a_Value: String);
begin
  Self.m_Colaborador := a_Value;
end;

function TSolicitacaoNovo.getConteudo: WideString;
begin
  Result := Self.m_Conteudo;
end;

procedure TSolicitacaoNovo.setConteudo(const a_Value: WideString);
begin
  Self.m_Conteudo := a_Value;
end;

function TSolicitacaoNovo.getUsuarioDestino: String;
begin
  Result := Self.m_UsuarioDestino;
end;

procedure TSolicitacaoNovo.setUsuarioDestino(const a_Value: String);
begin
  Self.m_UsuarioDestino := a_Value;
end;

function TSolicitacaoNovo.getTipo: String;
begin
  Result := Self.m_Tipo;
end;

procedure TSolicitacaoNovo.setTipo(const a_Value: String);
begin
  Self.m_Tipo := a_Value;
end;

destructor TSolicitacaoNovo.Destroy;
begin

end;

function TSolicitacaoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSolicitacaoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSolicitacaoNovo.getNameAPI(): String;
begin
  Result := 'SolicitacaoNovo';
end;

function TSolicitacaoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSolicitacaoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
