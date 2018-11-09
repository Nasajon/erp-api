unit api.model.ns.Usuario;

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

type TUsuarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdUsuario: String;
    var m_Nome: String;
    var m_Email: String;
    var m_Telefone: String;
    var m_Login: String;
    var m_Senha: String;
    var m_PerfilUsuario: String;
    var m_GrupoDeUsuario: String;
    var m_representante: String;
    var m_vendedor: String;
    var m_situacao: String;
    

    function getIdUsuario(): String;
    function getNome(): String;
    function getEmail(): String;
    function getTelefone(): String;
    function getLogin(): String;
    function getSenha(): String;
    function getPerfilUsuario(): String;
    function getGrupoDeUsuario(): String;
    function getrepresentante(): String;
    function getvendedor(): String;
    function getsituacao: String;
    

    procedure setIdUsuario(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setEmail(const a_Value: String);
    procedure setTelefone(const a_Value: String);
    procedure setLogin(const a_Value: String);
    procedure setSenha(const a_Value: String);
    procedure setPerfilUsuario(const a_Value: String);
    procedure setGrupoDeUsuario(const a_Value: String);
    procedure setrepresentante(const a_Value: String);
    procedure setvendedor(const a_Value: String);
    procedure setsituacao(const a_Value: String);
  private
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idusuario')]
    property idusuario: String read getIdUsuario write setIdUsuario;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('email')]
    property email: String read getEmail write setEmail;

    [NasajonSerializeAttribute('telefone')]
    property telefone: String read getTelefone write setTelefone;

    [NasajonSerializeAttribute('login')]
    property login: String read getLogin write setLogin;

    [NasajonSerializeAttribute('senha')]
    property senha: String read getSenha write setSenha;

    [NasajonSerializeAttribute('perfilusuario')]
    property perfilusuario: String read getPerfilUsuario write setPerfilUsuario;

    [NasajonSerializeAttribute('grupodeusuario')]
    property grupodeusuario: String read getGrupoDeUsuario write setGrupoDeUsuario;

    [NasajonSerializeAttribute('representante')]
    property representante: String read getrepresentante write setrepresentante;

    [NasajonSerializeAttribute('vendedor')]
    property vendedor: String read getvendedor write setvendedor;

    [NasajonSerializeAttribute('situacao')]
    property situacao: String read getsituacao write setsituacao;

    

end;

type TUsuarioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Usuario: String;
    var m_Nome: String;
    var m_Email: String;
    var m_Telefone: String;
    var m_Login: String;
    var m_Senha: String;
    var m_PerfilUsuario: String;
    var m_GrupoDeUsuario: String;
    var m_representante: String;
    var m_vendedor: String;
    var m_situacao: String;
    

    function getUsuario(): String;
    function getNome(): String;
    function getEmail(): String;
    function getTelefone(): String;
    function getLogin(): String;
    function getSenha(): String;
    function getPerfilUsuario(): String;
    function getGrupoDeUsuario(): String;
    function getrepresentante(): String;
    function getvendedor(): String;
    function getsituacao: String;
    

    procedure setUsuario(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setEmail(const a_Value: String);
    procedure setTelefone(const a_Value: String);
    procedure setLogin(const a_Value: String);
    procedure setSenha(const a_Value: String);
    procedure setPerfilUsuario(const a_Value: String);
    procedure setGrupoDeUsuario(const a_Value: String);
    procedure setrepresentante(const a_Value: String);
    procedure setvendedor(const a_Value: String);
    procedure setsituacao(const a_Value: String);
  private
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('email')]
    property email: String read getEmail write setEmail;

    [NasajonSerializeAttribute('telefone')]
    property telefone: String read getTelefone write setTelefone;

    [NasajonSerializeAttribute('login')]
    property login: String read getLogin write setLogin;

    [NasajonSerializeAttribute('senha')]
    property senha: String read getSenha write setSenha;

    [NasajonSerializeAttribute('perfilusuario')]
    property perfilusuario: String read getPerfilUsuario write setPerfilUsuario;

    [NasajonSerializeAttribute('grupodeusuario')]
    property grupodeusuario: String read getGrupoDeUsuario write setGrupoDeUsuario;

    [NasajonSerializeAttribute('representante')]
    property representante: String read getrepresentante write setrepresentante;

    [NasajonSerializeAttribute('vendedor')]
    property vendedor: String read getvendedor write setvendedor;

    [NasajonSerializeAttribute('situacao')]
    property situacao: String read getsituacao write setsituacao;

    

end;

type TUsuarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Usuario: String;
    

    function getUsuario(): String;
    

    procedure setUsuario(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    

end;

	
implementation

  uses
      api.send;  

function TUsuarioNovo.getIdUsuario: String;
begin
  Result := Self.m_IdUsuario;
end;

procedure TUsuarioNovo.setIdUsuario(const a_Value: String);
begin
  Self.m_IdUsuario := a_Value;
end;

function TUsuarioNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TUsuarioNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TUsuarioNovo.getEmail: String;
begin
  Result := Self.m_Email;
end;

procedure TUsuarioNovo.setEmail(const a_Value: String);
begin
  Self.m_Email := a_Value;
end;

function TUsuarioNovo.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TUsuarioNovo.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

function TUsuarioNovo.getLogin: String;
begin
  Result := Self.m_Login;
end;

procedure TUsuarioNovo.setLogin(const a_Value: String);
begin
  Self.m_Login := a_Value;
end;

function TUsuarioNovo.getSenha: String;
begin
  Result := Self.m_Senha;
end;

function TUsuarioNovo.getsituacao: String;
begin
  Result := Self.m_situacao;
end;

procedure TUsuarioNovo.setSenha(const a_Value: String);
begin
  Self.m_Senha := a_Value;
end;

procedure TUsuarioNovo.setsituacao(const a_Value: String);
begin
  Self.m_situacao := a_Value;
end;

function TUsuarioNovo.getPerfilUsuario: String;
begin
  Result := Self.m_PerfilUsuario;
end;

procedure TUsuarioNovo.setPerfilUsuario(const a_Value: String);
begin
  Self.m_PerfilUsuario := a_Value;
end;

function TUsuarioNovo.getGrupoDeUsuario: String;
begin
  Result := Self.m_GrupoDeUsuario;
end;

procedure TUsuarioNovo.setGrupoDeUsuario(const a_Value: String);
begin
  Self.m_GrupoDeUsuario := a_Value;
end;

function TUsuarioNovo.getrepresentante: String;
begin
  Result := Self.m_representante;
end;

procedure TUsuarioNovo.setrepresentante(const a_Value: String);
begin
  Self.m_representante := a_Value;
end;

function TUsuarioNovo.getvendedor: String;
begin
  Result := Self.m_vendedor;
end;

procedure TUsuarioNovo.setvendedor(const a_Value: String);
begin
  Self.m_vendedor := a_Value;
end;

destructor TUsuarioNovo.Destroy;
begin

end;

function TUsuarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TUsuarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TUsuarioNovo.getNameAPI(): String;
begin
  Result := 'UsuarioNovo';
end;

function TUsuarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TUsuarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TUsuarioAlterar.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TUsuarioAlterar.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TUsuarioAlterar.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TUsuarioAlterar.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TUsuarioAlterar.getEmail: String;
begin
  Result := Self.m_Email;
end;

procedure TUsuarioAlterar.setEmail(const a_Value: String);
begin
  Self.m_Email := a_Value;
end;

function TUsuarioAlterar.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TUsuarioAlterar.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

function TUsuarioAlterar.getLogin: String;
begin
  Result := Self.m_Login;
end;

procedure TUsuarioAlterar.setLogin(const a_Value: String);
begin
  Self.m_Login := a_Value;
end;

function TUsuarioAlterar.getSenha: String;
begin
  Result := Self.m_Senha;
end;

function TUsuarioAlterar.getsituacao: String;
begin
  Result := Self.m_situacao;
end;

procedure TUsuarioAlterar.setSenha(const a_Value: String);
begin
  Self.m_Senha := a_Value;
end;

procedure TUsuarioAlterar.setsituacao(const a_Value: String);
begin
  Self.m_situacao := a_Value
end;

function TUsuarioAlterar.getPerfilUsuario: String;
begin
  Result := Self.m_PerfilUsuario;
end;

procedure TUsuarioAlterar.setPerfilUsuario(const a_Value: String);
begin
  Self.m_PerfilUsuario := a_Value;
end;

function TUsuarioAlterar.getGrupoDeUsuario: String;
begin
  Result := Self.m_GrupoDeUsuario;
end;

procedure TUsuarioAlterar.setGrupoDeUsuario(const a_Value: String);
begin
  Self.m_GrupoDeUsuario := a_Value;
end;

function TUsuarioAlterar.getrepresentante: String;
begin
  Result := Self.m_representante;
end;

procedure TUsuarioAlterar.setrepresentante(const a_Value: String);
begin
  Self.m_representante := a_Value;
end;

function TUsuarioAlterar.getvendedor: String;
begin
  Result := Self.m_vendedor;
end;

procedure TUsuarioAlterar.setvendedor(const a_Value: String);
begin
  Self.m_vendedor := a_Value;
end;

destructor TUsuarioAlterar.Destroy;
begin

end;

function TUsuarioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TUsuarioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TUsuarioAlterar.getNameAPI(): String;
begin
  Result := 'UsuarioAlterar';
end;

function TUsuarioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TUsuarioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TUsuarioExcluir.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TUsuarioExcluir.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

destructor TUsuarioExcluir.Destroy;
begin

end;

function TUsuarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TUsuarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TUsuarioExcluir.getNameAPI(): String;
begin
  Result := 'UsuarioExcluir';
end;

function TUsuarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TUsuarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
