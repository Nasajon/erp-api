unit api.model.ns.Cliente;

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
	
  , api.model.ns.entidadecompartilhadora
  , System.Generics.Collections
  , api.model.ns.endereco
	

	;

type TCliente = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_cliente: String;
    var m_entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
    

    function getcliente(): String;
    function getentidadescompartilhadoras(): TObjectList<TEntidadeCompartilhadora>;
    

    procedure setcliente(const a_Value: String);
    procedure setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cliente')]
    property cliente: String read getcliente write setcliente;

    [NasajonSerializeAttribute('entidadescompartilhadoras')]
    property entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras write setentidadescompartilhadoras;

    

end;

type TClienteNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_cliente: String;
    var m_codigo: String;
    var m_nome: String;
    var m_nomefantasia: String;
    var m_identidade: String;
    var m_documento: String;
    var m_retemiss: Boolean;
    var m_retemir: Boolean;
    var m_retempis: Boolean;
    var m_retemcofins: Boolean;
    var m_retemcsll: Boolean;
    var m_reteminss: Boolean;
    var m_entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
    var m_endereco: TObjectList<TEndereco>;
    var m_inscricaoestadual: String;
    

    function getcliente(): String;
    function getcodigo(): String;
    function getnome(): String;
    function getnomefantasia(): String;
    function getidentidade(): String;
    function getdocumento(): String;
    function getretemiss(): Boolean;
    function getretemir(): Boolean;
    function getretempis(): Boolean;
    function getretemcofins(): Boolean;
    function getretemcsll(): Boolean;
    function getreteminss(): Boolean;
    function getentidadescompartilhadoras(): TObjectList<TEntidadeCompartilhadora>;
    function getendereco(): TObjectList<TEndereco>;
    function getinscricaoestadual(): String;
    

    procedure setcliente(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setnomefantasia(const a_Value: String);
    procedure setidentidade(const a_Value: String);
    procedure setdocumento(const a_Value: String);
    procedure setretemiss(const a_Value: Boolean);
    procedure setretemir(const a_Value: Boolean);
    procedure setretempis(const a_Value: Boolean);
    procedure setretemcofins(const a_Value: Boolean);
    procedure setretemcsll(const a_Value: Boolean);
    procedure setreteminss(const a_Value: Boolean);
    procedure setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    procedure setendereco(const a_Value: TObjectList<TEndereco>);
    procedure setinscricaoestadual(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cliente')]
    property cliente: String read getcliente write setcliente;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    /// <summary>
/// Informe o Nome do cliente ou Razão social
    /// </summary>
    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('nomefantasia')]
    property nomefantasia: String read getnomefantasia write setnomefantasia;

    [NasajonSerializeAttribute('identidade')]
    property identidade: String read getidentidade write setidentidade;

    /// <summary>
/// Este campo aceita CPF ou CNPJ com ou sem mascara.
    /// </summary>
    [NasajonSerializeAttribute('documento')]
    property documento: String read getdocumento write setdocumento;

    [NasajonSerializeAttribute('retemiss')]
    property retemiss: Boolean read getretemiss write setretemiss;

    [NasajonSerializeAttribute('retemir')]
    property retemir: Boolean read getretemir write setretemir;

    [NasajonSerializeAttribute('retempis')]
    property retempis: Boolean read getretempis write setretempis;

    [NasajonSerializeAttribute('retemcofins')]
    property retemcofins: Boolean read getretemcofins write setretemcofins;

    [NasajonSerializeAttribute('retemcsll')]
    property retemcsll: Boolean read getretemcsll write setretemcsll;

    [NasajonSerializeAttribute('reteminss')]
    property reteminss: Boolean read getreteminss write setreteminss;

    [NasajonSerializeAttribute('entidadescompartilhadoras')]
    property entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras write setentidadescompartilhadoras;

    [NasajonSerializeAttribute('endereco')]
    property endereco: TObjectList<TEndereco> read getendereco write setendereco;

    [NasajonSerializeAttribute('inscricaoestadual')]
    property inscricaoestadual: String read getinscricaoestadual write setinscricaoestadual;

    

end;

type TClienteAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_cliente: String;
    var m_codigo: String;
    var m_nome: String;
    var m_nomefantasia: String;
    var m_identidade: String;
    var m_documento: String;
    var m_retemiss: Boolean;
    var m_retemir: Boolean;
    var m_retempis: Boolean;
    var m_retemcofins: Boolean;
    var m_retemcsll: Boolean;
    var m_reteminss: Boolean;
    var m_entidadescompartilhadoras_anteriores: TObjectList<TEntidadeCompartilhadora>;
    var m_entidadescompartilhadoras_novas: TObjectList<TEntidadeCompartilhadora>;
    var m_endereco: TObjectList<TEndereco>;
    

    function getcliente(): String;
    function getcodigo(): String;
    function getnome(): String;
    function getnomefantasia(): String;
    function getidentidade(): String;
    function getdocumento(): String;
    function getretemiss(): Boolean;
    function getretemir(): Boolean;
    function getretempis(): Boolean;
    function getretemcofins(): Boolean;
    function getretemcsll(): Boolean;
    function getreteminss(): Boolean;
    function getentidadescompartilhadoras_anteriores(): TObjectList<TEntidadeCompartilhadora>;
    function getentidadescompartilhadoras_novas(): TObjectList<TEntidadeCompartilhadora>;
    function getendereco(): TObjectList<TEndereco>;
    

    procedure setcliente(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setnomefantasia(const a_Value: String);
    procedure setidentidade(const a_Value: String);
    procedure setdocumento(const a_Value: String);
    procedure setretemiss(const a_Value: Boolean);
    procedure setretemir(const a_Value: Boolean);
    procedure setretempis(const a_Value: Boolean);
    procedure setretemcofins(const a_Value: Boolean);
    procedure setretemcsll(const a_Value: Boolean);
    procedure setreteminss(const a_Value: Boolean);
    procedure setentidadescompartilhadoras_anteriores(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    procedure setentidadescompartilhadoras_novas(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    procedure setendereco(const a_Value: TObjectList<TEndereco>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cliente')]
    property cliente: String read getcliente write setcliente;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    /// <summary>
/// Informe o Nome do cliente ou Razão social
    /// </summary>
    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('nomefantasia')]
    property nomefantasia: String read getnomefantasia write setnomefantasia;

    [NasajonSerializeAttribute('identidade')]
    property identidade: String read getidentidade write setidentidade;

    /// <summary>
/// Este campo aceita CPF ou CNPJ com ou sem mascara.
    /// </summary>
    [NasajonSerializeAttribute('documento')]
    property documento: String read getdocumento write setdocumento;

    [NasajonSerializeAttribute('retemiss')]
    property retemiss: Boolean read getretemiss write setretemiss;

    [NasajonSerializeAttribute('retemir')]
    property retemir: Boolean read getretemir write setretemir;

    [NasajonSerializeAttribute('retempis')]
    property retempis: Boolean read getretempis write setretempis;

    [NasajonSerializeAttribute('retemcofins')]
    property retemcofins: Boolean read getretemcofins write setretemcofins;

    [NasajonSerializeAttribute('retemcsll')]
    property retemcsll: Boolean read getretemcsll write setretemcsll;

    [NasajonSerializeAttribute('reteminss')]
    property reteminss: Boolean read getreteminss write setreteminss;

    /// <summary>
/// Define as entidades compartilhadoras atuais as quais o cliente está vinculado. Simplesmente para localização do registro considerando Código, CNPJ ou CPF.
    /// </summary>
    [NasajonSerializeAttribute('entidadescompartilhadoras_anteriores')]
    property entidadescompartilhadoras_anteriores: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras_anteriores write setentidadescompartilhadoras_anteriores;

    /// <summary>
/// Define as entidades compartilhadoras as quais o cliente passará a estar vinculado.
    /// </summary>
    [NasajonSerializeAttribute('entidadescompartilhadoras_novas')]
    property entidadescompartilhadoras_novas: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras_novas write setentidadescompartilhadoras_novas;

    [NasajonSerializeAttribute('endereco')]
    property endereco: TObjectList<TEndereco> read getendereco write setendereco;

    

end;

type TClienteExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_cliente: String;
    var m_entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
    

    function getcliente(): String;
    function getentidadescompartilhadoras(): TObjectList<TEntidadeCompartilhadora>;
    

    procedure setcliente(const a_Value: String);
    procedure setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cliente')]
    property cliente: String read getcliente write setcliente;

    [NasajonSerializeAttribute('entidadescompartilhadoras')]
    property entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras write setentidadescompartilhadoras;

    

end;

type TClienteNovo_v2 = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_cliente: String;
    var m_codigo: String;
    var m_nome: String;
    var m_qualificacao: Integer;
    var m_identidade: String;
    var m_documento: String;
    var m_orgaoemissor: String;
    var m_inscricaoestadual: String;
    var m_inscricaomunicipal: String;
    var m_email: String;
    var m_observacao: String;
    var m_entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
    var m_enderecoprincipal: TEndereco;
    var m_enderecoentrega: TEndereco;
    var m_enderecocobranca: TEndereco;
    

    function getcliente(): String;
    function getcodigo(): String;
    function getnome(): String;
    function getqualificacao(): Integer;
    function getidentidade(): String;
    function getdocumento(): String;
    function getorgaoemissor(): String;
    function getinscricaoestadual(): String;
    function getinscricaomunicipal(): String;
    function getemail(): String;
    function getobservacao(): String;
    function getentidadescompartilhadoras(): TObjectList<TEntidadeCompartilhadora>;
    function getenderecoprincipal(): TEndereco;
    function getenderecoentrega(): TEndereco;
    function getenderecocobranca(): TEndereco;
    

    procedure setcliente(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setqualificacao(const a_Value: Integer);
    procedure setidentidade(const a_Value: String);
    procedure setdocumento(const a_Value: String);
    procedure setorgaoemissor(const a_Value: String);
    procedure setinscricaoestadual(const a_Value: String);
    procedure setinscricaomunicipal(const a_Value: String);
    procedure setemail(const a_Value: String);
    procedure setobservacao(const a_Value: String);
    procedure setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    procedure setenderecoprincipal(const a_Value: TEndereco);
    procedure setenderecoentrega(const a_Value: TEndereco);
    procedure setenderecocobranca(const a_Value: TEndereco);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cliente')]
    property cliente: String read getcliente write setcliente;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    /// <summary>
/// Informe o Nome do cliente ou Razão social
    /// </summary>
    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('qualificacao')]
    property qualificacao: Integer read getqualificacao write setqualificacao;

    [NasajonSerializeAttribute('identidade')]
    property identidade: String read getidentidade write setidentidade;

    /// <summary>
/// Este campo aceita CPF ou CNPJ com ou sem mascara.
    /// </summary>
    [NasajonSerializeAttribute('documento')]
    property documento: String read getdocumento write setdocumento;

    [NasajonSerializeAttribute('orgaoemissor')]
    property orgaoemissor: String read getorgaoemissor write setorgaoemissor;

    [NasajonSerializeAttribute('inscricaoestadual')]
    property inscricaoestadual: String read getinscricaoestadual write setinscricaoestadual;

    [NasajonSerializeAttribute('inscricaomunicipal')]
    property inscricaomunicipal: String read getinscricaomunicipal write setinscricaomunicipal;

    [NasajonSerializeAttribute('email')]
    property email: String read getemail write setemail;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getobservacao write setobservacao;

    [NasajonSerializeAttribute('entidadescompartilhadoras')]
    property entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras write setentidadescompartilhadoras;

    [NasajonSerializeAttribute('enderecoprincipal')]
    property enderecoprincipal: TEndereco read getenderecoprincipal write setenderecoprincipal;

    [NasajonSerializeAttribute('enderecoentrega')]
    property enderecoentrega: TEndereco read getenderecoentrega write setenderecoentrega;

    [NasajonSerializeAttribute('enderecocobranca')]
    property enderecocobranca: TEndereco read getenderecocobranca write setenderecocobranca;

    

end;

type TClienteAlterar_v2 = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_cliente: String;
    var m_codigo: String;
    var m_nome: String;
    var m_qualificacao: Integer;
    var m_identidade: String;
    var m_documento: String;
    var m_orgaoemissor: String;
    var m_inscricaoestadual: String;
    var m_inscricaomunicipal: String;
    var m_email: String;
    var m_observacao: String;
    var m_entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
    var m_enderecoprincipal: TEndereco;
    var m_enderecoentrega: TEndereco;
    var m_enderecocobranca: TEndereco;
    

    function getcliente(): String;
    function getcodigo(): String;
    function getnome(): String;
    function getqualificacao(): Integer;
    function getidentidade(): String;
    function getdocumento(): String;
    function getorgaoemissor(): String;
    function getinscricaoestadual(): String;
    function getinscricaomunicipal(): String;
    function getemail(): String;
    function getobservacao(): String;
    function getentidadescompartilhadoras(): TObjectList<TEntidadeCompartilhadora>;
    function getenderecoprincipal(): TEndereco;
    function getenderecoentrega(): TEndereco;
    function getenderecocobranca(): TEndereco;
    

    procedure setcliente(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setqualificacao(const a_Value: Integer);
    procedure setidentidade(const a_Value: String);
    procedure setdocumento(const a_Value: String);
    procedure setorgaoemissor(const a_Value: String);
    procedure setinscricaoestadual(const a_Value: String);
    procedure setinscricaomunicipal(const a_Value: String);
    procedure setemail(const a_Value: String);
    procedure setobservacao(const a_Value: String);
    procedure setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    procedure setenderecoprincipal(const a_Value: TEndereco);
    procedure setenderecoentrega(const a_Value: TEndereco);
    procedure setenderecocobranca(const a_Value: TEndereco);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cliente')]
    property cliente: String read getcliente write setcliente;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    /// <summary>
/// Informe o Nome do cliente ou Razão social
    /// </summary>
    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('qualificacao')]
    property qualificacao: Integer read getqualificacao write setqualificacao;

    [NasajonSerializeAttribute('identidade')]
    property identidade: String read getidentidade write setidentidade;

    /// <summary>
/// Este campo aceita CPF ou CNPJ com ou sem mascara.
    /// </summary>
    [NasajonSerializeAttribute('documento')]
    property documento: String read getdocumento write setdocumento;

    [NasajonSerializeAttribute('orgaoemissor')]
    property orgaoemissor: String read getorgaoemissor write setorgaoemissor;

    [NasajonSerializeAttribute('inscricaoestadual')]
    property inscricaoestadual: String read getinscricaoestadual write setinscricaoestadual;

    [NasajonSerializeAttribute('inscricaomunicipal')]
    property inscricaomunicipal: String read getinscricaomunicipal write setinscricaomunicipal;

    [NasajonSerializeAttribute('email')]
    property email: String read getemail write setemail;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getobservacao write setobservacao;

    [NasajonSerializeAttribute('entidadescompartilhadoras')]
    property entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras write setentidadescompartilhadoras;

    [NasajonSerializeAttribute('enderecoprincipal')]
    property enderecoprincipal: TEndereco read getenderecoprincipal write setenderecoprincipal;

    [NasajonSerializeAttribute('enderecoentrega')]
    property enderecoentrega: TEndereco read getenderecoentrega write setenderecoentrega;

    [NasajonSerializeAttribute('enderecocobranca')]
    property enderecocobranca: TEndereco read getenderecocobranca write setenderecocobranca;

    

end;

	
implementation

  uses
      api.send;  

function TCliente.getcliente: String;
begin
  Result := Self.m_cliente;
end;

procedure TCliente.setcliente(const a_Value: String);
begin
  Self.m_cliente := a_Value;
end;

function TCliente.getentidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras)
    then Self.m_entidadescompartilhadoras := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras;
end;

procedure TCliente.setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras := a_Value;
end;

destructor TCliente.Destroy;
begin
  Self.entidadescompartilhadoras.Free();
end;

function TCliente.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCliente.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCliente.getNameAPI(): String;
begin
  Result := 'Cliente';
end;

function TCliente.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCliente.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TClienteNovo.getcliente: String;
begin
  Result := Self.m_cliente;
end;

procedure TClienteNovo.setcliente(const a_Value: String);
begin
  Self.m_cliente := a_Value;
end;

function TClienteNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TClienteNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TClienteNovo.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TClienteNovo.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TClienteNovo.getnomefantasia: String;
begin
  Result := Self.m_nomefantasia;
end;

procedure TClienteNovo.setnomefantasia(const a_Value: String);
begin
  Self.m_nomefantasia := a_Value;
end;

function TClienteNovo.getidentidade: String;
begin
  Result := Self.m_identidade;
end;

function TClienteNovo.getinscricaoestadual: String;
begin
  Result := Self.m_inscricaoestadual;
end;

procedure TClienteNovo.setidentidade(const a_Value: String);
begin
  Self.m_identidade := a_Value;
end;

procedure TClienteNovo.setinscricaoestadual(const a_Value: String);
begin
  Self.m_inscricaoestadual := a_Value;
end;

function TClienteNovo.getdocumento: String;
begin
  Result := Self.m_documento;
end;

procedure TClienteNovo.setdocumento(const a_Value: String);
begin
  Self.m_documento := a_Value;
end;

function TClienteNovo.getretemiss: Boolean;
begin
  Result := Self.m_retemiss;
end;

procedure TClienteNovo.setretemiss(const a_Value: Boolean);
begin
  Self.m_retemiss := a_Value;
end;

function TClienteNovo.getretemir: Boolean;
begin
  Result := Self.m_retemir;
end;

procedure TClienteNovo.setretemir(const a_Value: Boolean);
begin
  Self.m_retemir := a_Value;
end;

function TClienteNovo.getretempis: Boolean;
begin
  Result := Self.m_retempis;
end;

procedure TClienteNovo.setretempis(const a_Value: Boolean);
begin
  Self.m_retempis := a_Value;
end;

function TClienteNovo.getretemcofins: Boolean;
begin
  Result := Self.m_retemcofins;
end;

procedure TClienteNovo.setretemcofins(const a_Value: Boolean);
begin
  Self.m_retemcofins := a_Value;
end;

function TClienteNovo.getretemcsll: Boolean;
begin
  Result := Self.m_retemcsll;
end;

procedure TClienteNovo.setretemcsll(const a_Value: Boolean);
begin
  Self.m_retemcsll := a_Value;
end;

function TClienteNovo.getreteminss: Boolean;
begin
  Result := Self.m_reteminss;
end;

procedure TClienteNovo.setreteminss(const a_Value: Boolean);
begin
  Self.m_reteminss := a_Value;
end;

function TClienteNovo.getentidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras)
    then Self.m_entidadescompartilhadoras := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras;
end;

procedure TClienteNovo.setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras := a_Value;
end;

function TClienteNovo.getendereco: TObjectList<TEndereco>;
begin
  if not Assigned(Self.m_endereco)
    then Self.m_endereco := TObjectList<TEndereco>.Create();
  Result := Self.m_endereco;
end;

procedure TClienteNovo.setendereco(const a_Value: TObjectList<TEndereco>);
begin
  Self.m_endereco := a_Value;
end;

destructor TClienteNovo.Destroy;
begin
  Self.entidadescompartilhadoras.Free();  Self.endereco.Free();
end;

function TClienteNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TClienteNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TClienteNovo.getNameAPI(): String;
begin
  Result := 'ClienteNovo';
end;

function TClienteNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TClienteNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TClienteAlterar.getcliente: String;
begin
  Result := Self.m_cliente;
end;

procedure TClienteAlterar.setcliente(const a_Value: String);
begin
  Self.m_cliente := a_Value;
end;

function TClienteAlterar.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TClienteAlterar.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TClienteAlterar.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TClienteAlterar.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TClienteAlterar.getnomefantasia: String;
begin
  Result := Self.m_nomefantasia;
end;

procedure TClienteAlterar.setnomefantasia(const a_Value: String);
begin
  Self.m_nomefantasia := a_Value;
end;

function TClienteAlterar.getidentidade: String;
begin
  Result := Self.m_identidade;
end;

procedure TClienteAlterar.setidentidade(const a_Value: String);
begin
  Self.m_identidade := a_Value;
end;

function TClienteAlterar.getdocumento: String;
begin
  Result := Self.m_documento;
end;

procedure TClienteAlterar.setdocumento(const a_Value: String);
begin
  Self.m_documento := a_Value;
end;

function TClienteAlterar.getretemiss: Boolean;
begin
  Result := Self.m_retemiss;
end;

procedure TClienteAlterar.setretemiss(const a_Value: Boolean);
begin
  Self.m_retemiss := a_Value;
end;

function TClienteAlterar.getretemir: Boolean;
begin
  Result := Self.m_retemir;
end;

procedure TClienteAlterar.setretemir(const a_Value: Boolean);
begin
  Self.m_retemir := a_Value;
end;

function TClienteAlterar.getretempis: Boolean;
begin
  Result := Self.m_retempis;
end;

procedure TClienteAlterar.setretempis(const a_Value: Boolean);
begin
  Self.m_retempis := a_Value;
end;

function TClienteAlterar.getretemcofins: Boolean;
begin
  Result := Self.m_retemcofins;
end;

procedure TClienteAlterar.setretemcofins(const a_Value: Boolean);
begin
  Self.m_retemcofins := a_Value;
end;

function TClienteAlterar.getretemcsll: Boolean;
begin
  Result := Self.m_retemcsll;
end;

procedure TClienteAlterar.setretemcsll(const a_Value: Boolean);
begin
  Self.m_retemcsll := a_Value;
end;

function TClienteAlterar.getreteminss: Boolean;
begin
  Result := Self.m_reteminss;
end;

procedure TClienteAlterar.setreteminss(const a_Value: Boolean);
begin
  Self.m_reteminss := a_Value;
end;

function TClienteAlterar.getentidadescompartilhadoras_anteriores: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras_anteriores)
    then Self.m_entidadescompartilhadoras_anteriores := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras_anteriores;
end;

procedure TClienteAlterar.setentidadescompartilhadoras_anteriores(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras_anteriores := a_Value;
end;

function TClienteAlterar.getentidadescompartilhadoras_novas: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras_novas)
    then Self.m_entidadescompartilhadoras_novas := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras_novas;
end;

procedure TClienteAlterar.setentidadescompartilhadoras_novas(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras_novas := a_Value;
end;

function TClienteAlterar.getendereco: TObjectList<TEndereco>;
begin
  if not Assigned(Self.m_endereco)
    then Self.m_endereco := TObjectList<TEndereco>.Create();
  Result := Self.m_endereco;
end;

procedure TClienteAlterar.setendereco(const a_Value: TObjectList<TEndereco>);
begin
  Self.m_endereco := a_Value;
end;

destructor TClienteAlterar.Destroy;
begin
  Self.entidadescompartilhadoras_anteriores.Free();  Self.entidadescompartilhadoras_novas.Free();  Self.endereco.Free();
end;

function TClienteAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TClienteAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TClienteAlterar.getNameAPI(): String;
begin
  Result := 'ClienteAlterar';
end;

function TClienteAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TClienteAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TClienteExcluir.getcliente: String;
begin
  Result := Self.m_cliente;
end;

procedure TClienteExcluir.setcliente(const a_Value: String);
begin
  Self.m_cliente := a_Value;
end;

function TClienteExcluir.getentidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras)
    then Self.m_entidadescompartilhadoras := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras;
end;

procedure TClienteExcluir.setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras := a_Value;
end;

destructor TClienteExcluir.Destroy;
begin
  Self.entidadescompartilhadoras.Free();
end;

function TClienteExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TClienteExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TClienteExcluir.getNameAPI(): String;
begin
  Result := 'ClienteExcluir';
end;

function TClienteExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TClienteExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TClienteNovo_v2.getcliente: String;
begin
  Result := Self.m_cliente;
end;

procedure TClienteNovo_v2.setcliente(const a_Value: String);
begin
  Self.m_cliente := a_Value;
end;

function TClienteNovo_v2.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TClienteNovo_v2.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TClienteNovo_v2.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TClienteNovo_v2.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TClienteNovo_v2.getqualificacao: Integer;
begin
  Result := Self.m_qualificacao;
end;

procedure TClienteNovo_v2.setqualificacao(const a_Value: Integer);
begin
  Self.m_qualificacao := a_Value;
end;

function TClienteNovo_v2.getidentidade: String;
begin
  Result := Self.m_identidade;
end;

procedure TClienteNovo_v2.setidentidade(const a_Value: String);
begin
  Self.m_identidade := a_Value;
end;

function TClienteNovo_v2.getdocumento: String;
begin
  Result := Self.m_documento;
end;

procedure TClienteNovo_v2.setdocumento(const a_Value: String);
begin
  Self.m_documento := a_Value;
end;

function TClienteNovo_v2.getorgaoemissor: String;
begin
  Result := Self.m_orgaoemissor;
end;

procedure TClienteNovo_v2.setorgaoemissor(const a_Value: String);
begin
  Self.m_orgaoemissor := a_Value;
end;

function TClienteNovo_v2.getinscricaoestadual: String;
begin
  Result := Self.m_inscricaoestadual;
end;

procedure TClienteNovo_v2.setinscricaoestadual(const a_Value: String);
begin
  Self.m_inscricaoestadual := a_Value;
end;

function TClienteNovo_v2.getinscricaomunicipal: String;
begin
  Result := Self.m_inscricaomunicipal;
end;

procedure TClienteNovo_v2.setinscricaomunicipal(const a_Value: String);
begin
  Self.m_inscricaomunicipal := a_Value;
end;

function TClienteNovo_v2.getemail: String;
begin
  Result := Self.m_email;
end;

procedure TClienteNovo_v2.setemail(const a_Value: String);
begin
  Self.m_email := a_Value;
end;

function TClienteNovo_v2.getobservacao: String;
begin
  Result := Self.m_observacao;
end;

procedure TClienteNovo_v2.setobservacao(const a_Value: String);
begin
  Self.m_observacao := a_Value;
end;

function TClienteNovo_v2.getentidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras)
    then Self.m_entidadescompartilhadoras := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras;
end;

procedure TClienteNovo_v2.setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras := a_Value;
end;

function TClienteNovo_v2.getenderecoprincipal: TEndereco;
begin
  if not Assigned(Self.m_enderecoprincipal)
    then Self.m_enderecoprincipal := TEndereco.Create();
  Result := Self.m_enderecoprincipal;
end;

procedure TClienteNovo_v2.setenderecoprincipal(const a_Value: TEndereco);
begin
  Self.m_enderecoprincipal := a_Value;
end;

function TClienteNovo_v2.getenderecoentrega: TEndereco;
begin
  if not Assigned(Self.m_enderecoentrega)
    then Self.m_enderecoentrega := TEndereco.Create();
  Result := Self.m_enderecoentrega;
end;

procedure TClienteNovo_v2.setenderecoentrega(const a_Value: TEndereco);
begin
  Self.m_enderecoentrega := a_Value;
end;

function TClienteNovo_v2.getenderecocobranca: TEndereco;
begin
  if not Assigned(Self.m_enderecocobranca)
    then Self.m_enderecocobranca := TEndereco.Create();
  Result := Self.m_enderecocobranca;
end;

procedure TClienteNovo_v2.setenderecocobranca(const a_Value: TEndereco);
begin
  Self.m_enderecocobranca := a_Value;
end;

destructor TClienteNovo_v2.Destroy;
begin
  Self.entidadescompartilhadoras.Free();  Self.enderecoprincipal.Free();  Self.enderecoentrega.Free();  Self.enderecocobranca.Free();
end;

function TClienteNovo_v2.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TClienteNovo_v2.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TClienteNovo_v2.getNameAPI(): String;
begin
  Result := 'ClienteNovo_v2';
end;

function TClienteNovo_v2.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TClienteNovo_v2.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TClienteAlterar_v2.getcliente: String;
begin
  Result := Self.m_cliente;
end;

procedure TClienteAlterar_v2.setcliente(const a_Value: String);
begin
  Self.m_cliente := a_Value;
end;

function TClienteAlterar_v2.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TClienteAlterar_v2.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TClienteAlterar_v2.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TClienteAlterar_v2.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TClienteAlterar_v2.getqualificacao: Integer;
begin
  Result := Self.m_qualificacao;
end;

procedure TClienteAlterar_v2.setqualificacao(const a_Value: Integer);
begin
  Self.m_qualificacao := a_Value;
end;

function TClienteAlterar_v2.getidentidade: String;
begin
  Result := Self.m_identidade;
end;

procedure TClienteAlterar_v2.setidentidade(const a_Value: String);
begin
  Self.m_identidade := a_Value;
end;

function TClienteAlterar_v2.getdocumento: String;
begin
  Result := Self.m_documento;
end;

procedure TClienteAlterar_v2.setdocumento(const a_Value: String);
begin
  Self.m_documento := a_Value;
end;

function TClienteAlterar_v2.getorgaoemissor: String;
begin
  Result := Self.m_orgaoemissor;
end;

procedure TClienteAlterar_v2.setorgaoemissor(const a_Value: String);
begin
  Self.m_orgaoemissor := a_Value;
end;

function TClienteAlterar_v2.getinscricaoestadual: String;
begin
  Result := Self.m_inscricaoestadual;
end;

procedure TClienteAlterar_v2.setinscricaoestadual(const a_Value: String);
begin
  Self.m_inscricaoestadual := a_Value;
end;

function TClienteAlterar_v2.getinscricaomunicipal: String;
begin
  Result := Self.m_inscricaomunicipal;
end;

procedure TClienteAlterar_v2.setinscricaomunicipal(const a_Value: String);
begin
  Self.m_inscricaomunicipal := a_Value;
end;

function TClienteAlterar_v2.getemail: String;
begin
  Result := Self.m_email;
end;

procedure TClienteAlterar_v2.setemail(const a_Value: String);
begin
  Self.m_email := a_Value;
end;

function TClienteAlterar_v2.getobservacao: String;
begin
  Result := Self.m_observacao;
end;

procedure TClienteAlterar_v2.setobservacao(const a_Value: String);
begin
  Self.m_observacao := a_Value;
end;

function TClienteAlterar_v2.getentidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras)
    then Self.m_entidadescompartilhadoras := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras;
end;

procedure TClienteAlterar_v2.setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras := a_Value;
end;

function TClienteAlterar_v2.getenderecoprincipal: TEndereco;
begin
  if not Assigned(Self.m_enderecoprincipal)
    then Self.m_enderecoprincipal := TEndereco.Create();
  Result := Self.m_enderecoprincipal;
end;

procedure TClienteAlterar_v2.setenderecoprincipal(const a_Value: TEndereco);
begin
  Self.m_enderecoprincipal := a_Value;
end;

function TClienteAlterar_v2.getenderecoentrega: TEndereco;
begin
  if not Assigned(Self.m_enderecoentrega)
    then Self.m_enderecoentrega := TEndereco.Create();
  Result := Self.m_enderecoentrega;
end;

procedure TClienteAlterar_v2.setenderecoentrega(const a_Value: TEndereco);
begin
  Self.m_enderecoentrega := a_Value;
end;

function TClienteAlterar_v2.getenderecocobranca: TEndereco;
begin
  if not Assigned(Self.m_enderecocobranca)
    then Self.m_enderecocobranca := TEndereco.Create();
  Result := Self.m_enderecocobranca;
end;

procedure TClienteAlterar_v2.setenderecocobranca(const a_Value: TEndereco);
begin
  Self.m_enderecocobranca := a_Value;
end;

destructor TClienteAlterar_v2.Destroy;
begin
  Self.entidadescompartilhadoras.Free();  Self.enderecoprincipal.Free();  Self.enderecoentrega.Free();  Self.enderecocobranca.Free();
end;

function TClienteAlterar_v2.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TClienteAlterar_v2.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TClienteAlterar_v2.getNameAPI(): String;
begin
  Result := 'ClienteAlterar_v2';
end;

function TClienteAlterar_v2.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TClienteAlterar_v2.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
