unit api.model.financas.Fatura_v2;

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
  , api.model.ns.cliente
  , api.model.financas.ItemFatura_v2
  , System.Generics.Collections
  , api.model.ns.pagamento
	

	;

type TFatura_v2Novo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Fatura: String;
    var m_Estabelecimento: TEstabelecimento;
    var m_Cliente: TClienteNovo;
    var m_Usuario: String;
    var m_Numero: String;
    var m_Emissao: TDate;
    var m_Processado: Boolean;
    var m_ItensFaturas: TObjectList<TItemFatura_v2>;
    var m_Pagamentos: TObjectList<TPagamento>;
    var m_Lote: String;
    var m_PercentualDesconto: Currency;
    var m_Desconto: Currency;
    var m_ModoExibicaoDesconto: String;
    

    function getFatura(): String;
    function getEstabelecimento(): TEstabelecimento;
    function getCliente(): TClienteNovo;
    function getUsuario(): String;
    function getNumero(): String;
    function getEmissao(): TDate;
    function getProcessado(): Boolean;
    function getItensFaturas(): TObjectList<TItemFatura_v2>;
    function getPagamentos(): TObjectList<TPagamento>;
    function getLote(): String;
    function getPercentualDesconto(): Currency;
    function getDesconto(): Currency;
    function getModoExibicaoDesconto(): String;
    

    procedure setFatura(const a_Value: String);
    procedure setEstabelecimento(const a_Value: TEstabelecimento);
    procedure setCliente(const a_Value: TClienteNovo);
    procedure setUsuario(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setEmissao(const a_Value: TDate);
    procedure setProcessado(const a_Value: Boolean);
    procedure setItensFaturas(const a_Value: TObjectList<TItemFatura_v2>);
    procedure setPagamentos(const a_Value: TObjectList<TPagamento>);
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
    

    [NasajonSerializeAttribute('fatura')]
    property fatura: String read getFatura write setFatura;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: TEstabelecimento read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('cliente')]
    property cliente: TClienteNovo read getCliente write setCliente;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getEmissao write setEmissao;

    [NasajonSerializeAttribute('processado')]
    property processado: Boolean read getProcessado write setProcessado;

    [NasajonSerializeAttribute('itensfaturas')]
    property itensfaturas: TObjectList<TItemFatura_v2> read getItensFaturas write setItensFaturas;

    [NasajonSerializeAttribute('pagamentos')]
    property pagamentos: TObjectList<TPagamento> read getPagamentos write setPagamentos;

    [NasajonSerializeAttribute('lote')]
    property lote: String read getLote write setLote;

    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getDesconto write setDesconto;

    [NasajonSerializeAttribute('modoexibicaodesconto')]
    property modoexibicaodesconto: String read getModoExibicaoDesconto write setModoExibicaoDesconto;

    

end;

type TFatura_v2Alterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Fatura: String;
    var m_Estabelecimento: TEstabelecimento;
    var m_Cliente: TClienteNovo;
    var m_Usuario: String;
    var m_Numero: String;
    var m_Emissao: TDate;
    var m_Processado: Boolean;
    var m_ItensFaturas: TObjectList<TItemFatura_v2>;
    var m_Pagamentos: TObjectList<TPagamento>;
    var m_Lote: String;
    var m_PercentualDesconto: Currency;
    var m_Desconto: Currency;
    var m_ModoExibicaoDesconto: String;
    

    function getFatura(): String;
    function getEstabelecimento(): TEstabelecimento;
    function getCliente(): TClienteNovo;
    function getUsuario(): String;
    function getNumero(): String;
    function getEmissao(): TDate;
    function getProcessado(): Boolean;
    function getItensFaturas(): TObjectList<TItemFatura_v2>;
    function getPagamentos(): TObjectList<TPagamento>;
    function getLote(): String;
    function getPercentualDesconto(): Currency;
    function getDesconto(): Currency;
    function getModoExibicaoDesconto(): String;
    

    procedure setFatura(const a_Value: String);
    procedure setEstabelecimento(const a_Value: TEstabelecimento);
    procedure setCliente(const a_Value: TClienteNovo);
    procedure setUsuario(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setEmissao(const a_Value: TDate);
    procedure setProcessado(const a_Value: Boolean);
    procedure setItensFaturas(const a_Value: TObjectList<TItemFatura_v2>);
    procedure setPagamentos(const a_Value: TObjectList<TPagamento>);
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
    

    [NasajonSerializeAttribute('fatura')]
    property fatura: String read getFatura write setFatura;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: TEstabelecimento read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('cliente')]
    property cliente: TClienteNovo read getCliente write setCliente;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getEmissao write setEmissao;

    [NasajonSerializeAttribute('processado')]
    property processado: Boolean read getProcessado write setProcessado;

    [NasajonSerializeAttribute('itensfaturas')]
    property itensfaturas: TObjectList<TItemFatura_v2> read getItensFaturas write setItensFaturas;

    [NasajonSerializeAttribute('pagamentos')]
    property pagamentos: TObjectList<TPagamento> read getPagamentos write setPagamentos;

    [NasajonSerializeAttribute('lote')]
    property lote: String read getLote write setLote;

    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getDesconto write setDesconto;

    [NasajonSerializeAttribute('modoexibicaodesconto')]
    property modoexibicaodesconto: String read getModoExibicaoDesconto write setModoExibicaoDesconto;

    

end;

type TFatura_v2Excluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Fatura: String;
    var m_Numero: String;
    

    function getFatura(): String;
    function getNumero(): String;
    

    procedure setFatura(const a_Value: String);
    procedure setNumero(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('fatura')]
    property fatura: String read getFatura write setFatura;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    

end;

	
implementation

  uses
      api.send;  

function TFatura_v2Novo.getFatura: String;
begin
  Result := Self.m_Fatura;
end;

procedure TFatura_v2Novo.setFatura(const a_Value: String);
begin
  Self.m_Fatura := a_Value;
end;

function TFatura_v2Novo.getEstabelecimento: TEstabelecimento;
begin
  if not Assigned(Self.m_Estabelecimento)
    then Self.m_Estabelecimento := TEstabelecimento.Create();
  Result := Self.m_Estabelecimento;
end;

procedure TFatura_v2Novo.setEstabelecimento(const a_Value: TEstabelecimento);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TFatura_v2Novo.getCliente: TClienteNovo;
begin
  if not Assigned(Self.m_Cliente)
    then Self.m_Cliente := TClienteNovo.Create();
  Result := Self.m_Cliente;
end;

procedure TFatura_v2Novo.setCliente(const a_Value: TClienteNovo);
begin
  Self.m_Cliente := a_Value;
end;

function TFatura_v2Novo.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TFatura_v2Novo.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TFatura_v2Novo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFatura_v2Novo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFatura_v2Novo.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TFatura_v2Novo.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TFatura_v2Novo.getProcessado: Boolean;
begin
  Result := Self.m_Processado;
end;

procedure TFatura_v2Novo.setProcessado(const a_Value: Boolean);
begin
  Self.m_Processado := a_Value;
end;

function TFatura_v2Novo.getItensFaturas: TObjectList<TItemFatura_v2>;
begin
  if not Assigned(Self.m_ItensFaturas)
    then Self.m_ItensFaturas := TObjectList<TItemFatura_v2>.Create();
  Result := Self.m_ItensFaturas;
end;

procedure TFatura_v2Novo.setItensFaturas(const a_Value: TObjectList<TItemFatura_v2>);
begin
  Self.m_ItensFaturas := a_Value;
end;

function TFatura_v2Novo.getPagamentos: TObjectList<TPagamento>;
begin
  if not Assigned(Self.m_Pagamentos)
    then Self.m_Pagamentos := TObjectList<TPagamento>.Create();
  Result := Self.m_Pagamentos;
end;

procedure TFatura_v2Novo.setPagamentos(const a_Value: TObjectList<TPagamento>);
begin
  Self.m_Pagamentos := a_Value;
end;

function TFatura_v2Novo.getLote: String;
begin
  Result := Self.m_Lote;
end;

procedure TFatura_v2Novo.setLote(const a_Value: String);
begin
  Self.m_Lote := a_Value;
end;

function TFatura_v2Novo.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TFatura_v2Novo.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TFatura_v2Novo.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TFatura_v2Novo.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TFatura_v2Novo.getModoExibicaoDesconto: String;
begin
  Result := Self.m_ModoExibicaoDesconto;
end;

procedure TFatura_v2Novo.setModoExibicaoDesconto(const a_Value: String);
begin
  Self.m_ModoExibicaoDesconto := a_Value;
end;

destructor TFatura_v2Novo.Destroy;
begin
  Self.Estabelecimento.Free();  Self.Cliente.Free();  Self.ItensFaturas.Free();  Self.Pagamentos.Free();
end;

function TFatura_v2Novo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFatura_v2Novo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFatura_v2Novo.getNameAPI(): String;
begin
  Result := 'Fatura_v2Novo';
end;

function TFatura_v2Novo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFatura_v2Novo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFatura_v2Alterar.getFatura: String;
begin
  Result := Self.m_Fatura;
end;

procedure TFatura_v2Alterar.setFatura(const a_Value: String);
begin
  Self.m_Fatura := a_Value;
end;

function TFatura_v2Alterar.getEstabelecimento: TEstabelecimento;
begin
  if not Assigned(Self.m_Estabelecimento)
    then Self.m_Estabelecimento := TEstabelecimento.Create();
  Result := Self.m_Estabelecimento;
end;

procedure TFatura_v2Alterar.setEstabelecimento(const a_Value: TEstabelecimento);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TFatura_v2Alterar.getCliente: TClienteNovo;
begin
  if not Assigned(Self.m_Cliente)
    then Self.m_Cliente := TClienteNovo.Create();
  Result := Self.m_Cliente;
end;

procedure TFatura_v2Alterar.setCliente(const a_Value: TClienteNovo);
begin
  Self.m_Cliente := a_Value;
end;

function TFatura_v2Alterar.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TFatura_v2Alterar.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TFatura_v2Alterar.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFatura_v2Alterar.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFatura_v2Alterar.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TFatura_v2Alterar.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TFatura_v2Alterar.getProcessado: Boolean;
begin
  Result := Self.m_Processado;
end;

procedure TFatura_v2Alterar.setProcessado(const a_Value: Boolean);
begin
  Self.m_Processado := a_Value;
end;

function TFatura_v2Alterar.getItensFaturas: TObjectList<TItemFatura_v2>;
begin
  if not Assigned(Self.m_ItensFaturas)
    then Self.m_ItensFaturas := TObjectList<TItemFatura_v2>.Create();
  Result := Self.m_ItensFaturas;
end;

procedure TFatura_v2Alterar.setItensFaturas(const a_Value: TObjectList<TItemFatura_v2>);
begin
  Self.m_ItensFaturas := a_Value;
end;

function TFatura_v2Alterar.getPagamentos: TObjectList<TPagamento>;
begin
  if not Assigned(Self.m_Pagamentos)
    then Self.m_Pagamentos := TObjectList<TPagamento>.Create();
  Result := Self.m_Pagamentos;
end;

procedure TFatura_v2Alterar.setPagamentos(const a_Value: TObjectList<TPagamento>);
begin
  Self.m_Pagamentos := a_Value;
end;

function TFatura_v2Alterar.getLote: String;
begin
  Result := Self.m_Lote;
end;

procedure TFatura_v2Alterar.setLote(const a_Value: String);
begin
  Self.m_Lote := a_Value;
end;

function TFatura_v2Alterar.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TFatura_v2Alterar.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TFatura_v2Alterar.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TFatura_v2Alterar.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TFatura_v2Alterar.getModoExibicaoDesconto: String;
begin
  Result := Self.m_ModoExibicaoDesconto;
end;

procedure TFatura_v2Alterar.setModoExibicaoDesconto(const a_Value: String);
begin
  Self.m_ModoExibicaoDesconto := a_Value;
end;

destructor TFatura_v2Alterar.Destroy;
begin
  Self.Estabelecimento.Free();  Self.Cliente.Free();  Self.ItensFaturas.Free();  Self.Pagamentos.Free();
end;

function TFatura_v2Alterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFatura_v2Alterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFatura_v2Alterar.getNameAPI(): String;
begin
  Result := 'Fatura_v2Alterar';
end;

function TFatura_v2Alterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFatura_v2Alterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFatura_v2Excluir.getFatura: String;
begin
  Result := Self.m_Fatura;
end;

procedure TFatura_v2Excluir.setFatura(const a_Value: String);
begin
  Self.m_Fatura := a_Value;
end;

function TFatura_v2Excluir.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFatura_v2Excluir.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

destructor TFatura_v2Excluir.Destroy;
begin

end;

function TFatura_v2Excluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFatura_v2Excluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFatura_v2Excluir.getNameAPI(): String;
begin
  Result := 'Fatura_v2Excluir';
end;

function TFatura_v2Excluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFatura_v2Excluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
