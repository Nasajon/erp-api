unit api.model.ns.SolicitacaoAlteracaoEndereco;

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
	
  , api.model.persona.funcionario
	

	;

type TSolicitacaoAlteracaoEnderecoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Solicitacao: String;
    var m_Conteudo: TFuncionarioSolicitacaoAlteracaoEndereco;
    var m_Status: Integer;
    var m_FuncionarioNome: String;
    var m_FuncionarioCodigo: String;
    var m_FuncionarioDepartamento: String;
    var m_FuncionarioCargo: String;
    var m_FuncionarioFoto: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_Tipo: String;
    var m_Rascunho: Boolean;
    var m_Solicitante: String;
    var m_Fila: String;
    var m_Tenant: Integer;
    var m_Colaborador: String;
    var m_UsuarioDestino: String;
    

    function getSolicitacao(): String;
    function getConteudo(): TFuncionarioSolicitacaoAlteracaoEndereco;
    function getStatus(): Integer;
    function getFuncionarioNome(): String;
    function getFuncionarioCodigo(): String;
    function getFuncionarioDepartamento(): String;
    function getFuncionarioCargo(): String;
    function getFuncionarioFoto(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getTipo(): String;
    function getRascunho(): Boolean;
    function getSolicitante(): String;
    function getFila(): String;
    function getTenant(): Integer;
    function getColaborador(): String;
    function getUsuarioDestino(): String;
    

    procedure setSolicitacao(const a_Value: String);
    procedure setConteudo(const a_Value: TFuncionarioSolicitacaoAlteracaoEndereco);
    procedure setStatus(const a_Value: Integer);
    procedure setFuncionarioNome(const a_Value: String);
    procedure setFuncionarioCodigo(const a_Value: String);
    procedure setFuncionarioDepartamento(const a_Value: String);
    procedure setFuncionarioCargo(const a_Value: String);
    procedure setFuncionarioFoto(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setTipo(const a_Value: String);
    procedure setRascunho(const a_Value: Boolean);
    procedure setSolicitante(const a_Value: String);
    procedure setFila(const a_Value: String);
    procedure setTenant(const a_Value: Integer);
    procedure setColaborador(const a_Value: String);
    procedure setUsuarioDestino(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('solicitacao')]
    property solicitacao: String read getSolicitacao write setSolicitacao;

    [NasajonSerializeAttribute('conteudo')]
    property conteudo: TFuncionarioSolicitacaoAlteracaoEndereco read getConteudo write setConteudo;

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

    [NasajonSerializeAttribute('funcionariofoto')]
    property funcionariofoto: String read getFuncionarioFoto write setFuncionarioFoto;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('tipo')]
    property tipo: String read getTipo write setTipo;

    [NasajonSerializeAttribute('rascunho')]
    property rascunho: Boolean read getRascunho write setRascunho;

    [NasajonSerializeAttribute('solicitante')]
    property solicitante: String read getSolicitante write setSolicitante;

    [NasajonSerializeAttribute('fila')]
    property fila: String read getFila write setFila;

    [NasajonSerializeAttribute('tenant')]
    property tenant: Integer read getTenant write setTenant;

    [NasajonSerializeAttribute('colaborador')]
    property colaborador: String read getColaborador write setColaborador;

    [NasajonSerializeAttribute('usuariodestino')]
    property usuariodestino: String read getUsuarioDestino write setUsuarioDestino;

    

end;

	
implementation

  uses
      api.send;  

function TSolicitacaoAlteracaoEnderecoNovo.getSolicitacao: String;
begin
  Result := Self.m_Solicitacao;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setSolicitacao(const a_Value: String);
begin
  Self.m_Solicitacao := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getConteudo: TFuncionarioSolicitacaoAlteracaoEndereco;
begin
  if not Assigned(Self.m_Conteudo)
    then Self.m_Conteudo := TFuncionarioSolicitacaoAlteracaoEndereco.Create();
  Result := Self.m_Conteudo;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setConteudo(const a_Value: TFuncionarioSolicitacaoAlteracaoEndereco);
begin
  Self.m_Conteudo := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getStatus: Integer;
begin
  Result := Self.m_Status;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setStatus(const a_Value: Integer);
begin
  Self.m_Status := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getFuncionarioNome: String;
begin
  Result := Self.m_FuncionarioNome;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setFuncionarioNome(const a_Value: String);
begin
  Self.m_FuncionarioNome := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getFuncionarioCodigo: String;
begin
  Result := Self.m_FuncionarioCodigo;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setFuncionarioCodigo(const a_Value: String);
begin
  Self.m_FuncionarioCodigo := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getFuncionarioDepartamento: String;
begin
  Result := Self.m_FuncionarioDepartamento;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setFuncionarioDepartamento(const a_Value: String);
begin
  Self.m_FuncionarioDepartamento := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getFuncionarioCargo: String;
begin
  Result := Self.m_FuncionarioCargo;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setFuncionarioCargo(const a_Value: String);
begin
  Self.m_FuncionarioCargo := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getFuncionarioFoto: String;
begin
  Result := Self.m_FuncionarioFoto;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setFuncionarioFoto(const a_Value: String);
begin
  Self.m_FuncionarioFoto := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getTipo: String;
begin
  Result := Self.m_Tipo;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setTipo(const a_Value: String);
begin
  Self.m_Tipo := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getRascunho: Boolean;
begin
  Result := Self.m_Rascunho;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setRascunho(const a_Value: Boolean);
begin
  Self.m_Rascunho := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getSolicitante: String;
begin
  Result := Self.m_Solicitante;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setSolicitante(const a_Value: String);
begin
  Self.m_Solicitante := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getFila: String;
begin
  Result := Self.m_Fila;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setFila(const a_Value: String);
begin
  Self.m_Fila := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getTenant: Integer;
begin
  Result := Self.m_Tenant;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setTenant(const a_Value: Integer);
begin
  Self.m_Tenant := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getColaborador: String;
begin
  Result := Self.m_Colaborador;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setColaborador(const a_Value: String);
begin
  Self.m_Colaborador := a_Value;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getUsuarioDestino: String;
begin
  Result := Self.m_UsuarioDestino;
end;

procedure TSolicitacaoAlteracaoEnderecoNovo.setUsuarioDestino(const a_Value: String);
begin
  Self.m_UsuarioDestino := a_Value;
end;

destructor TSolicitacaoAlteracaoEnderecoNovo.Destroy;
begin
  Self.Conteudo.Free();
end;

function TSolicitacaoAlteracaoEnderecoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSolicitacaoAlteracaoEnderecoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSolicitacaoAlteracaoEnderecoNovo.getNameAPI(): String;
begin
  Result := 'SolicitacaoAlteracaoEnderecoNovo';
end;

function TSolicitacaoAlteracaoEnderecoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSolicitacaoAlteracaoEnderecoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
