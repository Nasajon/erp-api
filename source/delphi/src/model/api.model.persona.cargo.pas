unit api.model.persona.Cargo;

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

type TCargoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdCargo: String;
    var m_Codigo: String;
    var m_Empresa: String;
    var m_Nome: String;
    var m_CodigoCBO: String;
    var m_CodigoGrauInstrucao: String;
    

    function getIdCargo(): String;
    function getCodigo(): String;
    function getEmpresa(): String;
    function getNome(): String;
    function getCodigoCBO(): String;
    function getCodigoGrauInstrucao(): String;
    

    procedure setIdCargo(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCodigoCBO(const a_Value: String);
    procedure setCodigoGrauInstrucao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idcargo')]
    property idcargo: String read getIdCargo write setIdCargo;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Conforme tabela de código brasileiro de ocupações
    /// </summary>
    [NasajonSerializeAttribute('codigocbo')]
    property codigocbo: String read getCodigoCBO write setCodigoCBO;

    /// <summary>
/// Conforme tabela oficial de graus de instrução do governo
    /// </summary>
    [NasajonSerializeAttribute('codigograuinstrucao')]
    property codigograuinstrucao: String read getCodigoGrauInstrucao write setCodigoGrauInstrucao;

    

end;

type TCargoAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Cargo: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CodigoCBO: String;
    var m_CodigoGrauInstrucao: String;
    

    function getCargo(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCodigoCBO(): String;
    function getCodigoGrauInstrucao(): String;
    

    procedure setCargo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCodigoCBO(const a_Value: String);
    procedure setCodigoGrauInstrucao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Conforme tabela de código brasileiro de ocupações
    /// </summary>
    [NasajonSerializeAttribute('codigocbo')]
    property codigocbo: String read getCodigoCBO write setCodigoCBO;

    /// <summary>
/// Conforme tabela oficial de graus de instrução do governo
    /// </summary>
    [NasajonSerializeAttribute('codigograuinstrucao')]
    property codigograuinstrucao: String read getCodigoGrauInstrucao write setCodigoGrauInstrucao;

    

end;

type TCargoAlterarDadosSugestao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Cargo: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Departamento: String;
    var m_Horario: String;
    var m_Lotacao: String;
    var m_Sindicato: String;
    var m_DiasExperienciaContrato: Integer;
    var m_DiasProrrogacaoContrato: Integer;
    

    function getCargo(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getDepartamento(): String;
    function getHorario(): String;
    function getLotacao(): String;
    function getSindicato(): String;
    function getDiasExperienciaContrato(): Integer;
    function getDiasProrrogacaoContrato(): Integer;
    

    procedure setCargo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
    procedure setHorario(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setSindicato(const a_Value: String);
    procedure setDiasExperienciaContrato(const a_Value: Integer);
    procedure setDiasProrrogacaoContrato(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('diasexperienciacontrato')]
    property diasexperienciacontrato: Integer read getDiasExperienciaContrato write setDiasExperienciaContrato;

    [NasajonSerializeAttribute('diasprorrogacaocontrato')]
    property diasprorrogacaocontrato: Integer read getDiasProrrogacaoContrato write setDiasProrrogacaoContrato;

    

end;

type TCargoAlterarDadosComplementares = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Cargo: String;
    var m_Empresa: String;
    var m_Experiencia: String;
    var m_Atividades: WideString;
    var m_Requisitos: WideString;
    

    function getCargo(): String;
    function getEmpresa(): String;
    function getExperiencia(): String;
    function getAtividades(): WideString;
    function getRequisitos(): WideString;
    

    procedure setCargo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setExperiencia(const a_Value: String);
    procedure setAtividades(const a_Value: WideString);
    procedure setRequisitos(const a_Value: WideString);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('experiencia')]
    property experiencia: String read getExperiencia write setExperiencia;

    [NasajonSerializeAttribute('atividades')]
    property atividades: WideString read getAtividades write setAtividades;

    [NasajonSerializeAttribute('requisitos')]
    property requisitos: WideString read getRequisitos write setRequisitos;

    

end;

type TCargoAlterarDadosMercado = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Cargo: String;
    var m_Empresa: String;
    var m_MaiorSalario: Currency;
    var m_MenorSalario: Currency;
    

    function getCargo(): String;
    function getEmpresa(): String;
    function getMaiorSalario(): Currency;
    function getMenorSalario(): Currency;
    

    procedure setCargo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setMaiorSalario(const a_Value: Currency);
    procedure setMenorSalario(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('maiorsalario')]
    property maiorsalario: Currency read getMaiorSalario write setMaiorSalario;

    [NasajonSerializeAttribute('menorsalario')]
    property menorsalario: Currency read getMenorSalario write setMenorSalario;

    

end;

type TCargoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Cargo: String;
    var m_Empresa: String;
    

    function getCargo(): String;
    function getEmpresa(): String;
    

    procedure setCargo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TCargoNovo.getIdCargo: String;
begin
  Result := Self.m_IdCargo;
end;

procedure TCargoNovo.setIdCargo(const a_Value: String);
begin
  Self.m_IdCargo := a_Value;
end;

function TCargoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TCargoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TCargoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TCargoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TCargoNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TCargoNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TCargoNovo.getCodigoCBO: String;
begin
  Result := Self.m_CodigoCBO;
end;

procedure TCargoNovo.setCodigoCBO(const a_Value: String);
begin
  Self.m_CodigoCBO := a_Value;
end;

function TCargoNovo.getCodigoGrauInstrucao: String;
begin
  Result := Self.m_CodigoGrauInstrucao;
end;

procedure TCargoNovo.setCodigoGrauInstrucao(const a_Value: String);
begin
  Self.m_CodigoGrauInstrucao := a_Value;
end;

destructor TCargoNovo.Destroy;
begin

end;

function TCargoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCargoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCargoNovo.getNameAPI(): String;
begin
  Result := 'CargoNovo';
end;

function TCargoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCargoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCargoAlterarDadosGerais.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TCargoAlterarDadosGerais.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TCargoAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TCargoAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TCargoAlterarDadosGerais.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TCargoAlterarDadosGerais.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TCargoAlterarDadosGerais.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TCargoAlterarDadosGerais.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TCargoAlterarDadosGerais.getCodigoCBO: String;
begin
  Result := Self.m_CodigoCBO;
end;

procedure TCargoAlterarDadosGerais.setCodigoCBO(const a_Value: String);
begin
  Self.m_CodigoCBO := a_Value;
end;

function TCargoAlterarDadosGerais.getCodigoGrauInstrucao: String;
begin
  Result := Self.m_CodigoGrauInstrucao;
end;

procedure TCargoAlterarDadosGerais.setCodigoGrauInstrucao(const a_Value: String);
begin
  Self.m_CodigoGrauInstrucao := a_Value;
end;

destructor TCargoAlterarDadosGerais.Destroy;
begin

end;

function TCargoAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCargoAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCargoAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'CargoAlterarDadosGerais';
end;

function TCargoAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCargoAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCargoAlterarDadosSugestao.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TCargoAlterarDadosSugestao.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TCargoAlterarDadosSugestao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TCargoAlterarDadosSugestao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TCargoAlterarDadosSugestao.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TCargoAlterarDadosSugestao.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TCargoAlterarDadosSugestao.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TCargoAlterarDadosSugestao.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TCargoAlterarDadosSugestao.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure TCargoAlterarDadosSugestao.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function TCargoAlterarDadosSugestao.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TCargoAlterarDadosSugestao.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TCargoAlterarDadosSugestao.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TCargoAlterarDadosSugestao.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TCargoAlterarDadosSugestao.getDiasExperienciaContrato: Integer;
begin
  Result := Self.m_DiasExperienciaContrato;
end;

procedure TCargoAlterarDadosSugestao.setDiasExperienciaContrato(const a_Value: Integer);
begin
  Self.m_DiasExperienciaContrato := a_Value;
end;

function TCargoAlterarDadosSugestao.getDiasProrrogacaoContrato: Integer;
begin
  Result := Self.m_DiasProrrogacaoContrato;
end;

procedure TCargoAlterarDadosSugestao.setDiasProrrogacaoContrato(const a_Value: Integer);
begin
  Self.m_DiasProrrogacaoContrato := a_Value;
end;

destructor TCargoAlterarDadosSugestao.Destroy;
begin

end;

function TCargoAlterarDadosSugestao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCargoAlterarDadosSugestao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCargoAlterarDadosSugestao.getNameAPI(): String;
begin
  Result := 'CargoAlterarDadosSugestao';
end;

function TCargoAlterarDadosSugestao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCargoAlterarDadosSugestao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCargoAlterarDadosComplementares.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TCargoAlterarDadosComplementares.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TCargoAlterarDadosComplementares.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TCargoAlterarDadosComplementares.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TCargoAlterarDadosComplementares.getExperiencia: String;
begin
  Result := Self.m_Experiencia;
end;

procedure TCargoAlterarDadosComplementares.setExperiencia(const a_Value: String);
begin
  Self.m_Experiencia := a_Value;
end;

function TCargoAlterarDadosComplementares.getAtividades: WideString;
begin
  Result := Self.m_Atividades;
end;

procedure TCargoAlterarDadosComplementares.setAtividades(const a_Value: WideString);
begin
  Self.m_Atividades := a_Value;
end;

function TCargoAlterarDadosComplementares.getRequisitos: WideString;
begin
  Result := Self.m_Requisitos;
end;

procedure TCargoAlterarDadosComplementares.setRequisitos(const a_Value: WideString);
begin
  Self.m_Requisitos := a_Value;
end;

destructor TCargoAlterarDadosComplementares.Destroy;
begin

end;

function TCargoAlterarDadosComplementares.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCargoAlterarDadosComplementares.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCargoAlterarDadosComplementares.getNameAPI(): String;
begin
  Result := 'CargoAlterarDadosComplementares';
end;

function TCargoAlterarDadosComplementares.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCargoAlterarDadosComplementares.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCargoAlterarDadosMercado.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TCargoAlterarDadosMercado.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TCargoAlterarDadosMercado.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TCargoAlterarDadosMercado.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TCargoAlterarDadosMercado.getMaiorSalario: Currency;
begin
  Result := Self.m_MaiorSalario;
end;

procedure TCargoAlterarDadosMercado.setMaiorSalario(const a_Value: Currency);
begin
  Self.m_MaiorSalario := a_Value;
end;

function TCargoAlterarDadosMercado.getMenorSalario: Currency;
begin
  Result := Self.m_MenorSalario;
end;

procedure TCargoAlterarDadosMercado.setMenorSalario(const a_Value: Currency);
begin
  Self.m_MenorSalario := a_Value;
end;

destructor TCargoAlterarDadosMercado.Destroy;
begin

end;

function TCargoAlterarDadosMercado.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCargoAlterarDadosMercado.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCargoAlterarDadosMercado.getNameAPI(): String;
begin
  Result := 'CargoAlterarDadosMercado';
end;

function TCargoAlterarDadosMercado.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCargoAlterarDadosMercado.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCargoExcluir.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TCargoExcluir.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TCargoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TCargoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TCargoExcluir.Destroy;
begin

end;

function TCargoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCargoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCargoExcluir.getNameAPI(): String;
begin
  Result := 'CargoExcluir';
end;

function TCargoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCargoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
