unit api.model.servicos.Servico;

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
	
  , api.model.servicos.cfopservico
  , api.model.ns.entidadecompartilhadora
  , System.Generics.Collections
	

	;

type TServicoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Servico: String;
    var m_TipoServico: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Valor: Currency;
    var m_CFOP: TCFOPServico;
    var m_entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
    

    function getServico(): String;
    function getTipoServico(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getValor(): Currency;
    function getCFOP(): TCFOPServico;
    function getentidadescompartilhadoras(): TObjectList<TEntidadeCompartilhadora>;
    

    procedure setServico(const a_Value: String);
    procedure setTipoServico(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setValor(const a_Value: Currency);
    procedure setCFOP(const a_Value: TCFOPServico);
    procedure setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('servico')]
    property servico: String read getServico write setServico;

    [NasajonSerializeAttribute('tiposervico')]
    property tiposervico: String read getTipoServico write setTipoServico;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    [NasajonSerializeAttribute('cfop')]
    property cfop: TCFOPServico read getCFOP write setCFOP;

    [NasajonSerializeAttribute('entidadescompartilhadoras')]
    property entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras write setentidadescompartilhadoras;

    

end;

type TServicoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Servico: String;
    var m_TipoServico: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Valor: Currency;
    var m_CFOP: TCFOPServico;
    var m_entidadescompartilhadoras_anteriores: TObjectList<TEntidadeCompartilhadora>;
    var m_entidadescompartilhadoras_novas: TObjectList<TEntidadeCompartilhadora>;
    

    function getServico(): String;
    function getTipoServico(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getValor(): Currency;
    function getCFOP(): TCFOPServico;
    function getentidadescompartilhadoras_anteriores(): TObjectList<TEntidadeCompartilhadora>;
    function getentidadescompartilhadoras_novas(): TObjectList<TEntidadeCompartilhadora>;
    

    procedure setServico(const a_Value: String);
    procedure setTipoServico(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setValor(const a_Value: Currency);
    procedure setCFOP(const a_Value: TCFOPServico);
    procedure setentidadescompartilhadoras_anteriores(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    procedure setentidadescompartilhadoras_novas(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('servico')]
    property servico: String read getServico write setServico;

    [NasajonSerializeAttribute('tiposervico')]
    property tiposervico: String read getTipoServico write setTipoServico;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    [NasajonSerializeAttribute('cfop')]
    property cfop: TCFOPServico read getCFOP write setCFOP;

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

    

end;

type TServicoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Servico: String;
    var m_entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
    

    function getServico(): String;
    function getentidadescompartilhadoras(): TObjectList<TEntidadeCompartilhadora>;
    

    procedure setServico(const a_Value: String);
    procedure setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('servico')]
    property servico: String read getServico write setServico;

    [NasajonSerializeAttribute('entidadescompartilhadoras')]
    property entidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora> read getentidadescompartilhadoras write setentidadescompartilhadoras;

    

end;

	
implementation

  uses
      api.send;  

function TServicoNovo.getServico: String;
begin
  Result := Self.m_Servico;
end;

procedure TServicoNovo.setServico(const a_Value: String);
begin
  Self.m_Servico := a_Value;
end;

function TServicoNovo.getTipoServico: String;
begin
  Result := Self.m_TipoServico;
end;

procedure TServicoNovo.setTipoServico(const a_Value: String);
begin
  Self.m_TipoServico := a_Value;
end;

function TServicoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TServicoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TServicoNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TServicoNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TServicoNovo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TServicoNovo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TServicoNovo.getCFOP: TCFOPServico;
begin
  if not Assigned(Self.m_CFOP)
    then Self.m_CFOP := TCFOPServico.Create();
  Result := Self.m_CFOP;
end;

procedure TServicoNovo.setCFOP(const a_Value: TCFOPServico);
begin
  Self.m_CFOP := a_Value;
end;

function TServicoNovo.getentidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras)
    then Self.m_entidadescompartilhadoras := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras;
end;

procedure TServicoNovo.setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras := a_Value;
end;

destructor TServicoNovo.Destroy;
begin
  Self.CFOP.Free();  Self.entidadescompartilhadoras.Free();
end;

function TServicoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TServicoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TServicoNovo.getNameAPI(): String;
begin
  Result := 'ServicoNovo';
end;

function TServicoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TServicoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TServicoAlterar.getServico: String;
begin
  Result := Self.m_Servico;
end;

procedure TServicoAlterar.setServico(const a_Value: String);
begin
  Self.m_Servico := a_Value;
end;

function TServicoAlterar.getTipoServico: String;
begin
  Result := Self.m_TipoServico;
end;

procedure TServicoAlterar.setTipoServico(const a_Value: String);
begin
  Self.m_TipoServico := a_Value;
end;

function TServicoAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TServicoAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TServicoAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TServicoAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TServicoAlterar.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TServicoAlterar.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TServicoAlterar.getCFOP: TCFOPServico;
begin
  if not Assigned(Self.m_CFOP)
    then Self.m_CFOP := TCFOPServico.Create();
  Result := Self.m_CFOP;
end;

procedure TServicoAlterar.setCFOP(const a_Value: TCFOPServico);
begin
  Self.m_CFOP := a_Value;
end;

function TServicoAlterar.getentidadescompartilhadoras_anteriores: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras_anteriores)
    then Self.m_entidadescompartilhadoras_anteriores := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras_anteriores;
end;

procedure TServicoAlterar.setentidadescompartilhadoras_anteriores(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras_anteriores := a_Value;
end;

function TServicoAlterar.getentidadescompartilhadoras_novas: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras_novas)
    then Self.m_entidadescompartilhadoras_novas := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras_novas;
end;

procedure TServicoAlterar.setentidadescompartilhadoras_novas(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras_novas := a_Value;
end;

destructor TServicoAlterar.Destroy;
begin
  Self.CFOP.Free();  Self.entidadescompartilhadoras_anteriores.Free();  Self.entidadescompartilhadoras_novas.Free();
end;

function TServicoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TServicoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TServicoAlterar.getNameAPI(): String;
begin
  Result := 'ServicoAlterar';
end;

function TServicoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TServicoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TServicoExcluir.getServico: String;
begin
  Result := Self.m_Servico;
end;

procedure TServicoExcluir.setServico(const a_Value: String);
begin
  Self.m_Servico := a_Value;
end;

function TServicoExcluir.getentidadescompartilhadoras: TObjectList<TEntidadeCompartilhadora>;
begin
  if not Assigned(Self.m_entidadescompartilhadoras)
    then Self.m_entidadescompartilhadoras := TObjectList<TEntidadeCompartilhadora>.Create();
  Result := Self.m_entidadescompartilhadoras;
end;

procedure TServicoExcluir.setentidadescompartilhadoras(const a_Value: TObjectList<TEntidadeCompartilhadora>);
begin
  Self.m_entidadescompartilhadoras := a_Value;
end;

destructor TServicoExcluir.Destroy;
begin
  Self.entidadescompartilhadoras.Free();
end;

function TServicoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TServicoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TServicoExcluir.getNameAPI(): String;
begin
  Result := 'ServicoExcluir';
end;

function TServicoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TServicoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
