unit api.model.financas.PrevisaoFinanceiraReceber;

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

type TPrevisaoFinanceiraReceberNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Codigo: String;
    var m_Observacao: String;
    var m_DefinicaoContratante: String;
    var m_DefinicaoBeneficiario: String;
    var m_DataInicial: TDate;
    var m_TerminoPrevisao: Integer;
    var m_DataFinal: TDate;
    var m_NumeroOcorrencia: Integer;
    var m_DataProximoLancamento: TDate;
    var m_Frequencia: Integer;
    var m_Valor: Currency;
    var m_DiasIntervalo: Integer;
    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_Conta: String;
    var m_FormaPagamento: String;
    var m_GeraTitulos: Boolean;
    var m_QtdDiasDesconto: Integer;
    var m_QtdDiasMulta: Integer;
    var m_PercentualDesconto: Currency;
    var m_PercentualMulta: Currency;
    var m_PercentualJurosDiario: Currency;
    var m_IDDocumentoRateado: String;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    

    function getId(): String;
    function getCodigo(): String;
    function getObservacao(): String;
    function getDefinicaoContratante(): String;
    function getDefinicaoBeneficiario(): String;
    function getDataInicial(): TDate;
    function getTerminoPrevisao(): Integer;
    function getDataFinal(): TDate;
    function getNumeroOcorrencia(): Integer;
    function getDataProximoLancamento(): TDate;
    function getFrequencia(): Integer;
    function getValor(): Currency;
    function getDiasIntervalo(): Integer;
    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getConta(): String;
    function getFormaPagamento(): String;
    function getGeraTitulos(): Boolean;
    function getQtdDiasDesconto(): Integer;
    function getQtdDiasMulta(): Integer;
    function getPercentualDesconto(): Currency;
    function getPercentualMulta(): Currency;
    function getPercentualJurosDiario(): Currency;
    function getIDDocumentoRateado(): String;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    

    procedure setId(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setObservacao(const a_Value: String);
    procedure setDefinicaoContratante(const a_Value: String);
    procedure setDefinicaoBeneficiario(const a_Value: String);
    procedure setDataInicial(const a_Value: TDate);
    procedure setTerminoPrevisao(const a_Value: Integer);
    procedure setDataFinal(const a_Value: TDate);
    procedure setNumeroOcorrencia(const a_Value: Integer);
    procedure setDataProximoLancamento(const a_Value: TDate);
    procedure setFrequencia(const a_Value: Integer);
    procedure setValor(const a_Value: Currency);
    procedure setDiasIntervalo(const a_Value: Integer);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setConta(const a_Value: String);
    procedure setFormaPagamento(const a_Value: String);
    procedure setGeraTitulos(const a_Value: Boolean);
    procedure setQtdDiasDesconto(const a_Value: Integer);
    procedure setQtdDiasMulta(const a_Value: Integer);
    procedure setPercentualDesconto(const a_Value: Currency);
    procedure setPercentualMulta(const a_Value: Currency);
    procedure setPercentualJurosDiario(const a_Value: Currency);
    procedure setIDDocumentoRateado(const a_Value: String);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

    /// <summary>
/// Indica o nome do label ao informar a parte contratante.
    /// </summary>
    [NasajonSerializeAttribute('definicaocontratante')]
    property definicaocontratante: String read getDefinicaoContratante write setDefinicaoContratante;

    /// <summary>
/// Indica o nome do label ao informar a parte contratada.
    /// </summary>
    [NasajonSerializeAttribute('definicaobeneficiario')]
    property definicaobeneficiario: String read getDefinicaoBeneficiario write setDefinicaoBeneficiario;

    [NasajonSerializeAttribute('datainicial')]
    property datainicial: TDate read getDataInicial write setDataInicial;

    /// <summary>
/// Indica o tipo de término da previsão. 
/// 				           0-Indeterminado, 1-DataFinal, 2-Quantidade de ocorrências.
    /// </summary>
    [NasajonSerializeAttribute('terminoprevisao')]
    property terminoprevisao: Integer read getTerminoPrevisao write setTerminoPrevisao;

    /// <summary>
/// Obrigatório quando o término da previsão for por data.
    /// </summary>
    [NasajonSerializeAttribute('datafinal')]
    property datafinal: TDate read getDataFinal write setDataFinal;

    /// <summary>
/// Obrigatório quando o término da previsão for por ocorrências.
    /// </summary>
    [NasajonSerializeAttribute('numeroocorrencia')]
    property numeroocorrencia: Integer read getNumeroOcorrencia write setNumeroOcorrencia;

    /// <summary>
/// Indica o vencimento do próximo título, no momento da criação será o vencimento do primeiro título, a ser gerado pela previsão. Quando não informada será calculada com base na periodicidade.
    /// </summary>
    [NasajonSerializeAttribute('dataproximolancamento')]
    property dataproximolancamento: TDate read getDataProximoLancamento write setDataProximoLancamento;

    /// <summary>
/// Indica o tipo de periodicidade da previsão. 
/// 				           0-Diário, 1-Semanal, 2-Mensal, 3-Trimestral, 4-Semestral, 5-Anual, 6-Intervalo Fixo.
    /// </summary>
    [NasajonSerializeAttribute('frequencia')]
    property frequencia: Integer read getFrequencia write setFrequencia;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    /// <summary>
/// Obrigatório quando o frequência da previsão for por intervalo fixo.
    /// </summary>
    [NasajonSerializeAttribute('diasintervalo')]
    property diasintervalo: Integer read getDiasIntervalo write setDiasIntervalo;

    /// <summary>
/// Indica o grupo empresarial do estabelecimento da previsão financeira(contratante).
    /// </summary>
    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    /// <summary>
/// Indica a empresa do estabelecimento da previsão financeira(contratante).
    /// </summary>
    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Indica o estabelecimento da previsão financeira(contratante).
    /// </summary>
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Indica o fornecedor da previsão financeira(contratado).
    /// </summary>
    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    /// <summary>
/// Indica a forma de pagamento do título.
    /// </summary>
    [NasajonSerializeAttribute('formapagamento')]
    property formapagamento: String read getFormaPagamento write setFormaPagamento;

    /// <summary>
/// Indica se a previsão irá gerar títulos.
    /// </summary>
    [NasajonSerializeAttribute('geratitulos')]
    property geratitulos: Boolean read getGeraTitulos write setGeraTitulos;

    /// <summary>
/// Dias para cálculo de desconto no título com referência no vencimento.
    /// </summary>
    [NasajonSerializeAttribute('qtddiasdesconto')]
    property qtddiasdesconto: Integer read getQtdDiasDesconto write setQtdDiasDesconto;

    /// <summary>
/// Dias para cálculo de multa no título com referência no vencimento.
    /// </summary>
    [NasajonSerializeAttribute('qtddiasmulta')]
    property qtddiasmulta: Integer read getQtdDiasMulta write setQtdDiasMulta;

    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    [NasajonSerializeAttribute('percentualmulta')]
    property percentualmulta: Currency read getPercentualMulta write setPercentualMulta;

    [NasajonSerializeAttribute('percentualjurosdiario')]
    property percentualjurosdiario: Currency read getPercentualJurosDiario write setPercentualJurosDiario;

    [NasajonSerializeAttribute('iddocumentorateado')]
    property iddocumentorateado: String read getIDDocumentoRateado write setIDDocumentoRateado;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira, centro de custo e projeto.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    

end;

type TPrevisaoFinanceiraReceberAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Codigo: String;
    var m_Observacao: String;
    var m_DefinicaoContratante: String;
    var m_DefinicaoBeneficiario: String;
    var m_DataProximoLancamento: TDate;
    var m_Frequencia: Integer;
    var m_Valor: Currency;
    var m_DiasIntervalo: Integer;
    var m_Conta: String;
    var m_FormaPagamento: String;
    var m_QtdDiasDesconto: Integer;
    var m_QtdDiasMulta: Integer;
    var m_PercentualDesconto: Currency;
    var m_PercentualMulta: Currency;
    var m_PercentualJurosDiario: Currency;
    var m_IDDocumentoRateado: String;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    

    function getId(): String;
    function getCodigo(): String;
    function getObservacao(): String;
    function getDefinicaoContratante(): String;
    function getDefinicaoBeneficiario(): String;
    function getDataProximoLancamento(): TDate;
    function getFrequencia(): Integer;
    function getValor(): Currency;
    function getDiasIntervalo(): Integer;
    function getConta(): String;
    function getFormaPagamento(): String;
    function getQtdDiasDesconto(): Integer;
    function getQtdDiasMulta(): Integer;
    function getPercentualDesconto(): Currency;
    function getPercentualMulta(): Currency;
    function getPercentualJurosDiario(): Currency;
    function getIDDocumentoRateado(): String;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    

    procedure setId(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setObservacao(const a_Value: String);
    procedure setDefinicaoContratante(const a_Value: String);
    procedure setDefinicaoBeneficiario(const a_Value: String);
    procedure setDataProximoLancamento(const a_Value: TDate);
    procedure setFrequencia(const a_Value: Integer);
    procedure setValor(const a_Value: Currency);
    procedure setDiasIntervalo(const a_Value: Integer);
    procedure setConta(const a_Value: String);
    procedure setFormaPagamento(const a_Value: String);
    procedure setQtdDiasDesconto(const a_Value: Integer);
    procedure setQtdDiasMulta(const a_Value: Integer);
    procedure setPercentualDesconto(const a_Value: Currency);
    procedure setPercentualMulta(const a_Value: Currency);
    procedure setPercentualJurosDiario(const a_Value: Currency);
    procedure setIDDocumentoRateado(const a_Value: String);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

    /// <summary>
/// Indica o nome do label ao informar a parte contratante.
    /// </summary>
    [NasajonSerializeAttribute('definicaocontratante')]
    property definicaocontratante: String read getDefinicaoContratante write setDefinicaoContratante;

    /// <summary>
/// Indica o nome do label ao informar a parte contratada.
    /// </summary>
    [NasajonSerializeAttribute('definicaobeneficiario')]
    property definicaobeneficiario: String read getDefinicaoBeneficiario write setDefinicaoBeneficiario;

    /// <summary>
/// Indica o vencimento do próximo título a ser gerado pela previsão. Quando não informada será calculada com base na periodicidade.
    /// </summary>
    [NasajonSerializeAttribute('dataproximolancamento')]
    property dataproximolancamento: TDate read getDataProximoLancamento write setDataProximoLancamento;

    /// <summary>
/// Indica o tipo de periodicidade da previsão. 
/// 				           0-Diário, 1-Semanal, 2-Mensal, 3-Trimestral, 4-Semestral, 5-Anual, 6-Intervalo Fixo.
    /// </summary>
    [NasajonSerializeAttribute('frequencia')]
    property frequencia: Integer read getFrequencia write setFrequencia;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    /// <summary>
/// Obrigatório quando o frequência da previsão for por intervalo fixo.
    /// </summary>
    [NasajonSerializeAttribute('diasintervalo')]
    property diasintervalo: Integer read getDiasIntervalo write setDiasIntervalo;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    /// <summary>
/// Indica a forma de pagamento do título.
    /// </summary>
    [NasajonSerializeAttribute('formapagamento')]
    property formapagamento: String read getFormaPagamento write setFormaPagamento;

    /// <summary>
/// Dias para cálculo de desconto no título com referência no vencimento.
    /// </summary>
    [NasajonSerializeAttribute('qtddiasdesconto')]
    property qtddiasdesconto: Integer read getQtdDiasDesconto write setQtdDiasDesconto;

    /// <summary>
/// Dias para cálculo de multa no título com referência no vencimento.
    /// </summary>
    [NasajonSerializeAttribute('qtddiasmulta')]
    property qtddiasmulta: Integer read getQtdDiasMulta write setQtdDiasMulta;

    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    [NasajonSerializeAttribute('percentualmulta')]
    property percentualmulta: Currency read getPercentualMulta write setPercentualMulta;

    [NasajonSerializeAttribute('percentualjurosdiario')]
    property percentualjurosdiario: Currency read getPercentualJurosDiario write setPercentualJurosDiario;

    [NasajonSerializeAttribute('iddocumentorateado')]
    property iddocumentorateado: String read getIDDocumentoRateado write setIDDocumentoRateado;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira, centro de custo e projeto.
    /// </summary>
    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    

end;

type TPrevisaoFinanceiraReceberExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TPrevisaoFinanceiraReceberNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TPrevisaoFinanceiraReceberNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TPrevisaoFinanceiraReceberNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TPrevisaoFinanceiraReceberNovo.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getDefinicaoContratante: String;
begin
  Result := Self.m_DefinicaoContratante;
end;

procedure TPrevisaoFinanceiraReceberNovo.setDefinicaoContratante(const a_Value: String);
begin
  Self.m_DefinicaoContratante := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getDefinicaoBeneficiario: String;
begin
  Result := Self.m_DefinicaoBeneficiario;
end;

procedure TPrevisaoFinanceiraReceberNovo.setDefinicaoBeneficiario(const a_Value: String);
begin
  Self.m_DefinicaoBeneficiario := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TPrevisaoFinanceiraReceberNovo.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getTerminoPrevisao: Integer;
begin
  Result := Self.m_TerminoPrevisao;
end;

procedure TPrevisaoFinanceiraReceberNovo.setTerminoPrevisao(const a_Value: Integer);
begin
  Self.m_TerminoPrevisao := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getDataFinal: TDate;
begin
  Result := Self.m_DataFinal;
end;

procedure TPrevisaoFinanceiraReceberNovo.setDataFinal(const a_Value: TDate);
begin
  Self.m_DataFinal := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getNumeroOcorrencia: Integer;
begin
  Result := Self.m_NumeroOcorrencia;
end;

procedure TPrevisaoFinanceiraReceberNovo.setNumeroOcorrencia(const a_Value: Integer);
begin
  Self.m_NumeroOcorrencia := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getDataProximoLancamento: TDate;
begin
  Result := Self.m_DataProximoLancamento;
end;

procedure TPrevisaoFinanceiraReceberNovo.setDataProximoLancamento(const a_Value: TDate);
begin
  Self.m_DataProximoLancamento := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getFrequencia: Integer;
begin
  Result := Self.m_Frequencia;
end;

procedure TPrevisaoFinanceiraReceberNovo.setFrequencia(const a_Value: Integer);
begin
  Self.m_Frequencia := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TPrevisaoFinanceiraReceberNovo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getDiasIntervalo: Integer;
begin
  Result := Self.m_DiasIntervalo;
end;

procedure TPrevisaoFinanceiraReceberNovo.setDiasIntervalo(const a_Value: Integer);
begin
  Self.m_DiasIntervalo := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TPrevisaoFinanceiraReceberNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TPrevisaoFinanceiraReceberNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TPrevisaoFinanceiraReceberNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TPrevisaoFinanceiraReceberNovo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TPrevisaoFinanceiraReceberNovo.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getFormaPagamento: String;
begin
  Result := Self.m_FormaPagamento;
end;

procedure TPrevisaoFinanceiraReceberNovo.setFormaPagamento(const a_Value: String);
begin
  Self.m_FormaPagamento := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getGeraTitulos: Boolean;
begin
  Result := Self.m_GeraTitulos;
end;

procedure TPrevisaoFinanceiraReceberNovo.setGeraTitulos(const a_Value: Boolean);
begin
  Self.m_GeraTitulos := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getQtdDiasDesconto: Integer;
begin
  Result := Self.m_QtdDiasDesconto;
end;

procedure TPrevisaoFinanceiraReceberNovo.setQtdDiasDesconto(const a_Value: Integer);
begin
  Self.m_QtdDiasDesconto := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getQtdDiasMulta: Integer;
begin
  Result := Self.m_QtdDiasMulta;
end;

procedure TPrevisaoFinanceiraReceberNovo.setQtdDiasMulta(const a_Value: Integer);
begin
  Self.m_QtdDiasMulta := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TPrevisaoFinanceiraReceberNovo.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TPrevisaoFinanceiraReceberNovo.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getPercentualJurosDiario: Currency;
begin
  Result := Self.m_PercentualJurosDiario;
end;

procedure TPrevisaoFinanceiraReceberNovo.setPercentualJurosDiario(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiario := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getIDDocumentoRateado: String;
begin
  Result := Self.m_IDDocumentoRateado;
end;

procedure TPrevisaoFinanceiraReceberNovo.setIDDocumentoRateado(const a_Value: String);
begin
  Self.m_IDDocumentoRateado := a_Value;
end;

function TPrevisaoFinanceiraReceberNovo.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TPrevisaoFinanceiraReceberNovo.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

destructor TPrevisaoFinanceiraReceberNovo.Destroy;
begin
  Self.RateioFinanceiro.Free();
end;

function TPrevisaoFinanceiraReceberNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPrevisaoFinanceiraReceberNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPrevisaoFinanceiraReceberNovo.getNameAPI(): String;
begin
  Result := 'PrevisaoFinanceiraReceberNovo';
end;

function TPrevisaoFinanceiraReceberNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPrevisaoFinanceiraReceberNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TPrevisaoFinanceiraReceberAlterar.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getDefinicaoContratante: String;
begin
  Result := Self.m_DefinicaoContratante;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setDefinicaoContratante(const a_Value: String);
begin
  Self.m_DefinicaoContratante := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getDefinicaoBeneficiario: String;
begin
  Result := Self.m_DefinicaoBeneficiario;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setDefinicaoBeneficiario(const a_Value: String);
begin
  Self.m_DefinicaoBeneficiario := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getDataProximoLancamento: TDate;
begin
  Result := Self.m_DataProximoLancamento;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setDataProximoLancamento(const a_Value: TDate);
begin
  Self.m_DataProximoLancamento := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getFrequencia: Integer;
begin
  Result := Self.m_Frequencia;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setFrequencia(const a_Value: Integer);
begin
  Self.m_Frequencia := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getDiasIntervalo: Integer;
begin
  Result := Self.m_DiasIntervalo;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setDiasIntervalo(const a_Value: Integer);
begin
  Self.m_DiasIntervalo := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getFormaPagamento: String;
begin
  Result := Self.m_FormaPagamento;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setFormaPagamento(const a_Value: String);
begin
  Self.m_FormaPagamento := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getQtdDiasDesconto: Integer;
begin
  Result := Self.m_QtdDiasDesconto;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setQtdDiasDesconto(const a_Value: Integer);
begin
  Self.m_QtdDiasDesconto := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getQtdDiasMulta: Integer;
begin
  Result := Self.m_QtdDiasMulta;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setQtdDiasMulta(const a_Value: Integer);
begin
  Self.m_QtdDiasMulta := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getPercentualJurosDiario: Currency;
begin
  Result := Self.m_PercentualJurosDiario;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setPercentualJurosDiario(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiario := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getIDDocumentoRateado: String;
begin
  Result := Self.m_IDDocumentoRateado;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setIDDocumentoRateado(const a_Value: String);
begin
  Self.m_IDDocumentoRateado := a_Value;
end;

function TPrevisaoFinanceiraReceberAlterar.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TPrevisaoFinanceiraReceberAlterar.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

destructor TPrevisaoFinanceiraReceberAlterar.Destroy;
begin
  Self.RateioFinanceiro.Free();
end;

function TPrevisaoFinanceiraReceberAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPrevisaoFinanceiraReceberAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPrevisaoFinanceiraReceberAlterar.getNameAPI(): String;
begin
  Result := 'PrevisaoFinanceiraReceberAlterar';
end;

function TPrevisaoFinanceiraReceberAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPrevisaoFinanceiraReceberAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TPrevisaoFinanceiraReceberExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TPrevisaoFinanceiraReceberExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TPrevisaoFinanceiraReceberExcluir.Destroy;
begin

end;

function TPrevisaoFinanceiraReceberExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPrevisaoFinanceiraReceberExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPrevisaoFinanceiraReceberExcluir.getNameAPI(): String;
begin
  Result := 'PrevisaoFinanceiraReceberExcluir';
end;

function TPrevisaoFinanceiraReceberExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPrevisaoFinanceiraReceberExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
