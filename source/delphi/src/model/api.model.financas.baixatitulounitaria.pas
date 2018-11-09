unit api.model.financas.BaixaTituloUnitaria;

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
	
  , api.model.financas.FormaPagamentoRenegociacaoTitulos
  , System.Generics.Collections
  , api.model.financas.ParcelaFormaPagamentoRenegociacaoTitulos
  , api.model.financas.ItemRateioFinanceiro
	

	;

type TBaixaTituloUnitariaBaixarTitulo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdTitulo: String;
    var m_Conta: String;
    var m_Data: TDate;
    var m_PercentualDesconto: Currency;
    var m_ValorDesconto: Currency;
    var m_PercentualJuros: Currency;
    var m_ValorJuros: Currency;
    var m_PercentualMulta: Currency;
    var m_ValorMulta: Currency;
    var m_ValorAcrescimo: Currency;
    var m_ValorTarifaBancaria: Currency;
    var m_ValorPisRetido: Currency;
    var m_ValorCofinsRetido: Currency;
    var m_ValorCsllRetido: Currency;
    var m_ValorIrrfRetido: Currency;
    var m_ValorInssRetido: Currency;
    var m_ValorissRetido: Currency;
    var m_ValorIrrfRetidoNotaFiscal: Currency;
    var m_ValorInssRetidoNotaFiscal: Currency;
    var m_Valor: Currency;
    var m_DataLancamento: TDate;
    var m_ImprimirCheque: Boolean;
    var m_Documento: String;
    var m_Historico: WideString;
    var m_VersoCheque: WideString;
    var m_Favorecido: String;
    var m_Renegociacao: Boolean;
    var m_FormasPagamentos: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>;
    var m_Parcelas: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>;
    var m_Usuario: String;
    var m_valorvariacaocambialativa: Currency;
    var m_valorvariacaocambialpassiva: Currency;
    var m_idlancamentoconta: String;
    var m_PrestacaoDeContas: String;
    var m_DataCompetencia: TDate;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    var m_baixapermuta: Boolean;
    var m_valorpermuta: Currency;
    var m_descricaopermuta: String;
    var m_OutrasRetencoes: Currency;
    var m_DescricaoOutrasRetencoes: String;
    var m_cotacao: Currency;
    var m_Origem: Integer;
    

    function getIdTitulo(): String;
    function getConta(): String;
    function getData(): TDate;
    function getPercentualDesconto(): Currency;
    function getValorDesconto(): Currency;
    function getPercentualJuros(): Currency;
    function getValorJuros(): Currency;
    function getPercentualMulta(): Currency;
    function getValorMulta(): Currency;
    function getValorAcrescimo(): Currency;
    function getValorTarifaBancaria(): Currency;
    function getValorPisRetido(): Currency;
    function getValorCofinsRetido(): Currency;
    function getValorCsllRetido(): Currency;
    function getValorIrrfRetido(): Currency;
    function getValorInssRetido(): Currency;
    function getValorissRetido(): Currency;
    function getValorIrrfRetidoNotaFiscal(): Currency;
    function getValorInssRetidoNotaFiscal(): Currency;
    function getValor(): Currency;
    function getDataLancamento(): TDate;
    function getImprimirCheque(): Boolean;
    function getDocumento(): String;
    function getHistorico(): WideString;
    function getVersoCheque(): WideString;
    function getFavorecido(): String;
    function getRenegociacao(): Boolean;
    function getFormasPagamentos(): TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>;
    function getParcelas(): TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>;
    function getUsuario(): String;
    function getvalorvariacaocambialativa(): Currency;
    function getvalorvariacaocambialpassiva(): Currency;
    function getidlancamentoconta(): String;
    function getPrestacaoDeContas(): String;
    function getDataCompetencia(): TDate;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    function getbaixapermuta(): Boolean;
    function getvalorpermuta(): Currency;
    function getdescricaopermuta(): String;
    function getOutrasRetencoes(): Currency;
    function getDescricaoOutrasRetencoes(): String;
    function getcotacao(): Currency;
    function getOrigem(): Integer;
    

    procedure setIdTitulo(const a_Value: String);
    procedure setConta(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setPercentualDesconto(const a_Value: Currency);
    procedure setValorDesconto(const a_Value: Currency);
    procedure setPercentualJuros(const a_Value: Currency);
    procedure setValorJuros(const a_Value: Currency);
    procedure setPercentualMulta(const a_Value: Currency);
    procedure setValorMulta(const a_Value: Currency);
    procedure setValorAcrescimo(const a_Value: Currency);
    procedure setValorTarifaBancaria(const a_Value: Currency);
    procedure setValorPisRetido(const a_Value: Currency);
    procedure setValorCofinsRetido(const a_Value: Currency);
    procedure setValorCsllRetido(const a_Value: Currency);
    procedure setValorIrrfRetido(const a_Value: Currency);
    procedure setValorInssRetido(const a_Value: Currency);
    procedure setValorissRetido(const a_Value: Currency);
    procedure setValorIrrfRetidoNotaFiscal(const a_Value: Currency);
    procedure setValorInssRetidoNotaFiscal(const a_Value: Currency);
    procedure setValor(const a_Value: Currency);
    procedure setDataLancamento(const a_Value: TDate);
    procedure setImprimirCheque(const a_Value: Boolean);
    procedure setDocumento(const a_Value: String);
    procedure setHistorico(const a_Value: WideString);
    procedure setVersoCheque(const a_Value: WideString);
    procedure setFavorecido(const a_Value: String);
    procedure setRenegociacao(const a_Value: Boolean);
    procedure setFormasPagamentos(const a_Value: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>);
    procedure setParcelas(const a_Value: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>);
    procedure setUsuario(const a_Value: String);
    procedure setvalorvariacaocambialativa(const a_Value: Currency);
    procedure setvalorvariacaocambialpassiva(const a_Value: Currency);
    procedure setidlancamentoconta(const a_Value: String);
    procedure setPrestacaoDeContas(const a_Value: String);
    procedure setDataCompetencia(const a_Value: TDate);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setbaixapermuta(const a_Value: Boolean);
    procedure setvalorpermuta(const a_Value: Currency);
    procedure setdescricaopermuta(const a_Value: String);
    procedure setOutrasRetencoes(const a_Value: Currency);
    procedure setDescricaoOutrasRetencoes(const a_Value: String);
    procedure setcotacao(const a_Value: Currency);
    procedure setOrigem(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idtitulo')]
    property idtitulo: String read getIdTitulo write setIdTitulo;

    /// <summary>
/// Indica a conta que o título foi baixado.
    /// </summary>
    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    /// <summary>
/// Indica a data que o título foi baixado.
    /// </summary>
    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    [NasajonSerializeAttribute('valordesconto')]
    property valordesconto: Currency read getValorDesconto write setValorDesconto;

    [NasajonSerializeAttribute('percentualjuros')]
    property percentualjuros: Currency read getPercentualJuros write setPercentualJuros;

    [NasajonSerializeAttribute('valorjuros')]
    property valorjuros: Currency read getValorJuros write setValorJuros;

    [NasajonSerializeAttribute('percentualmulta')]
    property percentualmulta: Currency read getPercentualMulta write setPercentualMulta;

    [NasajonSerializeAttribute('valormulta')]
    property valormulta: Currency read getValorMulta write setValorMulta;

    [NasajonSerializeAttribute('valoracrescimo')]
    property valoracrescimo: Currency read getValorAcrescimo write setValorAcrescimo;

    [NasajonSerializeAttribute('valortarifabancaria')]
    property valortarifabancaria: Currency read getValorTarifaBancaria write setValorTarifaBancaria;

    [NasajonSerializeAttribute('valorpisretido')]
    property valorpisretido: Currency read getValorPisRetido write setValorPisRetido;

    [NasajonSerializeAttribute('valorcofinsretido')]
    property valorcofinsretido: Currency read getValorCofinsRetido write setValorCofinsRetido;

    [NasajonSerializeAttribute('valorcsllretido')]
    property valorcsllretido: Currency read getValorCsllRetido write setValorCsllRetido;

    [NasajonSerializeAttribute('valorirrfretido')]
    property valorirrfretido: Currency read getValorIrrfRetido write setValorIrrfRetido;

    [NasajonSerializeAttribute('valorinssretido')]
    property valorinssretido: Currency read getValorInssRetido write setValorInssRetido;

    [NasajonSerializeAttribute('valorissretido')]
    property valorissretido: Currency read getValorissRetido write setValorissRetido;

    [NasajonSerializeAttribute('valorirrfretidonotafiscal')]
    property valorirrfretidonotafiscal: Currency read getValorIrrfRetidoNotaFiscal write setValorIrrfRetidoNotaFiscal;

    [NasajonSerializeAttribute('valorinssretidonotafiscal')]
    property valorinssretidonotafiscal: Currency read getValorInssRetidoNotaFiscal write setValorInssRetidoNotaFiscal;

    /// <summary>
/// Indica o valor líquido da baixa. Valor utilizado no lançamento bancário. 
/// 				            Quando não informado será calculado a partir do valor do título e seus impostos e valores financeiros.
    /// </summary>
    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    /// <summary>
/// Indica a data do lançamento bancário. Quando não informada é assumida a data da baixa.
    /// </summary>
    [NasajonSerializeAttribute('datalancamento')]
    property datalancamento: TDate read getDataLancamento write setDataLancamento;

    /// <summary>
/// Indica se o lançamento bancário estará habilitado para impressão do cheque. Utilizado somente para títulos a pagar.
    /// </summary>
    [NasajonSerializeAttribute('imprimircheque')]
    property imprimircheque: Boolean read getImprimirCheque write setImprimirCheque;

    /// <summary>
/// Campo de controle utilizado no lançamento bancário.
    /// </summary>
    [NasajonSerializeAttribute('documento')]
    property documento: String read getDocumento write setDocumento;

    /// <summary>
/// Indica o histórico do lançamento.
    /// </summary>
    [NasajonSerializeAttribute('historico')]
    property historico: WideString read getHistorico write setHistorico;

    /// <summary>
/// Indica o texto que será impresso no verso do cheque.
    /// </summary>
    [NasajonSerializeAttribute('versocheque')]
    property versocheque: WideString read getVersoCheque write setVersoCheque;

    /// <summary>
/// Indica o nome do favorecido que será impresso no cheque.
    /// </summary>
    [NasajonSerializeAttribute('favorecido')]
    property favorecido: String read getFavorecido write setFavorecido;

    [NasajonSerializeAttribute('renegociacao')]
    property renegociacao: Boolean read getRenegociacao write setRenegociacao;

    [NasajonSerializeAttribute('formaspagamentos')]
    property formaspagamentos: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo> read getFormasPagamentos write setFormasPagamentos;

    [NasajonSerializeAttribute('parcelas')]
    property parcelas: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo> read getParcelas write setParcelas;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('valorvariacaocambialativa')]
    property valorvariacaocambialativa: Currency read getvalorvariacaocambialativa write setvalorvariacaocambialativa;

    [NasajonSerializeAttribute('valorvariacaocambialpassiva')]
    property valorvariacaocambialpassiva: Currency read getvalorvariacaocambialpassiva write setvalorvariacaocambialpassiva;

    [NasajonSerializeAttribute('idlancamentoconta')]
    property idlancamentoconta: String read getidlancamentoconta write setidlancamentoconta;

    [NasajonSerializeAttribute('prestacaodecontas')]
    property prestacaodecontas: String read getPrestacaoDeContas write setPrestacaoDeContas;

    [NasajonSerializeAttribute('datacompetencia')]
    property datacompetencia: TDate read getDataCompetencia write setDataCompetencia;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira e centro de custo.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    [NasajonSerializeAttribute('baixapermuta')]
    property baixapermuta: Boolean read getbaixapermuta write setbaixapermuta;

    [NasajonSerializeAttribute('valorpermuta')]
    property valorpermuta: Currency read getvalorpermuta write setvalorpermuta;

    [NasajonSerializeAttribute('descricaopermuta')]
    property descricaopermuta: String read getdescricaopermuta write setdescricaopermuta;

    [NasajonSerializeAttribute('outrasretencoes')]
    property outrasretencoes: Currency read getOutrasRetencoes write setOutrasRetencoes;

    [NasajonSerializeAttribute('descricaooutrasretencoes')]
    property descricaooutrasretencoes: String read getDescricaoOutrasRetencoes write setDescricaoOutrasRetencoes;

    [NasajonSerializeAttribute('cotacao')]
    property cotacao: Currency read getcotacao write setcotacao;

    [NasajonSerializeAttribute('origem')]
    property origem: Integer read getOrigem write setOrigem;

    

end;

	
implementation

  uses
      api.send;  

function TBaixaTituloUnitariaBaixarTitulo.getIdTitulo: String;
begin
  Result := Self.m_IdTitulo;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setIdTitulo(const a_Value: String);
begin
  Self.m_IdTitulo := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorDesconto: Currency;
begin
  Result := Self.m_ValorDesconto;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorDesconto(const a_Value: Currency);
begin
  Self.m_ValorDesconto := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getPercentualJuros: Currency;
begin
  Result := Self.m_PercentualJuros;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setPercentualJuros(const a_Value: Currency);
begin
  Self.m_PercentualJuros := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorJuros: Currency;
begin
  Result := Self.m_ValorJuros;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorJuros(const a_Value: Currency);
begin
  Self.m_ValorJuros := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorMulta: Currency;
begin
  Result := Self.m_ValorMulta;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorMulta(const a_Value: Currency);
begin
  Self.m_ValorMulta := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorAcrescimo: Currency;
begin
  Result := Self.m_ValorAcrescimo;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorAcrescimo(const a_Value: Currency);
begin
  Self.m_ValorAcrescimo := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorTarifaBancaria: Currency;
begin
  Result := Self.m_ValorTarifaBancaria;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorTarifaBancaria(const a_Value: Currency);
begin
  Self.m_ValorTarifaBancaria := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorPisRetido: Currency;
begin
  Result := Self.m_ValorPisRetido;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorPisRetido(const a_Value: Currency);
begin
  Self.m_ValorPisRetido := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorCofinsRetido: Currency;
begin
  Result := Self.m_ValorCofinsRetido;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorCofinsRetido(const a_Value: Currency);
begin
  Self.m_ValorCofinsRetido := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorCsllRetido: Currency;
begin
  Result := Self.m_ValorCsllRetido;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorCsllRetido(const a_Value: Currency);
begin
  Self.m_ValorCsllRetido := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorIrrfRetido: Currency;
begin
  Result := Self.m_ValorIrrfRetido;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorIrrfRetido(const a_Value: Currency);
begin
  Self.m_ValorIrrfRetido := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorInssRetido: Currency;
begin
  Result := Self.m_ValorInssRetido;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorInssRetido(const a_Value: Currency);
begin
  Self.m_ValorInssRetido := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorissRetido: Currency;
begin
  Result := Self.m_ValorissRetido;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorissRetido(const a_Value: Currency);
begin
  Self.m_ValorissRetido := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorIrrfRetidoNotaFiscal: Currency;
begin
  Result := Self.m_ValorIrrfRetidoNotaFiscal;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorIrrfRetidoNotaFiscal(const a_Value: Currency);
begin
  Self.m_ValorIrrfRetidoNotaFiscal := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValorInssRetidoNotaFiscal: Currency;
begin
  Result := Self.m_ValorInssRetidoNotaFiscal;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValorInssRetidoNotaFiscal(const a_Value: Currency);
begin
  Self.m_ValorInssRetidoNotaFiscal := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getDataLancamento: TDate;
begin
  Result := Self.m_DataLancamento;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setDataLancamento(const a_Value: TDate);
begin
  Self.m_DataLancamento := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getImprimirCheque: Boolean;
begin
  Result := Self.m_ImprimirCheque;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setImprimirCheque(const a_Value: Boolean);
begin
  Self.m_ImprimirCheque := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getDocumento: String;
begin
  Result := Self.m_Documento;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setDocumento(const a_Value: String);
begin
  Self.m_Documento := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getHistorico: WideString;
begin
  Result := Self.m_Historico;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setHistorico(const a_Value: WideString);
begin
  Self.m_Historico := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getVersoCheque: WideString;
begin
  Result := Self.m_VersoCheque;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setVersoCheque(const a_Value: WideString);
begin
  Self.m_VersoCheque := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getFavorecido: String;
begin
  Result := Self.m_Favorecido;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setFavorecido(const a_Value: String);
begin
  Self.m_Favorecido := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getRenegociacao: Boolean;
begin
  Result := Self.m_Renegociacao;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setRenegociacao(const a_Value: Boolean);
begin
  Self.m_Renegociacao := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getFormasPagamentos: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>;
begin
  if not Assigned(Self.m_FormasPagamentos)
    then Self.m_FormasPagamentos := TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>.Create();
  Result := Self.m_FormasPagamentos;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setFormasPagamentos(const a_Value: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>);
begin
  Self.m_FormasPagamentos := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getParcelas: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>;
begin
  if not Assigned(Self.m_Parcelas)
    then Self.m_Parcelas := TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>.Create();
  Result := Self.m_Parcelas;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setParcelas(const a_Value: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>);
begin
  Self.m_Parcelas := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getvalorvariacaocambialativa: Currency;
begin
  Result := Self.m_valorvariacaocambialativa;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setvalorvariacaocambialativa(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialativa := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getvalorvariacaocambialpassiva: Currency;
begin
  Result := Self.m_valorvariacaocambialpassiva;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setvalorvariacaocambialpassiva(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialpassiva := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getidlancamentoconta: String;
begin
  Result := Self.m_idlancamentoconta;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setidlancamentoconta(const a_Value: String);
begin
  Self.m_idlancamentoconta := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getPrestacaoDeContas: String;
begin
  Result := Self.m_PrestacaoDeContas;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setPrestacaoDeContas(const a_Value: String);
begin
  Self.m_PrestacaoDeContas := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getDataCompetencia: TDate;
begin
  Result := Self.m_DataCompetencia;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setDataCompetencia(const a_Value: TDate);
begin
  Self.m_DataCompetencia := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getbaixapermuta: Boolean;
begin
  Result := Self.m_baixapermuta;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setbaixapermuta(const a_Value: Boolean);
begin
  Self.m_baixapermuta := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getvalorpermuta: Currency;
begin
  Result := Self.m_valorpermuta;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setvalorpermuta(const a_Value: Currency);
begin
  Self.m_valorpermuta := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getdescricaopermuta: String;
begin
  Result := Self.m_descricaopermuta;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setdescricaopermuta(const a_Value: String);
begin
  Self.m_descricaopermuta := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getOutrasRetencoes: Currency;
begin
  Result := Self.m_OutrasRetencoes;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setOutrasRetencoes(const a_Value: Currency);
begin
  Self.m_OutrasRetencoes := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getDescricaoOutrasRetencoes: String;
begin
  Result := Self.m_DescricaoOutrasRetencoes;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setDescricaoOutrasRetencoes(const a_Value: String);
begin
  Self.m_DescricaoOutrasRetencoes := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getcotacao: Currency;
begin
  Result := Self.m_cotacao;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setcotacao(const a_Value: Currency);
begin
  Self.m_cotacao := a_Value;
end;

function TBaixaTituloUnitariaBaixarTitulo.getOrigem: Integer;
begin
  Result := Self.m_Origem;
end;

procedure TBaixaTituloUnitariaBaixarTitulo.setOrigem(const a_Value: Integer);
begin
  Self.m_Origem := a_Value;
end;

destructor TBaixaTituloUnitariaBaixarTitulo.Destroy;
begin
  Self.FormasPagamentos.Free();  Self.Parcelas.Free();  Self.RateioFinanceiro.Free();
end;

function TBaixaTituloUnitariaBaixarTitulo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TBaixaTituloUnitariaBaixarTitulo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TBaixaTituloUnitariaBaixarTitulo.getNameAPI(): String;
begin
  Result := 'BaixaTituloUnitariaBaixarTitulo';
end;

function TBaixaTituloUnitariaBaixarTitulo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TBaixaTituloUnitariaBaixarTitulo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
