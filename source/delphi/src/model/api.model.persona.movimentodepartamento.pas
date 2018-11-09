unit api.model.persona.MovimentoDepartamento;

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

type TMovimentoDepartamentoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Ordem: Integer;
    var m_CalculaNoFim: Boolean;
    var m_Invisivel: Boolean;
    var m_BaseParaCalculo: Currency;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getOrdem(): Integer;
    function getCalculaNoFim(): Boolean;
    function getInvisivel(): Boolean;
    function getBaseParaCalculo(): Currency;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

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

type TMovimentoDepartamentoAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Ordem: Integer;
    var m_CalculaNoFim: Boolean;
    var m_Invisivel: Boolean;
    var m_BaseParaCalculo: Currency;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getOrdem(): Integer;
    function getCalculaNoFim(): Boolean;
    function getInvisivel(): Boolean;
    function getBaseParaCalculo(): Currency;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

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

type TMovimentoDepartamentoAlterarCalcularNaFolha = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoDepartamentoAlterarCalcularNasFerias = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoDepartamentoAlterarCalcularNoPPLR = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoDepartamentoAlterarCalcularNaRescisao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Calcular: Boolean;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCalcular(): Boolean;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('calcular')]
    property calcular: Boolean read getCalcular write setCalcular;

    

end;

type TMovimentoDepartamentoAlterarPeriodoSempre = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TMovimentoDepartamentoAlterarPeriodoProximoCalculo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TMovimentoDepartamentoAlterarPeriodoMensal = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Mes: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getMes(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('mes')]
    property mes: Integer read getMes write setMes;

    

end;

type TMovimentoDepartamentoAlterarPeriodoSemanal = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Semana: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getSemana(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('semana')]
    property semana: Integer read getSemana write setSemana;

    

end;

type TMovimentoDepartamentoAlterarPeriodoEntreDatas = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_DataInicial: TDate;
    var m_DataFinal: TDate;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getDataInicial(): TDate;
    function getDataFinal(): TDate;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datainicial')]
    property datainicial: TDate read getDataInicial write setDataInicial;

    [NasajonSerializeAttribute('datafinal')]
    property datafinal: TDate read getDataFinal write setDataFinal;

    

end;

type TMovimentoDepartamentoAlterarPeriodoEntreMesAno = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_MesInicial: Integer;
    var m_MesFinal: Integer;
    var m_AnoInicial: Integer;
    var m_AnoFinal: Integer;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getMesInicial(): Integer;
    function getMesFinal(): Integer;
    function getAnoInicial(): Integer;
    function getAnoFinal(): Integer;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

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

type TMovimentoDepartamentoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdMovimento: String;
    var m_Rubrica: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    

    function getIdMovimento(): String;
    function getRubrica(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    

    procedure setIdMovimento(const a_Value: String);
    procedure setRubrica(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
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

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TMovimentoDepartamentoNovo.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoNovo.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoNovo.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoNovo.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoNovo.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoNovo.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoNovo.getOrdem: Integer;
begin
  Result := Self.m_Ordem;
end;

procedure TMovimentoDepartamentoNovo.setOrdem(const a_Value: Integer);
begin
  Self.m_Ordem := a_Value;
end;

function TMovimentoDepartamentoNovo.getCalculaNoFim: Boolean;
begin
  Result := Self.m_CalculaNoFim;
end;

procedure TMovimentoDepartamentoNovo.setCalculaNoFim(const a_Value: Boolean);
begin
  Self.m_CalculaNoFim := a_Value;
end;

function TMovimentoDepartamentoNovo.getInvisivel: Boolean;
begin
  Result := Self.m_Invisivel;
end;

procedure TMovimentoDepartamentoNovo.setInvisivel(const a_Value: Boolean);
begin
  Self.m_Invisivel := a_Value;
end;

function TMovimentoDepartamentoNovo.getBaseParaCalculo: Currency;
begin
  Result := Self.m_BaseParaCalculo;
end;

procedure TMovimentoDepartamentoNovo.setBaseParaCalculo(const a_Value: Currency);
begin
  Self.m_BaseParaCalculo := a_Value;
end;

destructor TMovimentoDepartamentoNovo.Destroy;
begin

end;

function TMovimentoDepartamentoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoNovo.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoNovo';
end;

function TMovimentoDepartamentoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarDadosGerais.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarDadosGerais.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarDadosGerais.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarDadosGerais.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarDadosGerais.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarDadosGerais.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarDadosGerais.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarDadosGerais.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarDadosGerais.getOrdem: Integer;
begin
  Result := Self.m_Ordem;
end;

procedure TMovimentoDepartamentoAlterarDadosGerais.setOrdem(const a_Value: Integer);
begin
  Self.m_Ordem := a_Value;
end;

function TMovimentoDepartamentoAlterarDadosGerais.getCalculaNoFim: Boolean;
begin
  Result := Self.m_CalculaNoFim;
end;

procedure TMovimentoDepartamentoAlterarDadosGerais.setCalculaNoFim(const a_Value: Boolean);
begin
  Self.m_CalculaNoFim := a_Value;
end;

function TMovimentoDepartamentoAlterarDadosGerais.getInvisivel: Boolean;
begin
  Result := Self.m_Invisivel;
end;

procedure TMovimentoDepartamentoAlterarDadosGerais.setInvisivel(const a_Value: Boolean);
begin
  Self.m_Invisivel := a_Value;
end;

function TMovimentoDepartamentoAlterarDadosGerais.getBaseParaCalculo: Currency;
begin
  Result := Self.m_BaseParaCalculo;
end;

procedure TMovimentoDepartamentoAlterarDadosGerais.setBaseParaCalculo(const a_Value: Currency);
begin
  Self.m_BaseParaCalculo := a_Value;
end;

destructor TMovimentoDepartamentoAlterarDadosGerais.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarDadosGerais';
end;

function TMovimentoDepartamentoAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarCalcularNaFolha.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaFolha.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaFolha.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaFolha.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaFolha.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaFolha.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaFolha.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaFolha.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaFolha.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaFolha.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaFolha.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaFolha.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoDepartamentoAlterarCalcularNaFolha.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarCalcularNaFolha.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarCalcularNaFolha.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNaFolha.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarCalcularNaFolha';
end;

function TMovimentoDepartamentoAlterarCalcularNaFolha.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNaFolha.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarCalcularNasFerias.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNasFerias.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNasFerias.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarCalcularNasFerias.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNasFerias.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNasFerias.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNasFerias.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNasFerias.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNasFerias.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarCalcularNasFerias.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNasFerias.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoDepartamentoAlterarCalcularNasFerias.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoDepartamentoAlterarCalcularNasFerias.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarCalcularNasFerias.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarCalcularNasFerias.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNasFerias.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarCalcularNasFerias';
end;

function TMovimentoDepartamentoAlterarCalcularNasFerias.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNasFerias.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarCalcularNoDecimoTerceiro';
end;

function TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro';
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha';
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoPPLR.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoPPLR.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoPPLR.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoPPLR.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoPPLR.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoPPLR.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoPPLR.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoPPLR.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoPPLR.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoPPLR.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoPPLR.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoPPLR.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoDepartamentoAlterarCalcularNoPPLR.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarCalcularNoPPLR.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarCalcularNoPPLR.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoPPLR.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarCalcularNoPPLR';
end;

function TMovimentoDepartamentoAlterarCalcularNoPPLR.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoPPLR.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarCalcularNaFolhaCorretiva';
end;

function TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarCalcularNaRescisao.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaRescisao.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaRescisao.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaRescisao.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaRescisao.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaRescisao.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaRescisao.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaRescisao.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaRescisao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaRescisao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNaRescisao.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoDepartamentoAlterarCalcularNaRescisao.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoDepartamentoAlterarCalcularNaRescisao.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarCalcularNaRescisao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarCalcularNaRescisao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNaRescisao.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarCalcularNaRescisao';
end;

function TMovimentoDepartamentoAlterarCalcularNaRescisao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNaRescisao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.getCalcular: Boolean;
begin
  Result := Self.m_Calcular;
end;

procedure TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.setCalcular(const a_Value: Boolean);
begin
  Self.m_Calcular := a_Value;
end;

destructor TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro';
end;

function TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarPeriodoSempre.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoSempre.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoSempre.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarPeriodoSempre.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoSempre.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoSempre.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoSempre.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoSempre.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoSempre.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarPeriodoSempre.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TMovimentoDepartamentoAlterarPeriodoSempre.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarPeriodoSempre.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarPeriodoSempre.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarPeriodoSempre.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarPeriodoSempre';
end;

function TMovimentoDepartamentoAlterarPeriodoSempre.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarPeriodoSempre.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarPeriodoProximoCalculo.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoProximoCalculo.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoProximoCalculo.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarPeriodoProximoCalculo.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoProximoCalculo.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoProximoCalculo.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoProximoCalculo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoProximoCalculo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoProximoCalculo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarPeriodoProximoCalculo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TMovimentoDepartamentoAlterarPeriodoProximoCalculo.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarPeriodoProximoCalculo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarPeriodoProximoCalculo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarPeriodoProximoCalculo.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarPeriodoProximoCalculo';
end;

function TMovimentoDepartamentoAlterarPeriodoProximoCalculo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarPeriodoProximoCalculo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarPeriodoMensal.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoMensal.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoMensal.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarPeriodoMensal.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoMensal.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoMensal.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoMensal.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoMensal.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoMensal.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarPeriodoMensal.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoMensal.getMes: Integer;
begin
  Result := Self.m_Mes;
end;

procedure TMovimentoDepartamentoAlterarPeriodoMensal.setMes(const a_Value: Integer);
begin
  Self.m_Mes := a_Value;
end;

destructor TMovimentoDepartamentoAlterarPeriodoMensal.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarPeriodoMensal.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarPeriodoMensal.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarPeriodoMensal.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarPeriodoMensal';
end;

function TMovimentoDepartamentoAlterarPeriodoMensal.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarPeriodoMensal.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarPeriodoSemanal.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoSemanal.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoSemanal.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarPeriodoSemanal.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoSemanal.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoSemanal.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoSemanal.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoSemanal.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoSemanal.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarPeriodoSemanal.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoSemanal.getSemana: Integer;
begin
  Result := Self.m_Semana;
end;

procedure TMovimentoDepartamentoAlterarPeriodoSemanal.setSemana(const a_Value: Integer);
begin
  Self.m_Semana := a_Value;
end;

destructor TMovimentoDepartamentoAlterarPeriodoSemanal.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarPeriodoSemanal.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarPeriodoSemanal.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarPeriodoSemanal.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarPeriodoSemanal';
end;

function TMovimentoDepartamentoAlterarPeriodoSemanal.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarPeriodoSemanal.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarPeriodoEntreDatas.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreDatas.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreDatas.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreDatas.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreDatas.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreDatas.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreDatas.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreDatas.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreDatas.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreDatas.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreDatas.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreDatas.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreDatas.getDataFinal: TDate;
begin
  Result := Self.m_DataFinal;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreDatas.setDataFinal(const a_Value: TDate);
begin
  Self.m_DataFinal := a_Value;
end;

destructor TMovimentoDepartamentoAlterarPeriodoEntreDatas.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarPeriodoEntreDatas.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreDatas.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarPeriodoEntreDatas.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarPeriodoEntreDatas';
end;

function TMovimentoDepartamentoAlterarPeriodoEntreDatas.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarPeriodoEntreDatas.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreMesAno.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreMesAno.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreMesAno.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreMesAno.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreMesAno.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getMesInicial: Integer;
begin
  Result := Self.m_MesInicial;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreMesAno.setMesInicial(const a_Value: Integer);
begin
  Self.m_MesInicial := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getMesFinal: Integer;
begin
  Result := Self.m_MesFinal;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreMesAno.setMesFinal(const a_Value: Integer);
begin
  Self.m_MesFinal := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getAnoInicial: Integer;
begin
  Result := Self.m_AnoInicial;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreMesAno.setAnoInicial(const a_Value: Integer);
begin
  Self.m_AnoInicial := a_Value;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getAnoFinal: Integer;
begin
  Result := Self.m_AnoFinal;
end;

procedure TMovimentoDepartamentoAlterarPeriodoEntreMesAno.setAnoFinal(const a_Value: Integer);
begin
  Self.m_AnoFinal := a_Value;
end;

destructor TMovimentoDepartamentoAlterarPeriodoEntreMesAno.Destroy;
begin

end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoAlterarPeriodoEntreMesAno';
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoAlterarPeriodoEntreMesAno.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMovimentoDepartamentoExcluir.getIdMovimento: String;
begin
  Result := Self.m_IdMovimento;
end;

procedure TMovimentoDepartamentoExcluir.setIdMovimento(const a_Value: String);
begin
  Self.m_IdMovimento := a_Value;
end;

function TMovimentoDepartamentoExcluir.getRubrica: String;
begin
  Result := Self.m_Rubrica;
end;

procedure TMovimentoDepartamentoExcluir.setRubrica(const a_Value: String);
begin
  Self.m_Rubrica := a_Value;
end;

function TMovimentoDepartamentoExcluir.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TMovimentoDepartamentoExcluir.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TMovimentoDepartamentoExcluir.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TMovimentoDepartamentoExcluir.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TMovimentoDepartamentoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TMovimentoDepartamentoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TMovimentoDepartamentoExcluir.Destroy;
begin

end;

function TMovimentoDepartamentoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMovimentoDepartamentoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMovimentoDepartamentoExcluir.getNameAPI(): String;
begin
  Result := 'MovimentoDepartamentoExcluir';
end;

function TMovimentoDepartamentoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMovimentoDepartamentoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
