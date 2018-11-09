unit api.model.persona.MovimentoEstabelecimento;

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

type TMovimentoEstabelecimentoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Ordem: Integer;
    var m_CalculaNoFim: Boolean;
    var m_Invisivel: Boolean;
    var m_BaseParaCalculo: Currency;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getOrdem(): Integer;
    function getCalculaNoFim(): Boolean;
    function getInvisivel(): Boolean;
    function getBaseParaCalculo(): Currency;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

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

type TMovimentoEstabelecimentoAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Ordem: Integer;
    var m_CalculaNoFim: Boolean;
    var m_Invisivel: Boolean;
    var m_BaseParaCalculo: Currency;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getOrdem(): Integer;
    function getCalculaNoFim(): Boolean;
    function getInvisivel(): Boolean;
    function getBaseParaCalculo(): Currency;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

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

type TMovimentoEstabelecimentoAlterarCalcularNaFolha = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoEstabelecimentoAlterarCalcularNasFerias = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
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

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoEstabelecimentoAlterarCalcularNoPPLR = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoEstabelecimentoAlterarCalcularNaRescisao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoEstabelecimentoAlterarPeriodoSempre = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TMovimentoEstabelecimentoAlterarPeriodoMensal = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Mes: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getMes(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('mes')]
    property mes: Integer read getMes write setMes;

    

end;

type TMovimentoEstabelecimentoAlterarPeriodoSemanal = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Semana: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getSemana(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('semana')]
    property semana: Integer read getSemana write setSemana;

    

end;

type TMovimentoEstabelecimentoAlterarPeriodoEntreDatas = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_DataInicial: TDate;
    var m_DataFinal: TDate;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getDataInicial(): TDate;
    function getDataFinal(): TDate;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datainicial')]
    property datainicial: TDate read getDataInicial write setDataInicial;

    [NasajonSerializeAttribute('datafinal')]
    property datafinal: TDate read getDataFinal write setDataFinal;

    

end;

type TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_MesInicial: Integer;
    var m_MesFinal: Integer;
    var m_AnoInicial: Integer;
    var m_AnoFinal: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getMesInicial(): Integer;
    function getMesFinal(): Integer;
    function getAnoInicial(): Integer;
    function getAnoFinal(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

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

type TMovimentoEstabelecimentoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TMovimentoEstabelecimentoNovo.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoNovo.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoNovo.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoNovo.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoNovo.getOrdem: Integer;
begin
  Result := Self.m_Ordem;
end;

procedure TMovimentoEstabelecimentoNovo.setOrdem(const a_Value: Integer);
begin
  Self.m_Ordem := a_Value;
end;

function TMovimentoEstabelecimentoNovo.getCalculaNoFim: Boolean;
begin
  Result := Self.m_CalculaNoFim;
end;

procedure TMovimentoEstabelecimentoNovo.setCalculaNoFim(const a_Value: Boolean);
begin
  Self.m_CalculaNoFim := a_Value;
end;

function TMovimentoEstabelecimentoNovo.getInvisivel: Boolean;
begin
  Result := Self.m_Invisivel;
end;

procedure TMovimentoEstabelecimentoNovo.setInvisivel(const a_Value: Boolean);
begin
  Self.m_Invisivel := a_Value;
end;

function TMovimentoEstabelecimentoNovo.getBaseParaCalculo: Currency;
begin
  Result := Self.m_BaseParaCalculo;
end;

procedure TMovimentoEstabelecimentoNovo.setBaseParaCalculo(const a_Value: Currency);
begin
  Self.m_BaseParaCalculo := a_Value;
end;

destructor TMovimentoEstabelecimentoNovo.Destroy;
begin

end;

function TMovimentoEstabelecimentoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoNovo.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoNovo';
end;

function TMovimentoEstabelecimentoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarDadosGerais.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarDadosGerais.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarDadosGerais.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarDadosGerais.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarDadosGerais.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarDadosGerais.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarDadosGerais.getOrdem: Integer;
begin
  Result := Self.m_Ordem;
end;

procedure TMovimentoEstabelecimentoAlterarDadosGerais.setOrdem(const a_Value: Integer);
begin
  Self.m_Ordem := a_Value;
end;

function TMovimentoEstabelecimentoAlterarDadosGerais.getCalculaNoFim: Boolean;
begin
  Result := Self.m_CalculaNoFim;
end;

procedure TMovimentoEstabelecimentoAlterarDadosGerais.setCalculaNoFim(const a_Value: Boolean);
begin
  Self.m_CalculaNoFim := a_Value;
end;

function TMovimentoEstabelecimentoAlterarDadosGerais.getInvisivel: Boolean;
begin
  Result := Self.m_Invisivel;
end;

procedure TMovimentoEstabelecimentoAlterarDadosGerais.setInvisivel(const a_Value: Boolean);
begin
  Self.m_Invisivel := a_Value;
end;

function TMovimentoEstabelecimentoAlterarDadosGerais.getBaseParaCalculo: Currency;
begin
  Result := Self.m_BaseParaCalculo;
end;

procedure TMovimentoEstabelecimentoAlterarDadosGerais.setBaseParaCalculo(const a_Value: Currency);
begin
  Self.m_BaseParaCalculo := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarDadosGerais.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarDadosGerais';
end;

function TMovimentoEstabelecimentoAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolha.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaFolha.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolha.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaFolha.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolha.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaFolha.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolha.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaFolha.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolha.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaFolha.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarCalcularNaFolha.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolha.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolha.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolha.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarCalcularNaFolha';
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolha.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolha.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNasFerias.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNasFerias.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNasFerias.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNasFerias.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNasFerias.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNasFerias.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNasFerias.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNasFerias.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNasFerias.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNasFerias.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarCalcularNasFerias.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarCalcularNasFerias.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarCalcularNasFerias.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNasFerias.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarCalcularNasFerias';
end;

function TMovimentoEstabelecimentoAlterarCalcularNasFerias.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNasFerias.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro';
end;

function TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro';
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha';
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoPPLR.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoPPLR.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoPPLR.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoPPLR.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoPPLR.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoPPLR.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoPPLR.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoPPLR.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoPPLR.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoPPLR.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarCalcularNoPPLR.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarCalcularNoPPLR.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoPPLR.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoPPLR.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarCalcularNoPPLR';
end;

function TMovimentoEstabelecimentoAlterarCalcularNoPPLR.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoPPLR.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva';
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNaRescisao.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaRescisao.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaRescisao.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaRescisao.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaRescisao.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaRescisao.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaRescisao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaRescisao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaRescisao.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNaRescisao.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarCalcularNaRescisao.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarCalcularNaRescisao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarCalcularNaRescisao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNaRescisao.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarCalcularNaRescisao';
end;

function TMovimentoEstabelecimentoAlterarCalcularNaRescisao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNaRescisao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro';
end;

function TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoSempre.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoSempre.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoSempre.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoSempre.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoSempre.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoSempre.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoSempre.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoSempre.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarPeriodoSempre.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarPeriodoSempre.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarPeriodoSempre.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoSempre.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarPeriodoSempre';
end;

function TMovimentoEstabelecimentoAlterarPeriodoSempre.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoSempre.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarPeriodoProximoCalculo';
end;

function TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoMensal.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoMensal.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoMensal.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoMensal.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoMensal.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoMensal.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoMensal.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoMensal.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoMensal.getMes: Integer;
begin
  Result := Self.m_Mes;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoMensal.setMes(const a_Value: Integer);
begin
  Self.m_Mes := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarPeriodoMensal.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarPeriodoMensal.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarPeriodoMensal.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoMensal.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarPeriodoMensal';
end;

function TMovimentoEstabelecimentoAlterarPeriodoMensal.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoMensal.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoSemanal.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoSemanal.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoSemanal.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoSemanal.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoSemanal.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoSemanal.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoSemanal.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoSemanal.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoSemanal.getSemana: Integer;
begin
  Result := Self.m_Semana;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoSemanal.setSemana(const a_Value: Integer);
begin
  Self.m_Semana := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarPeriodoSemanal.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarPeriodoSemanal.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarPeriodoSemanal.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoSemanal.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarPeriodoSemanal';
end;

function TMovimentoEstabelecimentoAlterarPeriodoSemanal.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoSemanal.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.getDataFinal: TDate;
begin
  Result := Self.m_DataFinal;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.setDataFinal(const a_Value: TDate);
begin
  Self.m_DataFinal := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarPeriodoEntreDatas';
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.getMesInicial: Integer;
begin
  Result := Self.m_MesInicial;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.setMesInicial(const a_Value: Integer);
begin
  Self.m_MesInicial := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.getMesFinal: Integer;
begin
  Result := Self.m_MesFinal;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.setMesFinal(const a_Value: Integer);
begin
  Self.m_MesFinal := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.getAnoInicial: Integer;
begin
  Result := Self.m_AnoInicial;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.setAnoInicial(const a_Value: Integer);
begin
  Self.m_AnoInicial := a_Value;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.getAnoFinal: Integer;
begin
  Result := Self.m_AnoFinal;
end;

procedure TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.setAnoFinal(const a_Value: Integer);
begin
  Self.m_AnoFinal := a_Value;
end;

destructor TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.Destroy;
begin

end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoAlterarPeriodoEntreMesAno';
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoEstabelecimentoExcluir.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoEstabelecimentoExcluir.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoEstabelecimentoExcluir.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoEstabelecimentoExcluir.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoEstabelecimentoExcluir.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoEstabelecimentoExcluir.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoEstabelecimentoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoEstabelecimentoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TMovimentoEstabelecimentoExcluir.Destroy;
begin

end;

function TMovimentoEstabelecimentoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoEstabelecimentoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoEstabelecimentoExcluir.getNameAPI(): String;
begin
  Result := 'MovimentoEstabelecimentoExcluir';
end;

function TMovimentoEstabelecimentoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoEstabelecimentoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
