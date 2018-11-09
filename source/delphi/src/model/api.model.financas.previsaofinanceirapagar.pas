unit api.model.financas.PrevisaoFinanceiraPagar;

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

type TPrevisaoFinanceiraPagarNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

type TPrevisaoFinanceiraPagarAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

type TPrevisaoFinanceiraPagarExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TPrevisaoFinanceiraPagarNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TPrevisaoFinanceiraPagarNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TPrevisaoFinanceiraPagarNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TPrevisaoFinanceiraPagarNovo.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getDefinicaoContratante: String;
begin
  Result := Self.m_DefinicaoContratante;
end;

procedure TPrevisaoFinanceiraPagarNovo.setDefinicaoContratante(const a_Value: String);
begin
  Self.m_DefinicaoContratante := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getDefinicaoBeneficiario: String;
begin
  Result := Self.m_DefinicaoBeneficiario;
end;

procedure TPrevisaoFinanceiraPagarNovo.setDefinicaoBeneficiario(const a_Value: String);
begin
  Self.m_DefinicaoBeneficiario := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TPrevisaoFinanceiraPagarNovo.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getTerminoPrevisao: Integer;
begin
  Result := Self.m_TerminoPrevisao;
end;

procedure TPrevisaoFinanceiraPagarNovo.setTerminoPrevisao(const a_Value: Integer);
begin
  Self.m_TerminoPrevisao := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getDataFinal: TDate;
begin
  Result := Self.m_DataFinal;
end;

procedure TPrevisaoFinanceiraPagarNovo.setDataFinal(const a_Value: TDate);
begin
  Self.m_DataFinal := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getNumeroOcorrencia: Integer;
begin
  Result := Self.m_NumeroOcorrencia;
end;

procedure TPrevisaoFinanceiraPagarNovo.setNumeroOcorrencia(const a_Value: Integer);
begin
  Self.m_NumeroOcorrencia := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getDataProximoLancamento: TDate;
begin
  Result := Self.m_DataProximoLancamento;
end;

procedure TPrevisaoFinanceiraPagarNovo.setDataProximoLancamento(const a_Value: TDate);
begin
  Self.m_DataProximoLancamento := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getFrequencia: Integer;
begin
  Result := Self.m_Frequencia;
end;

procedure TPrevisaoFinanceiraPagarNovo.setFrequencia(const a_Value: Integer);
begin
  Self.m_Frequencia := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TPrevisaoFinanceiraPagarNovo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getDiasIntervalo: Integer;
begin
  Result := Self.m_DiasIntervalo;
end;

procedure TPrevisaoFinanceiraPagarNovo.setDiasIntervalo(const a_Value: Integer);
begin
  Self.m_DiasIntervalo := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TPrevisaoFinanceiraPagarNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TPrevisaoFinanceiraPagarNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TPrevisaoFinanceiraPagarNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TPrevisaoFinanceiraPagarNovo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TPrevisaoFinanceiraPagarNovo.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getFormaPagamento: String;
begin
  Result := Self.m_FormaPagamento;
end;

procedure TPrevisaoFinanceiraPagarNovo.setFormaPagamento(const a_Value: String);
begin
  Self.m_FormaPagamento := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getGeraTitulos: Boolean;
begin
  Result := Self.m_GeraTitulos;
end;

procedure TPrevisaoFinanceiraPagarNovo.setGeraTitulos(const a_Value: Boolean);
begin
  Self.m_GeraTitulos := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getQtdDiasDesconto: Integer;
begin
  Result := Self.m_QtdDiasDesconto;
end;

procedure TPrevisaoFinanceiraPagarNovo.setQtdDiasDesconto(const a_Value: Integer);
begin
  Self.m_QtdDiasDesconto := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getQtdDiasMulta: Integer;
begin
  Result := Self.m_QtdDiasMulta;
end;

procedure TPrevisaoFinanceiraPagarNovo.setQtdDiasMulta(const a_Value: Integer);
begin
  Self.m_QtdDiasMulta := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TPrevisaoFinanceiraPagarNovo.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TPrevisaoFinanceiraPagarNovo.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getPercentualJurosDiario: Currency;
begin
  Result := Self.m_PercentualJurosDiario;
end;

procedure TPrevisaoFinanceiraPagarNovo.setPercentualJurosDiario(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiario := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getIDDocumentoRateado: String;
begin
  Result := Self.m_IDDocumentoRateado;
end;

procedure TPrevisaoFinanceiraPagarNovo.setIDDocumentoRateado(const a_Value: String);
begin
  Self.m_IDDocumentoRateado := a_Value;
end;

function TPrevisaoFinanceiraPagarNovo.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TPrevisaoFinanceiraPagarNovo.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

destructor TPrevisaoFinanceiraPagarNovo.Destroy;
begin
  Self.RateioFinanceiro.Free();
end;

function TPrevisaoFinanceiraPagarNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPrevisaoFinanceiraPagarNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPrevisaoFinanceiraPagarNovo.getNameAPI(): String;
begin
  Result := 'PrevisaoFinanceiraPagarNovo';
end;

function TPrevisaoFinanceiraPagarNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPrevisaoFinanceiraPagarNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TPrevisaoFinanceiraPagarAlterar.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getDefinicaoContratante: String;
begin
  Result := Self.m_DefinicaoContratante;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setDefinicaoContratante(const a_Value: String);
begin
  Self.m_DefinicaoContratante := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getDefinicaoBeneficiario: String;
begin
  Result := Self.m_DefinicaoBeneficiario;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setDefinicaoBeneficiario(const a_Value: String);
begin
  Self.m_DefinicaoBeneficiario := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getDataProximoLancamento: TDate;
begin
  Result := Self.m_DataProximoLancamento;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setDataProximoLancamento(const a_Value: TDate);
begin
  Self.m_DataProximoLancamento := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getFrequencia: Integer;
begin
  Result := Self.m_Frequencia;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setFrequencia(const a_Value: Integer);
begin
  Self.m_Frequencia := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getDiasIntervalo: Integer;
begin
  Result := Self.m_DiasIntervalo;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setDiasIntervalo(const a_Value: Integer);
begin
  Self.m_DiasIntervalo := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getFormaPagamento: String;
begin
  Result := Self.m_FormaPagamento;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setFormaPagamento(const a_Value: String);
begin
  Self.m_FormaPagamento := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getQtdDiasDesconto: Integer;
begin
  Result := Self.m_QtdDiasDesconto;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setQtdDiasDesconto(const a_Value: Integer);
begin
  Self.m_QtdDiasDesconto := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getQtdDiasMulta: Integer;
begin
  Result := Self.m_QtdDiasMulta;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setQtdDiasMulta(const a_Value: Integer);
begin
  Self.m_QtdDiasMulta := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getPercentualJurosDiario: Currency;
begin
  Result := Self.m_PercentualJurosDiario;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setPercentualJurosDiario(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiario := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getIDDocumentoRateado: String;
begin
  Result := Self.m_IDDocumentoRateado;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setIDDocumentoRateado(const a_Value: String);
begin
  Self.m_IDDocumentoRateado := a_Value;
end;

function TPrevisaoFinanceiraPagarAlterar.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TPrevisaoFinanceiraPagarAlterar.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

destructor TPrevisaoFinanceiraPagarAlterar.Destroy;
begin
  Self.RateioFinanceiro.Free();
end;

function TPrevisaoFinanceiraPagarAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPrevisaoFinanceiraPagarAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPrevisaoFinanceiraPagarAlterar.getNameAPI(): String;
begin
  Result := 'PrevisaoFinanceiraPagarAlterar';
end;

function TPrevisaoFinanceiraPagarAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPrevisaoFinanceiraPagarAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TPrevisaoFinanceiraPagarExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TPrevisaoFinanceiraPagarExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TPrevisaoFinanceiraPagarExcluir.Destroy;
begin

end;

function TPrevisaoFinanceiraPagarExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPrevisaoFinanceiraPagarExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPrevisaoFinanceiraPagarExcluir.getNameAPI(): String;
begin
  Result := 'PrevisaoFinanceiraPagarExcluir';
end;

function TPrevisaoFinanceiraPagarExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPrevisaoFinanceiraPagarExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
