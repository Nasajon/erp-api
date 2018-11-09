unit api.model.servicos.gerador_rps;

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
  , api.model.servicos.gerador_rps_cliente
  , api.model.ns.pagamentosemparcela
  , api.model.ns.parcela
  , api.model.financas.ItemRateioFinanceiro
	

	;

type Tgerador_rps = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_estabelecimento: String;
    var m_lancamento: TDate;
    var m_tipo_tributacao: Integer;
    var m_regime_especial: Integer;
    var m_incentivador_cultural: Integer;
    var m_codigo_servico: String;
    var m_usuario: String;
    var m_discriminacao_servicos: String;
    var m_itens_faturamento: TObjectList<tgerador_rps_item_faturamento>;
    var m_clientes: TObjectList<tgerador_rps_cliente>;
    var m_pagamentos: TObjectList<tpagamentosemparcela>;
    var m_parcelas: TObjectList<tparcela>;
    var m_rateios: TObjectList<TItemRateioFinanceiro>;
    var m_template_rps: String;
    

    function getestabelecimento(): String;
    function getlancamento(): TDate;
    function gettipo_tributacao(): Integer;
    function getregime_especial(): Integer;
    function getincentivador_cultural(): Integer;
    function getcodigo_servico(): String;
    function getusuario(): String;
    function getdiscriminacao_servicos(): String;
    function getitens_faturamento(): TObjectList<tgerador_rps_item_faturamento>;
    function getclientes(): TObjectList<tgerador_rps_cliente>;
    function getpagamentos(): TObjectList<tpagamentosemparcela>;
    function getparcelas(): TObjectList<tparcela>;
    function getrateios(): TObjectList<TItemRateioFinanceiro>;
    function gettemplate_rps(): String;
    

    procedure setestabelecimento(const a_Value: String);
    procedure setlancamento(const a_Value: TDate);
    procedure settipo_tributacao(const a_Value: Integer);
    procedure setregime_especial(const a_Value: Integer);
    procedure setincentivador_cultural(const a_Value: Integer);
    procedure setcodigo_servico(const a_Value: String);
    procedure setusuario(const a_Value: String);
    procedure setdiscriminacao_servicos(const a_Value: String);
    procedure setitens_faturamento(const a_Value: TObjectList<tgerador_rps_item_faturamento>);
    procedure setclientes(const a_Value: TObjectList<tgerador_rps_cliente>);
    procedure setpagamentos(const a_Value: TObjectList<tpagamentosemparcela>);
    procedure setparcelas(const a_Value: TObjectList<tparcela>);
    procedure setrateios(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure settemplate_rps(const a_Value: String);
    

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
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    /// <summary>
/// Identificador da data de competência do RPS
    /// </summary>
    [NasajonSerializeAttribute('lancamento')]
    property lancamento: TDate read getlancamento write setlancamento;

    /// <summary>
/// Indica o Tipo de Tributação.
///                            00 - Nenhum,
///                            01 - Tributação no Município,
///                            02 - Tributação Fora do Município,
///                            03 - Operação Isenta,
///                            04 - Operação Imune,
///                            05 - Operação Suspensa por Decisão Judicial,
///                            06 - Operação Suspensa por Decisão Administrativa
    /// </summary>
    [NasajonSerializeAttribute('tipo_tributacao')]
    property tipo_tributacao: Integer read gettipo_tributacao write settipo_tributacao;

    /// <summary>
/// Indica o Regime Especial.
///                            00 - Nenhum,
///                            01 - Microempresa Municipal,
///                            02 - Estimativa,
///                            03 - Sociedade de Profissionais,
///                            04 - Cooperativa,
///                            05 - Microempreendedor Individual,
///                            06 - Empresa Júnior
    /// </summary>
    [NasajonSerializeAttribute('regime_especial')]
    property regime_especial: Integer read getregime_especial write setregime_especial;

    /// <summary>
/// Indica se tem Incentivo Cultural.
///                            0 - Não,
///                            1 - Sim
    /// </summary>
    [NasajonSerializeAttribute('incentivador_cultural')]
    property incentivador_cultural: Integer read getincentivador_cultural write setincentivador_cultural;

    /// <summary>
/// Identificador do estabelecimento
    /// </summary>
    [NasajonSerializeAttribute('codigo_servico')]
    property codigo_servico: String read getcodigo_servico write setcodigo_servico;

    /// <summary>
/// Identificador do usuário criador
    /// </summary>
    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getusuario write setusuario;

    [NasajonSerializeAttribute('discriminacao_servicos')]
    property discriminacao_servicos: String read getdiscriminacao_servicos write setdiscriminacao_servicos;

    /// <summary>
/// Serviços do RPS
    /// </summary>
    [NasajonSerializeAttribute('itens_faturamento')]
    property itens_faturamento: TObjectList<tgerador_rps_item_faturamento> read getitens_faturamento write setitens_faturamento;

    /// <summary>
/// Identificadores dos clientes
    /// </summary>
    [NasajonSerializeAttribute('clientes')]
    property clientes: TObjectList<tgerador_rps_cliente> read getclientes write setclientes;

    [NasajonSerializeAttribute('pagamentos')]
    property pagamentos: TObjectList<tpagamentosemparcela> read getpagamentos write setpagamentos;

    [NasajonSerializeAttribute('parcelas')]
    property parcelas: TObjectList<tparcela> read getparcelas write setparcelas;

    /// <summary>
/// Indica as forma de rateio do RPS. Quando não informado assumirá da configuração do cliente
    /// </summary>
    [NasajonSerializeAttribute('rateios')]
    property rateios: TObjectList<TItemRateioFinanceiro> read getrateios write setrateios;

    /// <summary>
/// Identificador do template de RPS
    /// </summary>
    [NasajonSerializeAttribute('template_rps')]
    property template_rps: String read gettemplate_rps write settemplate_rps;

    

end;

	
implementation

  uses
      api.send;  

function Tgerador_rps.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure Tgerador_rps.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function Tgerador_rps.getlancamento: TDate;
begin
  Result := Self.m_lancamento;
end;

procedure Tgerador_rps.setlancamento(const a_Value: TDate);
begin
  Self.m_lancamento := a_Value;
end;

function Tgerador_rps.gettipo_tributacao: Integer;
begin
  Result := Self.m_tipo_tributacao;
end;

procedure Tgerador_rps.settipo_tributacao(const a_Value: Integer);
begin
  Self.m_tipo_tributacao := a_Value;
end;

function Tgerador_rps.getregime_especial: Integer;
begin
  Result := Self.m_regime_especial;
end;

procedure Tgerador_rps.setregime_especial(const a_Value: Integer);
begin
  Self.m_regime_especial := a_Value;
end;

function Tgerador_rps.getincentivador_cultural: Integer;
begin
  Result := Self.m_incentivador_cultural;
end;

procedure Tgerador_rps.setincentivador_cultural(const a_Value: Integer);
begin
  Self.m_incentivador_cultural := a_Value;
end;

function Tgerador_rps.getcodigo_servico: String;
begin
  Result := Self.m_codigo_servico;
end;

procedure Tgerador_rps.setcodigo_servico(const a_Value: String);
begin
  Self.m_codigo_servico := a_Value;
end;

function Tgerador_rps.getusuario: String;
begin
  Result := Self.m_usuario;
end;

procedure Tgerador_rps.setusuario(const a_Value: String);
begin
  Self.m_usuario := a_Value;
end;

function Tgerador_rps.getdiscriminacao_servicos: String;
begin
  Result := Self.m_discriminacao_servicos;
end;

procedure Tgerador_rps.setdiscriminacao_servicos(const a_Value: String);
begin
  Self.m_discriminacao_servicos := a_Value;
end;

function Tgerador_rps.getitens_faturamento: TObjectList<tgerador_rps_item_faturamento>;
begin
  if not Assigned(Self.m_itens_faturamento)
    then Self.m_itens_faturamento := TObjectList<tgerador_rps_item_faturamento>.Create();
  Result := Self.m_itens_faturamento;
end;

procedure Tgerador_rps.setitens_faturamento(const a_Value: TObjectList<tgerador_rps_item_faturamento>);
begin
  Self.m_itens_faturamento := a_Value;
end;

function Tgerador_rps.getclientes: TObjectList<tgerador_rps_cliente>;
begin
  if not Assigned(Self.m_clientes)
    then Self.m_clientes := TObjectList<tgerador_rps_cliente>.Create();
  Result := Self.m_clientes;
end;

procedure Tgerador_rps.setclientes(const a_Value: TObjectList<tgerador_rps_cliente>);
begin
  Self.m_clientes := a_Value;
end;

function Tgerador_rps.getpagamentos: TObjectList<tpagamentosemparcela>;
begin
  if not Assigned(Self.m_pagamentos)
    then Self.m_pagamentos := TObjectList<tpagamentosemparcela>.Create();
  Result := Self.m_pagamentos;
end;

procedure Tgerador_rps.setpagamentos(const a_Value: TObjectList<tpagamentosemparcela>);
begin
  Self.m_pagamentos := a_Value;
end;

function Tgerador_rps.getparcelas: TObjectList<tparcela>;
begin
  if not Assigned(Self.m_parcelas)
    then Self.m_parcelas := TObjectList<tparcela>.Create();
  Result := Self.m_parcelas;
end;

procedure Tgerador_rps.setparcelas(const a_Value: TObjectList<tparcela>);
begin
  Self.m_parcelas := a_Value;
end;

function Tgerador_rps.getrateios: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_rateios)
    then Self.m_rateios := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_rateios;
end;

procedure Tgerador_rps.setrateios(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_rateios := a_Value;
end;

function Tgerador_rps.gettemplate_rps: String;
begin
  Result := Self.m_template_rps;
end;

procedure Tgerador_rps.settemplate_rps(const a_Value: String);
begin
  Self.m_template_rps := a_Value;
end;

destructor Tgerador_rps.Destroy;
begin
  Self.itens_faturamento.Free();  Self.clientes.Free();  Self.pagamentos.Free();  Self.parcelas.Free();  Self.rateios.Free();
end;

function Tgerador_rps.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Tgerador_rps.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Tgerador_rps.getNameAPI(): String;
begin
  Result := 'gerador_rps';
end;

function Tgerador_rps.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Tgerador_rps.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
