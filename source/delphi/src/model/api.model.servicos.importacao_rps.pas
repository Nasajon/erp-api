unit api.model.servicos.importacao_rps;

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
	
  , api.model.timportacao_itemrpps
  , System.Generics.Collections
  , api.model.timportacao_pagamento
  , api.model.timportacao_rateio
	

	;

type Timportacao_rps = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estabelecimento: String;
    var m_Cliente: String;
    var m_Serie: String;
    var m_Numero: String;
    var m_TipoTributacao: Integer;
    var m_RegimeEspecial: Integer;
    var m_IncentivoCultural: Boolean;
    var m_ISSRetido: Boolean;
    var m_CodigoServico: String;
    var m_DescontoCondicional: Currency;
    var m_CodigoIBGEMunicipioPrestacao: String;
    var m_Obra: String;
    var m_DiscriminacaoServicos: String;
    var m_OutrasDeducoes: Currency;
    var m_OutrasRetencoes: Currency;
    var m_Observacao: String;
    var m_CalcularImpostos: Boolean;
    var m_ItensRPS: TObjectList<>;
    var m_Pagamentos: TObjectList<>;
    var m_Rateios: TObjectList<>;
    

    function getEstabelecimento(): String;
    function getCliente(): String;
    function getSerie(): String;
    function getNumero(): String;
    function getTipoTributacao(): Integer;
    function getRegimeEspecial(): Integer;
    function getIncentivoCultural(): Boolean;
    function getISSRetido(): Boolean;
    function getCodigoServico(): String;
    function getDescontoCondicional(): Currency;
    function getCodigoIBGEMunicipioPrestacao(): String;
    function getObra(): String;
    function getDiscriminacaoServicos(): String;
    function getOutrasDeducoes(): Currency;
    function getOutrasRetencoes(): Currency;
    function getObservacao(): String;
    function getCalcularImpostos(): Boolean;
    function getItensRPS(): TObjectList<>;
    function getPagamentos(): TObjectList<>;
    function getRateios(): TObjectList<>;
    

    procedure setEstabelecimento(const a_Value: String);
    procedure setCliente(const a_Value: String);
    procedure setSerie(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setTipoTributacao(const a_Value: Integer);
    procedure setRegimeEspecial(const a_Value: Integer);
    procedure setIncentivoCultural(const a_Value: Boolean);
    procedure setISSRetido(const a_Value: Boolean);
    procedure setCodigoServico(const a_Value: String);
    procedure setDescontoCondicional(const a_Value: Currency);
    procedure setCodigoIBGEMunicipioPrestacao(const a_Value: String);
    procedure setObra(const a_Value: String);
    procedure setDiscriminacaoServicos(const a_Value: String);
    procedure setOutrasDeducoes(const a_Value: Currency);
    procedure setOutrasRetencoes(const a_Value: Currency);
    procedure setObservacao(const a_Value: String);
    procedure setCalcularImpostos(const a_Value: Boolean);
    procedure setItensRPS(const a_Value: TObjectList<>);
    procedure setPagamentos(const a_Value: TObjectList<>);
    procedure setRateios(const a_Value: TObjectList<>);
    

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
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Identificador do cliente
    /// </summary>
    [NasajonSerializeAttribute('cliente')]
    property cliente: String read getCliente write setCliente;

    /// <summary>
/// Número da série do RPS a ser utilizada. Quando não informado será utilizada a série padrão do estabelecimento
    /// </summary>
    [NasajonSerializeAttribute('serie')]
    property serie: String read getSerie write setSerie;

    /// <summary>
/// Número do RPS a ser utilizado. Quando não informado será utilizado o próximo número da série padrão do estabelecimento
    /// </summary>
    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    /// <summary>
/// Indica o Tipo de Tributação. Quando não informado assumirá da configuração de RPS.
///                             00 - Nenhum,
///                             01 - Tributação no Município,
///                             02 - Tributação Fora do Município,
///                             03 - Operação Isenta,
///                             04 - Operação Imune,
///                             05 - Operação Suspensa por Decisão Judicial,
///                             06 - Operação Suspensa por Decisão Administrativa
    /// </summary>
    [NasajonSerializeAttribute('tipotributacao')]
    property tipotributacao: Integer read getTipoTributacao write setTipoTributacao;

    /// <summary>
/// Indica o Regime Especial. Quando não informado assumirá da configuração de RPS.
///                             00 - Nenhum,
///                             01 - Microempresa Municipal,
///                             02 - Estimativa,
///                             03 - Sociedade de Profissionais,
///                             04 - Cooperativa,
///                             05 - Microempreendedor Individual,
///                             06 - Empresa Júnior
    /// </summary>
    [NasajonSerializeAttribute('regimeespecial')]
    property regimeespecial: Integer read getRegimeEspecial write setRegimeEspecial;

    /// <summary>
/// Indica se tem Incentivo Cultural. Quando não informado assumirá da configuração de RPS.
    /// </summary>
    [NasajonSerializeAttribute('incentivocultural')]
    property incentivocultural: Boolean read getIncentivoCultural write setIncentivoCultural;

    /// <summary>
/// Indica se haverá retenção de ISS no RPS Quando não informado assumirá da configuração do cliente/código de serviço
    /// </summary>
    [NasajonSerializeAttribute('issretido')]
    property issretido: Boolean read getISSRetido write setISSRetido;

    /// <summary>
/// Identificador do código de serviço
    /// </summary>
    [NasajonSerializeAttribute('codigoservico')]
    property codigoservico: String read getCodigoServico write setCodigoServico;

    /// <summary>
/// Indica se haverá desconto condicional no RPS
    /// </summary>
    [NasajonSerializeAttribute('descontocondicional')]
    property descontocondicional: Currency read getDescontoCondicional write setDescontoCondicional;

    /// <summary>
/// Indica o município onde o serviço está sendo prestado
    /// </summary>
    [NasajonSerializeAttribute('codigoibgemunicipioprestacao')]
    property codigoibgemunicipioprestacao: String read getCodigoIBGEMunicipioPrestacao write setCodigoIBGEMunicipioPrestacao;

    /// <summary>
/// Identificador da obra
    /// </summary>
    [NasajonSerializeAttribute('obra')]
    property obra: String read getObra write setObra;

    /// <summary>
/// Indica a discriminação dos serviços prestados
    /// </summary>
    [NasajonSerializeAttribute('discriminacaoservicos')]
    property discriminacaoservicos: String read getDiscriminacaoServicos write setDiscriminacaoServicos;

    /// <summary>
/// Indica se haverá deduções no RPS
    /// </summary>
    [NasajonSerializeAttribute('outrasdeducoes')]
    property outrasdeducoes: Currency read getOutrasDeducoes write setOutrasDeducoes;

    /// <summary>
/// Indica se haverá retenções no RPS
    /// </summary>
    [NasajonSerializeAttribute('outrasretencoes')]
    property outrasretencoes: Currency read getOutrasRetencoes write setOutrasRetencoes;

    /// <summary>
/// Indica a observação do RPS
    /// </summary>
    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

    /// <summary>
/// Indica se o sistema vai calcular os impostos com base nas configurações. Quando falso, assume os valores informados
    /// </summary>
    [NasajonSerializeAttribute('calcularimpostos')]
    property calcularimpostos: Boolean read getCalcularImpostos write setCalcularImpostos;

    /// <summary>
/// Indica os serviços prestados no RPS
    /// </summary>
    [NasajonSerializeAttribute('itensrps')]
    property itensrps: TObjectList<> read getItensRPS write setItensRPS;

    /// <summary>
/// Indica as formas de pagamentos do RPS. Quando não informado assumirá da configuração do cliente
    /// </summary>
    [NasajonSerializeAttribute('pagamentos')]
    property pagamentos: TObjectList<> read getPagamentos write setPagamentos;

    /// <summary>
/// Indica as forma de rateio do RPS. Quando não informado assumirá da configuração do cliente
    /// </summary>
    [NasajonSerializeAttribute('rateios')]
    property rateios: TObjectList<> read getRateios write setRateios;

    

end;

	
implementation

  uses
      api.send;  

function Timportacao_rps.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure Timportacao_rps.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function Timportacao_rps.getCliente: String;
begin
  Result := Self.m_Cliente;
end;

procedure Timportacao_rps.setCliente(const a_Value: String);
begin
  Self.m_Cliente := a_Value;
end;

function Timportacao_rps.getSerie: String;
begin
  Result := Self.m_Serie;
end;

procedure Timportacao_rps.setSerie(const a_Value: String);
begin
  Self.m_Serie := a_Value;
end;

function Timportacao_rps.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure Timportacao_rps.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function Timportacao_rps.getTipoTributacao: Integer;
begin
  Result := Self.m_TipoTributacao;
end;

procedure Timportacao_rps.setTipoTributacao(const a_Value: Integer);
begin
  Self.m_TipoTributacao := a_Value;
end;

function Timportacao_rps.getRegimeEspecial: Integer;
begin
  Result := Self.m_RegimeEspecial;
end;

procedure Timportacao_rps.setRegimeEspecial(const a_Value: Integer);
begin
  Self.m_RegimeEspecial := a_Value;
end;

function Timportacao_rps.getIncentivoCultural: Boolean;
begin
  Result := Self.m_IncentivoCultural;
end;

procedure Timportacao_rps.setIncentivoCultural(const a_Value: Boolean);
begin
  Self.m_IncentivoCultural := a_Value;
end;

function Timportacao_rps.getISSRetido: Boolean;
begin
  Result := Self.m_ISSRetido;
end;

procedure Timportacao_rps.setISSRetido(const a_Value: Boolean);
begin
  Self.m_ISSRetido := a_Value;
end;

function Timportacao_rps.getCodigoServico: String;
begin
  Result := Self.m_CodigoServico;
end;

procedure Timportacao_rps.setCodigoServico(const a_Value: String);
begin
  Self.m_CodigoServico := a_Value;
end;

function Timportacao_rps.getDescontoCondicional: Currency;
begin
  Result := Self.m_DescontoCondicional;
end;

procedure Timportacao_rps.setDescontoCondicional(const a_Value: Currency);
begin
  Self.m_DescontoCondicional := a_Value;
end;

function Timportacao_rps.getCodigoIBGEMunicipioPrestacao: String;
begin
  Result := Self.m_CodigoIBGEMunicipioPrestacao;
end;

procedure Timportacao_rps.setCodigoIBGEMunicipioPrestacao(const a_Value: String);
begin
  Self.m_CodigoIBGEMunicipioPrestacao := a_Value;
end;

function Timportacao_rps.getObra: String;
begin
  Result := Self.m_Obra;
end;

procedure Timportacao_rps.setObra(const a_Value: String);
begin
  Self.m_Obra := a_Value;
end;

function Timportacao_rps.getDiscriminacaoServicos: String;
begin
  Result := Self.m_DiscriminacaoServicos;
end;

procedure Timportacao_rps.setDiscriminacaoServicos(const a_Value: String);
begin
  Self.m_DiscriminacaoServicos := a_Value;
end;

function Timportacao_rps.getOutrasDeducoes: Currency;
begin
  Result := Self.m_OutrasDeducoes;
end;

procedure Timportacao_rps.setOutrasDeducoes(const a_Value: Currency);
begin
  Self.m_OutrasDeducoes := a_Value;
end;

function Timportacao_rps.getOutrasRetencoes: Currency;
begin
  Result := Self.m_OutrasRetencoes;
end;

procedure Timportacao_rps.setOutrasRetencoes(const a_Value: Currency);
begin
  Self.m_OutrasRetencoes := a_Value;
end;

function Timportacao_rps.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure Timportacao_rps.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function Timportacao_rps.getCalcularImpostos: Boolean;
begin
  Result := Self.m_CalcularImpostos;
end;

procedure Timportacao_rps.setCalcularImpostos(const a_Value: Boolean);
begin
  Self.m_CalcularImpostos := a_Value;
end;

function Timportacao_rps.getItensRPS: TObjectList<>;
begin
  if not Assigned(Self.m_ItensRPS)
    then Self.m_ItensRPS := TObjectList<>.Create();
  Result := Self.m_ItensRPS;
end;

procedure Timportacao_rps.setItensRPS(const a_Value: TObjectList<>);
begin
  Self.m_ItensRPS := a_Value;
end;

function Timportacao_rps.getPagamentos: TObjectList<>;
begin
  if not Assigned(Self.m_Pagamentos)
    then Self.m_Pagamentos := TObjectList<>.Create();
  Result := Self.m_Pagamentos;
end;

procedure Timportacao_rps.setPagamentos(const a_Value: TObjectList<>);
begin
  Self.m_Pagamentos := a_Value;
end;

function Timportacao_rps.getRateios: TObjectList<>;
begin
  if not Assigned(Self.m_Rateios)
    then Self.m_Rateios := TObjectList<>.Create();
  Result := Self.m_Rateios;
end;

procedure Timportacao_rps.setRateios(const a_Value: TObjectList<>);
begin
  Self.m_Rateios := a_Value;
end;

destructor Timportacao_rps.Destroy;
begin
  Self.ItensRPS.Free();  Self.Pagamentos.Free();  Self.Rateios.Free();
end;

function Timportacao_rps.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Timportacao_rps.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Timportacao_rps.getNameAPI(): String;
begin
  Result := 'importacao_rps';
end;

function Timportacao_rps.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Timportacao_rps.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
