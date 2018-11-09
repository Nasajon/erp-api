unit api.model.persona.MovimentoSindicato;

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

type TMovimentoSindicatoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Ordem: Integer;
    var m_CalculaNoFim: Boolean;
    var m_Invisivel: Boolean;
    var m_BaseParaCalculo: Currency;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getOrdem(): Integer;
    function getCalculaNoFim(): Boolean;
    function getInvisivel(): Boolean;
    function getBaseParaCalculo(): Currency;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

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

type TMovimentoSindicatoAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Ordem: Integer;
    var m_CalculaNoFim: Boolean;
    var m_Invisivel: Boolean;
    var m_BaseParaCalculo: Currency;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getOrdem(): Integer;
    function getCalculaNoFim(): Boolean;
    function getInvisivel(): Boolean;
    function getBaseParaCalculo(): Currency;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

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

type TMovimentoSindicatoAlterarCalcularNaFolha = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoSindicatoAlterarCalcularNasFerias = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Empresa: String;
    var m_Sindicato: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getEmpresa(): String;
    function getSindicato(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoSindicatoAlterarCalcularNoPPLR = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoSindicatoAlterarCalcularNaRescisao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoSindicatoAlterarPeriodoSempre = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TMovimentoSindicatoAlterarPeriodoProximoCalculo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TMovimentoSindicatoAlterarPeriodoMensal = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Mes: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getMes(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('mes')]
    property mes: Integer read getMes write setMes;

    

end;

type TMovimentoSindicatoAlterarPeriodoSemanal = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_Semana: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getSemana(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('semana')]
    property semana: Integer read getSemana write setSemana;

    

end;

type TMovimentoSindicatoAlterarPeriodoEntreDatas = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_DataInicial: TDate;
    var m_DataFinal: TDate;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getDataInicial(): TDate;
    function getDataFinal(): TDate;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datainicial')]
    property datainicial: TDate read getDataInicial write setDataInicial;

    [NasajonSerializeAttribute('datafinal')]
    property datafinal: TDate read getDataFinal write setDataFinal;

    

end;

type TMovimentoSindicatoAlterarPeriodoEntreMesAno = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    var m_MesInicial: Integer;
    var m_MesFinal: Integer;
    var m_AnoInicial: Integer;
    var m_AnoFinal: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    function getMesInicial(): Integer;
    function getMesFinal(): Integer;
    function getAnoInicial(): Integer;
    function getAnoFinal(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

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

type TMovimentoSindicatoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setSindicato(const a_Value: String);
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

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TMovimentoSindicatoNovo.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoNovo.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoNovo.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoNovo.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoNovo.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoNovo.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoNovo.getOrdem: Integer;
begin
  Result := Self.m_Ordem;
end;

procedure TMovimentoSindicatoNovo.setOrdem(const a_Value: Integer);
begin
  Self.m_Ordem := a_Value;
end;

function TMovimentoSindicatoNovo.getCalculaNoFim: Boolean;
begin
  Result := Self.m_CalculaNoFim;
end;

procedure TMovimentoSindicatoNovo.setCalculaNoFim(const a_Value: Boolean);
begin
  Self.m_CalculaNoFim := a_Value;
end;

function TMovimentoSindicatoNovo.getInvisivel: Boolean;
begin
  Result := Self.m_Invisivel;
end;

procedure TMovimentoSindicatoNovo.setInvisivel(const a_Value: Boolean);
begin
  Self.m_Invisivel := a_Value;
end;

function TMovimentoSindicatoNovo.getBaseParaCalculo: Currency;
begin
  Result := Self.m_BaseParaCalculo;
end;

procedure TMovimentoSindicatoNovo.setBaseParaCalculo(const a_Value: Currency);
begin
  Self.m_BaseParaCalculo := a_Value;
end;

destructor TMovimentoSindicatoNovo.Destroy;
begin

end;

function TMovimentoSindicatoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoNovo.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoNovo';
end;

function TMovimentoSindicatoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarDadosGerais.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarDadosGerais.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarDadosGerais.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarDadosGerais.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarDadosGerais.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarDadosGerais.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarDadosGerais.getOrdem: Integer;
begin
  Result := Self.m_Ordem;
end;

procedure TMovimentoSindicatoAlterarDadosGerais.setOrdem(const a_Value: Integer);
begin
  Self.m_Ordem := a_Value;
end;

function TMovimentoSindicatoAlterarDadosGerais.getCalculaNoFim: Boolean;
begin
  Result := Self.m_CalculaNoFim;
end;

procedure TMovimentoSindicatoAlterarDadosGerais.setCalculaNoFim(const a_Value: Boolean);
begin
  Self.m_CalculaNoFim := a_Value;
end;

function TMovimentoSindicatoAlterarDadosGerais.getInvisivel: Boolean;
begin
  Result := Self.m_Invisivel;
end;

procedure TMovimentoSindicatoAlterarDadosGerais.setInvisivel(const a_Value: Boolean);
begin
  Self.m_Invisivel := a_Value;
end;

function TMovimentoSindicatoAlterarDadosGerais.getBaseParaCalculo: Currency;
begin
  Result := Self.m_BaseParaCalculo;
end;

procedure TMovimentoSindicatoAlterarDadosGerais.setBaseParaCalculo(const a_Value: Currency);
begin
  Self.m_BaseParaCalculo := a_Value;
end;

destructor TMovimentoSindicatoAlterarDadosGerais.Destroy;
begin

end;

function TMovimentoSindicatoAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarDadosGerais';
end;

function TMovimentoSindicatoAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarCalcularNaFolha.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarCalcularNaFolha.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNaFolha.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarCalcularNaFolha.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNaFolha.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarCalcularNaFolha.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNaFolha.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarCalcularNaFolha.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNaFolha.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoSindicatoAlterarCalcularNaFolha.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoSindicatoAlterarCalcularNaFolha.Destroy;
begin

end;

function TMovimentoSindicatoAlterarCalcularNaFolha.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarCalcularNaFolha.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarCalcularNaFolha.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarCalcularNaFolha';
end;

function TMovimentoSindicatoAlterarCalcularNaFolha.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarCalcularNaFolha.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarCalcularNasFerias.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarCalcularNasFerias.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNasFerias.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarCalcularNasFerias.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNasFerias.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarCalcularNasFerias.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNasFerias.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarCalcularNasFerias.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNasFerias.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoSindicatoAlterarCalcularNasFerias.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoSindicatoAlterarCalcularNasFerias.Destroy;
begin

end;

function TMovimentoSindicatoAlterarCalcularNasFerias.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarCalcularNasFerias.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarCalcularNasFerias.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarCalcularNasFerias';
end;

function TMovimentoSindicatoAlterarCalcularNasFerias.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarCalcularNasFerias.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.Destroy;
begin

end;

function TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarCalcularNoDecimoTerceiro';
end;

function TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.Destroy;
begin

end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro';
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.Destroy;
begin

end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha';
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarCalcularNoPPLR.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarCalcularNoPPLR.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoPPLR.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarCalcularNoPPLR.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoPPLR.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarCalcularNoPPLR.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoPPLR.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarCalcularNoPPLR.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoPPLR.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoSindicatoAlterarCalcularNoPPLR.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoSindicatoAlterarCalcularNoPPLR.Destroy;
begin

end;

function TMovimentoSindicatoAlterarCalcularNoPPLR.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarCalcularNoPPLR.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarCalcularNoPPLR.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarCalcularNoPPLR';
end;

function TMovimentoSindicatoAlterarCalcularNoPPLR.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarCalcularNoPPLR.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.Destroy;
begin

end;

function TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarCalcularNaFolhaCorretiva';
end;

function TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarCalcularNaRescisao.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarCalcularNaRescisao.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNaRescisao.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarCalcularNaRescisao.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNaRescisao.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarCalcularNaRescisao.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNaRescisao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarCalcularNaRescisao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNaRescisao.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoSindicatoAlterarCalcularNaRescisao.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoSindicatoAlterarCalcularNaRescisao.Destroy;
begin

end;

function TMovimentoSindicatoAlterarCalcularNaRescisao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarCalcularNaRescisao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarCalcularNaRescisao.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarCalcularNaRescisao';
end;

function TMovimentoSindicatoAlterarCalcularNaRescisao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarCalcularNaRescisao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.Destroy;
begin

end;

function TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro';
end;

function TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarPeriodoSempre.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarPeriodoSempre.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoSempre.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarPeriodoSempre.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoSempre.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarPeriodoSempre.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoSempre.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarPeriodoSempre.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TMovimentoSindicatoAlterarPeriodoSempre.Destroy;
begin

end;

function TMovimentoSindicatoAlterarPeriodoSempre.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarPeriodoSempre.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarPeriodoSempre.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarPeriodoSempre';
end;

function TMovimentoSindicatoAlterarPeriodoSempre.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarPeriodoSempre.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarPeriodoProximoCalculo.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarPeriodoProximoCalculo.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoProximoCalculo.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarPeriodoProximoCalculo.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoProximoCalculo.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarPeriodoProximoCalculo.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoProximoCalculo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarPeriodoProximoCalculo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TMovimentoSindicatoAlterarPeriodoProximoCalculo.Destroy;
begin

end;

function TMovimentoSindicatoAlterarPeriodoProximoCalculo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarPeriodoProximoCalculo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarPeriodoProximoCalculo.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarPeriodoProximoCalculo';
end;

function TMovimentoSindicatoAlterarPeriodoProximoCalculo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarPeriodoProximoCalculo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarPeriodoMensal.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarPeriodoMensal.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoMensal.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarPeriodoMensal.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoMensal.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarPeriodoMensal.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoMensal.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarPeriodoMensal.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoMensal.getMes: Integer;
begin
  Result := Self.m_Mes;
end;

procedure TMovimentoSindicatoAlterarPeriodoMensal.setMes(const a_Value: Integer);
begin
  Self.m_Mes := a_Value;
end;

destructor TMovimentoSindicatoAlterarPeriodoMensal.Destroy;
begin

end;

function TMovimentoSindicatoAlterarPeriodoMensal.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarPeriodoMensal.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarPeriodoMensal.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarPeriodoMensal';
end;

function TMovimentoSindicatoAlterarPeriodoMensal.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarPeriodoMensal.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarPeriodoSemanal.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarPeriodoSemanal.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoSemanal.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarPeriodoSemanal.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoSemanal.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarPeriodoSemanal.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoSemanal.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarPeriodoSemanal.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoSemanal.getSemana: Integer;
begin
  Result := Self.m_Semana;
end;

procedure TMovimentoSindicatoAlterarPeriodoSemanal.setSemana(const a_Value: Integer);
begin
  Self.m_Semana := a_Value;
end;

destructor TMovimentoSindicatoAlterarPeriodoSemanal.Destroy;
begin

end;

function TMovimentoSindicatoAlterarPeriodoSemanal.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarPeriodoSemanal.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarPeriodoSemanal.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarPeriodoSemanal';
end;

function TMovimentoSindicatoAlterarPeriodoSemanal.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarPeriodoSemanal.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarPeriodoEntreDatas.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreDatas.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoEntreDatas.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreDatas.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoEntreDatas.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreDatas.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoEntreDatas.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreDatas.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoEntreDatas.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreDatas.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoEntreDatas.getDataFinal: TDate;
begin
  Result := Self.m_DataFinal;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreDatas.setDataFinal(const a_Value: TDate);
begin
  Self.m_DataFinal := a_Value;
end;

destructor TMovimentoSindicatoAlterarPeriodoEntreDatas.Destroy;
begin

end;

function TMovimentoSindicatoAlterarPeriodoEntreDatas.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarPeriodoEntreDatas.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarPeriodoEntreDatas.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarPeriodoEntreDatas';
end;

function TMovimentoSindicatoAlterarPeriodoEntreDatas.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarPeriodoEntreDatas.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreMesAno.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreMesAno.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreMesAno.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreMesAno.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.getMesInicial: Integer;
begin
  Result := Self.m_MesInicial;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreMesAno.setMesInicial(const a_Value: Integer);
begin
  Self.m_MesInicial := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.getMesFinal: Integer;
begin
  Result := Self.m_MesFinal;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreMesAno.setMesFinal(const a_Value: Integer);
begin
  Self.m_MesFinal := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.getAnoInicial: Integer;
begin
  Result := Self.m_AnoInicial;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreMesAno.setAnoInicial(const a_Value: Integer);
begin
  Self.m_AnoInicial := a_Value;
end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.getAnoFinal: Integer;
begin
  Result := Self.m_AnoFinal;
end;

procedure TMovimentoSindicatoAlterarPeriodoEntreMesAno.setAnoFinal(const a_Value: Integer);
begin
  Self.m_AnoFinal := a_Value;
end;

destructor TMovimentoSindicatoAlterarPeriodoEntreMesAno.Destroy;
begin

end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoAlterarPeriodoEntreMesAno';
end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoAlterarPeriodoEntreMesAno.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoSindicatoExcluir.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoSindicatoExcluir.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoSindicatoExcluir.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoSindicatoExcluir.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoSindicatoExcluir.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TMovimentoSindicatoExcluir.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TMovimentoSindicatoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoSindicatoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TMovimentoSindicatoExcluir.Destroy;
begin

end;

function TMovimentoSindicatoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoSindicatoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoSindicatoExcluir.getNameAPI(): String;
begin
  Result := 'MovimentoSindicatoExcluir';
end;

function TMovimentoSindicatoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoSindicatoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
