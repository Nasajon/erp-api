unit api.model.financas.LoteFatura_v2;

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
	
  , api.model.ns.estabelecimento
  , api.model.ns.Cliente
  , System.Generics.Collections
  , api.model.financas.MensagemLoteFatura_v2
	

	;

type TLoteFatura_v2Novo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_LoteFatura: String;
    var m_Estabelecimento: TEstabelecimento;
    var m_Usuario: String;
    var m_Numero: String;
    var m_Emissao: TDate;
    var m_DataCriacao: TDate;
    var m_Clientes: TObjectList<TCliente>;
    var m_DataInicio: TDate;
    var m_DataFim: TDate;
    var m_PorEmissao: Boolean;
    var m_Mensagens: TObjectList<TMensagemLoteFatura_v2>;
    var m_TipoSelecaoCliente: Integer;
    var m_DiaInicioSelecao: Integer;
    var m_DiaFimSelecao: Integer;
    

    function getLoteFatura(): String;
    function getEstabelecimento(): TEstabelecimento;
    function getUsuario(): String;
    function getNumero(): String;
    function getEmissao(): TDate;
    function getDataCriacao(): TDate;
    function getClientes(): TObjectList<TCliente>;
    function getDataInicio(): TDate;
    function getDataFim(): TDate;
    function getPorEmissao(): Boolean;
    function getMensagens(): TObjectList<TMensagemLoteFatura_v2>;
    function getTipoSelecaoCliente(): Integer;
    function getDiaInicioSelecao(): Integer;
    function getDiaFimSelecao(): Integer;
    

    procedure setLoteFatura(const a_Value: String);
    procedure setEstabelecimento(const a_Value: TEstabelecimento);
    procedure setUsuario(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setEmissao(const a_Value: TDate);
    procedure setDataCriacao(const a_Value: TDate);
    procedure setClientes(const a_Value: TObjectList<TCliente>);
    procedure setDataInicio(const a_Value: TDate);
    procedure setDataFim(const a_Value: TDate);
    procedure setPorEmissao(const a_Value: Boolean);
    procedure setMensagens(const a_Value: TObjectList<TMensagemLoteFatura_v2>);
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
    

    [NasajonSerializeAttribute('lotefatura')]
    property lotefatura: String read getLoteFatura write setLoteFatura;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: TEstabelecimento read getEstabelecimento write setEstabelecimento;

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
    property mensagens: TObjectList<TMensagemLoteFatura_v2> read getMensagens write setMensagens;

    [NasajonSerializeAttribute('tiposelecaocliente')]
    property tiposelecaocliente: Integer read getTipoSelecaoCliente write setTipoSelecaoCliente;

    [NasajonSerializeAttribute('diainicioselecao')]
    property diainicioselecao: Integer read getDiaInicioSelecao write setDiaInicioSelecao;

    [NasajonSerializeAttribute('diafimselecao')]
    property diafimselecao: Integer read getDiaFimSelecao write setDiaFimSelecao;

    

end;

type TLoteFatura_v2Excluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_LoteFatura: String;
    

    function getLoteFatura(): String;
    

    procedure setLoteFatura(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lotefatura')]
    property lotefatura: String read getLoteFatura write setLoteFatura;

    

end;

	
implementation

  uses
      api.send;  

function TLoteFatura_v2Novo.getLoteFatura: String;
begin
  Result := Self.m_LoteFatura;
end;

procedure TLoteFatura_v2Novo.setLoteFatura(const a_Value: String);
begin
  Self.m_LoteFatura := a_Value;
end;

function TLoteFatura_v2Novo.getEstabelecimento: TEstabelecimento;
begin
  if not Assigned(Self.m_Estabelecimento)
    then Self.m_Estabelecimento := TEstabelecimento.Create();
  Result := Self.m_Estabelecimento;
end;

procedure TLoteFatura_v2Novo.setEstabelecimento(const a_Value: TEstabelecimento);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TLoteFatura_v2Novo.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TLoteFatura_v2Novo.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TLoteFatura_v2Novo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TLoteFatura_v2Novo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TLoteFatura_v2Novo.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TLoteFatura_v2Novo.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TLoteFatura_v2Novo.getDataCriacao: TDate;
begin
  Result := Self.m_DataCriacao;
end;

procedure TLoteFatura_v2Novo.setDataCriacao(const a_Value: TDate);
begin
  Self.m_DataCriacao := a_Value;
end;

function TLoteFatura_v2Novo.getClientes: TObjectList<TCliente>;
begin
  if not Assigned(Self.m_Clientes)
    then Self.m_Clientes := TObjectList<TCliente>.Create();
  Result := Self.m_Clientes;
end;

procedure TLoteFatura_v2Novo.setClientes(const a_Value: TObjectList<TCliente>);
begin
  Self.m_Clientes := a_Value;
end;

function TLoteFatura_v2Novo.getDataInicio: TDate;
begin
  Result := Self.m_DataInicio;
end;

procedure TLoteFatura_v2Novo.setDataInicio(const a_Value: TDate);
begin
  Self.m_DataInicio := a_Value;
end;

function TLoteFatura_v2Novo.getDataFim: TDate;
begin
  Result := Self.m_DataFim;
end;

procedure TLoteFatura_v2Novo.setDataFim(const a_Value: TDate);
begin
  Self.m_DataFim := a_Value;
end;

function TLoteFatura_v2Novo.getPorEmissao: Boolean;
begin
  Result := Self.m_PorEmissao;
end;

procedure TLoteFatura_v2Novo.setPorEmissao(const a_Value: Boolean);
begin
  Self.m_PorEmissao := a_Value;
end;

function TLoteFatura_v2Novo.getMensagens: TObjectList<TMensagemLoteFatura_v2>;
begin
  if not Assigned(Self.m_Mensagens)
    then Self.m_Mensagens := TObjectList<TMensagemLoteFatura_v2>.Create();
  Result := Self.m_Mensagens;
end;

procedure TLoteFatura_v2Novo.setMensagens(const a_Value: TObjectList<TMensagemLoteFatura_v2>);
begin
  Self.m_Mensagens := a_Value;
end;

function TLoteFatura_v2Novo.getTipoSelecaoCliente: Integer;
begin
  Result := Self.m_TipoSelecaoCliente;
end;

procedure TLoteFatura_v2Novo.setTipoSelecaoCliente(const a_Value: Integer);
begin
  Self.m_TipoSelecaoCliente := a_Value;
end;

function TLoteFatura_v2Novo.getDiaInicioSelecao: Integer;
begin
  Result := Self.m_DiaInicioSelecao;
end;

procedure TLoteFatura_v2Novo.setDiaInicioSelecao(const a_Value: Integer);
begin
  Self.m_DiaInicioSelecao := a_Value;
end;

function TLoteFatura_v2Novo.getDiaFimSelecao: Integer;
begin
  Result := Self.m_DiaFimSelecao;
end;

procedure TLoteFatura_v2Novo.setDiaFimSelecao(const a_Value: Integer);
begin
  Self.m_DiaFimSelecao := a_Value;
end;

destructor TLoteFatura_v2Novo.Destroy;
begin
  Self.Estabelecimento.Free();  Self.Clientes.Free();  Self.Mensagens.Free();
end;

function TLoteFatura_v2Novo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLoteFatura_v2Novo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLoteFatura_v2Novo.getNameAPI(): String;
begin
  Result := 'LoteFatura_v2Novo';
end;

function TLoteFatura_v2Novo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLoteFatura_v2Novo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLoteFatura_v2Excluir.getLoteFatura: String;
begin
  Result := Self.m_LoteFatura;
end;

procedure TLoteFatura_v2Excluir.setLoteFatura(const a_Value: String);
begin
  Self.m_LoteFatura := a_Value;
end;

destructor TLoteFatura_v2Excluir.Destroy;
begin

end;

function TLoteFatura_v2Excluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLoteFatura_v2Excluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLoteFatura_v2Excluir.getNameAPI(): String;
begin
  Result := 'LoteFatura_v2Excluir';
end;

function TLoteFatura_v2Excluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLoteFatura_v2Excluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
