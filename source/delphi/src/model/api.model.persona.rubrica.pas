unit api.model.persona.Rubrica;

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
	
  , System.Generics.Collections
	

	;

type TRubricaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idRubrica: String;
    var m_Conjuntos: TList<String>;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Tipo: Integer;
    var m_Categoria: Integer;
    var m_Calculo: Integer;
    var m_Unidade: Integer;
    var m_Percentual: Currency;
    

    function getidRubrica(): String;
    function getConjuntos(): TList<String>;
    function getCodigo(): String;
    function getNome(): String;
    function getTipo(): Integer;
    function getCategoria(): Integer;
    function getCalculo(): Integer;
    function getUnidade(): Integer;
    function getPercentual(): Currency;
    

    procedure setidRubrica(const a_Value: String);
    procedure setConjuntos(const a_Value: TList<String>);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setCategoria(const a_Value: Integer);
    procedure setCalculo(const a_Value: Integer);
    procedure setUnidade(const a_Value: Integer);
    procedure setPercentual(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idrubrica')]
    property idrubrica: String read getidRubrica write setidRubrica;

    [NasajonSerializeAttribute('conjuntos')]
    property conjuntos: TList<String> read getConjuntos write setConjuntos;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Rendimento(0), Desconto(1) ou Base(2)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    /// <summary>
/// Conforme campo categoria na tela de rubricas do sistema
    /// </summary>
    [NasajonSerializeAttribute('categoria')]
    property categoria: Integer read getCategoria write setCategoria;

    /// <summary>
/// Folha(0), Férias(1), 13º(2) ou PPLR(3)
    /// </summary>
    [NasajonSerializeAttribute('calculo')]
    property calculo: Integer read getCalculo write setCalculo;

    /// <summary>
/// Conforme campo unidade da tabela de rubricas
    /// </summary>
    [NasajonSerializeAttribute('unidade')]
    property unidade: Integer read getUnidade write setUnidade;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    

end;

type TRubricaAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Tipo: Integer;
    var m_Categoria: Integer;
    var m_Calculo: Integer;
    var m_Unidade: Integer;
    var m_Percentual: Currency;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getTipo(): Integer;
    function getCategoria(): Integer;
    function getCalculo(): Integer;
    function getUnidade(): Integer;
    function getPercentual(): Currency;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setCategoria(const a_Value: Integer);
    procedure setCalculo(const a_Value: Integer);
    procedure setUnidade(const a_Value: Integer);
    procedure setPercentual(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Rendimento(0), Desconto(1) ou Base(2)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    /// <summary>
/// Conforme campo categoria na tela de rubricas do sistema
    /// </summary>
    [NasajonSerializeAttribute('categoria')]
    property categoria: Integer read getCategoria write setCategoria;

    /// <summary>
/// Folha(0), Férias(1), 13º(2) ou PPLR(3)
    /// </summary>
    [NasajonSerializeAttribute('calculo')]
    property calculo: Integer read getCalculo write setCalculo;

    /// <summary>
/// Conforme campo unidade da tabela de rubricas
    /// </summary>
    [NasajonSerializeAttribute('unidade')]
    property unidade: Integer read getUnidade write setUnidade;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    

end;

type TRubricaAlterarDadosFormulaAvancada = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Formula: WideString;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getFormula(): WideString;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFormula(const a_Value: WideString);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('formula')]
    property formula: WideString read getFormula write setFormula;

    

end;

type TRubricaAlterarDadosFormulaBasica = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Condicao: WideString;
    var m_Valor: WideString;
    var m_Referencia: WideString;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getCondicao(): WideString;
    function getValor(): WideString;
    function getReferencia(): WideString;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setCondicao(const a_Value: WideString);
    procedure setValor(const a_Value: WideString);
    procedure setReferencia(const a_Value: WideString);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('condicao')]
    property condicao: WideString read getCondicao write setCondicao;

    [NasajonSerializeAttribute('valor')]
    property valor: WideString read getValor write setValor;

    [NasajonSerializeAttribute('referencia')]
    property referencia: WideString read getReferencia write setReferencia;

    

end;

type TRubricaAlterarCodigoHomolognet = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Codigo: String;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getCodigo(): String;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    /// <summary>
/// Conforme tabela do manual do Homolognet
    /// </summary>
    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    

end;

type TRubricaAlterarCodigoESocial = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Codigo: String;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getCodigo(): String;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    /// <summary>
/// Conforme tabela do manual do eSocial
    /// </summary>
    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    

end;

type TRubricaAlterarIncidencias = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_SalarioFamilia: Boolean;
    var m_Sindical: Boolean;
    var m_FGTS: Boolean;
    var m_IRRF: Boolean;
    var m_INSS: Boolean;
    var m_InformeRendimentos: Boolean;
    var m_RAIS: Boolean;
    var m_DSR: Boolean;
    var m_PensaoAlimenticia: Boolean;
    var m_ValorDia: Boolean;
    var m_PIS: Boolean;
    var m_Encargos: Boolean;
    var m_HoraExtra: Boolean;
    var m_MaiorRemuneracao: Boolean;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getSalarioFamilia(): Boolean;
    function getSindical(): Boolean;
    function getFGTS(): Boolean;
    function getIRRF(): Boolean;
    function getINSS(): Boolean;
    function getInformeRendimentos(): Boolean;
    function getRAIS(): Boolean;
    function getDSR(): Boolean;
    function getPensaoAlimenticia(): Boolean;
    function getValorDia(): Boolean;
    function getPIS(): Boolean;
    function getEncargos(): Boolean;
    function getHoraExtra(): Boolean;
    function getMaiorRemuneracao(): Boolean;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setSalarioFamilia(const a_Value: Boolean);
    procedure setSindical(const a_Value: Boolean);
    procedure setFGTS(const a_Value: Boolean);
    procedure setIRRF(const a_Value: Boolean);
    procedure setINSS(const a_Value: Boolean);
    procedure setInformeRendimentos(const a_Value: Boolean);
    procedure setRAIS(const a_Value: Boolean);
    procedure setDSR(const a_Value: Boolean);
    procedure setPensaoAlimenticia(const a_Value: Boolean);
    procedure setValorDia(const a_Value: Boolean);
    procedure setPIS(const a_Value: Boolean);
    procedure setEncargos(const a_Value: Boolean);
    procedure setHoraExtra(const a_Value: Boolean);
    procedure setMaiorRemuneracao(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('salariofamilia')]
    property salariofamilia: Boolean read getSalarioFamilia write setSalarioFamilia;

    [NasajonSerializeAttribute('sindical')]
    property sindical: Boolean read getSindical write setSindical;

    [NasajonSerializeAttribute('fgts')]
    property fgts: Boolean read getFGTS write setFGTS;

    [NasajonSerializeAttribute('irrf')]
    property irrf: Boolean read getIRRF write setIRRF;

    [NasajonSerializeAttribute('inss')]
    property inss: Boolean read getINSS write setINSS;

    [NasajonSerializeAttribute('informerendimentos')]
    property informerendimentos: Boolean read getInformeRendimentos write setInformeRendimentos;

    [NasajonSerializeAttribute('rais')]
    property rais: Boolean read getRAIS write setRAIS;

    [NasajonSerializeAttribute('dsr')]
    property dsr: Boolean read getDSR write setDSR;

    [NasajonSerializeAttribute('pensaoalimenticia')]
    property pensaoalimenticia: Boolean read getPensaoAlimenticia write setPensaoAlimenticia;

    [NasajonSerializeAttribute('valordia')]
    property valordia: Boolean read getValorDia write setValorDia;

    [NasajonSerializeAttribute('pis')]
    property pis: Boolean read getPIS write setPIS;

    [NasajonSerializeAttribute('encargos')]
    property encargos: Boolean read getEncargos write setEncargos;

    [NasajonSerializeAttribute('horaextra')]
    property horaextra: Boolean read getHoraExtra write setHoraExtra;

    [NasajonSerializeAttribute('maiorremuneracao')]
    property maiorremuneracao: Boolean read getMaiorRemuneracao write setMaiorRemuneracao;

    

end;

type TRubricaAlterarDadosFaixa = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Faixa: String;
    var m_RubricaFaixa: String;
    var m_Base: Integer;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getFaixa(): String;
    function getRubricaFaixa(): String;
    function getBase(): Integer;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFaixa(const a_Value: String);
    procedure setRubricaFaixa(const a_Value: String);
    procedure setBase(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('faixa')]
    property faixa: String read getFaixa write setFaixa;

    [NasajonSerializeAttribute('rubricafaixa')]
    property rubricafaixa: String read getRubricaFaixa write setRubricaFaixa;

    /// <summary>
/// Conforme campo base da tela de rubricas
    /// </summary>
    [NasajonSerializeAttribute('base')]
    property base: Integer read getBase write setBase;

    

end;

type TRubricaAlterarInstituicao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Instituicao: String;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getInstituicao(): String;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setInstituicao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('instituicao')]
    property instituicao: String read getInstituicao write setInstituicao;

    

end;

type TRubricaAlterarDadosAnuenio = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Periodo: Integer;
    var m_QuantidadeMaxima: Integer;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getPeriodo(): Integer;
    function getQuantidadeMaxima(): Integer;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setPeriodo(const a_Value: Integer);
    procedure setQuantidadeMaxima(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('periodo')]
    property periodo: Integer read getPeriodo write setPeriodo;

    [NasajonSerializeAttribute('quantidademaxima')]
    property quantidademaxima: Integer read getQuantidadeMaxima write setQuantidadeMaxima;

    

end;

type TRubricaAlterarDadosPiso = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Valor: Currency;
    var m_FazProporcao: Boolean;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getValor(): Currency;
    function getFazProporcao(): Boolean;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setValor(const a_Value: Currency);
    procedure setFazProporcao(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    [NasajonSerializeAttribute('fazproporcao')]
    property fazproporcao: Boolean read getFazProporcao write setFazProporcao;

    

end;

type TRubricaAlterarDadosMedia = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Tipo: Integer;
    var m_Rescisao: Boolean;
    var m_DecimoTerceiro: Boolean;
    var m_Ferias: Boolean;
    var m_Maternidade: Boolean;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getTipo(): Integer;
    function getRescisao(): Boolean;
    function getDecimoTerceiro(): Boolean;
    function getFerias(): Boolean;
    function getMaternidade(): Boolean;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setRescisao(const a_Value: Boolean);
    procedure setDecimoTerceiro(const a_Value: Boolean);
    procedure setFerias(const a_Value: Boolean);
    procedure setMaternidade(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    /// <summary>
/// Não entra na média(0), Entra para médias de rendimentos variáveis(1) ou Entra para média de horas extras(2)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('rescisao')]
    property rescisao: Boolean read getRescisao write setRescisao;

    [NasajonSerializeAttribute('decimoterceiro')]
    property decimoterceiro: Boolean read getDecimoTerceiro write setDecimoTerceiro;

    [NasajonSerializeAttribute('ferias')]
    property ferias: Boolean read getFerias write setFerias;

    [NasajonSerializeAttribute('maternidade')]
    property maternidade: Boolean read getMaternidade write setMaternidade;

    

end;

type TRubricaAlterarDadosLimite = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_ValorMaximo: Currency;
    var m_ValorMinimo: Currency;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getValorMaximo(): Currency;
    function getValorMinimo(): Currency;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setValorMaximo(const a_Value: Currency);
    procedure setValorMinimo(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('valormaximo')]
    property valormaximo: Currency read getValorMaximo write setValorMaximo;

    [NasajonSerializeAttribute('valorminimo')]
    property valorminimo: Currency read getValorMinimo write setValorMinimo;

    

end;

type TRubricaAlterarValorIntegralBaseValorDia = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Integral: Boolean;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getIntegral(): Boolean;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setIntegral(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('integral')]
    property integral: Boolean read getIntegral write setIntegral;

    

end;

type TRubricaAlterarValorIntegralBaseValorHora = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Integral: Boolean;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getIntegral(): Boolean;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setIntegral(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('integral')]
    property integral: Boolean read getIntegral write setIntegral;

    

end;

type TRubricaAlterarValorIntegralBaseSindical = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Integral: Boolean;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getIntegral(): Boolean;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setIntegral(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('integral')]
    property integral: Boolean read getIntegral write setIntegral;

    

end;

type TRubricaAlterarValorIntegralBaseSalarioFamilia = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Integral: Boolean;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getIntegral(): Boolean;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setIntegral(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('integral')]
    property integral: Boolean read getIntegral write setIntegral;

    

end;

type TRubricaAlterarProporcaoNosCalculos = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Proporcionaliza: Boolean;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getProporcionaliza(): Boolean;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setProporcionaliza(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('proporcionaliza')]
    property proporcionaliza: Boolean read getProporcionaliza write setProporcionaliza;

    

end;

type TRubricaAlterarComparaComTarifaVT = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Compara: Boolean;
    

    function getRubrica(): String;
    function getConjunto(): String;
    function getCompara(): Boolean;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setCompara(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('compara')]
    property compara: Boolean read getCompara write setCompara;

    

end;

type TRubricaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Rubrica: String;
    var m_Conjunto: String;
    

    function getRubrica(): String;
    function getConjunto(): String;
    

    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    

end;

	
implementation

  uses
      api.send;  

function TRubricaNovo.getidRubrica: String;
begin
  Result := Self.m_idRubrica;
end;

procedure TRubricaNovo.setidRubrica(const a_Value: String);
begin
  Self.m_idRubrica := a_Value;
end;

function TRubricaNovo.getConjuntos: TList<String>;
begin
  Result := Self.m_Conjuntos;
end;

procedure TRubricaNovo.setConjuntos(const a_Value: TList<String>);
begin
  Self.m_Conjuntos := a_Value;
end;

function TRubricaNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TRubricaNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TRubricaNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TRubricaNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TRubricaNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TRubricaNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TRubricaNovo.getCategoria: Integer;
begin
  Result := Self.m_Categoria;
end;

procedure TRubricaNovo.setCategoria(const a_Value: Integer);
begin
  Self.m_Categoria := a_Value;
end;

function TRubricaNovo.getCalculo: Integer;
begin
  Result := Self.m_Calculo;
end;

procedure TRubricaNovo.setCalculo(const a_Value: Integer);
begin
  Self.m_Calculo := a_Value;
end;

function TRubricaNovo.getUnidade: Integer;
begin
  Result := Self.m_Unidade;
end;

procedure TRubricaNovo.setUnidade(const a_Value: Integer);
begin
  Self.m_Unidade := a_Value;
end;

function TRubricaNovo.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure TRubricaNovo.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

destructor TRubricaNovo.Destroy;
begin

end;

function TRubricaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaNovo.getNameAPI(): String;
begin
  Result := 'RubricaNovo';
end;

function TRubricaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarDadosGerais.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarDadosGerais.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarDadosGerais.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarDadosGerais.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarDadosGerais.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TRubricaAlterarDadosGerais.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TRubricaAlterarDadosGerais.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TRubricaAlterarDadosGerais.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TRubricaAlterarDadosGerais.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TRubricaAlterarDadosGerais.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TRubricaAlterarDadosGerais.getCategoria: Integer;
begin
  Result := Self.m_Categoria;
end;

procedure TRubricaAlterarDadosGerais.setCategoria(const a_Value: Integer);
begin
  Self.m_Categoria := a_Value;
end;

function TRubricaAlterarDadosGerais.getCalculo: Integer;
begin
  Result := Self.m_Calculo;
end;

procedure TRubricaAlterarDadosGerais.setCalculo(const a_Value: Integer);
begin
  Self.m_Calculo := a_Value;
end;

function TRubricaAlterarDadosGerais.getUnidade: Integer;
begin
  Result := Self.m_Unidade;
end;

procedure TRubricaAlterarDadosGerais.setUnidade(const a_Value: Integer);
begin
  Self.m_Unidade := a_Value;
end;

function TRubricaAlterarDadosGerais.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure TRubricaAlterarDadosGerais.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

destructor TRubricaAlterarDadosGerais.Destroy;
begin

end;

function TRubricaAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'RubricaAlterarDadosGerais';
end;

function TRubricaAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarDadosFormulaAvancada.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarDadosFormulaAvancada.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarDadosFormulaAvancada.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarDadosFormulaAvancada.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarDadosFormulaAvancada.getFormula: WideString;
begin
  Result := Self.m_Formula;
end;

procedure TRubricaAlterarDadosFormulaAvancada.setFormula(const a_Value: WideString);
begin
  Self.m_Formula := a_Value;
end;

destructor TRubricaAlterarDadosFormulaAvancada.Destroy;
begin

end;

function TRubricaAlterarDadosFormulaAvancada.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarDadosFormulaAvancada.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarDadosFormulaAvancada.getNameAPI(): String;
begin
  Result := 'RubricaAlterarDadosFormulaAvancada';
end;

function TRubricaAlterarDadosFormulaAvancada.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarDadosFormulaAvancada.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarDadosFormulaBasica.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarDadosFormulaBasica.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarDadosFormulaBasica.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarDadosFormulaBasica.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarDadosFormulaBasica.getCondicao: WideString;
begin
  Result := Self.m_Condicao;
end;

procedure TRubricaAlterarDadosFormulaBasica.setCondicao(const a_Value: WideString);
begin
  Self.m_Condicao := a_Value;
end;

function TRubricaAlterarDadosFormulaBasica.getValor: WideString;
begin
  Result := Self.m_Valor;
end;

procedure TRubricaAlterarDadosFormulaBasica.setValor(const a_Value: WideString);
begin
  Self.m_Valor := a_Value;
end;

function TRubricaAlterarDadosFormulaBasica.getReferencia: WideString;
begin
  Result := Self.m_Referencia;
end;

procedure TRubricaAlterarDadosFormulaBasica.setReferencia(const a_Value: WideString);
begin
  Self.m_Referencia := a_Value;
end;

destructor TRubricaAlterarDadosFormulaBasica.Destroy;
begin

end;

function TRubricaAlterarDadosFormulaBasica.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarDadosFormulaBasica.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarDadosFormulaBasica.getNameAPI(): String;
begin
  Result := 'RubricaAlterarDadosFormulaBasica';
end;

function TRubricaAlterarDadosFormulaBasica.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarDadosFormulaBasica.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarCodigoHomolognet.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarCodigoHomolognet.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarCodigoHomolognet.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarCodigoHomolognet.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarCodigoHomolognet.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TRubricaAlterarCodigoHomolognet.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

destructor TRubricaAlterarCodigoHomolognet.Destroy;
begin

end;

function TRubricaAlterarCodigoHomolognet.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarCodigoHomolognet.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarCodigoHomolognet.getNameAPI(): String;
begin
  Result := 'RubricaAlterarCodigoHomolognet';
end;

function TRubricaAlterarCodigoHomolognet.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarCodigoHomolognet.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarCodigoESocial.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarCodigoESocial.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarCodigoESocial.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarCodigoESocial.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarCodigoESocial.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TRubricaAlterarCodigoESocial.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

destructor TRubricaAlterarCodigoESocial.Destroy;
begin

end;

function TRubricaAlterarCodigoESocial.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarCodigoESocial.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarCodigoESocial.getNameAPI(): String;
begin
  Result := 'RubricaAlterarCodigoESocial';
end;

function TRubricaAlterarCodigoESocial.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarCodigoESocial.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarIncidencias.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarIncidencias.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarIncidencias.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarIncidencias.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarIncidencias.getSalarioFamilia: Boolean;
begin
  Result := Self.m_SalarioFamilia;
end;

procedure TRubricaAlterarIncidencias.setSalarioFamilia(const a_Value: Boolean);
begin
  Self.m_SalarioFamilia := a_Value;
end;

function TRubricaAlterarIncidencias.getSindical: Boolean;
begin
  Result := Self.m_Sindical;
end;

procedure TRubricaAlterarIncidencias.setSindical(const a_Value: Boolean);
begin
  Self.m_Sindical := a_Value;
end;

function TRubricaAlterarIncidencias.getFGTS: Boolean;
begin
  Result := Self.m_FGTS;
end;

procedure TRubricaAlterarIncidencias.setFGTS(const a_Value: Boolean);
begin
  Self.m_FGTS := a_Value;
end;

function TRubricaAlterarIncidencias.getIRRF: Boolean;
begin
  Result := Self.m_IRRF;
end;

procedure TRubricaAlterarIncidencias.setIRRF(const a_Value: Boolean);
begin
  Self.m_IRRF := a_Value;
end;

function TRubricaAlterarIncidencias.getINSS: Boolean;
begin
  Result := Self.m_INSS;
end;

procedure TRubricaAlterarIncidencias.setINSS(const a_Value: Boolean);
begin
  Self.m_INSS := a_Value;
end;

function TRubricaAlterarIncidencias.getInformeRendimentos: Boolean;
begin
  Result := Self.m_InformeRendimentos;
end;

procedure TRubricaAlterarIncidencias.setInformeRendimentos(const a_Value: Boolean);
begin
  Self.m_InformeRendimentos := a_Value;
end;

function TRubricaAlterarIncidencias.getRAIS: Boolean;
begin
  Result := Self.m_RAIS;
end;

procedure TRubricaAlterarIncidencias.setRAIS(const a_Value: Boolean);
begin
  Self.m_RAIS := a_Value;
end;

function TRubricaAlterarIncidencias.getDSR: Boolean;
begin
  Result := Self.m_DSR;
end;

procedure TRubricaAlterarIncidencias.setDSR(const a_Value: Boolean);
begin
  Self.m_DSR := a_Value;
end;

function TRubricaAlterarIncidencias.getPensaoAlimenticia: Boolean;
begin
  Result := Self.m_PensaoAlimenticia;
end;

procedure TRubricaAlterarIncidencias.setPensaoAlimenticia(const a_Value: Boolean);
begin
  Self.m_PensaoAlimenticia := a_Value;
end;

function TRubricaAlterarIncidencias.getValorDia: Boolean;
begin
  Result := Self.m_ValorDia;
end;

procedure TRubricaAlterarIncidencias.setValorDia(const a_Value: Boolean);
begin
  Self.m_ValorDia := a_Value;
end;

function TRubricaAlterarIncidencias.getPIS: Boolean;
begin
  Result := Self.m_PIS;
end;

procedure TRubricaAlterarIncidencias.setPIS(const a_Value: Boolean);
begin
  Self.m_PIS := a_Value;
end;

function TRubricaAlterarIncidencias.getEncargos: Boolean;
begin
  Result := Self.m_Encargos;
end;

procedure TRubricaAlterarIncidencias.setEncargos(const a_Value: Boolean);
begin
  Self.m_Encargos := a_Value;
end;

function TRubricaAlterarIncidencias.getHoraExtra: Boolean;
begin
  Result := Self.m_HoraExtra;
end;

procedure TRubricaAlterarIncidencias.setHoraExtra(const a_Value: Boolean);
begin
  Self.m_HoraExtra := a_Value;
end;

function TRubricaAlterarIncidencias.getMaiorRemuneracao: Boolean;
begin
  Result := Self.m_MaiorRemuneracao;
end;

procedure TRubricaAlterarIncidencias.setMaiorRemuneracao(const a_Value: Boolean);
begin
  Self.m_MaiorRemuneracao := a_Value;
end;

destructor TRubricaAlterarIncidencias.Destroy;
begin

end;

function TRubricaAlterarIncidencias.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarIncidencias.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarIncidencias.getNameAPI(): String;
begin
  Result := 'RubricaAlterarIncidencias';
end;

function TRubricaAlterarIncidencias.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarIncidencias.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarDadosFaixa.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarDadosFaixa.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarDadosFaixa.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarDadosFaixa.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarDadosFaixa.getFaixa: String;
begin
  Result := Self.m_Faixa;
end;

procedure TRubricaAlterarDadosFaixa.setFaixa(const a_Value: String);
begin
  Self.m_Faixa := a_Value;
end;

function TRubricaAlterarDadosFaixa.getRubricaFaixa: String;
begin
  Result := Self.m_RubricaFaixa;
end;

procedure TRubricaAlterarDadosFaixa.setRubricaFaixa(const a_Value: String);
begin
  Self.m_RubricaFaixa := a_Value;
end;

function TRubricaAlterarDadosFaixa.getBase: Integer;
begin
  Result := Self.m_Base;
end;

procedure TRubricaAlterarDadosFaixa.setBase(const a_Value: Integer);
begin
  Self.m_Base := a_Value;
end;

destructor TRubricaAlterarDadosFaixa.Destroy;
begin

end;

function TRubricaAlterarDadosFaixa.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarDadosFaixa.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarDadosFaixa.getNameAPI(): String;
begin
  Result := 'RubricaAlterarDadosFaixa';
end;

function TRubricaAlterarDadosFaixa.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarDadosFaixa.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarInstituicao.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarInstituicao.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarInstituicao.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarInstituicao.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarInstituicao.getInstituicao: String;
begin
  Result := Self.m_Instituicao;
end;

procedure TRubricaAlterarInstituicao.setInstituicao(const a_Value: String);
begin
  Self.m_Instituicao := a_Value;
end;

destructor TRubricaAlterarInstituicao.Destroy;
begin

end;

function TRubricaAlterarInstituicao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarInstituicao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarInstituicao.getNameAPI(): String;
begin
  Result := 'RubricaAlterarInstituicao';
end;

function TRubricaAlterarInstituicao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarInstituicao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarDadosAnuenio.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarDadosAnuenio.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarDadosAnuenio.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarDadosAnuenio.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarDadosAnuenio.getPeriodo: Integer;
begin
  Result := Self.m_Periodo;
end;

procedure TRubricaAlterarDadosAnuenio.setPeriodo(const a_Value: Integer);
begin
  Self.m_Periodo := a_Value;
end;

function TRubricaAlterarDadosAnuenio.getQuantidadeMaxima: Integer;
begin
  Result := Self.m_QuantidadeMaxima;
end;

procedure TRubricaAlterarDadosAnuenio.setQuantidadeMaxima(const a_Value: Integer);
begin
  Self.m_QuantidadeMaxima := a_Value;
end;

destructor TRubricaAlterarDadosAnuenio.Destroy;
begin

end;

function TRubricaAlterarDadosAnuenio.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarDadosAnuenio.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarDadosAnuenio.getNameAPI(): String;
begin
  Result := 'RubricaAlterarDadosAnuenio';
end;

function TRubricaAlterarDadosAnuenio.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarDadosAnuenio.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarDadosPiso.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarDadosPiso.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarDadosPiso.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarDadosPiso.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarDadosPiso.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TRubricaAlterarDadosPiso.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TRubricaAlterarDadosPiso.getFazProporcao: Boolean;
begin
  Result := Self.m_FazProporcao;
end;

procedure TRubricaAlterarDadosPiso.setFazProporcao(const a_Value: Boolean);
begin
  Self.m_FazProporcao := a_Value;
end;

destructor TRubricaAlterarDadosPiso.Destroy;
begin

end;

function TRubricaAlterarDadosPiso.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarDadosPiso.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarDadosPiso.getNameAPI(): String;
begin
  Result := 'RubricaAlterarDadosPiso';
end;

function TRubricaAlterarDadosPiso.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarDadosPiso.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarDadosMedia.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarDadosMedia.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarDadosMedia.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarDadosMedia.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarDadosMedia.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TRubricaAlterarDadosMedia.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TRubricaAlterarDadosMedia.getRescisao: Boolean;
begin
  Result := Self.m_Rescisao;
end;

procedure TRubricaAlterarDadosMedia.setRescisao(const a_Value: Boolean);
begin
  Self.m_Rescisao := a_Value;
end;

function TRubricaAlterarDadosMedia.getDecimoTerceiro: Boolean;
begin
  Result := Self.m_DecimoTerceiro;
end;

procedure TRubricaAlterarDadosMedia.setDecimoTerceiro(const a_Value: Boolean);
begin
  Self.m_DecimoTerceiro := a_Value;
end;

function TRubricaAlterarDadosMedia.getFerias: Boolean;
begin
  Result := Self.m_Ferias;
end;

procedure TRubricaAlterarDadosMedia.setFerias(const a_Value: Boolean);
begin
  Self.m_Ferias := a_Value;
end;

function TRubricaAlterarDadosMedia.getMaternidade: Boolean;
begin
  Result := Self.m_Maternidade;
end;

procedure TRubricaAlterarDadosMedia.setMaternidade(const a_Value: Boolean);
begin
  Self.m_Maternidade := a_Value;
end;

destructor TRubricaAlterarDadosMedia.Destroy;
begin

end;

function TRubricaAlterarDadosMedia.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarDadosMedia.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarDadosMedia.getNameAPI(): String;
begin
  Result := 'RubricaAlterarDadosMedia';
end;

function TRubricaAlterarDadosMedia.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarDadosMedia.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarDadosLimite.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarDadosLimite.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarDadosLimite.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarDadosLimite.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarDadosLimite.getValorMaximo: Currency;
begin
  Result := Self.m_ValorMaximo;
end;

procedure TRubricaAlterarDadosLimite.setValorMaximo(const a_Value: Currency);
begin
  Self.m_ValorMaximo := a_Value;
end;

function TRubricaAlterarDadosLimite.getValorMinimo: Currency;
begin
  Result := Self.m_ValorMinimo;
end;

procedure TRubricaAlterarDadosLimite.setValorMinimo(const a_Value: Currency);
begin
  Self.m_ValorMinimo := a_Value;
end;

destructor TRubricaAlterarDadosLimite.Destroy;
begin

end;

function TRubricaAlterarDadosLimite.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarDadosLimite.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarDadosLimite.getNameAPI(): String;
begin
  Result := 'RubricaAlterarDadosLimite';
end;

function TRubricaAlterarDadosLimite.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarDadosLimite.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarValorIntegralBaseValorDia.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarValorIntegralBaseValorDia.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarValorIntegralBaseValorDia.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarValorIntegralBaseValorDia.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarValorIntegralBaseValorDia.getIntegral: Boolean;
begin
  Result := Self.m_Integral;
end;

procedure TRubricaAlterarValorIntegralBaseValorDia.setIntegral(const a_Value: Boolean);
begin
  Self.m_Integral := a_Value;
end;

destructor TRubricaAlterarValorIntegralBaseValorDia.Destroy;
begin

end;

function TRubricaAlterarValorIntegralBaseValorDia.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarValorIntegralBaseValorDia.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarValorIntegralBaseValorDia.getNameAPI(): String;
begin
  Result := 'RubricaAlterarValorIntegralBaseValorDia';
end;

function TRubricaAlterarValorIntegralBaseValorDia.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarValorIntegralBaseValorDia.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarValorIntegralBaseValorHora.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarValorIntegralBaseValorHora.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarValorIntegralBaseValorHora.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarValorIntegralBaseValorHora.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarValorIntegralBaseValorHora.getIntegral: Boolean;
begin
  Result := Self.m_Integral;
end;

procedure TRubricaAlterarValorIntegralBaseValorHora.setIntegral(const a_Value: Boolean);
begin
  Self.m_Integral := a_Value;
end;

destructor TRubricaAlterarValorIntegralBaseValorHora.Destroy;
begin

end;

function TRubricaAlterarValorIntegralBaseValorHora.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarValorIntegralBaseValorHora.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarValorIntegralBaseValorHora.getNameAPI(): String;
begin
  Result := 'RubricaAlterarValorIntegralBaseValorHora';
end;

function TRubricaAlterarValorIntegralBaseValorHora.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarValorIntegralBaseValorHora.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarValorIntegralBaseSindical.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarValorIntegralBaseSindical.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarValorIntegralBaseSindical.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarValorIntegralBaseSindical.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarValorIntegralBaseSindical.getIntegral: Boolean;
begin
  Result := Self.m_Integral;
end;

procedure TRubricaAlterarValorIntegralBaseSindical.setIntegral(const a_Value: Boolean);
begin
  Self.m_Integral := a_Value;
end;

destructor TRubricaAlterarValorIntegralBaseSindical.Destroy;
begin

end;

function TRubricaAlterarValorIntegralBaseSindical.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarValorIntegralBaseSindical.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarValorIntegralBaseSindical.getNameAPI(): String;
begin
  Result := 'RubricaAlterarValorIntegralBaseSindical';
end;

function TRubricaAlterarValorIntegralBaseSindical.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarValorIntegralBaseSindical.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarValorIntegralBaseSalarioFamilia.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarValorIntegralBaseSalarioFamilia.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarValorIntegralBaseSalarioFamilia.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarValorIntegralBaseSalarioFamilia.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarValorIntegralBaseSalarioFamilia.getIntegral: Boolean;
begin
  Result := Self.m_Integral;
end;

procedure TRubricaAlterarValorIntegralBaseSalarioFamilia.setIntegral(const a_Value: Boolean);
begin
  Self.m_Integral := a_Value;
end;

destructor TRubricaAlterarValorIntegralBaseSalarioFamilia.Destroy;
begin

end;

function TRubricaAlterarValorIntegralBaseSalarioFamilia.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarValorIntegralBaseSalarioFamilia.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarValorIntegralBaseSalarioFamilia.getNameAPI(): String;
begin
  Result := 'RubricaAlterarValorIntegralBaseSalarioFamilia';
end;

function TRubricaAlterarValorIntegralBaseSalarioFamilia.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarValorIntegralBaseSalarioFamilia.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarProporcaoNosCalculos.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarProporcaoNosCalculos.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarProporcaoNosCalculos.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarProporcaoNosCalculos.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarProporcaoNosCalculos.getProporcionaliza: Boolean;
begin
  Result := Self.m_Proporcionaliza;
end;

procedure TRubricaAlterarProporcaoNosCalculos.setProporcionaliza(const a_Value: Boolean);
begin
  Self.m_Proporcionaliza := a_Value;
end;

destructor TRubricaAlterarProporcaoNosCalculos.Destroy;
begin

end;

function TRubricaAlterarProporcaoNosCalculos.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarProporcaoNosCalculos.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarProporcaoNosCalculos.getNameAPI(): String;
begin
  Result := 'RubricaAlterarProporcaoNosCalculos';
end;

function TRubricaAlterarProporcaoNosCalculos.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarProporcaoNosCalculos.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaAlterarComparaComTarifaVT.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaAlterarComparaComTarifaVT.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaAlterarComparaComTarifaVT.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaAlterarComparaComTarifaVT.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TRubricaAlterarComparaComTarifaVT.getCompara: Boolean;
begin
  Result := Self.m_Compara;
end;

procedure TRubricaAlterarComparaComTarifaVT.setCompara(const a_Value: Boolean);
begin
  Self.m_Compara := a_Value;
end;

destructor TRubricaAlterarComparaComTarifaVT.Destroy;
begin

end;

function TRubricaAlterarComparaComTarifaVT.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaAlterarComparaComTarifaVT.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaAlterarComparaComTarifaVT.getNameAPI(): String;
begin
  Result := 'RubricaAlterarComparaComTarifaVT';
end;

function TRubricaAlterarComparaComTarifaVT.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaAlterarComparaComTarifaVT.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRubricaExcluir.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TRubricaExcluir.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TRubricaExcluir.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TRubricaExcluir.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

destructor TRubricaExcluir.Destroy;
begin

end;

function TRubricaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRubricaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRubricaExcluir.getNameAPI(): String;
begin
  Result := 'RubricaExcluir';
end;

function TRubricaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRubricaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
