unit api.model.financas.LotesFatura;

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
	
  , api.model.ns.Cliente
  , System.Generics.Collections
  , api.model.financas.MensagemLoteFatura
	

	;

type TLotesFaturaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Usuario: String;
    var m_Numero: String;
    var m_Emissao: TDate;
    var m_DataCriacao: TDate;
    var m_Clientes: TObjectList<TCliente>;
    var m_DataInicio: TDate;
    var m_DataFim: TDate;
    var m_PorEmissao: Boolean;
    var m_Mensagens: TObjectList<TMensagemLoteFaturaNovo>;
    var m_TipoSelecaoCliente: Integer;
    var m_DiaInicioSelecao: Integer;
    var m_DiaFimSelecao: Integer;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getUsuario(): String;
    function getNumero(): String;
    function getEmissao(): TDate;
    function getDataCriacao(): TDate;
    function getClientes(): TObjectList<TCliente>;
    function getDataInicio(): TDate;
    function getDataFim(): TDate;
    function getPorEmissao(): Boolean;
    function getMensagens(): TObjectList<TMensagemLoteFaturaNovo>;
    function getTipoSelecaoCliente(): Integer;
    function getDiaInicioSelecao(): Integer;
    function getDiaFimSelecao(): Integer;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setUsuario(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setEmissao(const a_Value: TDate);
    procedure setDataCriacao(const a_Value: TDate);
    procedure setClientes(const a_Value: TObjectList<TCliente>);
    procedure setDataInicio(const a_Value: TDate);
    procedure setDataFim(const a_Value: TDate);
    procedure setPorEmissao(const a_Value: Boolean);
    procedure setMensagens(const a_Value: TObjectList<TMensagemLoteFaturaNovo>);
    procedure setTipoSelecaoCliente(const a_Value: Integer);
    procedure setDiaInicioSelecao(const a_Value: Integer);
    procedure setDiaFimSelecao(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getEmissao write setEmissao;

    [NasajonSerializeAttribute('datacriacao')]
    property datacriacao: TDate read getDataCriacao write setDataCriacao;

    [NasajonSerializeAttribute('clientes')]
    property clientes: TObjectList<TCliente> read getClientes write setClientes;

    [NasajonSerializeAttribute('datainicio')]
    property datainicio: TDate read getDataInicio write setDataInicio;

    [NasajonSerializeAttribute('datafim')]
    property datafim: TDate read getDataFim write setDataFim;

    [NasajonSerializeAttribute('poremissao')]
    property poremissao: Boolean read getPorEmissao write setPorEmissao;

    [NasajonSerializeAttribute('mensagens')]
    property mensagens: TObjectList<TMensagemLoteFaturaNovo> read getMensagens write setMensagens;

    [NasajonSerializeAttribute('tiposelecaocliente')]
    property tiposelecaocliente: Integer read getTipoSelecaoCliente write setTipoSelecaoCliente;

    [NasajonSerializeAttribute('diainicioselecao')]
    property diainicioselecao: Integer read getDiaInicioSelecao write setDiaInicioSelecao;

    [NasajonSerializeAttribute('diafimselecao')]
    property diafimselecao: Integer read getDiaFimSelecao write setDiaFimSelecao;

    

end;

type TLotesFaturaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    

    function getId(): String;
    

    procedure setId(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    

end;

	
implementation

  uses
      api.send;  

function TLotesFaturaNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TLotesFaturaNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TLotesFaturaNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TLotesFaturaNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TLotesFaturaNovo.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TLotesFaturaNovo.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TLotesFaturaNovo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TLotesFaturaNovo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TLotesFaturaNovo.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TLotesFaturaNovo.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TLotesFaturaNovo.getDataCriacao: TDate;
begin
  Result := Self.m_DataCriacao;
end;

procedure TLotesFaturaNovo.setDataCriacao(const a_Value: TDate);
begin
  Self.m_DataCriacao := a_Value;
end;

function TLotesFaturaNovo.getClientes: TObjectList<TCliente>;
begin
  if not Assigned(Self.m_Clientes)
    then Self.m_Clientes := TObjectList<TCliente>.Create();
  Result := Self.m_Clientes;
end;

procedure TLotesFaturaNovo.setClientes(const a_Value: TObjectList<TCliente>);
begin
  Self.m_Clientes := a_Value;
end;

function TLotesFaturaNovo.getDataInicio: TDate;
begin
  Result := Self.m_DataInicio;
end;

procedure TLotesFaturaNovo.setDataInicio(const a_Value: TDate);
begin
  Self.m_DataInicio := a_Value;
end;

function TLotesFaturaNovo.getDataFim: TDate;
begin
  Result := Self.m_DataFim;
end;

procedure TLotesFaturaNovo.setDataFim(const a_Value: TDate);
begin
  Self.m_DataFim := a_Value;
end;

function TLotesFaturaNovo.getPorEmissao: Boolean;
begin
  Result := Self.m_PorEmissao;
end;

procedure TLotesFaturaNovo.setPorEmissao(const a_Value: Boolean);
begin
  Self.m_PorEmissao := a_Value;
end;

function TLotesFaturaNovo.getMensagens: TObjectList<TMensagemLoteFaturaNovo>;
begin
  if not Assigned(Self.m_Mensagens)
    then Self.m_Mensagens := TObjectList<TMensagemLoteFaturaNovo>.Create();
  Result := Self.m_Mensagens;
end;

procedure TLotesFaturaNovo.setMensagens(const a_Value: TObjectList<TMensagemLoteFaturaNovo>);
begin
  Self.m_Mensagens := a_Value;
end;

function TLotesFaturaNovo.getTipoSelecaoCliente: Integer;
begin
  Result := Self.m_TipoSelecaoCliente;
end;

procedure TLotesFaturaNovo.setTipoSelecaoCliente(const a_Value: Integer);
begin
  Self.m_TipoSelecaoCliente := a_Value;
end;

function TLotesFaturaNovo.getDiaInicioSelecao: Integer;
begin
  Result := Self.m_DiaInicioSelecao;
end;

procedure TLotesFaturaNovo.setDiaInicioSelecao(const a_Value: Integer);
begin
  Self.m_DiaInicioSelecao := a_Value;
end;

function TLotesFaturaNovo.getDiaFimSelecao: Integer;
begin
  Result := Self.m_DiaFimSelecao;
end;

procedure TLotesFaturaNovo.setDiaFimSelecao(const a_Value: Integer);
begin
  Self.m_DiaFimSelecao := a_Value;
end;

destructor TLotesFaturaNovo.Destroy;
begin
  Self.Clientes.Free();  Self.Mensagens.Free();
end;

function TLotesFaturaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotesFaturaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotesFaturaNovo.getNameAPI(): String;
begin
  Result := 'LotesFaturaNovo';
end;

function TLotesFaturaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotesFaturaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLotesFaturaExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TLotesFaturaExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TLotesFaturaExcluir.Destroy;
begin

end;

function TLotesFaturaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotesFaturaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotesFaturaExcluir.getNameAPI(): String;
begin
  Result := 'LotesFaturaExcluir';
end;

function TLotesFaturaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotesFaturaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
