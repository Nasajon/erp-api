unit api.model.persona.Horario;

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

type THorarioNovoDadosPadrao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdHorario: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Tipo: Integer;
    var m_JornadaSegunda: String;
    var m_RepousoSabado: Boolean;
    var m_JornadaSabado: String;
    

    function getIdHorario(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getTipo(): Integer;
    function getJornadaSegunda(): String;
    function getRepousoSabado(): Boolean;
    function getJornadaSabado(): String;
    

    procedure setIdHorario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setJornadaSegunda(const a_Value: String);
    procedure setRepousoSabado(const a_Value: Boolean);
    procedure setJornadaSabado(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idhorario')]
    property idhorario: String read getIdHorario write setIdHorario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Normal(0), Folga fixa(1) ou Folga extra(2)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('jornadasegunda')]
    property jornadasegunda: String read getJornadaSegunda write setJornadaSegunda;

    [NasajonSerializeAttribute('repousosabado')]
    property repousosabado: Boolean read getRepousoSabado write setRepousoSabado;

    [NasajonSerializeAttribute('jornadasabado')]
    property jornadasabado: String read getJornadaSabado write setJornadaSabado;

    

end;

type THorarioNovoDadosOutros = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdHorario: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Tipo: Integer;
    var m_JornadaSegunda: String;
    var m_JornadaTerca: String;
    var m_JornadaQuarta: String;
    var m_JornadaQuinta: String;
    var m_JornadaSexta: String;
    var m_JornadaSabado: String;
    var m_JornadaDomingo: String;
    var m_RepousoSegunda: Boolean;
    var m_RepousoTerca: Boolean;
    var m_RepousoQuarta: Boolean;
    var m_RepousoQuinta: Boolean;
    var m_RepousoSexta: Boolean;
    var m_RepousoSabado: Boolean;
    var m_RepousoDomingo: Boolean;
    

    function getIdHorario(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getTipo(): Integer;
    function getJornadaSegunda(): String;
    function getJornadaTerca(): String;
    function getJornadaQuarta(): String;
    function getJornadaQuinta(): String;
    function getJornadaSexta(): String;
    function getJornadaSabado(): String;
    function getJornadaDomingo(): String;
    function getRepousoSegunda(): Boolean;
    function getRepousoTerca(): Boolean;
    function getRepousoQuarta(): Boolean;
    function getRepousoQuinta(): Boolean;
    function getRepousoSexta(): Boolean;
    function getRepousoSabado(): Boolean;
    function getRepousoDomingo(): Boolean;
    

    procedure setIdHorario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setJornadaSegunda(const a_Value: String);
    procedure setJornadaTerca(const a_Value: String);
    procedure setJornadaQuarta(const a_Value: String);
    procedure setJornadaQuinta(const a_Value: String);
    procedure setJornadaSexta(const a_Value: String);
    procedure setJornadaSabado(const a_Value: String);
    procedure setJornadaDomingo(const a_Value: String);
    procedure setRepousoSegunda(const a_Value: Boolean);
    procedure setRepousoTerca(const a_Value: Boolean);
    procedure setRepousoQuarta(const a_Value: Boolean);
    procedure setRepousoQuinta(const a_Value: Boolean);
    procedure setRepousoSexta(const a_Value: Boolean);
    procedure setRepousoSabado(const a_Value: Boolean);
    procedure setRepousoDomingo(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idhorario')]
    property idhorario: String read getIdHorario write setIdHorario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Normal(3), Folga fixa(4) ou Folga extra(5)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('jornadasegunda')]
    property jornadasegunda: String read getJornadaSegunda write setJornadaSegunda;

    [NasajonSerializeAttribute('jornadaterca')]
    property jornadaterca: String read getJornadaTerca write setJornadaTerca;

    [NasajonSerializeAttribute('jornadaquarta')]
    property jornadaquarta: String read getJornadaQuarta write setJornadaQuarta;

    [NasajonSerializeAttribute('jornadaquinta')]
    property jornadaquinta: String read getJornadaQuinta write setJornadaQuinta;

    [NasajonSerializeAttribute('jornadasexta')]
    property jornadasexta: String read getJornadaSexta write setJornadaSexta;

    [NasajonSerializeAttribute('jornadasabado')]
    property jornadasabado: String read getJornadaSabado write setJornadaSabado;

    [NasajonSerializeAttribute('jornadadomingo')]
    property jornadadomingo: String read getJornadaDomingo write setJornadaDomingo;

    [NasajonSerializeAttribute('repousosegunda')]
    property repousosegunda: Boolean read getRepousoSegunda write setRepousoSegunda;

    [NasajonSerializeAttribute('repousoterca')]
    property repousoterca: Boolean read getRepousoTerca write setRepousoTerca;

    [NasajonSerializeAttribute('repousoquarta')]
    property repousoquarta: Boolean read getRepousoQuarta write setRepousoQuarta;

    [NasajonSerializeAttribute('repousoquinta')]
    property repousoquinta: Boolean read getRepousoQuinta write setRepousoQuinta;

    [NasajonSerializeAttribute('repousosexta')]
    property repousosexta: Boolean read getRepousoSexta write setRepousoSexta;

    [NasajonSerializeAttribute('repousosabado')]
    property repousosabado: Boolean read getRepousoSabado write setRepousoSabado;

    [NasajonSerializeAttribute('repousodomingo')]
    property repousodomingo: Boolean read getRepousoDomingo write setRepousoDomingo;

    

end;

type THorarioNovoDadosEscala = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdHorario: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Jornada: String;
    

    function getIdHorario(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getJornada(): String;
    

    procedure setIdHorario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setJornada(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idhorario')]
    property idhorario: String read getIdHorario write setIdHorario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('jornada')]
    property jornada: String read getJornada write setJornada;

    

end;

type THorarioAlterarDadosPadrao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Horario: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Tipo: Integer;
    var m_JornadaSegunda: String;
    var m_RepousoSabado: Boolean;
    var m_JornadaSabado: String;
    

    function getHorario(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getTipo(): Integer;
    function getJornadaSegunda(): String;
    function getRepousoSabado(): Boolean;
    function getJornadaSabado(): String;
    

    procedure setHorario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setJornadaSegunda(const a_Value: String);
    procedure setRepousoSabado(const a_Value: Boolean);
    procedure setJornadaSabado(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Normal(0), Folga fixa(1) ou Folga extra(2)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('jornadasegunda')]
    property jornadasegunda: String read getJornadaSegunda write setJornadaSegunda;

    [NasajonSerializeAttribute('repousosabado')]
    property repousosabado: Boolean read getRepousoSabado write setRepousoSabado;

    [NasajonSerializeAttribute('jornadasabado')]
    property jornadasabado: String read getJornadaSabado write setJornadaSabado;

    

end;

type THorarioAlterarDadosOutros = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Horario: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Tipo: Integer;
    var m_JornadaSegunda: String;
    var m_JornadaTerca: String;
    var m_JornadaQuarta: String;
    var m_JornadaQuinta: String;
    var m_JornadaSexta: String;
    var m_JornadaSabado: String;
    var m_JornadaDomingo: String;
    var m_RepousoSegunda: Boolean;
    var m_RepousoTerca: Boolean;
    var m_RepousoQuarta: Boolean;
    var m_RepousoQuinta: Boolean;
    var m_RepousoSexta: Boolean;
    var m_RepousoSabado: Boolean;
    var m_RepousoDomingo: Boolean;
    

    function getHorario(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getTipo(): Integer;
    function getJornadaSegunda(): String;
    function getJornadaTerca(): String;
    function getJornadaQuarta(): String;
    function getJornadaQuinta(): String;
    function getJornadaSexta(): String;
    function getJornadaSabado(): String;
    function getJornadaDomingo(): String;
    function getRepousoSegunda(): Boolean;
    function getRepousoTerca(): Boolean;
    function getRepousoQuarta(): Boolean;
    function getRepousoQuinta(): Boolean;
    function getRepousoSexta(): Boolean;
    function getRepousoSabado(): Boolean;
    function getRepousoDomingo(): Boolean;
    

    procedure setHorario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setJornadaSegunda(const a_Value: String);
    procedure setJornadaTerca(const a_Value: String);
    procedure setJornadaQuarta(const a_Value: String);
    procedure setJornadaQuinta(const a_Value: String);
    procedure setJornadaSexta(const a_Value: String);
    procedure setJornadaSabado(const a_Value: String);
    procedure setJornadaDomingo(const a_Value: String);
    procedure setRepousoSegunda(const a_Value: Boolean);
    procedure setRepousoTerca(const a_Value: Boolean);
    procedure setRepousoQuarta(const a_Value: Boolean);
    procedure setRepousoQuinta(const a_Value: Boolean);
    procedure setRepousoSexta(const a_Value: Boolean);
    procedure setRepousoSabado(const a_Value: Boolean);
    procedure setRepousoDomingo(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Normal(3), Folga fixa(4) ou Folga extra(5)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('jornadasegunda')]
    property jornadasegunda: String read getJornadaSegunda write setJornadaSegunda;

    [NasajonSerializeAttribute('jornadaterca')]
    property jornadaterca: String read getJornadaTerca write setJornadaTerca;

    [NasajonSerializeAttribute('jornadaquarta')]
    property jornadaquarta: String read getJornadaQuarta write setJornadaQuarta;

    [NasajonSerializeAttribute('jornadaquinta')]
    property jornadaquinta: String read getJornadaQuinta write setJornadaQuinta;

    [NasajonSerializeAttribute('jornadasexta')]
    property jornadasexta: String read getJornadaSexta write setJornadaSexta;

    [NasajonSerializeAttribute('jornadasabado')]
    property jornadasabado: String read getJornadaSabado write setJornadaSabado;

    [NasajonSerializeAttribute('jornadadomingo')]
    property jornadadomingo: String read getJornadaDomingo write setJornadaDomingo;

    [NasajonSerializeAttribute('repousosegunda')]
    property repousosegunda: Boolean read getRepousoSegunda write setRepousoSegunda;

    [NasajonSerializeAttribute('repousoterca')]
    property repousoterca: Boolean read getRepousoTerca write setRepousoTerca;

    [NasajonSerializeAttribute('repousoquarta')]
    property repousoquarta: Boolean read getRepousoQuarta write setRepousoQuarta;

    [NasajonSerializeAttribute('repousoquinta')]
    property repousoquinta: Boolean read getRepousoQuinta write setRepousoQuinta;

    [NasajonSerializeAttribute('repousosexta')]
    property repousosexta: Boolean read getRepousoSexta write setRepousoSexta;

    [NasajonSerializeAttribute('repousosabado')]
    property repousosabado: Boolean read getRepousoSabado write setRepousoSabado;

    [NasajonSerializeAttribute('repousodomingo')]
    property repousodomingo: Boolean read getRepousoDomingo write setRepousoDomingo;

    

end;

type THorarioAlterarDadosEscala = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Horario: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Jornada: String;
    

    function getHorario(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getJornada(): String;
    

    procedure setHorario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setJornada(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('jornada')]
    property jornada: String read getJornada write setJornada;

    

end;

type THorarioAlterarFolgaFixa = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Horario: String;
    var m_Empresa: String;
    var m_Quantidade: Integer;
    

    function getHorario(): String;
    function getEmpresa(): String;
    function getQuantidade(): Integer;
    

    procedure setHorario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setQuantidade(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Integer read getQuantidade write setQuantidade;

    

end;

type THorarioAlterarFolgaExtra = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Horario: String;
    var m_Empresa: String;
    var m_OrdemNoMes: Integer;
    var m_DiaSemana: Integer;
    

    function getHorario(): String;
    function getEmpresa(): String;
    function getOrdemNoMes(): Integer;
    function getDiaSemana(): Integer;
    

    procedure setHorario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setOrdemNoMes(const a_Value: Integer);
    procedure setDiaSemana(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Informar qual a ordem dentro do mês será a folga. Por exemplo, se o a folga é no 2º domingo do mês, informar 2
    /// </summary>
    [NasajonSerializeAttribute('ordemnomes')]
    property ordemnomes: Integer read getOrdemNoMes write setOrdemNoMes;

    /// <summary>
/// De 1 a 7 começando com domingo
    /// </summary>
    [NasajonSerializeAttribute('diasemana')]
    property diasemana: Integer read getDiaSemana write setDiaSemana;

    

end;

type THorarioAlterarDescontaAtrasosEmDiasDeFalta = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Horario: String;
    var m_Empresa: String;
    var m_Segunda: Boolean;
    var m_Terca: Boolean;
    var m_Quarta: Boolean;
    var m_Quinta: Boolean;
    var m_Sexta: Boolean;
    var m_Sabado: Boolean;
    var m_Domingo: Boolean;
    

    function getHorario(): String;
    function getEmpresa(): String;
    function getSegunda(): Boolean;
    function getTerca(): Boolean;
    function getQuarta(): Boolean;
    function getQuinta(): Boolean;
    function getSexta(): Boolean;
    function getSabado(): Boolean;
    function getDomingo(): Boolean;
    

    procedure setHorario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setSegunda(const a_Value: Boolean);
    procedure setTerca(const a_Value: Boolean);
    procedure setQuarta(const a_Value: Boolean);
    procedure setQuinta(const a_Value: Boolean);
    procedure setSexta(const a_Value: Boolean);
    procedure setSabado(const a_Value: Boolean);
    procedure setDomingo(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('segunda')]
    property segunda: Boolean read getSegunda write setSegunda;

    [NasajonSerializeAttribute('terca')]
    property terca: Boolean read getTerca write setTerca;

    [NasajonSerializeAttribute('quarta')]
    property quarta: Boolean read getQuarta write setQuarta;

    [NasajonSerializeAttribute('quinta')]
    property quinta: Boolean read getQuinta write setQuinta;

    [NasajonSerializeAttribute('sexta')]
    property sexta: Boolean read getSexta write setSexta;

    [NasajonSerializeAttribute('sabado')]
    property sabado: Boolean read getSabado write setSabado;

    [NasajonSerializeAttribute('domingo')]
    property domingo: Boolean read getDomingo write setDomingo;

    

end;

type THorarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Horario: String;
    var m_Empresa: String;
    

    function getHorario(): String;
    function getEmpresa(): String;
    

    procedure setHorario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function THorarioNovoDadosPadrao.getIdHorario: String;
begin
  Result := Self.m_IdHorario;
end;

procedure THorarioNovoDadosPadrao.setIdHorario(const a_Value: String);
begin
  Self.m_IdHorario := a_Value;
end;

function THorarioNovoDadosPadrao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THorarioNovoDadosPadrao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function THorarioNovoDadosPadrao.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure THorarioNovoDadosPadrao.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function THorarioNovoDadosPadrao.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure THorarioNovoDadosPadrao.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function THorarioNovoDadosPadrao.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure THorarioNovoDadosPadrao.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function THorarioNovoDadosPadrao.getJornadaSegunda: String;
begin
  Result := Self.m_JornadaSegunda;
end;

procedure THorarioNovoDadosPadrao.setJornadaSegunda(const a_Value: String);
begin
  Self.m_JornadaSegunda := a_Value;
end;

function THorarioNovoDadosPadrao.getRepousoSabado: Boolean;
begin
  Result := Self.m_RepousoSabado;
end;

procedure THorarioNovoDadosPadrao.setRepousoSabado(const a_Value: Boolean);
begin
  Self.m_RepousoSabado := a_Value;
end;

function THorarioNovoDadosPadrao.getJornadaSabado: String;
begin
  Result := Self.m_JornadaSabado;
end;

procedure THorarioNovoDadosPadrao.setJornadaSabado(const a_Value: String);
begin
  Self.m_JornadaSabado := a_Value;
end;

destructor THorarioNovoDadosPadrao.Destroy;
begin

end;

function THorarioNovoDadosPadrao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THorarioNovoDadosPadrao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THorarioNovoDadosPadrao.getNameAPI(): String;
begin
  Result := 'HorarioNovoDadosPadrao';
end;

function THorarioNovoDadosPadrao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THorarioNovoDadosPadrao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function THorarioNovoDadosOutros.getIdHorario: String;
begin
  Result := Self.m_IdHorario;
end;

procedure THorarioNovoDadosOutros.setIdHorario(const a_Value: String);
begin
  Self.m_IdHorario := a_Value;
end;

function THorarioNovoDadosOutros.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THorarioNovoDadosOutros.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function THorarioNovoDadosOutros.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure THorarioNovoDadosOutros.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function THorarioNovoDadosOutros.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure THorarioNovoDadosOutros.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function THorarioNovoDadosOutros.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure THorarioNovoDadosOutros.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function THorarioNovoDadosOutros.getJornadaSegunda: String;
begin
  Result := Self.m_JornadaSegunda;
end;

procedure THorarioNovoDadosOutros.setJornadaSegunda(const a_Value: String);
begin
  Self.m_JornadaSegunda := a_Value;
end;

function THorarioNovoDadosOutros.getJornadaTerca: String;
begin
  Result := Self.m_JornadaTerca;
end;

procedure THorarioNovoDadosOutros.setJornadaTerca(const a_Value: String);
begin
  Self.m_JornadaTerca := a_Value;
end;

function THorarioNovoDadosOutros.getJornadaQuarta: String;
begin
  Result := Self.m_JornadaQuarta;
end;

procedure THorarioNovoDadosOutros.setJornadaQuarta(const a_Value: String);
begin
  Self.m_JornadaQuarta := a_Value;
end;

function THorarioNovoDadosOutros.getJornadaQuinta: String;
begin
  Result := Self.m_JornadaQuinta;
end;

procedure THorarioNovoDadosOutros.setJornadaQuinta(const a_Value: String);
begin
  Self.m_JornadaQuinta := a_Value;
end;

function THorarioNovoDadosOutros.getJornadaSexta: String;
begin
  Result := Self.m_JornadaSexta;
end;

procedure THorarioNovoDadosOutros.setJornadaSexta(const a_Value: String);
begin
  Self.m_JornadaSexta := a_Value;
end;

function THorarioNovoDadosOutros.getJornadaSabado: String;
begin
  Result := Self.m_JornadaSabado;
end;

procedure THorarioNovoDadosOutros.setJornadaSabado(const a_Value: String);
begin
  Self.m_JornadaSabado := a_Value;
end;

function THorarioNovoDadosOutros.getJornadaDomingo: String;
begin
  Result := Self.m_JornadaDomingo;
end;

procedure THorarioNovoDadosOutros.setJornadaDomingo(const a_Value: String);
begin
  Self.m_JornadaDomingo := a_Value;
end;

function THorarioNovoDadosOutros.getRepousoSegunda: Boolean;
begin
  Result := Self.m_RepousoSegunda;
end;

procedure THorarioNovoDadosOutros.setRepousoSegunda(const a_Value: Boolean);
begin
  Self.m_RepousoSegunda := a_Value;
end;

function THorarioNovoDadosOutros.getRepousoTerca: Boolean;
begin
  Result := Self.m_RepousoTerca;
end;

procedure THorarioNovoDadosOutros.setRepousoTerca(const a_Value: Boolean);
begin
  Self.m_RepousoTerca := a_Value;
end;

function THorarioNovoDadosOutros.getRepousoQuarta: Boolean;
begin
  Result := Self.m_RepousoQuarta;
end;

procedure THorarioNovoDadosOutros.setRepousoQuarta(const a_Value: Boolean);
begin
  Self.m_RepousoQuarta := a_Value;
end;

function THorarioNovoDadosOutros.getRepousoQuinta: Boolean;
begin
  Result := Self.m_RepousoQuinta;
end;

procedure THorarioNovoDadosOutros.setRepousoQuinta(const a_Value: Boolean);
begin
  Self.m_RepousoQuinta := a_Value;
end;

function THorarioNovoDadosOutros.getRepousoSexta: Boolean;
begin
  Result := Self.m_RepousoSexta;
end;

procedure THorarioNovoDadosOutros.setRepousoSexta(const a_Value: Boolean);
begin
  Self.m_RepousoSexta := a_Value;
end;

function THorarioNovoDadosOutros.getRepousoSabado: Boolean;
begin
  Result := Self.m_RepousoSabado;
end;

procedure THorarioNovoDadosOutros.setRepousoSabado(const a_Value: Boolean);
begin
  Self.m_RepousoSabado := a_Value;
end;

function THorarioNovoDadosOutros.getRepousoDomingo: Boolean;
begin
  Result := Self.m_RepousoDomingo;
end;

procedure THorarioNovoDadosOutros.setRepousoDomingo(const a_Value: Boolean);
begin
  Self.m_RepousoDomingo := a_Value;
end;

destructor THorarioNovoDadosOutros.Destroy;
begin

end;

function THorarioNovoDadosOutros.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THorarioNovoDadosOutros.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THorarioNovoDadosOutros.getNameAPI(): String;
begin
  Result := 'HorarioNovoDadosOutros';
end;

function THorarioNovoDadosOutros.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THorarioNovoDadosOutros.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function THorarioNovoDadosEscala.getIdHorario: String;
begin
  Result := Self.m_IdHorario;
end;

procedure THorarioNovoDadosEscala.setIdHorario(const a_Value: String);
begin
  Self.m_IdHorario := a_Value;
end;

function THorarioNovoDadosEscala.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THorarioNovoDadosEscala.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function THorarioNovoDadosEscala.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure THorarioNovoDadosEscala.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function THorarioNovoDadosEscala.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure THorarioNovoDadosEscala.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function THorarioNovoDadosEscala.getJornada: String;
begin
  Result := Self.m_Jornada;
end;

procedure THorarioNovoDadosEscala.setJornada(const a_Value: String);
begin
  Self.m_Jornada := a_Value;
end;

destructor THorarioNovoDadosEscala.Destroy;
begin

end;

function THorarioNovoDadosEscala.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THorarioNovoDadosEscala.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THorarioNovoDadosEscala.getNameAPI(): String;
begin
  Result := 'HorarioNovoDadosEscala';
end;

function THorarioNovoDadosEscala.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THorarioNovoDadosEscala.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function THorarioAlterarDadosPadrao.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure THorarioAlterarDadosPadrao.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function THorarioAlterarDadosPadrao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THorarioAlterarDadosPadrao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function THorarioAlterarDadosPadrao.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure THorarioAlterarDadosPadrao.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function THorarioAlterarDadosPadrao.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure THorarioAlterarDadosPadrao.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function THorarioAlterarDadosPadrao.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure THorarioAlterarDadosPadrao.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function THorarioAlterarDadosPadrao.getJornadaSegunda: String;
begin
  Result := Self.m_JornadaSegunda;
end;

procedure THorarioAlterarDadosPadrao.setJornadaSegunda(const a_Value: String);
begin
  Self.m_JornadaSegunda := a_Value;
end;

function THorarioAlterarDadosPadrao.getRepousoSabado: Boolean;
begin
  Result := Self.m_RepousoSabado;
end;

procedure THorarioAlterarDadosPadrao.setRepousoSabado(const a_Value: Boolean);
begin
  Self.m_RepousoSabado := a_Value;
end;

function THorarioAlterarDadosPadrao.getJornadaSabado: String;
begin
  Result := Self.m_JornadaSabado;
end;

procedure THorarioAlterarDadosPadrao.setJornadaSabado(const a_Value: String);
begin
  Self.m_JornadaSabado := a_Value;
end;

destructor THorarioAlterarDadosPadrao.Destroy;
begin

end;

function THorarioAlterarDadosPadrao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THorarioAlterarDadosPadrao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THorarioAlterarDadosPadrao.getNameAPI(): String;
begin
  Result := 'HorarioAlterarDadosPadrao';
end;

function THorarioAlterarDadosPadrao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THorarioAlterarDadosPadrao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function THorarioAlterarDadosOutros.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure THorarioAlterarDadosOutros.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function THorarioAlterarDadosOutros.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THorarioAlterarDadosOutros.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function THorarioAlterarDadosOutros.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure THorarioAlterarDadosOutros.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function THorarioAlterarDadosOutros.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure THorarioAlterarDadosOutros.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function THorarioAlterarDadosOutros.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure THorarioAlterarDadosOutros.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function THorarioAlterarDadosOutros.getJornadaSegunda: String;
begin
  Result := Self.m_JornadaSegunda;
end;

procedure THorarioAlterarDadosOutros.setJornadaSegunda(const a_Value: String);
begin
  Self.m_JornadaSegunda := a_Value;
end;

function THorarioAlterarDadosOutros.getJornadaTerca: String;
begin
  Result := Self.m_JornadaTerca;
end;

procedure THorarioAlterarDadosOutros.setJornadaTerca(const a_Value: String);
begin
  Self.m_JornadaTerca := a_Value;
end;

function THorarioAlterarDadosOutros.getJornadaQuarta: String;
begin
  Result := Self.m_JornadaQuarta;
end;

procedure THorarioAlterarDadosOutros.setJornadaQuarta(const a_Value: String);
begin
  Self.m_JornadaQuarta := a_Value;
end;

function THorarioAlterarDadosOutros.getJornadaQuinta: String;
begin
  Result := Self.m_JornadaQuinta;
end;

procedure THorarioAlterarDadosOutros.setJornadaQuinta(const a_Value: String);
begin
  Self.m_JornadaQuinta := a_Value;
end;

function THorarioAlterarDadosOutros.getJornadaSexta: String;
begin
  Result := Self.m_JornadaSexta;
end;

procedure THorarioAlterarDadosOutros.setJornadaSexta(const a_Value: String);
begin
  Self.m_JornadaSexta := a_Value;
end;

function THorarioAlterarDadosOutros.getJornadaSabado: String;
begin
  Result := Self.m_JornadaSabado;
end;

procedure THorarioAlterarDadosOutros.setJornadaSabado(const a_Value: String);
begin
  Self.m_JornadaSabado := a_Value;
end;

function THorarioAlterarDadosOutros.getJornadaDomingo: String;
begin
  Result := Self.m_JornadaDomingo;
end;

procedure THorarioAlterarDadosOutros.setJornadaDomingo(const a_Value: String);
begin
  Self.m_JornadaDomingo := a_Value;
end;

function THorarioAlterarDadosOutros.getRepousoSegunda: Boolean;
begin
  Result := Self.m_RepousoSegunda;
end;

procedure THorarioAlterarDadosOutros.setRepousoSegunda(const a_Value: Boolean);
begin
  Self.m_RepousoSegunda := a_Value;
end;

function THorarioAlterarDadosOutros.getRepousoTerca: Boolean;
begin
  Result := Self.m_RepousoTerca;
end;

procedure THorarioAlterarDadosOutros.setRepousoTerca(const a_Value: Boolean);
begin
  Self.m_RepousoTerca := a_Value;
end;

function THorarioAlterarDadosOutros.getRepousoQuarta: Boolean;
begin
  Result := Self.m_RepousoQuarta;
end;

procedure THorarioAlterarDadosOutros.setRepousoQuarta(const a_Value: Boolean);
begin
  Self.m_RepousoQuarta := a_Value;
end;

function THorarioAlterarDadosOutros.getRepousoQuinta: Boolean;
begin
  Result := Self.m_RepousoQuinta;
end;

procedure THorarioAlterarDadosOutros.setRepousoQuinta(const a_Value: Boolean);
begin
  Self.m_RepousoQuinta := a_Value;
end;

function THorarioAlterarDadosOutros.getRepousoSexta: Boolean;
begin
  Result := Self.m_RepousoSexta;
end;

procedure THorarioAlterarDadosOutros.setRepousoSexta(const a_Value: Boolean);
begin
  Self.m_RepousoSexta := a_Value;
end;

function THorarioAlterarDadosOutros.getRepousoSabado: Boolean;
begin
  Result := Self.m_RepousoSabado;
end;

procedure THorarioAlterarDadosOutros.setRepousoSabado(const a_Value: Boolean);
begin
  Self.m_RepousoSabado := a_Value;
end;

function THorarioAlterarDadosOutros.getRepousoDomingo: Boolean;
begin
  Result := Self.m_RepousoDomingo;
end;

procedure THorarioAlterarDadosOutros.setRepousoDomingo(const a_Value: Boolean);
begin
  Self.m_RepousoDomingo := a_Value;
end;

destructor THorarioAlterarDadosOutros.Destroy;
begin

end;

function THorarioAlterarDadosOutros.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THorarioAlterarDadosOutros.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THorarioAlterarDadosOutros.getNameAPI(): String;
begin
  Result := 'HorarioAlterarDadosOutros';
end;

function THorarioAlterarDadosOutros.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THorarioAlterarDadosOutros.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function THorarioAlterarDadosEscala.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure THorarioAlterarDadosEscala.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function THorarioAlterarDadosEscala.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THorarioAlterarDadosEscala.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function THorarioAlterarDadosEscala.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure THorarioAlterarDadosEscala.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function THorarioAlterarDadosEscala.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure THorarioAlterarDadosEscala.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function THorarioAlterarDadosEscala.getJornada: String;
begin
  Result := Self.m_Jornada;
end;

procedure THorarioAlterarDadosEscala.setJornada(const a_Value: String);
begin
  Self.m_Jornada := a_Value;
end;

destructor THorarioAlterarDadosEscala.Destroy;
begin

end;

function THorarioAlterarDadosEscala.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THorarioAlterarDadosEscala.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THorarioAlterarDadosEscala.getNameAPI(): String;
begin
  Result := 'HorarioAlterarDadosEscala';
end;

function THorarioAlterarDadosEscala.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THorarioAlterarDadosEscala.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function THorarioAlterarFolgaFixa.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure THorarioAlterarFolgaFixa.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function THorarioAlterarFolgaFixa.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THorarioAlterarFolgaFixa.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function THorarioAlterarFolgaFixa.getQuantidade: Integer;
begin
  Result := Self.m_Quantidade;
end;

procedure THorarioAlterarFolgaFixa.setQuantidade(const a_Value: Integer);
begin
  Self.m_Quantidade := a_Value;
end;

destructor THorarioAlterarFolgaFixa.Destroy;
begin

end;

function THorarioAlterarFolgaFixa.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THorarioAlterarFolgaFixa.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THorarioAlterarFolgaFixa.getNameAPI(): String;
begin
  Result := 'HorarioAlterarFolgaFixa';
end;

function THorarioAlterarFolgaFixa.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THorarioAlterarFolgaFixa.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function THorarioAlterarFolgaExtra.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure THorarioAlterarFolgaExtra.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function THorarioAlterarFolgaExtra.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THorarioAlterarFolgaExtra.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function THorarioAlterarFolgaExtra.getOrdemNoMes: Integer;
begin
  Result := Self.m_OrdemNoMes;
end;

procedure THorarioAlterarFolgaExtra.setOrdemNoMes(const a_Value: Integer);
begin
  Self.m_OrdemNoMes := a_Value;
end;

function THorarioAlterarFolgaExtra.getDiaSemana: Integer;
begin
  Result := Self.m_DiaSemana;
end;

procedure THorarioAlterarFolgaExtra.setDiaSemana(const a_Value: Integer);
begin
  Self.m_DiaSemana := a_Value;
end;

destructor THorarioAlterarFolgaExtra.Destroy;
begin

end;

function THorarioAlterarFolgaExtra.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THorarioAlterarFolgaExtra.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THorarioAlterarFolgaExtra.getNameAPI(): String;
begin
  Result := 'HorarioAlterarFolgaExtra';
end;

function THorarioAlterarFolgaExtra.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THorarioAlterarFolgaExtra.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure THorarioAlterarDescontaAtrasosEmDiasDeFalta.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THorarioAlterarDescontaAtrasosEmDiasDeFalta.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getSegunda: Boolean;
begin
  Result := Self.m_Segunda;
end;

procedure THorarioAlterarDescontaAtrasosEmDiasDeFalta.setSegunda(const a_Value: Boolean);
begin
  Self.m_Segunda := a_Value;
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getTerca: Boolean;
begin
  Result := Self.m_Terca;
end;

procedure THorarioAlterarDescontaAtrasosEmDiasDeFalta.setTerca(const a_Value: Boolean);
begin
  Self.m_Terca := a_Value;
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getQuarta: Boolean;
begin
  Result := Self.m_Quarta;
end;

procedure THorarioAlterarDescontaAtrasosEmDiasDeFalta.setQuarta(const a_Value: Boolean);
begin
  Self.m_Quarta := a_Value;
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getQuinta: Boolean;
begin
  Result := Self.m_Quinta;
end;

procedure THorarioAlterarDescontaAtrasosEmDiasDeFalta.setQuinta(const a_Value: Boolean);
begin
  Self.m_Quinta := a_Value;
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getSexta: Boolean;
begin
  Result := Self.m_Sexta;
end;

procedure THorarioAlterarDescontaAtrasosEmDiasDeFalta.setSexta(const a_Value: Boolean);
begin
  Self.m_Sexta := a_Value;
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getSabado: Boolean;
begin
  Result := Self.m_Sabado;
end;

procedure THorarioAlterarDescontaAtrasosEmDiasDeFalta.setSabado(const a_Value: Boolean);
begin
  Self.m_Sabado := a_Value;
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getDomingo: Boolean;
begin
  Result := Self.m_Domingo;
end;

procedure THorarioAlterarDescontaAtrasosEmDiasDeFalta.setDomingo(const a_Value: Boolean);
begin
  Self.m_Domingo := a_Value;
end;

destructor THorarioAlterarDescontaAtrasosEmDiasDeFalta.Destroy;
begin

end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getNameAPI(): String;
begin
  Result := 'HorarioAlterarDescontaAtrasosEmDiasDeFalta';
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THorarioAlterarDescontaAtrasosEmDiasDeFalta.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function THorarioExcluir.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure THorarioExcluir.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function THorarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure THorarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor THorarioExcluir.Destroy;
begin

end;

function THorarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function THorarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function THorarioExcluir.getNameAPI(): String;
begin
  Result := 'HorarioExcluir';
end;

function THorarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function THorarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
