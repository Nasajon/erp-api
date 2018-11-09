unit api.model.financas.DocumentoAjusteRateio;

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
	
  , api.model.financas.ItemRateioFinanceiro
  , System.Generics.Collections
	

	;

type TDocumentoAjusteRateioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Observacao: WideString;
    var m_Data: TDate;
    var m_DataCompetencia: TDate;
    var m_DataCriacao: TDate;
    var m_Origem: Integer;
    var m_NumeroDocumentoOrigem: String;
    var m_RequisicaoAlmoxarifado: String;
    var m_UsuarioCriador: String;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    var m_IDDocumentoRateado: String;
    var m_DevolucaoAlmoxarifado: String;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getObservacao(): WideString;
    function getData(): TDate;
    function getDataCompetencia(): TDate;
    function getDataCriacao(): TDate;
    function getOrigem(): Integer;
    function getNumeroDocumentoOrigem(): String;
    function getRequisicaoAlmoxarifado(): String;
    function getUsuarioCriador(): String;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    function getIDDocumentoRateado(): String;
    function getDevolucaoAlmoxarifado(): String;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setObservacao(const a_Value: WideString);
    procedure setData(const a_Value: TDate);
    procedure setDataCompetencia(const a_Value: TDate);
    procedure setDataCriacao(const a_Value: TDate);
    procedure setOrigem(const a_Value: Integer);
    procedure setNumeroDocumentoOrigem(const a_Value: String);
    procedure setRequisicaoAlmoxarifado(const a_Value: String);
    procedure setUsuarioCriador(const a_Value: String);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setIDDocumentoRateado(const a_Value: String);
    procedure setDevolucaoAlmoxarifado(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Identificador do documento
    /// </summary>
    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    /// <summary>
/// Estabelecimento de origem
    /// </summary>
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Código do documento
    /// </summary>
    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    /// <summary>
/// Descrição resumida do documento
    /// </summary>
    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Observações referente ao documento
    /// </summary>
    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getObservacao write setObservacao;

    /// <summary>
/// Data do documento
    /// </summary>
    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    /// <summary>
/// Data de Competência do documento
    /// </summary>
    [NasajonSerializeAttribute('datacompetencia')]
    property datacompetencia: TDate read getDataCompetencia write setDataCompetencia;

    /// <summary>
/// Data da criação do documento
    /// </summary>
    [NasajonSerializeAttribute('datacriacao')]
    property datacriacao: TDate read getDataCriacao write setDataCriacao;

    /// <summary>
/// Indica a origem do documento de ajuste. 0-Manual, 1-Requisição de Almoxarifado; 2 - Devolução ao Almoxarifado
    /// </summary>
    [NasajonSerializeAttribute('origem')]
    property origem: Integer read getOrigem write setOrigem;

    /// <summary>
/// Número do documento que deu origem ao ajuste
    /// </summary>
    [NasajonSerializeAttribute('numerodocumentoorigem')]
    property numerodocumentoorigem: String read getNumeroDocumentoOrigem write setNumeroDocumentoOrigem;

    /// <summary>
/// Identificador da requisição de almoxarifado que deu origem ao documento
    /// </summary>
    [NasajonSerializeAttribute('requisicaoalmoxarifado')]
    property requisicaoalmoxarifado: String read getRequisicaoAlmoxarifado write setRequisicaoAlmoxarifado;

    /// <summary>
/// Usuário que esta criando o documento
    /// </summary>
    [NasajonSerializeAttribute('usuariocriador')]
    property usuariocriador: String read getUsuarioCriador write setUsuarioCriador;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira e centro de custo.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    [NasajonSerializeAttribute('iddocumentorateado')]
    property iddocumentorateado: String read getIDDocumentoRateado write setIDDocumentoRateado;

    /// <summary>
/// Identificador da devolução ao almoxarifado que deu origem ao documento
    /// </summary>
    [NasajonSerializeAttribute('devolucaoalmoxarifado')]
    property devolucaoalmoxarifado: String read getDevolucaoAlmoxarifado write setDevolucaoAlmoxarifado;

    

end;

type TDocumentoAjusteRateioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Observacao: WideString;
    var m_Data: TDate;
    var m_DataCompetencia: TDate;
    var m_DataCriacao: TDate;
    var m_Origem: Integer;
    var m_NumeroDocumentoOrigem: String;
    var m_RequisicaoAlmoxarifado: String;
    var m_UsuarioCriador: String;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    var m_IDDocumentoRateado: String;
    var m_DevolucaoAlmoxarifado: String;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getObservacao(): WideString;
    function getData(): TDate;
    function getDataCompetencia(): TDate;
    function getDataCriacao(): TDate;
    function getOrigem(): Integer;
    function getNumeroDocumentoOrigem(): String;
    function getRequisicaoAlmoxarifado(): String;
    function getUsuarioCriador(): String;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    function getIDDocumentoRateado(): String;
    function getDevolucaoAlmoxarifado(): String;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setObservacao(const a_Value: WideString);
    procedure setData(const a_Value: TDate);
    procedure setDataCompetencia(const a_Value: TDate);
    procedure setDataCriacao(const a_Value: TDate);
    procedure setOrigem(const a_Value: Integer);
    procedure setNumeroDocumentoOrigem(const a_Value: String);
    procedure setRequisicaoAlmoxarifado(const a_Value: String);
    procedure setUsuarioCriador(const a_Value: String);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setIDDocumentoRateado(const a_Value: String);
    procedure setDevolucaoAlmoxarifado(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Identificador do documento
    /// </summary>
    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    /// <summary>
/// Estabelecimento de origem
    /// </summary>
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Código do documento
    /// </summary>
    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    /// <summary>
/// Descrição resumida do documento
    /// </summary>
    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Observações referente ao documento
    /// </summary>
    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getObservacao write setObservacao;

    /// <summary>
/// Data do documento
    /// </summary>
    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    /// <summary>
/// Data de Competência do documento
    /// </summary>
    [NasajonSerializeAttribute('datacompetencia')]
    property datacompetencia: TDate read getDataCompetencia write setDataCompetencia;

    /// <summary>
/// Data da criação do documento
    /// </summary>
    [NasajonSerializeAttribute('datacriacao')]
    property datacriacao: TDate read getDataCriacao write setDataCriacao;

    /// <summary>
/// Indica a origem do documento de ajuste. 0-Manual, 1-Requisição de Almoxarifado; 2 - Devolução ao Almoxarifado
    /// </summary>
    [NasajonSerializeAttribute('origem')]
    property origem: Integer read getOrigem write setOrigem;

    /// <summary>
/// Número do documento que deu origem ao ajuste
    /// </summary>
    [NasajonSerializeAttribute('numerodocumentoorigem')]
    property numerodocumentoorigem: String read getNumeroDocumentoOrigem write setNumeroDocumentoOrigem;

    /// <summary>
/// Identificador da requisição de almoxarifado que deu origem ao documento
    /// </summary>
    [NasajonSerializeAttribute('requisicaoalmoxarifado')]
    property requisicaoalmoxarifado: String read getRequisicaoAlmoxarifado write setRequisicaoAlmoxarifado;

    /// <summary>
/// Usuário que esta criando o documento
    /// </summary>
    [NasajonSerializeAttribute('usuariocriador')]
    property usuariocriador: String read getUsuarioCriador write setUsuarioCriador;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira e centro de custo.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    [NasajonSerializeAttribute('iddocumentorateado')]
    property iddocumentorateado: String read getIDDocumentoRateado write setIDDocumentoRateado;

    /// <summary>
/// Identificador da devolução ao almoxarifado que deu origem ao documento
    /// </summary>
    [NasajonSerializeAttribute('devolucaoalmoxarifado')]
    property devolucaoalmoxarifado: String read getDevolucaoAlmoxarifado write setDevolucaoAlmoxarifado;

    

end;

type TDocumentoAjusteRateioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TDocumentoAjusteRateioNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TDocumentoAjusteRateioNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TDocumentoAjusteRateioNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TDocumentoAjusteRateioNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TDocumentoAjusteRateioNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TDocumentoAjusteRateioNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TDocumentoAjusteRateioNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TDocumentoAjusteRateioNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TDocumentoAjusteRateioNovo.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TDocumentoAjusteRateioNovo.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

function TDocumentoAjusteRateioNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TDocumentoAjusteRateioNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TDocumentoAjusteRateioNovo.getDataCompetencia: TDate;
begin
  Result := Self.m_DataCompetencia;
end;

procedure TDocumentoAjusteRateioNovo.setDataCompetencia(const a_Value: TDate);
begin
  Self.m_DataCompetencia := a_Value;
end;

function TDocumentoAjusteRateioNovo.getDataCriacao: TDate;
begin
  Result := Self.m_DataCriacao;
end;

procedure TDocumentoAjusteRateioNovo.setDataCriacao(const a_Value: TDate);
begin
  Self.m_DataCriacao := a_Value;
end;

function TDocumentoAjusteRateioNovo.getOrigem: Integer;
begin
  Result := Self.m_Origem;
end;

procedure TDocumentoAjusteRateioNovo.setOrigem(const a_Value: Integer);
begin
  Self.m_Origem := a_Value;
end;

function TDocumentoAjusteRateioNovo.getNumeroDocumentoOrigem: String;
begin
  Result := Self.m_NumeroDocumentoOrigem;
end;

procedure TDocumentoAjusteRateioNovo.setNumeroDocumentoOrigem(const a_Value: String);
begin
  Self.m_NumeroDocumentoOrigem := a_Value;
end;

function TDocumentoAjusteRateioNovo.getRequisicaoAlmoxarifado: String;
begin
  Result := Self.m_RequisicaoAlmoxarifado;
end;

procedure TDocumentoAjusteRateioNovo.setRequisicaoAlmoxarifado(const a_Value: String);
begin
  Self.m_RequisicaoAlmoxarifado := a_Value;
end;

function TDocumentoAjusteRateioNovo.getUsuarioCriador: String;
begin
  Result := Self.m_UsuarioCriador;
end;

procedure TDocumentoAjusteRateioNovo.setUsuarioCriador(const a_Value: String);
begin
  Self.m_UsuarioCriador := a_Value;
end;

function TDocumentoAjusteRateioNovo.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TDocumentoAjusteRateioNovo.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TDocumentoAjusteRateioNovo.getIDDocumentoRateado: String;
begin
  Result := Self.m_IDDocumentoRateado;
end;

procedure TDocumentoAjusteRateioNovo.setIDDocumentoRateado(const a_Value: String);
begin
  Self.m_IDDocumentoRateado := a_Value;
end;

function TDocumentoAjusteRateioNovo.getDevolucaoAlmoxarifado: String;
begin
  Result := Self.m_DevolucaoAlmoxarifado;
end;

procedure TDocumentoAjusteRateioNovo.setDevolucaoAlmoxarifado(const a_Value: String);
begin
  Self.m_DevolucaoAlmoxarifado := a_Value;
end;

destructor TDocumentoAjusteRateioNovo.Destroy;
begin
  Self.RateioFinanceiro.Free();
end;

function TDocumentoAjusteRateioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocumentoAjusteRateioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocumentoAjusteRateioNovo.getNameAPI(): String;
begin
  Result := 'DocumentoAjusteRateioNovo';
end;

function TDocumentoAjusteRateioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocumentoAjusteRateioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDocumentoAjusteRateioAlterar.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TDocumentoAjusteRateioAlterar.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TDocumentoAjusteRateioAlterar.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TDocumentoAjusteRateioAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TDocumentoAjusteRateioAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TDocumentoAjusteRateioAlterar.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TDocumentoAjusteRateioAlterar.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getDataCompetencia: TDate;
begin
  Result := Self.m_DataCompetencia;
end;

procedure TDocumentoAjusteRateioAlterar.setDataCompetencia(const a_Value: TDate);
begin
  Self.m_DataCompetencia := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getDataCriacao: TDate;
begin
  Result := Self.m_DataCriacao;
end;

procedure TDocumentoAjusteRateioAlterar.setDataCriacao(const a_Value: TDate);
begin
  Self.m_DataCriacao := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getOrigem: Integer;
begin
  Result := Self.m_Origem;
end;

procedure TDocumentoAjusteRateioAlterar.setOrigem(const a_Value: Integer);
begin
  Self.m_Origem := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getNumeroDocumentoOrigem: String;
begin
  Result := Self.m_NumeroDocumentoOrigem;
end;

procedure TDocumentoAjusteRateioAlterar.setNumeroDocumentoOrigem(const a_Value: String);
begin
  Self.m_NumeroDocumentoOrigem := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getRequisicaoAlmoxarifado: String;
begin
  Result := Self.m_RequisicaoAlmoxarifado;
end;

procedure TDocumentoAjusteRateioAlterar.setRequisicaoAlmoxarifado(const a_Value: String);
begin
  Self.m_RequisicaoAlmoxarifado := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getUsuarioCriador: String;
begin
  Result := Self.m_UsuarioCriador;
end;

procedure TDocumentoAjusteRateioAlterar.setUsuarioCriador(const a_Value: String);
begin
  Self.m_UsuarioCriador := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TDocumentoAjusteRateioAlterar.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getIDDocumentoRateado: String;
begin
  Result := Self.m_IDDocumentoRateado;
end;

procedure TDocumentoAjusteRateioAlterar.setIDDocumentoRateado(const a_Value: String);
begin
  Self.m_IDDocumentoRateado := a_Value;
end;

function TDocumentoAjusteRateioAlterar.getDevolucaoAlmoxarifado: String;
begin
  Result := Self.m_DevolucaoAlmoxarifado;
end;

procedure TDocumentoAjusteRateioAlterar.setDevolucaoAlmoxarifado(const a_Value: String);
begin
  Self.m_DevolucaoAlmoxarifado := a_Value;
end;

destructor TDocumentoAjusteRateioAlterar.Destroy;
begin
  Self.RateioFinanceiro.Free();
end;

function TDocumentoAjusteRateioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocumentoAjusteRateioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocumentoAjusteRateioAlterar.getNameAPI(): String;
begin
  Result := 'DocumentoAjusteRateioAlterar';
end;

function TDocumentoAjusteRateioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocumentoAjusteRateioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDocumentoAjusteRateioExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TDocumentoAjusteRateioExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TDocumentoAjusteRateioExcluir.Destroy;
begin

end;

function TDocumentoAjusteRateioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocumentoAjusteRateioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocumentoAjusteRateioExcluir.getNameAPI(): String;
begin
  Result := 'DocumentoAjusteRateioExcluir';
end;

function TDocumentoAjusteRateioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocumentoAjusteRateioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
