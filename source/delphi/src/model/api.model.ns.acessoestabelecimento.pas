unit api.model.ns.acessoestabelecimento;

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

type TacessoestabelecimentoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_GrupoUsuario: String;
    var m_Usuario: String;
    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    

    function getGrupoUsuario(): String;
    function getUsuario(): String;
    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    

    procedure setGrupoUsuario(const a_Value: String);
    procedure setUsuario(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Informar o grupo de usuário ao qual o acesso será dado. Opcionalmente pode-se informar no campo usuario, do qual o grupo de usuário será utilizado para o acesso
    /// </summary>
    [NasajonSerializeAttribute('grupousuario')]
    property grupousuario: String read getGrupoUsuario write setGrupoUsuario;

    /// <summary>
/// Ïnformar o usuário do qual o grupo de usuário será utilizado para o acesso. Opcionalmente pode-se informar diretamente o campo grupodeusuario
    /// </summary>
    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    /// <summary>
/// Pode receber ID ou Código
    /// </summary>
    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    /// <summary>
/// Pode receber ID, Código ou CPF/CNPJ. Caso seja informado Código ou CPF/CNPJ, é necessário informar também o grupo empresarial
    /// </summary>
    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Pode receber ID, Código ou CPF/CNPJ. Case seja informado Código ou CPF/CNPJ, é necessário informar também a empresa
    /// </summary>
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    

end;

type TacessoestabelecimentoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_GrupoUsuario: String;
    var m_Usuario: String;
    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    

    function getGrupoUsuario(): String;
    function getUsuario(): String;
    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    

    procedure setGrupoUsuario(const a_Value: String);
    procedure setUsuario(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Informar o grupo de usuário ao qual o acesso será dado. Opcionalmente pode-se informar no campo usuario, do qual o grupo de usuário será utilizado para o acesso
    /// </summary>
    [NasajonSerializeAttribute('grupousuario')]
    property grupousuario: String read getGrupoUsuario write setGrupoUsuario;

    /// <summary>
/// Ïnformar o usuário do qual o grupo de usuário será utilizado para o acesso. Opcionalmente pode-se informar diretamente o campo grupodeusuario
    /// </summary>
    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    /// <summary>
/// Pode receber ID ou Código
    /// </summary>
    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    /// <summary>
/// Pode receber ID, Código ou CPF/CNPJ. Caso seja informado Código ou CPF/CNPJ, é necessário informar também o grupo empresarial
    /// </summary>
    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Pode receber ID, Código ou CPF/CNPJ. Case seja informado Código ou CPF/CNPJ, é necessário informar também a empresa
    /// </summary>
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    

end;

	
implementation

  uses
      api.send;  

function TacessoestabelecimentoNovo.getGrupoUsuario: String;
begin
  Result := Self.m_GrupoUsuario;
end;

procedure TacessoestabelecimentoNovo.setGrupoUsuario(const a_Value: String);
begin
  Self.m_GrupoUsuario := a_Value;
end;

function TacessoestabelecimentoNovo.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TacessoestabelecimentoNovo.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TacessoestabelecimentoNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TacessoestabelecimentoNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TacessoestabelecimentoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TacessoestabelecimentoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TacessoestabelecimentoNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TacessoestabelecimentoNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

destructor TacessoestabelecimentoNovo.Destroy;
begin

end;

function TacessoestabelecimentoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TacessoestabelecimentoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TacessoestabelecimentoNovo.getNameAPI(): String;
begin
  Result := 'acessoestabelecimentoNovo';
end;

function TacessoestabelecimentoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TacessoestabelecimentoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TacessoestabelecimentoExcluir.getGrupoUsuario: String;
begin
  Result := Self.m_GrupoUsuario;
end;

procedure TacessoestabelecimentoExcluir.setGrupoUsuario(const a_Value: String);
begin
  Self.m_GrupoUsuario := a_Value;
end;

function TacessoestabelecimentoExcluir.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TacessoestabelecimentoExcluir.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TacessoestabelecimentoExcluir.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TacessoestabelecimentoExcluir.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TacessoestabelecimentoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TacessoestabelecimentoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TacessoestabelecimentoExcluir.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TacessoestabelecimentoExcluir.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

destructor TacessoestabelecimentoExcluir.Destroy;
begin

end;

function TacessoestabelecimentoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TacessoestabelecimentoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TacessoestabelecimentoExcluir.getNameAPI(): String;
begin
  Result := 'acessoestabelecimentoExcluir';
end;

function TacessoestabelecimentoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TacessoestabelecimentoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
