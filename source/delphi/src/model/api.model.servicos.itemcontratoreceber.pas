unit api.model.servicos.ItemContratoReceber;

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
	

	;

type TItemContratoReceberNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdContrato: String;
    var m_Servico: String;
    var m_ValorVariavel: Boolean;
    var m_ValoresVariaveis: TObjectList<TValorVariavelItemContrato>;
    var m_Observacao: WideString;
    var m_Valor: Currency;
    var m_Quantidade: Integer;
    var m_Instancia: String;
    var m_CodigoInstancia: String;
    var m_NomeInstancia: String;
    var m_TipoInstancia: String;
    var m_DescontosNoPedido: Currency;
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
    function getServico(): String;
    function getValorVariavel(): Boolean;
    function getValoresVariaveis(): TObjectList<TValorVariavelItemContrato>;
    function getObservacao(): WideString;
    function getValor(): Currency;
    function getQuantidade(): Integer;
    function getInstancia(): String;
    function getCodigoInstancia(): String;
    function getNomeInstancia(): String;
    function getTipoInstancia(): String;
    function getDescontosNoPedido(): Currency;
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
    procedure setServico(const a_Value: String);
    procedure setValorVariavel(const a_Value: Boolean);
    procedure setValoresVariaveis(const a_Value: TObjectList<TValorVariavelItemContrato>);
    procedure setObservacao(const a_Value: WideString);
    procedure setValor(const a_Value: Currency);
    procedure setQuantidade(const a_Value: Integer);
    procedure setInstancia(const a_Value: String);
    procedure setCodigoInstancia(const a_Value: String);
    procedure setNomeInstancia(const a_Value: String);
    procedure setTipoInstancia(const a_Value: String);
    procedure setDescontosNoPedido(const a_Value: Currency);
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

    [NasajonSerializeAttribute('servico')]
    property servico: String read getServico write setServico;

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

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Integer read getQuantidade write setQuantidade;

    /// <summary>
/// Indica a instância vinculada ao serviço do item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('instancia')]
    property instancia: String read getInstancia write setInstancia;

    /// <summary>
/// Codigo da instância. Preencher caso o guid da instância tenha sido passado.
    /// </summary>
    [NasajonSerializeAttribute('codigoinstancia')]
    property codigoinstancia: String read getCodigoInstancia write setCodigoInstancia;

    [NasajonSerializeAttribute('nomeinstancia')]
    property nomeinstancia: String read getNomeInstancia write setNomeInstancia;

    [NasajonSerializeAttribute('tipoinstancia')]
    property tipoinstancia: String read getTipoInstancia write setTipoInstancia;

    [NasajonSerializeAttribute('descontosnopedido')]
    property descontosnopedido: Currency read getDescontosNoPedido write setDescontosNoPedido;

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

type TItemContratoReceberNovo_Importacao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_IdContrato: String;
    var m_Servico: String;
    var m_ValorVariavel: Boolean;
    var m_ValoresVariaveis: TObjectList<TValorVariavelItemContrato>;
    var m_Observacao: WideString;
    var m_Valor: Currency;
    var m_Quantidade: Integer;
    var m_Instancia: String;
    var m_CodigoInstancia: String;
    var m_NomeInstancia: String;
    var m_TipoInstancia: String;
    var m_DescontosNoPedido: Currency;
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
    function getServico(): String;
    function getValorVariavel(): Boolean;
    function getValoresVariaveis(): TObjectList<TValorVariavelItemContrato>;
    function getObservacao(): WideString;
    function getValor(): Currency;
    function getQuantidade(): Integer;
    function getInstancia(): String;
    function getCodigoInstancia(): String;
    function getNomeInstancia(): String;
    function getTipoInstancia(): String;
    function getDescontosNoPedido(): Currency;
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
    procedure setServico(const a_Value: String);
    procedure setValorVariavel(const a_Value: Boolean);
    procedure setValoresVariaveis(const a_Value: TObjectList<TValorVariavelItemContrato>);
    procedure setObservacao(const a_Value: WideString);
    procedure setValor(const a_Value: Currency);
    procedure setQuantidade(const a_Value: Integer);
    procedure setInstancia(const a_Value: String);
    procedure setCodigoInstancia(const a_Value: String);
    procedure setNomeInstancia(const a_Value: String);
    procedure setTipoInstancia(const a_Value: String);
    procedure setDescontosNoPedido(const a_Value: Currency);
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

    [NasajonSerializeAttribute('servico')]
    property servico: String read getServico write setServico;

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

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Integer read getQuantidade write setQuantidade;

    /// <summary>
/// Indica a instância vinculada ao serviço do item de contrato.
    /// </summary>
    [NasajonSerializeAttribute('instancia')]
    property instancia: String read getInstancia write setInstancia;

    /// <summary>
/// Codigo da instância. Preencher caso o guid da instância tenha sido passado.
    /// </summary>
    [NasajonSerializeAttribute('codigoinstancia')]
    property codigoinstancia: String read getCodigoInstancia write setCodigoInstancia;

    [NasajonSerializeAttribute('nomeinstancia')]
    property nomeinstancia: String read getNomeInstancia write setNomeInstancia;

    [NasajonSerializeAttribute('tipoinstancia')]
    property tipoinstancia: String read getTipoInstancia write setTipoInstancia;

    [NasajonSerializeAttribute('descontosnopedido')]
    property descontosnopedido: Currency read getDescontosNoPedido write setDescontosNoPedido;

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

type TItemContratoReceberExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TItemContratoReceberNovo.getIdContrato: String;
begin
  Result := Self.m_IdContrato;
end;

procedure TItemContratoReceberNovo.setIdContrato(const a_Value: String);
begin
  Self.m_IdContrato := a_Value;
end;

function TItemContratoReceberNovo.getServico: String;
begin
  Result := Self.m_Servico;
end;

procedure TItemContratoReceberNovo.setServico(const a_Value: String);
begin
  Self.m_Servico := a_Value;
end;

function TItemContratoReceberNovo.getValorVariavel: Boolean;
begin
  Result := Self.m_ValorVariavel;
end;

procedure TItemContratoReceberNovo.setValorVariavel(const a_Value: Boolean);
begin
  Self.m_ValorVariavel := a_Value;
end;

function TItemContratoReceberNovo.getValoresVariaveis: TObjectList<TValorVariavelItemContrato>;
begin
  if not Assigned(Self.m_ValoresVariaveis)
    then Self.m_ValoresVariaveis := TObjectList<TValorVariavelItemContrato>.Create();
  Result := Self.m_ValoresVariaveis;
end;

procedure TItemContratoReceberNovo.setValoresVariaveis(const a_Value: TObjectList<TValorVariavelItemContrato>);
begin
  Self.m_ValoresVariaveis := a_Value;
end;

function TItemContratoReceberNovo.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TItemContratoReceberNovo.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

function TItemContratoReceberNovo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TItemContratoReceberNovo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TItemContratoReceberNovo.getQuantidade: Integer;
begin
  Result := Self.m_Quantidade;
end;

procedure TItemContratoReceberNovo.setQuantidade(const a_Value: Integer);
begin
  Self.m_Quantidade := a_Value;
end;

function TItemContratoReceberNovo.getInstancia: String;
begin
  Result := Self.m_Instancia;
end;

procedure TItemContratoReceberNovo.setInstancia(const a_Value: String);
begin
  Self.m_Instancia := a_Value;
end;

function TItemContratoReceberNovo.getCodigoInstancia: String;
begin
  Result := Self.m_CodigoInstancia;
end;

procedure TItemContratoReceberNovo.setCodigoInstancia(const a_Value: String);
begin
  Self.m_CodigoInstancia := a_Value;
end;

function TItemContratoReceberNovo.getNomeInstancia: String;
begin
  Result := Self.m_NomeInstancia;
end;

procedure TItemContratoReceberNovo.setNomeInstancia(const a_Value: String);
begin
  Self.m_NomeInstancia := a_Value;
end;

function TItemContratoReceberNovo.getTipoInstancia: String;
begin
  Result := Self.m_TipoInstancia;
end;

procedure TItemContratoReceberNovo.setTipoInstancia(const a_Value: String);
begin
  Self.m_TipoInstancia := a_Value;
end;

function TItemContratoReceberNovo.getDescontosNoPedido: Currency;
begin
  Result := Self.m_DescontosNoPedido;
end;

procedure TItemContratoReceberNovo.setDescontosNoPedido(const a_Value: Currency);
begin
  Self.m_DescontosNoPedido := a_Value;
end;

function TItemContratoReceberNovo.getUnidadeNatureza: Integer;
begin
  Result := Self.m_UnidadeNatureza;
end;

procedure TItemContratoReceberNovo.setUnidadeNatureza(const a_Value: Integer);
begin
  Self.m_UnidadeNatureza := a_Value;
end;

function TItemContratoReceberNovo.getUnidadeIntervaloNatureza: Integer;
begin
  Result := Self.m_UnidadeIntervaloNatureza;
end;

procedure TItemContratoReceberNovo.setUnidadeIntervaloNatureza(const a_Value: Integer);
begin
  Self.m_UnidadeIntervaloNatureza := a_Value;
end;

function TItemContratoReceberNovo.getQuantidadeIntervaloNatureza: Integer;
begin
  Result := Self.m_QuantidadeIntervaloNatureza;
end;

procedure TItemContratoReceberNovo.setQuantidadeIntervaloNatureza(const a_Value: Integer);
begin
  Self.m_QuantidadeIntervaloNatureza := a_Value;
end;

function TItemContratoReceberNovo.getTipoVencimento: Integer;
begin
  Result := Self.m_TipoVencimento;
end;

procedure TItemContratoReceberNovo.setTipoVencimento(const a_Value: Integer);
begin
  Self.m_TipoVencimento := a_Value;
end;

function TItemContratoReceberNovo.getDiaVencimento: Integer;
begin
  Result := Self.m_DiaVencimento;
end;

procedure TItemContratoReceberNovo.setDiaVencimento(const a_Value: Integer);
begin
  Self.m_DiaVencimento := a_Value;
end;

function TItemContratoReceberNovo.getAdicaoMesesVencimento: Integer;
begin
  Result := Self.m_AdicaoMesesVencimento;
end;

procedure TItemContratoReceberNovo.setAdicaoMesesVencimento(const a_Value: Integer);
begin
  Self.m_AdicaoMesesVencimento := a_Value;
end;

function TItemContratoReceberNovo.getQtdDiasParaInicio: Integer;
begin
  Result := Self.m_QtdDiasParaInicio;
end;

procedure TItemContratoReceberNovo.setQtdDiasParaInicio(const a_Value: Integer);
begin
  Self.m_QtdDiasParaInicio := a_Value;
end;

function TItemContratoReceberNovo.getQtdDiasParaFim: Integer;
begin
  Result := Self.m_QtdDiasParaFim;
end;

procedure TItemContratoReceberNovo.setQtdDiasParaFim(const a_Value: Integer);
begin
  Self.m_QtdDiasParaFim := a_Value;
end;

function TItemContratoReceberNovo.getQtdMesesParaReajuste: Integer;
begin
  Result := Self.m_QtdMesesParaReajuste;
end;

procedure TItemContratoReceberNovo.setQtdMesesParaReajuste(const a_Value: Integer);
begin
  Self.m_QtdMesesParaReajuste := a_Value;
end;

function TItemContratoReceberNovo.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TItemContratoReceberNovo.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TItemContratoReceberNovo.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TItemContratoReceberNovo.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TItemContratoReceberNovo.getPercentualJurosDiarios: Currency;
begin
  Result := Self.m_PercentualJurosDiarios;
end;

procedure TItemContratoReceberNovo.setPercentualJurosDiarios(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiarios := a_Value;
end;

function TItemContratoReceberNovo.getTipoCobranca: Integer;
begin
  Result := Self.m_TipoCobranca;
end;

procedure TItemContratoReceberNovo.setTipoCobranca(const a_Value: Integer);
begin
  Self.m_TipoCobranca := a_Value;
end;

function TItemContratoReceberNovo.getIndice: String;
begin
  Result := Self.m_Indice;
end;

procedure TItemContratoReceberNovo.setIndice(const a_Value: String);
begin
  Self.m_Indice := a_Value;
end;

function TItemContratoReceberNovo.getConsiderarDataInicio: Boolean;
begin
  Result := Self.m_ConsiderarDataInicio;
end;

procedure TItemContratoReceberNovo.setConsiderarDataInicio(const a_Value: Boolean);
begin
  Self.m_ConsiderarDataInicio := a_Value;
end;

destructor TItemContratoReceberNovo.Destroy;
begin
  Self.ValoresVariaveis.Free();
end;

function TItemContratoReceberNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemContratoReceberNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemContratoReceberNovo.getNameAPI(): String;
begin
  Result := 'ItemContratoReceberNovo';
end;

function TItemContratoReceberNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemContratoReceberNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TItemContratoReceberNovo_Importacao.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TItemContratoReceberNovo_Importacao.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getIdContrato: String;
begin
  Result := Self.m_IdContrato;
end;

procedure TItemContratoReceberNovo_Importacao.setIdContrato(const a_Value: String);
begin
  Self.m_IdContrato := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getServico: String;
begin
  Result := Self.m_Servico;
end;

procedure TItemContratoReceberNovo_Importacao.setServico(const a_Value: String);
begin
  Self.m_Servico := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getValorVariavel: Boolean;
begin
  Result := Self.m_ValorVariavel;
end;

procedure TItemContratoReceberNovo_Importacao.setValorVariavel(const a_Value: Boolean);
begin
  Self.m_ValorVariavel := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getValoresVariaveis: TObjectList<TValorVariavelItemContrato>;
begin
  if not Assigned(Self.m_ValoresVariaveis)
    then Self.m_ValoresVariaveis := TObjectList<TValorVariavelItemContrato>.Create();
  Result := Self.m_ValoresVariaveis;
end;

procedure TItemContratoReceberNovo_Importacao.setValoresVariaveis(const a_Value: TObjectList<TValorVariavelItemContrato>);
begin
  Self.m_ValoresVariaveis := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TItemContratoReceberNovo_Importacao.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TItemContratoReceberNovo_Importacao.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getQuantidade: Integer;
begin
  Result := Self.m_Quantidade;
end;

procedure TItemContratoReceberNovo_Importacao.setQuantidade(const a_Value: Integer);
begin
  Self.m_Quantidade := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getInstancia: String;
begin
  Result := Self.m_Instancia;
end;

procedure TItemContratoReceberNovo_Importacao.setInstancia(const a_Value: String);
begin
  Self.m_Instancia := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getCodigoInstancia: String;
begin
  Result := Self.m_CodigoInstancia;
end;

procedure TItemContratoReceberNovo_Importacao.setCodigoInstancia(const a_Value: String);
begin
  Self.m_CodigoInstancia := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getNomeInstancia: String;
begin
  Result := Self.m_NomeInstancia;
end;

procedure TItemContratoReceberNovo_Importacao.setNomeInstancia(const a_Value: String);
begin
  Self.m_NomeInstancia := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getTipoInstancia: String;
begin
  Result := Self.m_TipoInstancia;
end;

procedure TItemContratoReceberNovo_Importacao.setTipoInstancia(const a_Value: String);
begin
  Self.m_TipoInstancia := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getDescontosNoPedido: Currency;
begin
  Result := Self.m_DescontosNoPedido;
end;

procedure TItemContratoReceberNovo_Importacao.setDescontosNoPedido(const a_Value: Currency);
begin
  Self.m_DescontosNoPedido := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getUnidadeNatureza: Integer;
begin
  Result := Self.m_UnidadeNatureza;
end;

procedure TItemContratoReceberNovo_Importacao.setUnidadeNatureza(const a_Value: Integer);
begin
  Self.m_UnidadeNatureza := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getUnidadeIntervaloNatureza: Integer;
begin
  Result := Self.m_UnidadeIntervaloNatureza;
end;

procedure TItemContratoReceberNovo_Importacao.setUnidadeIntervaloNatureza(const a_Value: Integer);
begin
  Self.m_UnidadeIntervaloNatureza := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getQuantidadeIntervaloNatureza: Integer;
begin
  Result := Self.m_QuantidadeIntervaloNatureza;
end;

procedure TItemContratoReceberNovo_Importacao.setQuantidadeIntervaloNatureza(const a_Value: Integer);
begin
  Self.m_QuantidadeIntervaloNatureza := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getTipoVencimento: Integer;
begin
  Result := Self.m_TipoVencimento;
end;

procedure TItemContratoReceberNovo_Importacao.setTipoVencimento(const a_Value: Integer);
begin
  Self.m_TipoVencimento := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getDiaVencimento: Integer;
begin
  Result := Self.m_DiaVencimento;
end;

procedure TItemContratoReceberNovo_Importacao.setDiaVencimento(const a_Value: Integer);
begin
  Self.m_DiaVencimento := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getAdicaoMesesVencimento: Integer;
begin
  Result := Self.m_AdicaoMesesVencimento;
end;

procedure TItemContratoReceberNovo_Importacao.setAdicaoMesesVencimento(const a_Value: Integer);
begin
  Self.m_AdicaoMesesVencimento := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getQtdDiasParaInicio: Integer;
begin
  Result := Self.m_QtdDiasParaInicio;
end;

procedure TItemContratoReceberNovo_Importacao.setQtdDiasParaInicio(const a_Value: Integer);
begin
  Self.m_QtdDiasParaInicio := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getQtdDiasParaFim: Integer;
begin
  Result := Self.m_QtdDiasParaFim;
end;

procedure TItemContratoReceberNovo_Importacao.setQtdDiasParaFim(const a_Value: Integer);
begin
  Self.m_QtdDiasParaFim := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getQtdMesesParaReajuste: Integer;
begin
  Result := Self.m_QtdMesesParaReajuste;
end;

procedure TItemContratoReceberNovo_Importacao.setQtdMesesParaReajuste(const a_Value: Integer);
begin
  Self.m_QtdMesesParaReajuste := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TItemContratoReceberNovo_Importacao.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TItemContratoReceberNovo_Importacao.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getPercentualJurosDiarios: Currency;
begin
  Result := Self.m_PercentualJurosDiarios;
end;

procedure TItemContratoReceberNovo_Importacao.setPercentualJurosDiarios(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiarios := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getTipoCobranca: Integer;
begin
  Result := Self.m_TipoCobranca;
end;

procedure TItemContratoReceberNovo_Importacao.setTipoCobranca(const a_Value: Integer);
begin
  Self.m_TipoCobranca := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getIndice: String;
begin
  Result := Self.m_Indice;
end;

procedure TItemContratoReceberNovo_Importacao.setIndice(const a_Value: String);
begin
  Self.m_Indice := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getConsiderarDataInicio: Boolean;
begin
  Result := Self.m_ConsiderarDataInicio;
end;

procedure TItemContratoReceberNovo_Importacao.setConsiderarDataInicio(const a_Value: Boolean);
begin
  Self.m_ConsiderarDataInicio := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getDataCobranca: TDate;
begin
  Result := Self.m_DataCobranca;
end;

procedure TItemContratoReceberNovo_Importacao.setDataCobranca(const a_Value: TDate);
begin
  Self.m_DataCobranca := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getDataReajuste: TDate;
begin
  Result := Self.m_DataReajuste;
end;

procedure TItemContratoReceberNovo_Importacao.setDataReajuste(const a_Value: TDate);
begin
  Self.m_DataReajuste := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getAutorizado: Boolean;
begin
  Result := Self.m_Autorizado;
end;

procedure TItemContratoReceberNovo_Importacao.setAutorizado(const a_Value: Boolean);
begin
  Self.m_Autorizado := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getCancelado: Boolean;
begin
  Result := Self.m_Cancelado;
end;

procedure TItemContratoReceberNovo_Importacao.setCancelado(const a_Value: Boolean);
begin
  Self.m_Cancelado := a_Value;
end;

function TItemContratoReceberNovo_Importacao.getDataHoraCancelamento: TDateTime;
begin
  Result := Self.m_DataHoraCancelamento;
end;

procedure TItemContratoReceberNovo_Importacao.setDataHoraCancelamento(const a_Value: TDateTime);
begin
  Self.m_DataHoraCancelamento := a_Value;
end;

destructor TItemContratoReceberNovo_Importacao.Destroy;
begin
  Self.ValoresVariaveis.Free();
end;

function TItemContratoReceberNovo_Importacao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemContratoReceberNovo_Importacao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemContratoReceberNovo_Importacao.getNameAPI(): String;
begin
  Result := 'ItemContratoReceberNovo_Importacao';
end;

function TItemContratoReceberNovo_Importacao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemContratoReceberNovo_Importacao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TItemContratoReceberExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TItemContratoReceberExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TItemContratoReceberExcluir.Destroy;
begin

end;

function TItemContratoReceberExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemContratoReceberExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemContratoReceberExcluir.getNameAPI(): String;
begin
  Result := 'ItemContratoReceberExcluir';
end;

function TItemContratoReceberExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemContratoReceberExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
