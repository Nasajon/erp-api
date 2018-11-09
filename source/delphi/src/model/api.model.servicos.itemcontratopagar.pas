unit api.model.servicos.ItemContratoPagar;

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
	
  , api.model.servicos.ValorVariavelItemContrato
  , System.Generics.Collections
  , api.model.financas.ItemRateioFinanceiro
	

	;

type TItemContratoPagarNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdContrato: String;
    var m_Descricao: String;
    var m_ValorVariavel: Boolean;
    var m_ValoresVariaveis: TObjectList<TValorVariavelItemContrato>;
    var m_Observacao: WideString;
    var m_Valor: Currency;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    var m_UnidadeNatureza: Integer;
    var m_UnidadeIntervaloNatureza: Integer;
    var m_QuantidadeIntervaloNatureza: Integer;
    var m_TipoVencimento: Integer;
    var m_DiaVencimento: Integer;
    var m_AdicaoMesesVencimento: Integer;
    var m_QtdDiasParaInicio: Integer;
    var m_QtdDiasParaFim: Integer;
    var m_QtdMesesParaReajuste: Integer;
    var m_PercentualDesconto: Currency;
    var m_PercentualMulta: Currency;
    var m_PercentualJurosDiarios: Currency;
    var m_TipoCobranca: Integer;
    var m_Indice: String;
    var m_ConsiderarDataInicio: Boolean;
    

    function getIdContrato(): String;
    function getDescricao(): String;
    function getValorVariavel(): Boolean;
    function getValoresVariaveis(): TObjectList<TValorVariavelItemContrato>;
    function getObservacao(): WideString;
    function getValor(): Currency;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    function getUnidadeNatureza(): Integer;
    function getUnidadeIntervaloNatureza(): Integer;
    function getQuantidadeIntervaloNatureza(): Integer;
    function getTipoVencimento(): Integer;
    function getDiaVencimento(): Integer;
    function getAdicaoMesesVencimento(): Integer;
    function getQtdDiasParaInicio(): Integer;
    function getQtdDiasParaFim(): Integer;
    function getQtdMesesParaReajuste(): Integer;
    function getPercentualDesconto(): Currency;
    function getPercentualMulta(): Currency;
    function getPercentualJurosDiarios(): Currency;
    function getTipoCobranca(): Integer;
    function getIndice(): String;
    function getConsiderarDataInicio(): Boolean;
    

    procedure setIdContrato(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setValorVariavel(const a_Value: Boolean);
    procedure setValoresVariaveis(const a_Value: TObjectList<TValorVariavelItemContrato>);
    procedure setObservacao(const a_Value: WideString);
    procedure setValor(const a_Value: Currency);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setUnidadeNatureza(const a_Value: Integer);
    procedure setUnidadeIntervaloNatureza(const a_Value: Integer);
    procedure setQuantidadeIntervaloNatureza(const a_Value: Integer);
    procedure setTipoVencimento(const a_Value: Integer);
    procedure setDiaVencimento(const a_Value: Integer);
    procedure setAdicaoMesesVencimento(const a_Value: Integer);
    procedure setQtdDiasParaInicio(const a_Value: Integer);
    procedure setQtdDiasParaFim(const a_Value: Integer);
    procedure setQtdMesesParaReajuste(const a_Value: Integer);
    procedure setPercentualDesconto(const a_Value: Currency);
    procedure setPercentualMulta(const a_Value: Currency);
    procedure setPercentualJurosDiarios(const a_Value: Currency);
    procedure setTipoCobranca(const a_Value: Integer);
    procedure setIndice(const a_Value: String);
    procedure setConsiderarDataInicio(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idcontrato')]
    property idcontrato: String read getIdContrato write setIdContrato;

    /// <summary>
/// Descrição do pagamento do item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Indica o valor do serviço(fixo ou variável)
    /// </summary>
    [NasajonSerializeAttribute('valorvariavel')]
    property valorvariavel: Boolean read getValorVariavel write setValorVariavel;

    /// <summary>
/// Quando o valor for variável, informar a lista de valores
    /// </summary>
    [NasajonSerializeAttribute('valoresvariaveis')]
    property valoresvariaveis: TObjectList<TValorVariavelItemContrato> read getValoresVariaveis write setValoresVariaveis;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getObservacao write setObservacao;

    /// <summary>
/// Quando o valor não for variável, informar o valor.
    /// </summary>
    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira e centro de custo.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    /// <summary>
/// Indica qual a unidade utilizada no item de contrato. 0-Dia, 1-Semana, 2-Mês, 3-Ano.
    /// </summary>
    [NasajonSerializeAttribute('unidadenatureza')]
    property unidadenatureza: Integer read getUnidadeNatureza write setUnidadeNatureza;

    /// <summary>
/// Indica qual o período utilizado na unidade do item de contrato. 0-Dia, 1-Semana, 2-Mês, 3-Ano.
    /// </summary>
    [NasajonSerializeAttribute('unidadeintervalonatureza')]
    property unidadeintervalonatureza: Integer read getUnidadeIntervaloNatureza write setUnidadeIntervaloNatureza;

    /// <summary>
/// Indica o intervalo utilizado no período do item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('quantidadeintervalonatureza')]
    property quantidadeintervalonatureza: Integer read getQuantidadeIntervaloNatureza write setQuantidadeIntervaloNatureza;

    /// <summary>
/// Indica a forma de calcular o vencimento do item de contrato. 0-n dias após emissão do título, 1-todo dia x do mês mais y meses, 
///                            	2-último dia do mês mais y meses, 3-no final da referência do item do contrato.
    /// </summary>
    [NasajonSerializeAttribute('tipovencimento')]
    property tipovencimento: Integer read getTipoVencimento write setTipoVencimento;

    /// <summary>
/// Indica o dia de vencimento de acordo com o tipo escolhido.
    /// </summary>
    [NasajonSerializeAttribute('diavencimento')]
    property diavencimento: Integer read getDiaVencimento write setDiaVencimento;

    /// <summary>
/// Indica o número de meses do vencimento de acordo com o tipo escolhido.
    /// </summary>
    [NasajonSerializeAttribute('adicaomesesvencimento')]
    property adicaomesesvencimento: Integer read getAdicaoMesesVencimento write setAdicaoMesesVencimento;

    /// <summary>
/// Indica o número de dias com base na emissão do contrato. Utilizado para gerar a data de vigência do item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('qtddiasparainicio')]
    property qtddiasparainicio: Integer read getQtdDiasParaInicio write setQtdDiasParaInicio;

    /// <summary>
/// Indica o número de dias com base na emissão do contrato para finalização do item de contrato. Informar zero quando a validade for ilimitada.
    /// </summary>
    [NasajonSerializeAttribute('qtddiasparafim')]
    property qtddiasparafim: Integer read getQtdDiasParaFim write setQtdDiasParaFim;

    /// <summary>
/// Indica a quantidade de meses para reajuste com base na emissão do contrato.
    /// </summary>
    [NasajonSerializeAttribute('qtdmesesparareajuste')]
    property qtdmesesparareajuste: Integer read getQtdMesesParaReajuste write setQtdMesesParaReajuste;

    /// <summary>
/// Indica o percentual de desconto utilizado na criação do título referente ao item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    /// <summary>
/// Indica o percentual de multa utilizado na criação do título referente ao item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('percentualmulta')]
    property percentualmulta: Currency read getPercentualMulta write setPercentualMulta;

    /// <summary>
/// Indica o percentual de juros de mora utilizado na criação do título referente ao item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('percentualjurosdiarios')]
    property percentualjurosdiarios: Currency read getPercentualJurosDiarios write setPercentualJurosDiarios;

    /// <summary>
/// Indica a forma como o contrato vai ser processado e suas data de inicio e fim de referência. 
/// 				            0-Cobrado no período corrente mas com inicio da referência no próprio período, 
/// 							1-Cobrado no período corrente mas com inicio da referência no período anterior(pós-pago), 
/// 							2-Cobrado no período corrente mas com inicio da referência no período seguinte(pré-pago).
    /// </summary>
    [NasajonSerializeAttribute('tipocobranca')]
    property tipocobranca: Integer read getTipoCobranca write setTipoCobranca;

    /// <summary>
/// Indica o índice utilizado no reajuste do item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('indice')]
    property indice: String read getIndice write setIndice;

    /// <summary>
/// Indica se a data de referência inicia na data de emissão do contrato ou (D+1).
    /// </summary>
    [NasajonSerializeAttribute('considerardatainicio')]
    property considerardatainicio: Boolean read getConsiderarDataInicio write setConsiderarDataInicio;

    

end;

type TItemContratoPagarNovo_Importacao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_IdContrato: String;
    var m_Descricao: String;
    var m_ValorVariavel: Boolean;
    var m_ValoresVariaveis: TObjectList<TValorVariavelItemContrato>;
    var m_Observacao: WideString;
    var m_Valor: Currency;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    var m_UnidadeNatureza: Integer;
    var m_UnidadeIntervaloNatureza: Integer;
    var m_QuantidadeIntervaloNatureza: Integer;
    var m_TipoVencimento: Integer;
    var m_DiaVencimento: Integer;
    var m_AdicaoMesesVencimento: Integer;
    var m_QtdDiasParaInicio: Integer;
    var m_QtdDiasParaFim: Integer;
    var m_QtdMesesParaReajuste: Integer;
    var m_PercentualDesconto: Currency;
    var m_PercentualMulta: Currency;
    var m_PercentualJurosDiarios: Currency;
    var m_TipoCobranca: Integer;
    var m_Indice: String;
    var m_ConsiderarDataInicio: Boolean;
    var m_DataCobranca: TDate;
    var m_DataReajuste: TDate;
    var m_Autorizado: Boolean;
    var m_Cancelado: Boolean;
    var m_DataHoraCancelamento: TDateTime;
    

    function getId(): String;
    function getIdContrato(): String;
    function getDescricao(): String;
    function getValorVariavel(): Boolean;
    function getValoresVariaveis(): TObjectList<TValorVariavelItemContrato>;
    function getObservacao(): WideString;
    function getValor(): Currency;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    function getUnidadeNatureza(): Integer;
    function getUnidadeIntervaloNatureza(): Integer;
    function getQuantidadeIntervaloNatureza(): Integer;
    function getTipoVencimento(): Integer;
    function getDiaVencimento(): Integer;
    function getAdicaoMesesVencimento(): Integer;
    function getQtdDiasParaInicio(): Integer;
    function getQtdDiasParaFim(): Integer;
    function getQtdMesesParaReajuste(): Integer;
    function getPercentualDesconto(): Currency;
    function getPercentualMulta(): Currency;
    function getPercentualJurosDiarios(): Currency;
    function getTipoCobranca(): Integer;
    function getIndice(): String;
    function getConsiderarDataInicio(): Boolean;
    function getDataCobranca(): TDate;
    function getDataReajuste(): TDate;
    function getAutorizado(): Boolean;
    function getCancelado(): Boolean;
    function getDataHoraCancelamento(): TDateTime;
    

    procedure setId(const a_Value: String);
    procedure setIdContrato(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setValorVariavel(const a_Value: Boolean);
    procedure setValoresVariaveis(const a_Value: TObjectList<TValorVariavelItemContrato>);
    procedure setObservacao(const a_Value: WideString);
    procedure setValor(const a_Value: Currency);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setUnidadeNatureza(const a_Value: Integer);
    procedure setUnidadeIntervaloNatureza(const a_Value: Integer);
    procedure setQuantidadeIntervaloNatureza(const a_Value: Integer);
    procedure setTipoVencimento(const a_Value: Integer);
    procedure setDiaVencimento(const a_Value: Integer);
    procedure setAdicaoMesesVencimento(const a_Value: Integer);
    procedure setQtdDiasParaInicio(const a_Value: Integer);
    procedure setQtdDiasParaFim(const a_Value: Integer);
    procedure setQtdMesesParaReajuste(const a_Value: Integer);
    procedure setPercentualDesconto(const a_Value: Currency);
    procedure setPercentualMulta(const a_Value: Currency);
    procedure setPercentualJurosDiarios(const a_Value: Currency);
    procedure setTipoCobranca(const a_Value: Integer);
    procedure setIndice(const a_Value: String);
    procedure setConsiderarDataInicio(const a_Value: Boolean);
    procedure setDataCobranca(const a_Value: TDate);
    procedure setDataReajuste(const a_Value: TDate);
    procedure setAutorizado(const a_Value: Boolean);
    procedure setCancelado(const a_Value: Boolean);
    procedure setDataHoraCancelamento(const a_Value: TDateTime);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('idcontrato')]
    property idcontrato: String read getIdContrato write setIdContrato;

    /// <summary>
/// Descrição do pagamento do item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Indica o valor do serviço(fixo ou variável)
    /// </summary>
    [NasajonSerializeAttribute('valorvariavel')]
    property valorvariavel: Boolean read getValorVariavel write setValorVariavel;

    /// <summary>
/// Quando o valor for variável, informar a lista de valores
    /// </summary>
    [NasajonSerializeAttribute('valoresvariaveis')]
    property valoresvariaveis: TObjectList<TValorVariavelItemContrato> read getValoresVariaveis write setValoresVariaveis;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getObservacao write setObservacao;

    /// <summary>
/// Quando o valor não for variável, informar o valor.
    /// </summary>
    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira e centro de custo.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    /// <summary>
/// Indica qual a unidade utilizada no item de contrato. 0-Dia, 1-Semana, 2-Mês, 3-Ano.
    /// </summary>
    [NasajonSerializeAttribute('unidadenatureza')]
    property unidadenatureza: Integer read getUnidadeNatureza write setUnidadeNatureza;

    /// <summary>
/// Indica qual o período utilizado na unidade do item de contrato. 0-Dia, 1-Semana, 2-Mês, 3-Ano.
    /// </summary>
    [NasajonSerializeAttribute('unidadeintervalonatureza')]
    property unidadeintervalonatureza: Integer read getUnidadeIntervaloNatureza write setUnidadeIntervaloNatureza;

    /// <summary>
/// Indica o intervalo utilizado no período do item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('quantidadeintervalonatureza')]
    property quantidadeintervalonatureza: Integer read getQuantidadeIntervaloNatureza write setQuantidadeIntervaloNatureza;

    /// <summary>
/// Indica a forma de calcular o vencimento do item de contrato. 0-n dias após emissão do título, 1-todo dia x do mês mais y meses, 
///                            	2-último dia do mês mais y meses, 3-no final da referência do item do contrato.
    /// </summary>
    [NasajonSerializeAttribute('tipovencimento')]
    property tipovencimento: Integer read getTipoVencimento write setTipoVencimento;

    /// <summary>
/// Indica o dia de vencimento de acordo com o tipo escolhido.
    /// </summary>
    [NasajonSerializeAttribute('diavencimento')]
    property diavencimento: Integer read getDiaVencimento write setDiaVencimento;

    /// <summary>
/// Indica o número de meses do vencimento de acordo com o tipo escolhido.
    /// </summary>
    [NasajonSerializeAttribute('adicaomesesvencimento')]
    property adicaomesesvencimento: Integer read getAdicaoMesesVencimento write setAdicaoMesesVencimento;

    /// <summary>
/// Indica o número de dias com base na emissão do contrato. Utilizado para gerar a data de vigência do item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('qtddiasparainicio')]
    property qtddiasparainicio: Integer read getQtdDiasParaInicio write setQtdDiasParaInicio;

    /// <summary>
/// Indica o número de dias com base na emissão do contrato para finalização do item de contrato. Informar zero quando a validade for ilimitada.
    /// </summary>
    [NasajonSerializeAttribute('qtddiasparafim')]
    property qtddiasparafim: Integer read getQtdDiasParaFim write setQtdDiasParaFim;

    /// <summary>
/// Indica a quantidade de meses para reajuste com base na emissão do contrato.
    /// </summary>
    [NasajonSerializeAttribute('qtdmesesparareajuste')]
    property qtdmesesparareajuste: Integer read getQtdMesesParaReajuste write setQtdMesesParaReajuste;

    /// <summary>
/// Indica o percentual de desconto utilizado na criação do título referente ao item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    /// <summary>
/// Indica o percentual de multa utilizado na criação do título referente ao item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('percentualmulta')]
    property percentualmulta: Currency read getPercentualMulta write setPercentualMulta;

    /// <summary>
/// Indica o percentual de juros de mora utilizado na criação do título referente ao item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('percentualjurosdiarios')]
    property percentualjurosdiarios: Currency read getPercentualJurosDiarios write setPercentualJurosDiarios;

    /// <summary>
/// Indica a forma como o contrato vai ser processado e suas data de inicio e fim de referência. 
/// 				            0-Cobrado no período corrente mas com inicio da referência no próprio período, 
/// 							1-Cobrado no período corrente mas com inicio da referência no período anterior(pós-pago), 
/// 							2-Cobrado no período corrente mas com inicio da referência no período seguinte(pré-pago).
    /// </summary>
    [NasajonSerializeAttribute('tipocobranca')]
    property tipocobranca: Integer read getTipoCobranca write setTipoCobranca;

    /// <summary>
/// Indica o índice utilizado no reajuste do item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('indice')]
    property indice: String read getIndice write setIndice;

    /// <summary>
/// Indica se a data de referência inicia na data de emissão do contrato ou (D+1).
    /// </summary>
    [NasajonSerializeAttribute('considerardatainicio')]
    property considerardatainicio: Boolean read getConsiderarDataInicio write setConsiderarDataInicio;

    /// <summary>
/// Indica a data de início para cobrança. Quando não informada assume a data de início do contrato acrescida da quantidade de dias de carência.
    /// </summary>
    [NasajonSerializeAttribute('datacobranca')]
    property datacobranca: TDate read getDataCobranca write setDataCobranca;

    /// <summary>
/// Indica a data de reajuste do item. Quando não informada assume a data de início do contrato acrescida da quantidade de dias de reajuste.
    /// </summary>
    [NasajonSerializeAttribute('datareajuste')]
    property datareajuste: TDate read getDataReajuste write setDataReajuste;

    [NasajonSerializeAttribute('autorizado')]
    property autorizado: Boolean read getAutorizado write setAutorizado;

    [NasajonSerializeAttribute('cancelado')]
    property cancelado: Boolean read getCancelado write setCancelado;

    [NasajonSerializeAttribute('datahoracancelamento')]
    property datahoracancelamento: TDateTime read getDataHoraCancelamento write setDataHoraCancelamento;

    

end;

type TItemContratoPagarExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TItemContratoPagarNovo.getIdContrato: String;
begin
  Result := Self.m_IdContrato;
end;

procedure TItemContratoPagarNovo.setIdContrato(const a_Value: String);
begin
  Self.m_IdContrato := a_Value;
end;

function TItemContratoPagarNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TItemContratoPagarNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TItemContratoPagarNovo.getValorVariavel: Boolean;
begin
  Result := Self.m_ValorVariavel;
end;

procedure TItemContratoPagarNovo.setValorVariavel(const a_Value: Boolean);
begin
  Self.m_ValorVariavel := a_Value;
end;

function TItemContratoPagarNovo.getValoresVariaveis: TObjectList<TValorVariavelItemContrato>;
begin
  if not Assigned(Self.m_ValoresVariaveis)
    then Self.m_ValoresVariaveis := TObjectList<TValorVariavelItemContrato>.Create();
  Result := Self.m_ValoresVariaveis;
end;

procedure TItemContratoPagarNovo.setValoresVariaveis(const a_Value: TObjectList<TValorVariavelItemContrato>);
begin
  Self.m_ValoresVariaveis := a_Value;
end;

function TItemContratoPagarNovo.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TItemContratoPagarNovo.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

function TItemContratoPagarNovo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TItemContratoPagarNovo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TItemContratoPagarNovo.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TItemContratoPagarNovo.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TItemContratoPagarNovo.getUnidadeNatureza: Integer;
begin
  Result := Self.m_UnidadeNatureza;
end;

procedure TItemContratoPagarNovo.setUnidadeNatureza(const a_Value: Integer);
begin
  Self.m_UnidadeNatureza := a_Value;
end;

function TItemContratoPagarNovo.getUnidadeIntervaloNatureza: Integer;
begin
  Result := Self.m_UnidadeIntervaloNatureza;
end;

procedure TItemContratoPagarNovo.setUnidadeIntervaloNatureza(const a_Value: Integer);
begin
  Self.m_UnidadeIntervaloNatureza := a_Value;
end;

function TItemContratoPagarNovo.getQuantidadeIntervaloNatureza: Integer;
begin
  Result := Self.m_QuantidadeIntervaloNatureza;
end;

procedure TItemContratoPagarNovo.setQuantidadeIntervaloNatureza(const a_Value: Integer);
begin
  Self.m_QuantidadeIntervaloNatureza := a_Value;
end;

function TItemContratoPagarNovo.getTipoVencimento: Integer;
begin
  Result := Self.m_TipoVencimento;
end;

procedure TItemContratoPagarNovo.setTipoVencimento(const a_Value: Integer);
begin
  Self.m_TipoVencimento := a_Value;
end;

function TItemContratoPagarNovo.getDiaVencimento: Integer;
begin
  Result := Self.m_DiaVencimento;
end;

procedure TItemContratoPagarNovo.setDiaVencimento(const a_Value: Integer);
begin
  Self.m_DiaVencimento := a_Value;
end;

function TItemContratoPagarNovo.getAdicaoMesesVencimento: Integer;
begin
  Result := Self.m_AdicaoMesesVencimento;
end;

procedure TItemContratoPagarNovo.setAdicaoMesesVencimento(const a_Value: Integer);
begin
  Self.m_AdicaoMesesVencimento := a_Value;
end;

function TItemContratoPagarNovo.getQtdDiasParaInicio: Integer;
begin
  Result := Self.m_QtdDiasParaInicio;
end;

procedure TItemContratoPagarNovo.setQtdDiasParaInicio(const a_Value: Integer);
begin
  Self.m_QtdDiasParaInicio := a_Value;
end;

function TItemContratoPagarNovo.getQtdDiasParaFim: Integer;
begin
  Result := Self.m_QtdDiasParaFim;
end;

procedure TItemContratoPagarNovo.setQtdDiasParaFim(const a_Value: Integer);
begin
  Self.m_QtdDiasParaFim := a_Value;
end;

function TItemContratoPagarNovo.getQtdMesesParaReajuste: Integer;
begin
  Result := Self.m_QtdMesesParaReajuste;
end;

procedure TItemContratoPagarNovo.setQtdMesesParaReajuste(const a_Value: Integer);
begin
  Self.m_QtdMesesParaReajuste := a_Value;
end;

function TItemContratoPagarNovo.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TItemContratoPagarNovo.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TItemContratoPagarNovo.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TItemContratoPagarNovo.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TItemContratoPagarNovo.getPercentualJurosDiarios: Currency;
begin
  Result := Self.m_PercentualJurosDiarios;
end;

procedure TItemContratoPagarNovo.setPercentualJurosDiarios(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiarios := a_Value;
end;

function TItemContratoPagarNovo.getTipoCobranca: Integer;
begin
  Result := Self.m_TipoCobranca;
end;

procedure TItemContratoPagarNovo.setTipoCobranca(const a_Value: Integer);
begin
  Self.m_TipoCobranca := a_Value;
end;

function TItemContratoPagarNovo.getIndice: String;
begin
  Result := Self.m_Indice;
end;

procedure TItemContratoPagarNovo.setIndice(const a_Value: String);
begin
  Self.m_Indice := a_Value;
end;

function TItemContratoPagarNovo.getConsiderarDataInicio: Boolean;
begin
  Result := Self.m_ConsiderarDataInicio;
end;

procedure TItemContratoPagarNovo.setConsiderarDataInicio(const a_Value: Boolean);
begin
  Self.m_ConsiderarDataInicio := a_Value;
end;

destructor TItemContratoPagarNovo.Destroy;
begin
  Self.ValoresVariaveis.Free();  Self.RateioFinanceiro.Free();
end;

function TItemContratoPagarNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemContratoPagarNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemContratoPagarNovo.getNameAPI(): String;
begin
  Result := 'ItemContratoPagarNovo';
end;

function TItemContratoPagarNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemContratoPagarNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TItemContratoPagarNovo_Importacao.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TItemContratoPagarNovo_Importacao.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getIdContrato: String;
begin
  Result := Self.m_IdContrato;
end;

procedure TItemContratoPagarNovo_Importacao.setIdContrato(const a_Value: String);
begin
  Self.m_IdContrato := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TItemContratoPagarNovo_Importacao.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getValorVariavel: Boolean;
begin
  Result := Self.m_ValorVariavel;
end;

procedure TItemContratoPagarNovo_Importacao.setValorVariavel(const a_Value: Boolean);
begin
  Self.m_ValorVariavel := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getValoresVariaveis: TObjectList<TValorVariavelItemContrato>;
begin
  if not Assigned(Self.m_ValoresVariaveis)
    then Self.m_ValoresVariaveis := TObjectList<TValorVariavelItemContrato>.Create();
  Result := Self.m_ValoresVariaveis;
end;

procedure TItemContratoPagarNovo_Importacao.setValoresVariaveis(const a_Value: TObjectList<TValorVariavelItemContrato>);
begin
  Self.m_ValoresVariaveis := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TItemContratoPagarNovo_Importacao.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TItemContratoPagarNovo_Importacao.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TItemContratoPagarNovo_Importacao.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getUnidadeNatureza: Integer;
begin
  Result := Self.m_UnidadeNatureza;
end;

procedure TItemContratoPagarNovo_Importacao.setUnidadeNatureza(const a_Value: Integer);
begin
  Self.m_UnidadeNatureza := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getUnidadeIntervaloNatureza: Integer;
begin
  Result := Self.m_UnidadeIntervaloNatureza;
end;

procedure TItemContratoPagarNovo_Importacao.setUnidadeIntervaloNatureza(const a_Value: Integer);
begin
  Self.m_UnidadeIntervaloNatureza := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getQuantidadeIntervaloNatureza: Integer;
begin
  Result := Self.m_QuantidadeIntervaloNatureza;
end;

procedure TItemContratoPagarNovo_Importacao.setQuantidadeIntervaloNatureza(const a_Value: Integer);
begin
  Self.m_QuantidadeIntervaloNatureza := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getTipoVencimento: Integer;
begin
  Result := Self.m_TipoVencimento;
end;

procedure TItemContratoPagarNovo_Importacao.setTipoVencimento(const a_Value: Integer);
begin
  Self.m_TipoVencimento := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getDiaVencimento: Integer;
begin
  Result := Self.m_DiaVencimento;
end;

procedure TItemContratoPagarNovo_Importacao.setDiaVencimento(const a_Value: Integer);
begin
  Self.m_DiaVencimento := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getAdicaoMesesVencimento: Integer;
begin
  Result := Self.m_AdicaoMesesVencimento;
end;

procedure TItemContratoPagarNovo_Importacao.setAdicaoMesesVencimento(const a_Value: Integer);
begin
  Self.m_AdicaoMesesVencimento := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getQtdDiasParaInicio: Integer;
begin
  Result := Self.m_QtdDiasParaInicio;
end;

procedure TItemContratoPagarNovo_Importacao.setQtdDiasParaInicio(const a_Value: Integer);
begin
  Self.m_QtdDiasParaInicio := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getQtdDiasParaFim: Integer;
begin
  Result := Self.m_QtdDiasParaFim;
end;

procedure TItemContratoPagarNovo_Importacao.setQtdDiasParaFim(const a_Value: Integer);
begin
  Self.m_QtdDiasParaFim := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getQtdMesesParaReajuste: Integer;
begin
  Result := Self.m_QtdMesesParaReajuste;
end;

procedure TItemContratoPagarNovo_Importacao.setQtdMesesParaReajuste(const a_Value: Integer);
begin
  Self.m_QtdMesesParaReajuste := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TItemContratoPagarNovo_Importacao.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TItemContratoPagarNovo_Importacao.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getPercentualJurosDiarios: Currency;
begin
  Result := Self.m_PercentualJurosDiarios;
end;

procedure TItemContratoPagarNovo_Importacao.setPercentualJurosDiarios(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiarios := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getTipoCobranca: Integer;
begin
  Result := Self.m_TipoCobranca;
end;

procedure TItemContratoPagarNovo_Importacao.setTipoCobranca(const a_Value: Integer);
begin
  Self.m_TipoCobranca := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getIndice: String;
begin
  Result := Self.m_Indice;
end;

procedure TItemContratoPagarNovo_Importacao.setIndice(const a_Value: String);
begin
  Self.m_Indice := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getConsiderarDataInicio: Boolean;
begin
  Result := Self.m_ConsiderarDataInicio;
end;

procedure TItemContratoPagarNovo_Importacao.setConsiderarDataInicio(const a_Value: Boolean);
begin
  Self.m_ConsiderarDataInicio := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getDataCobranca: TDate;
begin
  Result := Self.m_DataCobranca;
end;

procedure TItemContratoPagarNovo_Importacao.setDataCobranca(const a_Value: TDate);
begin
  Self.m_DataCobranca := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getDataReajuste: TDate;
begin
  Result := Self.m_DataReajuste;
end;

procedure TItemContratoPagarNovo_Importacao.setDataReajuste(const a_Value: TDate);
begin
  Self.m_DataReajuste := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getAutorizado: Boolean;
begin
  Result := Self.m_Autorizado;
end;

procedure TItemContratoPagarNovo_Importacao.setAutorizado(const a_Value: Boolean);
begin
  Self.m_Autorizado := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getCancelado: Boolean;
begin
  Result := Self.m_Cancelado;
end;

procedure TItemContratoPagarNovo_Importacao.setCancelado(const a_Value: Boolean);
begin
  Self.m_Cancelado := a_Value;
end;

function TItemContratoPagarNovo_Importacao.getDataHoraCancelamento: TDateTime;
begin
  Result := Self.m_DataHoraCancelamento;
end;

procedure TItemContratoPagarNovo_Importacao.setDataHoraCancelamento(const a_Value: TDateTime);
begin
  Self.m_DataHoraCancelamento := a_Value;
end;

destructor TItemContratoPagarNovo_Importacao.Destroy;
begin
  Self.ValoresVariaveis.Free();  Self.RateioFinanceiro.Free();
end;

function TItemContratoPagarNovo_Importacao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemContratoPagarNovo_Importacao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemContratoPagarNovo_Importacao.getNameAPI(): String;
begin
  Result := 'ItemContratoPagarNovo_Importacao';
end;

function TItemContratoPagarNovo_Importacao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemContratoPagarNovo_Importacao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TItemContratoPagarExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TItemContratoPagarExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TItemContratoPagarExcluir.Destroy;
begin

end;

function TItemContratoPagarExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemContratoPagarExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemContratoPagarExcluir.getNameAPI(): String;
begin
  Result := 'ItemContratoPagarExcluir';
end;

function TItemContratoPagarExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemContratoPagarExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
