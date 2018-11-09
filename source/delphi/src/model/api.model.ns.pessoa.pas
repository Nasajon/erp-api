unit api.model.ns.pessoa;

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

type Tpessoa = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_pessoa: String;
    var m_entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
    

    function getpessoa(): String;
    function getentidadescompartilhadoras(): TObjectList<TEntidadeCompartilhadora>;
    

    procedure setpessoa(const a_Value: String);
    procedure setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getpessoa write setpessoa;

    [NasajonSerializeAttribute('entidadescompartilhadoras')]
    property entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras write setentidadescompartilhadoras;

    

end;

type TpessoaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_pessoa: String;
    var m_codigo: String;
    var m_nome: String;
    var m_nomefantasia: String;
    var m_identidade: String;
    var m_documento: String;
    var m_cliente: Boolean;
    var m_fornecedor: Boolean;
    var m_vendedor: Boolean;
    var m_transportador: Boolean;
    var m_tecnico: Boolean;
    var m_entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
    var m_endereco: TObjectList<TEndereco>;
    var m_indicadorinscricaoestadual: Integer;
    

    function getpessoa(): String;
    function getcodigo(): String;
    function getnome(): String;
    function getnomefantasia(): String;
    function getidentidade(): String;
    function getdocumento(): String;
    function getcliente(): Boolean;
    function getfornecedor(): Boolean;
    function getvendedor(): Boolean;
    function gettransportador(): Boolean;
    function gettecnico(): Boolean;
    function getentidadescompartilhadoras(): TObjectList<TEntidadeCompartilhadora>;
    function getendereco(): TObjectList<TEndereco>;
    function getindicadorinscricaoestadual(): Integer;
    

    procedure setpessoa(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setnomefantasia(const a_Value: String);
    procedure setidentidade(const a_Value: String);
    procedure setdocumento(const a_Value: String);
    procedure setcliente(const a_Value: Boolean);
    procedure setfornecedor(const a_Value: Boolean);
    procedure setvendedor(const a_Value: Boolean);
    procedure settransportador(const a_Value: Boolean);
    procedure settecnico(const a_Value: Boolean);
    procedure setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    procedure setendereco(const a_Value: TObjectList<TEndereco>);
    procedure setindicadorinscricaoestadual(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getpessoa write setpessoa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    /// <summary>
/// Informe o Nome do pessoa ou Razão social
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

    [NasajonSerializeAttribute('cliente')]
    property cliente: Boolean read getcliente write setcliente;

    [NasajonSerializeAttribute('fornecedor')]
    property fornecedor: Boolean read getfornecedor write setfornecedor;

    [NasajonSerializeAttribute('vendedor')]
    property vendedor: Boolean read getvendedor write setvendedor;

    [NasajonSerializeAttribute('transportador')]
    property transportador: Boolean read gettransportador write settransportador;

    [NasajonSerializeAttribute('tecnico')]
    property tecnico: Boolean read gettecnico write settecnico;

    [NasajonSerializeAttribute('entidadescompartilhadoras')]
    property entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras write setentidadescompartilhadoras;

    [NasajonSerializeAttribute('endereco')]
    property endereco: TObjectList<TEndereco> read getendereco write setendereco;

    [NasajonSerializeAttribute('indicadorinscricaoestadual')]
    property indicadorinscricaoestadual: Integer read getindicadorinscricaoestadual write setindicadorinscricaoestadual;

    

end;

type TpessoaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_pessoa: String;
    var m_codigo: String;
    var m_nome: String;
    var m_nomefantasia: String;
    var m_identidade: String;
    var m_documento: String;
    var m_cliente: Boolean;
    var m_fornecedor: Boolean;
    var m_vendedor: Boolean;
    var m_transportador: Boolean;
    var m_tecnico: Boolean;
    var m_entidadescompartilhadoras_anteriores: TObjectList<TEntidadeCompartilhadora>;
    var m_entidadescompartilhadoras_novas: TObjectList<TEntidadeCompartilhadora>;
    var m_endereco: TObjectList<TEndereco>;
    

    function getpessoa(): String;
    function getcodigo(): String;
    function getnome(): String;
    function getnomefantasia(): String;
    function getidentidade(): String;
    function getdocumento(): String;
    function getcliente(): Boolean;
    function getfornecedor(): Boolean;
    function getvendedor(): Boolean;
    function gettransportador(): Boolean;
    function gettecnico(): Boolean;
    function getentidadescompartilhadoras_anteriores(): TObjectList<TEntidadeCompartilhadora>;
    function getentidadescompartilhadoras_novas(): TObjectList<TEntidadeCompartilhadora>;
    function getendereco(): TObjectList<TEndereco>;
    

    procedure setpessoa(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setnomefantasia(const a_Value: String);
    procedure setidentidade(const a_Value: String);
    procedure setdocumento(const a_Value: String);
    procedure setcliente(const a_Value: Boolean);
    procedure setfornecedor(const a_Value: Boolean);
    procedure setvendedor(const a_Value: Boolean);
    procedure settransportador(const a_Value: Boolean);
    procedure settecnico(const a_Value: Boolean);
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
    

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getpessoa write setpessoa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    /// <summary>
/// Informe o Nome do pessoa ou Razão social
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

    [NasajonSerializeAttribute('cliente')]
    property cliente: Boolean read getcliente write setcliente;

    [NasajonSerializeAttribute('fornecedor')]
    property fornecedor: Boolean read getfornecedor write setfornecedor;

    [NasajonSerializeAttribute('vendedor')]
    property vendedor: Boolean read getvendedor write setvendedor;

    [NasajonSerializeAttribute('transportador')]
    property transportador: Boolean read gettransportador write settransportador;

    [NasajonSerializeAttribute('tecnico')]
    property tecnico: Boolean read gettecnico write settecnico;

    /// <summary>
/// Define as entidades compartilhadoras atuais as quais o pessoa está vinculado. Simplesmente para localização do registro considerando Código, CNPJ ou CPF.
    /// </summary>
    [NasajonSerializeAttribute('entidadescompartilhadoras_anteriores')]
    property entidadescompartilhadoras_anteriores: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras_anteriores write setentidadescompartilhadoras_anteriores;

    /// <summary>
/// Define as entidades compartilhadoras as quais o pessoa passará a estar vinculado.
    /// </summary>
    [NasajonSerializeAttribute('entidadescompartilhadoras_novas')]
    property entidadescompartilhadoras_novas: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras_novas write setentidadescompartilhadoras_novas;

    [NasajonSerializeAttribute('endereco')]
    property endereco: TObjectList<TEndereco> read getendereco write setendereco;

    

end;

type TpessoaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_pessoa: String;
    var m_entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
    

    function getpessoa(): String;
    function getentidadescompartilhadoras(): TObjectList<TEntidadeCompartilhadora>;
    

    procedure setpessoa(const a_Value: String);
    procedure setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getpessoa write setpessoa;

    [NasajonSerializeAttribute('entidadescompartilhadoras')]
    property entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras write setentidadescompartilhadoras;

    

end;

	
implementation

  uses
      api.send;  

function Tpessoa.getpessoa: String;
begin
  Result := Self.m_pessoa;
end;

procedure Tpessoa.setpessoa(const a_Value: String);
begin
  Self.m_pessoa := a_Value;
end;

function Tpessoa.getentidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras)
    then Self.m_entidadescompartilhadoras := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras;
end;

procedure Tpessoa.setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras := a_Value;
end;

destructor Tpessoa.Destroy;
begin
  Self.entidadescompartilhadoras.Free();
end;

function Tpessoa.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Tpessoa.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Tpessoa.getNameAPI(): String;
begin
  Result := 'pessoa';
end;

function Tpessoa.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Tpessoa.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TpessoaNovo.getpessoa: String;
begin
  Result := Self.m_pessoa;
end;

procedure TpessoaNovo.setpessoa(const a_Value: String);
begin
  Self.m_pessoa := a_Value;
end;

function TpessoaNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TpessoaNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TpessoaNovo.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TpessoaNovo.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TpessoaNovo.getnomefantasia: String;
begin
  Result := Self.m_nomefantasia;
end;

procedure TpessoaNovo.setnomefantasia(const a_Value: String);
begin
  Self.m_nomefantasia := a_Value;
end;

function TpessoaNovo.getidentidade: String;
begin
  Result := Self.m_identidade;
end;

procedure TpessoaNovo.setidentidade(const a_Value: String);
begin
  Self.m_identidade := a_Value;
end;

function TpessoaNovo.getdocumento: String;
begin
  Result := Self.m_documento;
end;

procedure TpessoaNovo.setdocumento(const a_Value: String);
begin
  Self.m_documento := a_Value;
end;

function TpessoaNovo.getcliente: Boolean;
begin
  Result := Self.m_cliente;
end;

procedure TpessoaNovo.setcliente(const a_Value: Boolean);
begin
  Self.m_cliente := a_Value;
end;

function TpessoaNovo.getfornecedor: Boolean;
begin
  Result := Self.m_fornecedor;
end;

procedure TpessoaNovo.setfornecedor(const a_Value: Boolean);
begin
  Self.m_fornecedor := a_Value;
end;

function TpessoaNovo.getvendedor: Boolean;
begin
  Result := Self.m_vendedor;
end;

procedure TpessoaNovo.setvendedor(const a_Value: Boolean);
begin
  Self.m_vendedor := a_Value;
end;

function TpessoaNovo.gettransportador: Boolean;
begin
  Result := Self.m_transportador;
end;

procedure TpessoaNovo.settransportador(const a_Value: Boolean);
begin
  Self.m_transportador := a_Value;
end;

function TpessoaNovo.gettecnico: Boolean;
begin
  Result := Self.m_tecnico;
end;

procedure TpessoaNovo.settecnico(const a_Value: Boolean);
begin
  Self.m_tecnico := a_Value;
end;

function TpessoaNovo.getentidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras)
    then Self.m_entidadescompartilhadoras := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras;
end;

procedure TpessoaNovo.setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras := a_Value;
end;

function TpessoaNovo.getendereco: TObjectList<TEndereco>;
begin
  if not Assigned(Self.m_endereco)
    then Self.m_endereco := TObjectList<TEndereco>.Create();
  Result := Self.m_endereco;
end;

procedure TpessoaNovo.setendereco(const a_Value: TObjectList<TEndereco>);
begin
  Self.m_endereco := a_Value;
end;

function TpessoaNovo.getindicadorinscricaoestadual: Integer;
begin
  Result := Self.m_indicadorinscricaoestadual;
end;

procedure TpessoaNovo.setindicadorinscricaoestadual(const a_Value: Integer);
begin
  Self.m_indicadorinscricaoestadual := a_Value;
end;

destructor TpessoaNovo.Destroy;
begin
  Self.entidadescompartilhadoras.Free();  Self.endereco.Free();
end;

function TpessoaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TpessoaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TpessoaNovo.getNameAPI(): String;
begin
  Result := 'pessoaNovo';
end;

function TpessoaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TpessoaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TpessoaAlterar.getpessoa: String;
begin
  Result := Self.m_pessoa;
end;

procedure TpessoaAlterar.setpessoa(const a_Value: String);
begin
  Self.m_pessoa := a_Value;
end;

function TpessoaAlterar.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TpessoaAlterar.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TpessoaAlterar.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TpessoaAlterar.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TpessoaAlterar.getnomefantasia: String;
begin
  Result := Self.m_nomefantasia;
end;

procedure TpessoaAlterar.setnomefantasia(const a_Value: String);
begin
  Self.m_nomefantasia := a_Value;
end;

function TpessoaAlterar.getidentidade: String;
begin
  Result := Self.m_identidade;
end;

procedure TpessoaAlterar.setidentidade(const a_Value: String);
begin
  Self.m_identidade := a_Value;
end;

function TpessoaAlterar.getdocumento: String;
begin
  Result := Self.m_documento;
end;

procedure TpessoaAlterar.setdocumento(const a_Value: String);
begin
  Self.m_documento := a_Value;
end;

function TpessoaAlterar.getcliente: Boolean;
begin
  Result := Self.m_cliente;
end;

procedure TpessoaAlterar.setcliente(const a_Value: Boolean);
begin
  Self.m_cliente := a_Value;
end;

function TpessoaAlterar.getfornecedor: Boolean;
begin
  Result := Self.m_fornecedor;
end;

procedure TpessoaAlterar.setfornecedor(const a_Value: Boolean);
begin
  Self.m_fornecedor := a_Value;
end;

function TpessoaAlterar.getvendedor: Boolean;
begin
  Result := Self.m_vendedor;
end;

procedure TpessoaAlterar.setvendedor(const a_Value: Boolean);
begin
  Self.m_vendedor := a_Value;
end;

function TpessoaAlterar.gettransportador: Boolean;
begin
  Result := Self.m_transportador;
end;

procedure TpessoaAlterar.settransportador(const a_Value: Boolean);
begin
  Self.m_transportador := a_Value;
end;

function TpessoaAlterar.gettecnico: Boolean;
begin
  Result := Self.m_tecnico;
end;

procedure TpessoaAlterar.settecnico(const a_Value: Boolean);
begin
  Self.m_tecnico := a_Value;
end;

function TpessoaAlterar.getentidadescompartilhadoras_anteriores: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras_anteriores)
    then Self.m_entidadescompartilhadoras_anteriores := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras_anteriores;
end;

procedure TpessoaAlterar.setentidadescompartilhadoras_anteriores(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras_anteriores := a_Value;
end;

function TpessoaAlterar.getentidadescompartilhadoras_novas: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras_novas)
    then Self.m_entidadescompartilhadoras_novas := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras_novas;
end;

procedure TpessoaAlterar.setentidadescompartilhadoras_novas(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras_novas := a_Value;
end;

function TpessoaAlterar.getendereco: TObjectList<TEndereco>;
begin
  if not Assigned(Self.m_endereco)
    then Self.m_endereco := TObjectList<TEndereco>.Create();
  Result := Self.m_endereco;
end;

procedure TpessoaAlterar.setendereco(const a_Value: TObjectList<TEndereco>);
begin
  Self.m_endereco := a_Value;
end;

destructor TpessoaAlterar.Destroy;
begin
  Self.entidadescompartilhadoras_anteriores.Free();  Self.entidadescompartilhadoras_novas.Free();  Self.endereco.Free();
end;

function TpessoaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TpessoaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TpessoaAlterar.getNameAPI(): String;
begin
  Result := 'pessoaAlterar';
end;

function TpessoaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TpessoaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TpessoaExcluir.getpessoa: String;
begin
  Result := Self.m_pessoa;
end;

procedure TpessoaExcluir.setpessoa(const a_Value: String);
begin
  Self.m_pessoa := a_Value;
end;

function TpessoaExcluir.getentidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras)
    then Self.m_entidadescompartilhadoras := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras;
end;

procedure TpessoaExcluir.setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras := a_Value;
end;

destructor TpessoaExcluir.Destroy;
begin
  Self.entidadescompartilhadoras.Free();
end;

function TpessoaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TpessoaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TpessoaExcluir.getNameAPI(): String;
begin
  Result := 'pessoaExcluir';
end;

function TpessoaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TpessoaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
