unit api.model.ns.Fornecedor;

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

type TFornecedorNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_fornecedor: String;
    var m_codigo: String;
    var m_nome: String;
    var m_nomefantasia: String;
    var m_identidade: String;
    var m_documento: String;
    var m_entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
    var m_endereco: TObjectList<TEndereco>;
    

    function getfornecedor(): String;
    function getcodigo(): String;
    function getnome(): String;
    function getnomefantasia(): String;
    function getidentidade(): String;
    function getdocumento(): String;
    function getentidadescompartilhadoras(): TObjectList<TEntidadeCompartilhadora>;
    function getendereco(): TObjectList<TEndereco>;
    

    procedure setfornecedor(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setnomefantasia(const a_Value: String);
    procedure setidentidade(const a_Value: String);
    procedure setdocumento(const a_Value: String);
    procedure setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    procedure setendereco(const a_Value: TObjectList<TEndereco>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('fornecedor')]
    property fornecedor: String read getfornecedor write setfornecedor;

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

    [NasajonSerializeAttribute('entidadescompartilhadoras')]
    property entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras write setentidadescompartilhadoras;

    [NasajonSerializeAttribute('endereco')]
    property endereco: TObjectList<TEndereco> read getendereco write setendereco;

    

end;

type TFornecedorAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_fornecedor: String;
    var m_codigo: String;
    var m_nome: String;
    var m_nomefantasia: String;
    var m_identidade: String;
    var m_documento: String;
    var m_entidadescompartilhadoras_anteriores: TObjectList<TEntidadeCompartilhadora>;
    var m_entidadescompartilhadoras_novas: TObjectList<TEntidadeCompartilhadora>;
    var m_endereco: TObjectList<TEndereco>;
    

    function getfornecedor(): String;
    function getcodigo(): String;
    function getnome(): String;
    function getnomefantasia(): String;
    function getidentidade(): String;
    function getdocumento(): String;
    function getentidadescompartilhadoras_anteriores(): TObjectList<TEntidadeCompartilhadora>;
    function getentidadescompartilhadoras_novas(): TObjectList<TEntidadeCompartilhadora>;
    function getendereco(): TObjectList<TEndereco>;
    

    procedure setfornecedor(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setnomefantasia(const a_Value: String);
    procedure setidentidade(const a_Value: String);
    procedure setdocumento(const a_Value: String);
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
    

    [NasajonSerializeAttribute('fornecedor')]
    property fornecedor: String read getfornecedor write setfornecedor;

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

    /// <summary>
/// Define as entidades compartilhadoras atuais as quais o fornecedor está vinculado. Simplesmente para localização do registro considerando Código, CNPJ ou CPF.
    /// </summary>
    [NasajonSerializeAttribute('entidadescompartilhadoras_anteriores')]
    property entidadescompartilhadoras_anteriores: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras_anteriores write setentidadescompartilhadoras_anteriores;

    /// <summary>
/// Define as entidades compartilhadoras as quais o fornecedor passará a estar vinculado.
    /// </summary>
    [NasajonSerializeAttribute('entidadescompartilhadoras_novas')]
    property entidadescompartilhadoras_novas: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras_novas write setentidadescompartilhadoras_novas;

    [NasajonSerializeAttribute('endereco')]
    property endereco: TObjectList<TEndereco> read getendereco write setendereco;

    

end;

type TFornecedorExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_fornecedor: String;
    var m_entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
    

    function getfornecedor(): String;
    function getentidadescompartilhadoras(): TObjectList<TEntidadeCompartilhadora>;
    

    procedure setfornecedor(const a_Value: String);
    procedure setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('fornecedor')]
    property fornecedor: String read getfornecedor write setfornecedor;

    [NasajonSerializeAttribute('entidadescompartilhadoras')]
    property entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras write setentidadescompartilhadoras;

    

end;

	
implementation

  uses
      api.send;  

function TFornecedorNovo.getfornecedor: String;
begin
  Result := Self.m_fornecedor;
end;

procedure TFornecedorNovo.setfornecedor(const a_Value: String);
begin
  Self.m_fornecedor := a_Value;
end;

function TFornecedorNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TFornecedorNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TFornecedorNovo.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TFornecedorNovo.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TFornecedorNovo.getnomefantasia: String;
begin
  Result := Self.m_nomefantasia;
end;

procedure TFornecedorNovo.setnomefantasia(const a_Value: String);
begin
  Self.m_nomefantasia := a_Value;
end;

function TFornecedorNovo.getidentidade: String;
begin
  Result := Self.m_identidade;
end;

procedure TFornecedorNovo.setidentidade(const a_Value: String);
begin
  Self.m_identidade := a_Value;
end;

function TFornecedorNovo.getdocumento: String;
begin
  Result := Self.m_documento;
end;

procedure TFornecedorNovo.setdocumento(const a_Value: String);
begin
  Self.m_documento := a_Value;
end;

function TFornecedorNovo.getentidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras)
    then Self.m_entidadescompartilhadoras := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras;
end;

procedure TFornecedorNovo.setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras := a_Value;
end;

function TFornecedorNovo.getendereco: TObjectList<TEndereco>;
begin
  if not Assigned(Self.m_endereco)
    then Self.m_endereco := TObjectList<TEndereco>.Create();
  Result := Self.m_endereco;
end;

procedure TFornecedorNovo.setendereco(const a_Value: TObjectList<TEndereco>);
begin
  Self.m_endereco := a_Value;
end;

destructor TFornecedorNovo.Destroy;
begin
  Self.entidadescompartilhadoras.Free();  Self.endereco.Free();
end;

function TFornecedorNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFornecedorNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFornecedorNovo.getNameAPI(): String;
begin
  Result := 'FornecedorNovo';
end;

function TFornecedorNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFornecedorNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFornecedorAlterar.getfornecedor: String;
begin
  Result := Self.m_fornecedor;
end;

procedure TFornecedorAlterar.setfornecedor(const a_Value: String);
begin
  Self.m_fornecedor := a_Value;
end;

function TFornecedorAlterar.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TFornecedorAlterar.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TFornecedorAlterar.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TFornecedorAlterar.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TFornecedorAlterar.getnomefantasia: String;
begin
  Result := Self.m_nomefantasia;
end;

procedure TFornecedorAlterar.setnomefantasia(const a_Value: String);
begin
  Self.m_nomefantasia := a_Value;
end;

function TFornecedorAlterar.getidentidade: String;
begin
  Result := Self.m_identidade;
end;

procedure TFornecedorAlterar.setidentidade(const a_Value: String);
begin
  Self.m_identidade := a_Value;
end;

function TFornecedorAlterar.getdocumento: String;
begin
  Result := Self.m_documento;
end;

procedure TFornecedorAlterar.setdocumento(const a_Value: String);
begin
  Self.m_documento := a_Value;
end;

function TFornecedorAlterar.getentidadescompartilhadoras_anteriores: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras_anteriores)
    then Self.m_entidadescompartilhadoras_anteriores := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras_anteriores;
end;

procedure TFornecedorAlterar.setentidadescompartilhadoras_anteriores(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras_anteriores := a_Value;
end;

function TFornecedorAlterar.getentidadescompartilhadoras_novas: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras_novas)
    then Self.m_entidadescompartilhadoras_novas := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras_novas;
end;

procedure TFornecedorAlterar.setentidadescompartilhadoras_novas(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras_novas := a_Value;
end;

function TFornecedorAlterar.getendereco: TObjectList<TEndereco>;
begin
  if not Assigned(Self.m_endereco)
    then Self.m_endereco := TObjectList<TEndereco>.Create();
  Result := Self.m_endereco;
end;

procedure TFornecedorAlterar.setendereco(const a_Value: TObjectList<TEndereco>);
begin
  Self.m_endereco := a_Value;
end;

destructor TFornecedorAlterar.Destroy;
begin
  Self.entidadescompartilhadoras_anteriores.Free();  Self.entidadescompartilhadoras_novas.Free();  Self.endereco.Free();
end;

function TFornecedorAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFornecedorAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFornecedorAlterar.getNameAPI(): String;
begin
  Result := 'FornecedorAlterar';
end;

function TFornecedorAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFornecedorAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFornecedorExcluir.getfornecedor: String;
begin
  Result := Self.m_fornecedor;
end;

procedure TFornecedorExcluir.setfornecedor(const a_Value: String);
begin
  Self.m_fornecedor := a_Value;
end;

function TFornecedorExcluir.getentidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras)
    then Self.m_entidadescompartilhadoras := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras;
end;

procedure TFornecedorExcluir.setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras := a_Value;
end;

destructor TFornecedorExcluir.Destroy;
begin
  Self.entidadescompartilhadoras.Free();
end;

function TFornecedorExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFornecedorExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFornecedorExcluir.getNameAPI(): String;
begin
  Result := 'FornecedorExcluir';
end;

function TFornecedorExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFornecedorExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
