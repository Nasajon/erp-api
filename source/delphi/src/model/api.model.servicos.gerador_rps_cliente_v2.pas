unit api.model.servicos.gerador_rps_cliente_v2;

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
	
  , api.model.servicos.gerador_rps_item_faturamento
  , System.Generics.Collections
  , api.model.ns.pagamentosemparcela
  , api.model.ns.parcela
  , api.model.financas.ItemRateioFinanceiro
	

	;

type Tgerador_rps_cliente_v2 = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_itens_faturamento: TObjectList<tgerador_rps_item_faturamento>;
    var m_pagamentos: TObjectList<tpagamentosemparcela>;
    var m_parcelas: TObjectList<tparcela>;
    var m_rateios: TObjectList<TItemRateioFinanceiro>;
    

    function getid(): String;
    function getitens_faturamento(): TObjectList<tgerador_rps_item_faturamento>;
    function getpagamentos(): TObjectList<tpagamentosemparcela>;
    function getparcelas(): TObjectList<tparcela>;
    function getrateios(): TObjectList<TItemRateioFinanceiro>;
    

    procedure setid(const a_Value: String);
    procedure setitens_faturamento(const a_Value: TObjectList<tgerador_rps_item_faturamento>);
    procedure setpagamentos(const a_Value: TObjectList<tpagamentosemparcela>);
    procedure setparcelas(const a_Value: TObjectList<tparcela>);
    procedure setrateios(const a_Value: TObjectList<TItemRateioFinanceiro>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Identificador do estabelecimento
    /// </summary>
    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    /// <summary>
/// Serviços do RPS
    /// </summary>
    [NasajonSerializeAttribute('itens_faturamento')]
    property itens_faturamento: TObjectList<tgerador_rps_item_faturamento> read getitens_faturamento write setitens_faturamento;

    [NasajonSerializeAttribute('pagamentos')]
    property pagamentos: TObjectList<tpagamentosemparcela> read getpagamentos write setpagamentos;

    [NasajonSerializeAttribute('parcelas')]
    property parcelas: TObjectList<tparcela> read getparcelas write setparcelas;

    /// <summary>
/// Indica as forma de rateio do RPS. Quando não informado assumirá da configuração do cliente
    /// </summary>
    [NasajonSerializeAttribute('rateios')]
    property rateios: TObjectList<TItemRateioFinanceiro> read getrateios write setrateios;

    

end;

	
implementation

  uses
      api.send;  

function Tgerador_rps_cliente_v2.getid: String;
begin
  Result := Self.m_id;
end;

procedure Tgerador_rps_cliente_v2.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function Tgerador_rps_cliente_v2.getitens_faturamento: TObjectList<tgerador_rps_item_faturamento>;
begin
  if not Assigned(Self.m_itens_faturamento)
    then Self.m_itens_faturamento := TObjectList<tgerador_rps_item_faturamento>.Create();
  Result := Self.m_itens_faturamento;
end;

procedure Tgerador_rps_cliente_v2.setitens_faturamento(const a_Value: TObjectList<tgerador_rps_item_faturamento>);
begin
  Self.m_itens_faturamento := a_Value;
end;

function Tgerador_rps_cliente_v2.getpagamentos: TObjectList<tpagamentosemparcela>;
begin
  if not Assigned(Self.m_pagamentos)
    then Self.m_pagamentos := TObjectList<tpagamentosemparcela>.Create();
  Result := Self.m_pagamentos;
end;

procedure Tgerador_rps_cliente_v2.setpagamentos(const a_Value: TObjectList<tpagamentosemparcela>);
begin
  Self.m_pagamentos := a_Value;
end;

function Tgerador_rps_cliente_v2.getparcelas: TObjectList<tparcela>;
begin
  if not Assigned(Self.m_parcelas)
    then Self.m_parcelas := TObjectList<tparcela>.Create();
  Result := Self.m_parcelas;
end;

procedure Tgerador_rps_cliente_v2.setparcelas(const a_Value: TObjectList<tparcela>);
begin
  Self.m_parcelas := a_Value;
end;

function Tgerador_rps_cliente_v2.getrateios: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_rateios)
    then Self.m_rateios := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_rateios;
end;

procedure Tgerador_rps_cliente_v2.setrateios(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_rateios := a_Value;
end;

destructor Tgerador_rps_cliente_v2.Destroy;
begin
  Self.itens_faturamento.Free();  Self.pagamentos.Free();  Self.parcelas.Free();  Self.rateios.Free();
end;

function Tgerador_rps_cliente_v2.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Tgerador_rps_cliente_v2.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Tgerador_rps_cliente_v2.getNameAPI(): String;
begin
  Result := 'gerador_rps_cliente_v2';
end;

function Tgerador_rps_cliente_v2.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Tgerador_rps_cliente_v2.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
