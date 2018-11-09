unit api.model.financas.Fatura;

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
	
  , api.model.financas.ItemFatura
  , System.Generics.Collections
  , api.model.financas.FormaPagamentoFatura
  , api.model.financas.ParcelaFormaPagamentoFatura
	

	;

type TFaturaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Cliente: String;
    var m_Usuario: String;
    var m_Numero: String;
    var m_Emissao: TDate;
    var m_Processado: Boolean;
    var m_ItensFaturas: TObjectList<TItemFaturaNovo>;
    var m_FormasPagamentosFaturas: TObjectList<TFormaPagamentoFaturaNovo>;
    var m_Parcelas: TObjectList<TParcelaFormaPagamentoFaturaNovo>;
    var m_Lote: String;
    var m_PercentualDesconto: Currency;
    var m_Desconto: Currency;
    var m_ModoExibicaoDesconto: String;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getCliente(): String;
    function getUsuario(): String;
    function getNumero(): String;
    function getEmissao(): TDate;
    function getProcessado(): Boolean;
    function getItensFaturas(): TObjectList<TItemFaturaNovo>;
    function getFormasPagamentosFaturas(): TObjectList<TFormaPagamentoFaturaNovo>;
    function getParcelas(): TObjectList<TParcelaFormaPagamentoFaturaNovo>;
    function getLote(): String;
    function getPercentualDesconto(): Currency;
    function getDesconto(): Currency;
    function getModoExibicaoDesconto(): String;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setCliente(const a_Value: String);
    procedure setUsuario(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setEmissao(const a_Value: TDate);
    procedure setProcessado(const a_Value: Boolean);
    procedure setItensFaturas(const a_Value: TObjectList<TItemFaturaNovo>);
    procedure setFormasPagamentosFaturas(const a_Value: TObjectList<TFormaPagamentoFaturaNovo>);
    procedure setParcelas(const a_Value: TObjectList<TParcelaFormaPagamentoFaturaNovo>);
    procedure setLote(const a_Value: String);
    procedure setPercentualDesconto(const a_Value: Currency);
    procedure setDesconto(const a_Value: Currency);
    procedure setModoExibicaoDesconto(const a_Value: String);
    

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

    [NasajonSerializeAttribute('cliente')]
    property cliente: String read getCliente write setCliente;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getEmissao write setEmissao;

    [NasajonSerializeAttribute('processado')]
    property processado: Boolean read getProcessado write setProcessado;

    [NasajonSerializeAttribute('itensfaturas')]
    property itensfaturas: TObjectList<TItemFaturaNovo> read getItensFaturas write setItensFaturas;

    [NasajonSerializeAttribute('formaspagamentosfaturas')]
    property formaspagamentosfaturas: TObjectList<TFormaPagamentoFaturaNovo> read getFormasPagamentosFaturas write setFormasPagamentosFaturas;

    [NasajonSerializeAttribute('parcelas')]
    property parcelas: TObjectList<TParcelaFormaPagamentoFaturaNovo> read getParcelas write setParcelas;

    [NasajonSerializeAttribute('lote')]
    property lote: String read getLote write setLote;

    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getDesconto write setDesconto;

    [NasajonSerializeAttribute('modoexibicaodesconto')]
    property modoexibicaodesconto: String read getModoExibicaoDesconto write setModoExibicaoDesconto;

    

end;

type TFaturaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Cliente: String;
    var m_Numero: String;
    var m_Emissao: TDate;
    var m_FormasPagamentosFaturas: TObjectList<TFormaPagamentoFaturaNovo>;
    var m_Parcelas: TObjectList<TParcelaFormaPagamentoFaturaNovo>;
    var m_PercentualDesconto: Currency;
    var m_Desconto: Currency;
    var m_ModoExibicaoDesconto: String;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getCliente(): String;
    function getNumero(): String;
    function getEmissao(): TDate;
    function getFormasPagamentosFaturas(): TObjectList<TFormaPagamentoFaturaNovo>;
    function getParcelas(): TObjectList<TParcelaFormaPagamentoFaturaNovo>;
    function getPercentualDesconto(): Currency;
    function getDesconto(): Currency;
    function getModoExibicaoDesconto(): String;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setCliente(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setEmissao(const a_Value: TDate);
    procedure setFormasPagamentosFaturas(const a_Value: TObjectList<TFormaPagamentoFaturaNovo>);
    procedure setParcelas(const a_Value: TObjectList<TParcelaFormaPagamentoFaturaNovo>);
    procedure setPercentualDesconto(const a_Value: Currency);
    procedure setDesconto(const a_Value: Currency);
    procedure setModoExibicaoDesconto(const a_Value: String);
    

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

    [NasajonSerializeAttribute('cliente')]
    property cliente: String read getCliente write setCliente;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getEmissao write setEmissao;

    [NasajonSerializeAttribute('formaspagamentosfaturas')]
    property formaspagamentosfaturas: TObjectList<TFormaPagamentoFaturaNovo> read getFormasPagamentosFaturas write setFormasPagamentosFaturas;

    [NasajonSerializeAttribute('parcelas')]
    property parcelas: TObjectList<TParcelaFormaPagamentoFaturaNovo> read getParcelas write setParcelas;

    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getDesconto write setDesconto;

    [NasajonSerializeAttribute('modoexibicaodesconto')]
    property modoexibicaodesconto: String read getModoExibicaoDesconto write setModoExibicaoDesconto;

    

end;

type TFaturaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TFaturaNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TFaturaNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TFaturaNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TFaturaNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TFaturaNovo.getCliente: String;
begin
  Result := Self.m_Cliente;
end;

procedure TFaturaNovo.setCliente(const a_Value: String);
begin
  Self.m_Cliente := a_Value;
end;

function TFaturaNovo.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TFaturaNovo.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TFaturaNovo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFaturaNovo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFaturaNovo.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TFaturaNovo.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TFaturaNovo.getProcessado: Boolean;
begin
  Result := Self.m_Processado;
end;

procedure TFaturaNovo.setProcessado(const a_Value: Boolean);
begin
  Self.m_Processado := a_Value;
end;

function TFaturaNovo.getItensFaturas: TObjectList<TItemFaturaNovo>;
begin
  if not Assigned(Self.m_ItensFaturas)
    then Self.m_ItensFaturas := TObjectList<TItemFaturaNovo>.Create();
  Result := Self.m_ItensFaturas;
end;

procedure TFaturaNovo.setItensFaturas(const a_Value: TObjectList<TItemFaturaNovo>);
begin
  Self.m_ItensFaturas := a_Value;
end;

function TFaturaNovo.getFormasPagamentosFaturas: TObjectList<TFormaPagamentoFaturaNovo>;
begin
  if not Assigned(Self.m_FormasPagamentosFaturas)
    then Self.m_FormasPagamentosFaturas := TObjectList<TFormaPagamentoFaturaNovo>.Create();
  Result := Self.m_FormasPagamentosFaturas;
end;

procedure TFaturaNovo.setFormasPagamentosFaturas(const a_Value: TObjectList<TFormaPagamentoFaturaNovo>);
begin
  Self.m_FormasPagamentosFaturas := a_Value;
end;

function TFaturaNovo.getParcelas: TObjectList<TParcelaFormaPagamentoFaturaNovo>;
begin
  if not Assigned(Self.m_Parcelas)
    then Self.m_Parcelas := TObjectList<TParcelaFormaPagamentoFaturaNovo>.Create();
  Result := Self.m_Parcelas;
end;

procedure TFaturaNovo.setParcelas(const a_Value: TObjectList<TParcelaFormaPagamentoFaturaNovo>);
begin
  Self.m_Parcelas := a_Value;
end;

function TFaturaNovo.getLote: String;
begin
  Result := Self.m_Lote;
end;

procedure TFaturaNovo.setLote(const a_Value: String);
begin
  Self.m_Lote := a_Value;
end;

function TFaturaNovo.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TFaturaNovo.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TFaturaNovo.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TFaturaNovo.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TFaturaNovo.getModoExibicaoDesconto: String;
begin
  Result := Self.m_ModoExibicaoDesconto;
end;

procedure TFaturaNovo.setModoExibicaoDesconto(const a_Value: String);
begin
  Self.m_ModoExibicaoDesconto := a_Value;
end;

destructor TFaturaNovo.Destroy;
begin
  Self.ItensFaturas.Free();  Self.FormasPagamentosFaturas.Free();  Self.Parcelas.Free();
end;

function TFaturaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFaturaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFaturaNovo.getNameAPI(): String;
begin
  Result := 'FaturaNovo';
end;

function TFaturaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFaturaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFaturaAlterar.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TFaturaAlterar.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TFaturaAlterar.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TFaturaAlterar.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TFaturaAlterar.getCliente: String;
begin
  Result := Self.m_Cliente;
end;

procedure TFaturaAlterar.setCliente(const a_Value: String);
begin
  Self.m_Cliente := a_Value;
end;

function TFaturaAlterar.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFaturaAlterar.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFaturaAlterar.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TFaturaAlterar.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TFaturaAlterar.getFormasPagamentosFaturas: TObjectList<TFormaPagamentoFaturaNovo>;
begin
  if not Assigned(Self.m_FormasPagamentosFaturas)
    then Self.m_FormasPagamentosFaturas := TObjectList<TFormaPagamentoFaturaNovo>.Create();
  Result := Self.m_FormasPagamentosFaturas;
end;

procedure TFaturaAlterar.setFormasPagamentosFaturas(const a_Value: TObjectList<TFormaPagamentoFaturaNovo>);
begin
  Self.m_FormasPagamentosFaturas := a_Value;
end;

function TFaturaAlterar.getParcelas: TObjectList<TParcelaFormaPagamentoFaturaNovo>;
begin
  if not Assigned(Self.m_Parcelas)
    then Self.m_Parcelas := TObjectList<TParcelaFormaPagamentoFaturaNovo>.Create();
  Result := Self.m_Parcelas;
end;

procedure TFaturaAlterar.setParcelas(const a_Value: TObjectList<TParcelaFormaPagamentoFaturaNovo>);
begin
  Self.m_Parcelas := a_Value;
end;

function TFaturaAlterar.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TFaturaAlterar.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TFaturaAlterar.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TFaturaAlterar.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TFaturaAlterar.getModoExibicaoDesconto: String;
begin
  Result := Self.m_ModoExibicaoDesconto;
end;

procedure TFaturaAlterar.setModoExibicaoDesconto(const a_Value: String);
begin
  Self.m_ModoExibicaoDesconto := a_Value;
end;

destructor TFaturaAlterar.Destroy;
begin
  Self.FormasPagamentosFaturas.Free();  Self.Parcelas.Free();
end;

function TFaturaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFaturaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFaturaAlterar.getNameAPI(): String;
begin
  Result := 'FaturaAlterar';
end;

function TFaturaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFaturaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFaturaExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TFaturaExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TFaturaExcluir.Destroy;
begin

end;

function TFaturaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFaturaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFaturaExcluir.getNameAPI(): String;
begin
  Result := 'FaturaExcluir';
end;

function TFaturaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFaturaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
