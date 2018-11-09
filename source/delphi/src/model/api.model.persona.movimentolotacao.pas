unit api.model.persona.MovimentoLotacao;

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

type TMovimentoLotacaoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Ordem: Integer;
    var m_CalculaNoFim: Boolean;
    var m_Invisivel: Boolean;
    var m_BaseParaCalculo: Currency;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getOrdem(): Integer;
    function getCalculaNoFim(): Boolean;
    function getInvisivel(): Boolean;
    function getBaseParaCalculo(): Currency;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setOrdem(const a_Value: Integer);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('ordem')]
    property ordem: Integer read getOrdem write setOrdem;

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

type TMovimentoLotacaoAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Ordem: Integer;
    var m_CalculaNoFim: Boolean;
    var m_Invisivel: Boolean;
    var m_BaseParaCalculo: Currency;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getOrdem(): Integer;
    function getCalculaNoFim(): Boolean;
    function getInvisivel(): Boolean;
    function getBaseParaCalculo(): Currency;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setOrdem(const a_Value: Integer);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('ordem')]
    property ordem: Integer read getOrdem write setOrdem;

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

type TMovimentoLotacaoAlterarCalcularNaFolha = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoLotacaoAlterarCalcularNasFerias = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Empresa: String;
    var m_Lotacao: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEmpresa(): String;
    function getLotacao(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
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

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoLotacaoAlterarCalcularNoPPLR = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoLotacaoAlterarCalcularNaRescisao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoLotacaoAlterarPeriodoSempre = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TMovimentoLotacaoAlterarPeriodoProximoCalculo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TMovimentoLotacaoAlterarPeriodoMensal = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Mes: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getMes(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('mes')]
    property mes: Integer read getMes write setMes;

    

end;

type TMovimentoLotacaoAlterarPeriodoSemanal = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Semana: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getSemana(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('semana')]
    property semana: Integer read getSemana write setSemana;

    

end;

type TMovimentoLotacaoAlterarPeriodoEntreDatas = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_DataInicial: TDate;
    var m_DataFinal: TDate;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getDataInicial(): TDate;
    function getDataFinal(): TDate;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datainicial')]
    property datainicial: TDate read getDataInicial write setDataInicial;

    [NasajonSerializeAttribute('datafinal')]
    property datafinal: TDate read getDataFinal write setDataFinal;

    

end;

type TMovimentoLotacaoAlterarPeriodoEntreMesAno = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    var m_MesInicial: Integer;
    var m_MesFinal: Integer;
    var m_AnoInicial: Integer;
    var m_AnoFinal: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    function getMesInicial(): Integer;
    function getMesFinal(): Integer;
    function getAnoInicial(): Integer;
    function getAnoFinal(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('mesinicial')]
    property mesinicial: Integer read getMesInicial write setMesInicial;

    [NasajonSerializeAttribute('mesfinal')]
    property mesfinal: Integer read getMesFinal write setMesFinal;

    [NasajonSerializeAttribute('anoinicial')]
    property anoinicial: Integer read getAnoInicial write setAnoInicial;

    [NasajonSerializeAttribute('anofinal')]
    property anofinal: Integer read getAnoFinal write setAnoFinal;

    

end;

type TMovimentoLotacaoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

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

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TMovimentoLotacaoNovo.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoNovo.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoNovo.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoNovo.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoNovo.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoNovo.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoNovo.getOrdem: Integer;
begin
  Result := Self.m_Ordem;
end;

procedure TMovimentoLotacaoNovo.setOrdem(const a_Value: Integer);
begin
  Self.m_Ordem := a_Value;
end;

function TMovimentoLotacaoNovo.getCalculaNoFim: Boolean;
begin
  Result := Self.m_CalculaNoFim;
end;

procedure TMovimentoLotacaoNovo.setCalculaNoFim(const a_Value: Boolean);
begin
  Self.m_CalculaNoFim := a_Value;
end;

function TMovimentoLotacaoNovo.getInvisivel: Boolean;
begin
  Result := Self.m_Invisivel;
end;

procedure TMovimentoLotacaoNovo.setInvisivel(const a_Value: Boolean);
begin
  Self.m_Invisivel := a_Value;
end;

function TMovimentoLotacaoNovo.getBaseParaCalculo: Currency;
begin
  Result := Self.m_BaseParaCalculo;
end;

procedure TMovimentoLotacaoNovo.setBaseParaCalculo(const a_Value: Currency);
begin
  Self.m_BaseParaCalculo := a_Value;
end;

destructor TMovimentoLotacaoNovo.Destroy;
begin

end;

function TMovimentoLotacaoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoNovo.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoNovo';
end;

function TMovimentoLotacaoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarDadosGerais.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarDadosGerais.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarDadosGerais.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarDadosGerais.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarDadosGerais.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarDadosGerais.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarDadosGerais.getOrdem: Integer;
begin
  Result := Self.m_Ordem;
end;

procedure TMovimentoLotacaoAlterarDadosGerais.setOrdem(const a_Value: Integer);
begin
  Self.m_Ordem := a_Value;
end;

function TMovimentoLotacaoAlterarDadosGerais.getCalculaNoFim: Boolean;
begin
  Result := Self.m_CalculaNoFim;
end;

procedure TMovimentoLotacaoAlterarDadosGerais.setCalculaNoFim(const a_Value: Boolean);
begin
  Self.m_CalculaNoFim := a_Value;
end;

function TMovimentoLotacaoAlterarDadosGerais.getInvisivel: Boolean;
begin
  Result := Self.m_Invisivel;
end;

procedure TMovimentoLotacaoAlterarDadosGerais.setInvisivel(const a_Value: Boolean);
begin
  Self.m_Invisivel := a_Value;
end;

function TMovimentoLotacaoAlterarDadosGerais.getBaseParaCalculo: Currency;
begin
  Result := Self.m_BaseParaCalculo;
end;

procedure TMovimentoLotacaoAlterarDadosGerais.setBaseParaCalculo(const a_Value: Currency);
begin
  Self.m_BaseParaCalculo := a_Value;
end;

destructor TMovimentoLotacaoAlterarDadosGerais.Destroy;
begin

end;

function TMovimentoLotacaoAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarDadosGerais';
end;

function TMovimentoLotacaoAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarCalcularNaFolha.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarCalcularNaFolha.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNaFolha.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarCalcularNaFolha.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNaFolha.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarCalcularNaFolha.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNaFolha.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarCalcularNaFolha.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNaFolha.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoLotacaoAlterarCalcularNaFolha.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoLotacaoAlterarCalcularNaFolha.Destroy;
begin

end;

function TMovimentoLotacaoAlterarCalcularNaFolha.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarCalcularNaFolha.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarCalcularNaFolha.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarCalcularNaFolha';
end;

function TMovimentoLotacaoAlterarCalcularNaFolha.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarCalcularNaFolha.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarCalcularNasFerias.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarCalcularNasFerias.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNasFerias.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarCalcularNasFerias.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNasFerias.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarCalcularNasFerias.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNasFerias.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarCalcularNasFerias.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNasFerias.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoLotacaoAlterarCalcularNasFerias.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoLotacaoAlterarCalcularNasFerias.Destroy;
begin

end;

function TMovimentoLotacaoAlterarCalcularNasFerias.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarCalcularNasFerias.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarCalcularNasFerias.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarCalcularNasFerias';
end;

function TMovimentoLotacaoAlterarCalcularNasFerias.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarCalcularNasFerias.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.Destroy;
begin

end;

function TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarCalcularNoDecimoTerceiro';
end;

function TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.Destroy;
begin

end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro';
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.Destroy;
begin

end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha';
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarCalcularNoPPLR.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarCalcularNoPPLR.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoPPLR.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarCalcularNoPPLR.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoPPLR.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarCalcularNoPPLR.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoPPLR.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarCalcularNoPPLR.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoPPLR.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoLotacaoAlterarCalcularNoPPLR.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoLotacaoAlterarCalcularNoPPLR.Destroy;
begin

end;

function TMovimentoLotacaoAlterarCalcularNoPPLR.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarCalcularNoPPLR.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarCalcularNoPPLR.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarCalcularNoPPLR';
end;

function TMovimentoLotacaoAlterarCalcularNoPPLR.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarCalcularNoPPLR.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.Destroy;
begin

end;

function TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarCalcularNaFolhaCorretiva';
end;

function TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarCalcularNaRescisao.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarCalcularNaRescisao.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNaRescisao.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarCalcularNaRescisao.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNaRescisao.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarCalcularNaRescisao.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNaRescisao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarCalcularNaRescisao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNaRescisao.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoLotacaoAlterarCalcularNaRescisao.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoLotacaoAlterarCalcularNaRescisao.Destroy;
begin

end;

function TMovimentoLotacaoAlterarCalcularNaRescisao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarCalcularNaRescisao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarCalcularNaRescisao.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarCalcularNaRescisao';
end;

function TMovimentoLotacaoAlterarCalcularNaRescisao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarCalcularNaRescisao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.Destroy;
begin

end;

function TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro';
end;

function TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarPeriodoSempre.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarPeriodoSempre.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoSempre.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarPeriodoSempre.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoSempre.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarPeriodoSempre.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoSempre.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarPeriodoSempre.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TMovimentoLotacaoAlterarPeriodoSempre.Destroy;
begin

end;

function TMovimentoLotacaoAlterarPeriodoSempre.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarPeriodoSempre.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarPeriodoSempre.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarPeriodoSempre';
end;

function TMovimentoLotacaoAlterarPeriodoSempre.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarPeriodoSempre.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarPeriodoProximoCalculo.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarPeriodoProximoCalculo.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoProximoCalculo.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarPeriodoProximoCalculo.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoProximoCalculo.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarPeriodoProximoCalculo.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoProximoCalculo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarPeriodoProximoCalculo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TMovimentoLotacaoAlterarPeriodoProximoCalculo.Destroy;
begin

end;

function TMovimentoLotacaoAlterarPeriodoProximoCalculo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarPeriodoProximoCalculo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarPeriodoProximoCalculo.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarPeriodoProximoCalculo';
end;

function TMovimentoLotacaoAlterarPeriodoProximoCalculo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarPeriodoProximoCalculo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarPeriodoMensal.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarPeriodoMensal.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoMensal.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarPeriodoMensal.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoMensal.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarPeriodoMensal.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoMensal.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarPeriodoMensal.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoMensal.getMes: Integer;
begin
  Result := Self.m_Mes;
end;

procedure TMovimentoLotacaoAlterarPeriodoMensal.setMes(const a_Value: Integer);
begin
  Self.m_Mes := a_Value;
end;

destructor TMovimentoLotacaoAlterarPeriodoMensal.Destroy;
begin

end;

function TMovimentoLotacaoAlterarPeriodoMensal.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarPeriodoMensal.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarPeriodoMensal.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarPeriodoMensal';
end;

function TMovimentoLotacaoAlterarPeriodoMensal.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarPeriodoMensal.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarPeriodoSemanal.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarPeriodoSemanal.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoSemanal.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarPeriodoSemanal.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoSemanal.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarPeriodoSemanal.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoSemanal.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarPeriodoSemanal.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoSemanal.getSemana: Integer;
begin
  Result := Self.m_Semana;
end;

procedure TMovimentoLotacaoAlterarPeriodoSemanal.setSemana(const a_Value: Integer);
begin
  Self.m_Semana := a_Value;
end;

destructor TMovimentoLotacaoAlterarPeriodoSemanal.Destroy;
begin

end;

function TMovimentoLotacaoAlterarPeriodoSemanal.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarPeriodoSemanal.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarPeriodoSemanal.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarPeriodoSemanal';
end;

function TMovimentoLotacaoAlterarPeriodoSemanal.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarPeriodoSemanal.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarPeriodoEntreDatas.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreDatas.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoEntreDatas.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreDatas.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoEntreDatas.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreDatas.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoEntreDatas.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreDatas.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoEntreDatas.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreDatas.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoEntreDatas.getDataFinal: TDate;
begin
  Result := Self.m_DataFinal;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreDatas.setDataFinal(const a_Value: TDate);
begin
  Self.m_DataFinal := a_Value;
end;

destructor TMovimentoLotacaoAlterarPeriodoEntreDatas.Destroy;
begin

end;

function TMovimentoLotacaoAlterarPeriodoEntreDatas.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarPeriodoEntreDatas.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarPeriodoEntreDatas.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarPeriodoEntreDatas';
end;

function TMovimentoLotacaoAlterarPeriodoEntreDatas.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarPeriodoEntreDatas.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreMesAno.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreMesAno.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreMesAno.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreMesAno.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.getMesInicial: Integer;
begin
  Result := Self.m_MesInicial;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreMesAno.setMesInicial(const a_Value: Integer);
begin
  Self.m_MesInicial := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.getMesFinal: Integer;
begin
  Result := Self.m_MesFinal;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreMesAno.setMesFinal(const a_Value: Integer);
begin
  Self.m_MesFinal := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.getAnoInicial: Integer;
begin
  Result := Self.m_AnoInicial;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreMesAno.setAnoInicial(const a_Value: Integer);
begin
  Self.m_AnoInicial := a_Value;
end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.getAnoFinal: Integer;
begin
  Result := Self.m_AnoFinal;
end;

procedure TMovimentoLotacaoAlterarPeriodoEntreMesAno.setAnoFinal(const a_Value: Integer);
begin
  Self.m_AnoFinal := a_Value;
end;

destructor TMovimentoLotacaoAlterarPeriodoEntreMesAno.Destroy;
begin

end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoAlterarPeriodoEntreMesAno';
end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoAlterarPeriodoEntreMesAno.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoLotacaoExcluir.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoLotacaoExcluir.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoLotacaoExcluir.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoLotacaoExcluir.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoLotacaoExcluir.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TMovimentoLotacaoExcluir.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TMovimentoLotacaoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoLotacaoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TMovimentoLotacaoExcluir.Destroy;
begin

end;

function TMovimentoLotacaoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoLotacaoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoLotacaoExcluir.getNameAPI(): String;
begin
  Result := 'MovimentoLotacaoExcluir';
end;

function TMovimentoLotacaoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoLotacaoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
