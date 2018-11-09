unit api.model.persona.MovimentoFuncionario;

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
	
	

	;

type TMovimentoFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_CalculaNoFim: Boolean;
    var m_Invisivel: Boolean;
    var m_BaseParaCalculo: Currency;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getCalculaNoFim(): Boolean;
    function getInvisivel(): Boolean;
    function getBaseParaCalculo(): Currency;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setCalculaNoFim(const a_Value: Boolean);
    procedure setInvisivel(const a_Value: Boolean);
    procedure setBaseParaCalculo(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    /// <summary>
/// Indica se o movimento será calculado após todos os cálculos internos
    /// </summary>
    [NasajonSerializeAttribute('calculanofim')]
    property calculanofim: Boolean read getCalculaNoFim write setCalculaNoFim;

    [NasajonSerializeAttribute('invisivel')]
    property invisivel: Boolean read getInvisivel write setInvisivel;

    /// <summary>
/// Informar o valor que servirá de base para cálculo da rubrica. Por exemplo, se a rubrica for de faltas, informar o número de dias
    /// </summary>
    [NasajonSerializeAttribute('baseparacalculo')]
    property baseparacalculo: Currency read getBaseParaCalculo write setBaseParaCalculo;

    

end;

type TMovimentoFuncionarioAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_LotacaoNova: String;
    var m_CalculaNoFim: Boolean;
    var m_Invisivel: Boolean;
    var m_BaseParaCalculo: Currency;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getLotacaoNova(): String;
    function getCalculaNoFim(): Boolean;
    function getInvisivel(): Boolean;
    function getBaseParaCalculo(): Currency;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setLotacaoNova(const a_Value: String);
    procedure setCalculaNoFim(const a_Value: Boolean);
    procedure setInvisivel(const a_Value: Boolean);
    procedure setBaseParaCalculo(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('lotacaonova')]
    property lotacaonova: String read getLotacaoNova write setLotacaoNova;

    /// <summary>
/// Indica se o movimento será calculado após todos os cálculos internos
    /// </summary>
    [NasajonSerializeAttribute('calculanofim')]
    property calculanofim: Boolean read getCalculaNoFim write setCalculaNoFim;

    [NasajonSerializeAttribute('invisivel')]
    property invisivel: Boolean read getInvisivel write setInvisivel;

    /// <summary>
/// Informar o valor que servirá de base para cálculo da rubrica. Por exemplo, se a rubrica for de faltas, informar o número de dias
    /// </summary>
    [NasajonSerializeAttribute('baseparacalculo')]
    property baseparacalculo: Currency read getBaseParaCalculo write setBaseParaCalculo;

    

end;

type TMovimentoFuncionarioAlterarCalcularNaFolha = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setCalcular(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoFuncionarioAlterarCalcularNasFerias = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setCalcular(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Empresa: String;
    var m_Funcionario: String;
    var m_Lotacao: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getEmpresa(): String;
    function getFuncionario(): String;
    function getLotacao(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setCalcular(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoFuncionarioAlterarCalcularNoAdiantamento13 = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setCalcular(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setCalcular(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoFuncionarioAlterarCalcularNoPPLR = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setCalcular(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setCalcular(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoFuncionarioAlterarCalcularNaRescisao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setCalcular(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoFuncionarioAlterarCalcularNoComplemento13 = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setCalcular(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoFuncionarioAlterarPeriodoSempre = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    

end;

type TMovimentoFuncionarioAlterarPeriodoProximoCalculo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    

end;

type TMovimentoFuncionarioAlterarPeriodoMensal = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_Mes: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getMes(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setMes(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('mes')]
    property mes: Integer read getMes write setMes;

    

end;

type TMovimentoFuncionarioAlterarPeriodoSemanal = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_Semana: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getSemana(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setSemana(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('semana')]
    property semana: Integer read getSemana write setSemana;

    

end;

type TMovimentoFuncionarioAlterarPeriodoEntreDatas = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_DataInicial: TDate;
    var m_DataFinal: TDate;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getDataInicial(): TDate;
    function getDataFinal(): TDate;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setDataInicial(const a_Value: TDate);
    procedure setDataFinal(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('datainicial')]
    property datainicial: TDate read getDataInicial write setDataInicial;

    [NasajonSerializeAttribute('datafinal')]
    property datafinal: TDate read getDataFinal write setDataFinal;

    

end;

type TMovimentoFuncionarioAlterarPeriodoEntreMesAno = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_MesInicial: Integer;
    var m_MesFinal: Integer;
    var m_AnoInicial: Integer;
    var m_AnoFinal: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getMesInicial(): Integer;
    function getMesFinal(): Integer;
    function getAnoInicial(): Integer;
    function getAnoFinal(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setMesInicial(const a_Value: Integer);
    procedure setMesFinal(const a_Value: Integer);
    procedure setAnoInicial(const a_Value: Integer);
    procedure setAnoFinal(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('mesinicial')]
    property mesinicial: Integer read getMesInicial write setMesInicial;

    [NasajonSerializeAttribute('mesfinal')]
    property mesfinal: Integer read getMesFinal write setMesFinal;

    [NasajonSerializeAttribute('anoinicial')]
    property anoinicial: Integer read getAnoInicial write setAnoInicial;

    [NasajonSerializeAttribute('anofinal')]
    property anofinal: Integer read getAnoFinal write setAnoFinal;

    

end;

type TMovimentoFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Conjunto: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getConjunto(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idmovimento')]
    property idmovimento: String read getIdMovimento write setIdMovimento;

    [NasajonSerializeAttribute('rubrica')]
    property rubrica: String read getRubrica write setRubrica;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    

end;

	
implementation

  uses
      api.send;  

function TMovimentoFuncionarioNovo.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioNovo.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioNovo.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioNovo.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioNovo.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioNovo.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioNovo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioNovo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioNovo.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioNovo.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioNovo.getCalculaNoFim: Boolean;
begin
  Result := Self.m_CalculaNoFim;
end;

procedure TMovimentoFuncionarioNovo.setCalculaNoFim(const a_Value: Boolean);
begin
  Self.m_CalculaNoFim := a_Value;
end;

function TMovimentoFuncionarioNovo.getInvisivel: Boolean;
begin
  Result := Self.m_Invisivel;
end;

procedure TMovimentoFuncionarioNovo.setInvisivel(const a_Value: Boolean);
begin
  Self.m_Invisivel := a_Value;
end;

function TMovimentoFuncionarioNovo.getBaseParaCalculo: Currency;
begin
  Result := Self.m_BaseParaCalculo;
end;

procedure TMovimentoFuncionarioNovo.setBaseParaCalculo(const a_Value: Currency);
begin
  Self.m_BaseParaCalculo := a_Value;
end;

destructor TMovimentoFuncionarioNovo.Destroy;
begin

end;

function TMovimentoFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioNovo';
end;

function TMovimentoFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarDadosGerais.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarDadosGerais.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarDadosGerais.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarDadosGerais.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarDadosGerais.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarDadosGerais.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarDadosGerais.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarDadosGerais.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarDadosGerais.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarDadosGerais.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarDadosGerais.getLotacaoNova: String;
begin
  Result := Self.m_LotacaoNova;
end;

procedure TMovimentoFuncionarioAlterarDadosGerais.setLotacaoNova(const a_Value: String);
begin
  Self.m_LotacaoNova := a_Value;
end;

function TMovimentoFuncionarioAlterarDadosGerais.getCalculaNoFim: Boolean;
begin
  Result := Self.m_CalculaNoFim;
end;

procedure TMovimentoFuncionarioAlterarDadosGerais.setCalculaNoFim(const a_Value: Boolean);
begin
  Self.m_CalculaNoFim := a_Value;
end;

function TMovimentoFuncionarioAlterarDadosGerais.getInvisivel: Boolean;
begin
  Result := Self.m_Invisivel;
end;

procedure TMovimentoFuncionarioAlterarDadosGerais.setInvisivel(const a_Value: Boolean);
begin
  Self.m_Invisivel := a_Value;
end;

function TMovimentoFuncionarioAlterarDadosGerais.getBaseParaCalculo: Currency;
begin
  Result := Self.m_BaseParaCalculo;
end;

procedure TMovimentoFuncionarioAlterarDadosGerais.setBaseParaCalculo(const a_Value: Currency);
begin
  Self.m_BaseParaCalculo := a_Value;
end;

destructor TMovimentoFuncionarioAlterarDadosGerais.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarDadosGerais';
end;

function TMovimentoFuncionarioAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarCalcularNaFolha.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolha.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolha.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolha.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolha.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolha.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolha.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolha.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolha.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolha.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolha.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolha.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolha.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolha.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoFuncionarioAlterarCalcularNaFolha.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarCalcularNaFolha.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolha.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNaFolha.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarCalcularNaFolha';
end;

function TMovimentoFuncionarioAlterarCalcularNaFolha.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNaFolha.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarCalcularNasFerias.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarCalcularNasFerias.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNasFerias.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarCalcularNasFerias.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNasFerias.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarCalcularNasFerias.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNasFerias.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarCalcularNasFerias.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNasFerias.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarCalcularNasFerias.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNasFerias.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarCalcularNasFerias.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNasFerias.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoFuncionarioAlterarCalcularNasFerias.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoFuncionarioAlterarCalcularNasFerias.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarCalcularNasFerias.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarCalcularNasFerias.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNasFerias.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarCalcularNasFerias';
end;

function TMovimentoFuncionarioAlterarCalcularNasFerias.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNasFerias.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarCalcularNoDecimoTerceiro';
end;

function TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarCalcularNoAdiantamento13';
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha';
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoPPLR.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoPPLR.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoPPLR.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoPPLR.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoPPLR.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoPPLR.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoPPLR.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoPPLR.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoPPLR.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoPPLR.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoPPLR.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoPPLR.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoPPLR.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoPPLR.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoFuncionarioAlterarCalcularNoPPLR.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarCalcularNoPPLR.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarCalcularNoPPLR.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoPPLR.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarCalcularNoPPLR';
end;

function TMovimentoFuncionarioAlterarCalcularNoPPLR.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoPPLR.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarCalcularNaFolhaCorretiva';
end;

function TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarCalcularNaRescisao.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaRescisao.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaRescisao.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaRescisao.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaRescisao.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaRescisao.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaRescisao.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaRescisao.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaRescisao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaRescisao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaRescisao.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaRescisao.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNaRescisao.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoFuncionarioAlterarCalcularNaRescisao.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoFuncionarioAlterarCalcularNaRescisao.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarCalcularNaRescisao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarCalcularNaRescisao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNaRescisao.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarCalcularNaRescisao';
end;

function TMovimentoFuncionarioAlterarCalcularNaRescisao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNaRescisao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoComplemento13.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoComplemento13.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoComplemento13.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoComplemento13.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoComplemento13.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoComplemento13.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoComplemento13.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoComplemento13.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoComplemento13.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoComplemento13.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoComplemento13.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoComplemento13.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarCalcularNoComplemento13.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoFuncionarioAlterarCalcularNoComplemento13.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoFuncionarioAlterarCalcularNoComplemento13.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarCalcularNoComplemento13.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarCalcularNoComplemento13.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoComplemento13.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarCalcularNoComplemento13';
end;

function TMovimentoFuncionarioAlterarCalcularNoComplemento13.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarCalcularNoComplemento13.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarPeriodoSempre.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSempre.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoSempre.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSempre.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoSempre.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSempre.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoSempre.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSempre.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoSempre.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSempre.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoSempre.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSempre.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

destructor TMovimentoFuncionarioAlterarPeriodoSempre.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarPeriodoSempre.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarPeriodoSempre.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarPeriodoSempre.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarPeriodoSempre';
end;

function TMovimentoFuncionarioAlterarPeriodoSempre.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarPeriodoSempre.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarPeriodoProximoCalculo.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarPeriodoProximoCalculo.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoProximoCalculo.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarPeriodoProximoCalculo.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoProximoCalculo.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarPeriodoProximoCalculo.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoProximoCalculo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarPeriodoProximoCalculo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoProximoCalculo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarPeriodoProximoCalculo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoProximoCalculo.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarPeriodoProximoCalculo.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

destructor TMovimentoFuncionarioAlterarPeriodoProximoCalculo.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarPeriodoProximoCalculo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarPeriodoProximoCalculo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarPeriodoProximoCalculo.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarPeriodoProximoCalculo';
end;

function TMovimentoFuncionarioAlterarPeriodoProximoCalculo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarPeriodoProximoCalculo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarPeriodoMensal.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarPeriodoMensal.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoMensal.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarPeriodoMensal.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoMensal.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarPeriodoMensal.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoMensal.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarPeriodoMensal.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoMensal.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarPeriodoMensal.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoMensal.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarPeriodoMensal.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoMensal.getMes: Integer;
begin
  Result := Self.m_Mes;
end;

procedure TMovimentoFuncionarioAlterarPeriodoMensal.setMes(const a_Value: Integer);
begin
  Self.m_Mes := a_Value;
end;

destructor TMovimentoFuncionarioAlterarPeriodoMensal.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarPeriodoMensal.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarPeriodoMensal.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarPeriodoMensal.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarPeriodoMensal';
end;

function TMovimentoFuncionarioAlterarPeriodoMensal.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarPeriodoMensal.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarPeriodoSemanal.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSemanal.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoSemanal.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSemanal.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoSemanal.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSemanal.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoSemanal.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSemanal.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoSemanal.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSemanal.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoSemanal.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSemanal.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoSemanal.getSemana: Integer;
begin
  Result := Self.m_Semana;
end;

procedure TMovimentoFuncionarioAlterarPeriodoSemanal.setSemana(const a_Value: Integer);
begin
  Self.m_Semana := a_Value;
end;

destructor TMovimentoFuncionarioAlterarPeriodoSemanal.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarPeriodoSemanal.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarPeriodoSemanal.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarPeriodoSemanal.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarPeriodoSemanal';
end;

function TMovimentoFuncionarioAlterarPeriodoSemanal.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarPeriodoSemanal.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreDatas.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreDatas.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreDatas.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreDatas.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreDatas.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreDatas.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreDatas.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.getDataFinal: TDate;
begin
  Result := Self.m_DataFinal;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreDatas.setDataFinal(const a_Value: TDate);
begin
  Self.m_DataFinal := a_Value;
end;

destructor TMovimentoFuncionarioAlterarPeriodoEntreDatas.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarPeriodoEntreDatas';
end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarPeriodoEntreDatas.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreMesAno.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreMesAno.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreMesAno.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreMesAno.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreMesAno.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreMesAno.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getMesInicial: Integer;
begin
  Result := Self.m_MesInicial;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreMesAno.setMesInicial(const a_Value: Integer);
begin
  Self.m_MesInicial := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getMesFinal: Integer;
begin
  Result := Self.m_MesFinal;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreMesAno.setMesFinal(const a_Value: Integer);
begin
  Self.m_MesFinal := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getAnoInicial: Integer;
begin
  Result := Self.m_AnoInicial;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreMesAno.setAnoInicial(const a_Value: Integer);
begin
  Self.m_AnoInicial := a_Value;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getAnoFinal: Integer;
begin
  Result := Self.m_AnoFinal;
end;

procedure TMovimentoFuncionarioAlterarPeriodoEntreMesAno.setAnoFinal(const a_Value: Integer);
begin
  Self.m_AnoFinal := a_Value;
end;

destructor TMovimentoFuncionarioAlterarPeriodoEntreMesAno.Destroy;
begin

end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioAlterarPeriodoEntreMesAno';
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioAlterarPeriodoEntreMesAno.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoFuncionarioExcluir.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoFuncionarioExcluir.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoFuncionarioExcluir.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoFuncionarioExcluir.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoFuncionarioExcluir.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TMovimentoFuncionarioExcluir.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

function TMovimentoFuncionarioExcluir.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TMovimentoFuncionarioExcluir.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TMovimentoFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoFuncionarioExcluir.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoFuncionarioExcluir.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

destructor TMovimentoFuncionarioExcluir.Destroy;
begin

end;

function TMovimentoFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'MovimentoFuncionarioExcluir';
end;

function TMovimentoFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
