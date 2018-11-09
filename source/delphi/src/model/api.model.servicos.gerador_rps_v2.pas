unit api.model.servicos.gerador_rps_v2;

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
	
  , api.model.servicos.gerador_rps_cliente_v2
  , System.Generics.Collections
	

	;

type Tgerador_rps_v2 = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_estabelecimento: String;
    var m_lancamento: TDate;
    var m_tipo_tributacao: Integer;
    var m_regime_especial: Integer;
    var m_incentivador_cultural: Integer;
    var m_codigo_servico: String;
    var m_usuario: String;
    var m_discriminacao_servicos: String;
    var m_clientes: TObjectList<tgerador_rps_cliente_v2>;
    var m_template_rps: String;
    

    function getestabelecimento(): String;
    function getlancamento(): TDate;
    function gettipo_tributacao(): Integer;
    function getregime_especial(): Integer;
    function getincentivador_cultural(): Integer;
    function getcodigo_servico(): String;
    function getusuario(): String;
    function getdiscriminacao_servicos(): String;
    function getclientes(): TObjectList<tgerador_rps_cliente_v2>;
    function gettemplate_rps(): String;
    

    procedure setestabelecimento(const a_Value: String);
    procedure setlancamento(const a_Value: TDate);
    procedure settipo_tributacao(const a_Value: Integer);
    procedure setregime_especial(const a_Value: Integer);
    procedure setincentivador_cultural(const a_Value: Integer);
    procedure setcodigo_servico(const a_Value: String);
    procedure setusuario(const a_Value: String);
    procedure setdiscriminacao_servicos(const a_Value: String);
    procedure setclientes(const a_Value: TObjectList<tgerador_rps_cliente_v2>);
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
/// Identificadores dos clientes
    /// </summary>
    [NasajonSerializeAttribute('clientes')]
    property clientes: TObjectList<tgerador_rps_cliente_v2> read getclientes write setclientes;

    /// <summary>
/// Identificador do template de RPS
    /// </summary>
    [NasajonSerializeAttribute('template_rps')]
    property template_rps: String read gettemplate_rps write settemplate_rps;

    

end;

	
implementation

  uses
      api.send;  

function Tgerador_rps_v2.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure Tgerador_rps_v2.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function Tgerador_rps_v2.getlancamento: TDate;
begin
  Result := Self.m_lancamento;
end;

procedure Tgerador_rps_v2.setlancamento(const a_Value: TDate);
begin
  Self.m_lancamento := a_Value;
end;

function Tgerador_rps_v2.gettipo_tributacao: Integer;
begin
  Result := Self.m_tipo_tributacao;
end;

procedure Tgerador_rps_v2.settipo_tributacao(const a_Value: Integer);
begin
  Self.m_tipo_tributacao := a_Value;
end;

function Tgerador_rps_v2.getregime_especial: Integer;
begin
  Result := Self.m_regime_especial;
end;

procedure Tgerador_rps_v2.setregime_especial(const a_Value: Integer);
begin
  Self.m_regime_especial := a_Value;
end;

function Tgerador_rps_v2.getincentivador_cultural: Integer;
begin
  Result := Self.m_incentivador_cultural;
end;

procedure Tgerador_rps_v2.setincentivador_cultural(const a_Value: Integer);
begin
  Self.m_incentivador_cultural := a_Value;
end;

function Tgerador_rps_v2.getcodigo_servico: String;
begin
  Result := Self.m_codigo_servico;
end;

procedure Tgerador_rps_v2.setcodigo_servico(const a_Value: String);
begin
  Self.m_codigo_servico := a_Value;
end;

function Tgerador_rps_v2.getusuario: String;
begin
  Result := Self.m_usuario;
end;

procedure Tgerador_rps_v2.setusuario(const a_Value: String);
begin
  Self.m_usuario := a_Value;
end;

function Tgerador_rps_v2.getdiscriminacao_servicos: String;
begin
  Result := Self.m_discriminacao_servicos;
end;

procedure Tgerador_rps_v2.setdiscriminacao_servicos(const a_Value: String);
begin
  Self.m_discriminacao_servicos := a_Value;
end;

function Tgerador_rps_v2.getclientes: TObjectList<tgerador_rps_cliente_v2>;
begin
  if not Assigned(Self.m_clientes)
    then Self.m_clientes := TObjectList<tgerador_rps_cliente_v2>.Create();
  Result := Self.m_clientes;
end;

procedure Tgerador_rps_v2.setclientes(const a_Value: TObjectList<tgerador_rps_cliente_v2>);
begin
  Self.m_clientes := a_Value;
end;

function Tgerador_rps_v2.gettemplate_rps: String;
begin
  Result := Self.m_template_rps;
end;

procedure Tgerador_rps_v2.settemplate_rps(const a_Value: String);
begin
  Self.m_template_rps := a_Value;
end;

destructor Tgerador_rps_v2.Destroy;
begin
  Self.clientes.Free();
end;

function Tgerador_rps_v2.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Tgerador_rps_v2.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Tgerador_rps_v2.getNameAPI(): String;
begin
  Result := 'gerador_rps_v2';
end;

function Tgerador_rps_v2.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Tgerador_rps_v2.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
