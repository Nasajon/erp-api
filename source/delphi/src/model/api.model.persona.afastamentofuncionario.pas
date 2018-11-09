unit api.model.persona.AfastamentoFuncionario;

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

type TAfastamentoFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAfastamento: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_Dias: Integer;
    var m_TipoHistorico: String;
    var m_Descricao: String;
    

    function getIdAfastamento(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getDias(): Integer;
    function getTipoHistorico(): String;
    function getDescricao(): String;
    

    procedure setIdAfastamento(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setDias(const a_Value: Integer);
    procedure setTipoHistorico(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idafastamento')]
    property idafastamento: String read getIdAfastamento write setIdAfastamento;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('dias')]
    property dias: Integer read getDias write setDias;

    /// <summary>
/// Preencher com o valor da coluna tipo da tela de afastamentos de funcionário
    /// </summary>
    [NasajonSerializeAttribute('tipohistorico')]
    property tipohistorico: String read getTipoHistorico write setTipoHistorico;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TAfastamentoFuncionarioAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAfastamento: String;
    var m_Data: TDate;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_DataNova: TDate;
    var m_Dias: Integer;
    var m_TipoHistorico: String;
    var m_Descricao: String;
    

    function getIdAfastamento(): String;
    function getData(): TDate;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getDataNova(): TDate;
    function getDias(): Integer;
    function getTipoHistorico(): String;
    function getDescricao(): String;
    

    procedure setIdAfastamento(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataNova(const a_Value: TDate);
    procedure setDias(const a_Value: Integer);
    procedure setTipoHistorico(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idafastamento')]
    property idafastamento: String read getIdAfastamento write setIdAfastamento;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datanova')]
    property datanova: TDate read getDataNova write setDataNova;

    [NasajonSerializeAttribute('dias')]
    property dias: Integer read getDias write setDias;

    /// <summary>
/// Preencher com o valor da coluna tipo da tela de afastamentos de funcionário
    /// </summary>
    [NasajonSerializeAttribute('tipohistorico')]
    property tipohistorico: String read getTipoHistorico write setTipoHistorico;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TAfastamentoFuncionarioAlterarDadosMedicos = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAfastamento: String;
    var m_Data: TDate;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Medico: String;
    var m_CID: String;
    var m_TipoAcidenteTransito: Integer;
    

    function getIdAfastamento(): String;
    function getData(): TDate;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getMedico(): String;
    function getCID(): String;
    function getTipoAcidenteTransito(): Integer;
    

    procedure setIdAfastamento(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setMedico(const a_Value: String);
    procedure setCID(const a_Value: String);
    procedure setTipoAcidenteTransito(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idafastamento')]
    property idafastamento: String read getIdAfastamento write setIdAfastamento;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('medico')]
    property medico: String read getMedico write setMedico;

    /// <summary>
/// Conforme tabela de códigos de doenças do eSocial
    /// </summary>
    [NasajonSerializeAttribute('cid')]
    property cid: String read getCID write setCID;

    /// <summary>
/// Atropelamento(1), Colisão(2) ou Outros(3)
    /// </summary>
    [NasajonSerializeAttribute('tipoacidentetransito')]
    property tipoacidentetransito: Integer read getTipoAcidenteTransito write setTipoAcidenteTransito;

    

end;

type TAfastamentoFuncionarioAlterarDadosSindicais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAfastamento: String;
    var m_Data: TDate;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Sindicato: String;
    var m_Onus: String;
    

    function getIdAfastamento(): String;
    function getData(): TDate;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getSindicato(): String;
    function getOnus(): String;
    

    procedure setIdAfastamento(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setSindicato(const a_Value: String);
    procedure setOnus(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idafastamento')]
    property idafastamento: String read getIdAfastamento write setIdAfastamento;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    /// <summary>
/// Empregador(1), Sindicato(2) ou Diferença salarial paga pelo sindicato(3)
    /// </summary>
    [NasajonSerializeAttribute('onus')]
    property onus: String read getOnus write setOnus;

    

end;

type TAfastamentoFuncionarioAlterarDadosCessao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAfastamento: String;
    var m_Data: TDate;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_CNPJEmpresaCessionaria: String;
    var m_Onus: Integer;
    

    function getIdAfastamento(): String;
    function getData(): TDate;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getCNPJEmpresaCessionaria(): String;
    function getOnus(): Integer;
    

    procedure setIdAfastamento(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCNPJEmpresaCessionaria(const a_Value: String);
    procedure setOnus(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idafastamento')]
    property idafastamento: String read getIdAfastamento write setIdAfastamento;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// [99.999.999/9999-99]. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('cnpjempresacessionaria')]
    property cnpjempresacessionaria: String read getCNPJEmpresaCessionaria write setCNPJEmpresaCessionaria;

    /// <summary>
/// Cedente(1), Cessionário(2) ou Ambos(3)
    /// </summary>
    [NasajonSerializeAttribute('onus')]
    property onus: Integer read getOnus write setOnus;

    

end;

type TAfastamentoFuncionarioAlterarDadosFerias = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAfastamento: String;
    var m_Data: TDate;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_DataInicioPeriodoAquisitivo: TDate;
    var m_DiasPagosSaldoFerias: Integer;
    

    function getIdAfastamento(): String;
    function getData(): TDate;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getDataInicioPeriodoAquisitivo(): TDate;
    function getDiasPagosSaldoFerias(): Integer;
    

    procedure setIdAfastamento(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataInicioPeriodoAquisitivo(const a_Value: TDate);
    procedure setDiasPagosSaldoFerias(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idafastamento')]
    property idafastamento: String read getIdAfastamento write setIdAfastamento;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datainicioperiodoaquisitivo')]
    property datainicioperiodoaquisitivo: TDate read getDataInicioPeriodoAquisitivo write setDataInicioPeriodoAquisitivo;

    [NasajonSerializeAttribute('diaspagossaldoferias')]
    property diaspagossaldoferias: Integer read getDiasPagosSaldoFerias write setDiasPagosSaldoFerias;

    

end;

type TAfastamentoFuncionarioAlterarAfastamentoOriginal = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAfastamento: String;
    var m_Data: TDate;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_IdAfastamentoOriginal: String;
    var m_DataAfastamentoOriginal: TDate;
    

    function getIdAfastamento(): String;
    function getData(): TDate;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getIdAfastamentoOriginal(): String;
    function getDataAfastamentoOriginal(): TDate;
    

    procedure setIdAfastamento(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setIdAfastamentoOriginal(const a_Value: String);
    procedure setDataAfastamentoOriginal(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idafastamento')]
    property idafastamento: String read getIdAfastamento write setIdAfastamento;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('idafastamentooriginal')]
    property idafastamentooriginal: String read getIdAfastamentoOriginal write setIdAfastamentoOriginal;

    [NasajonSerializeAttribute('dataafastamentooriginal')]
    property dataafastamentooriginal: TDate read getDataAfastamentoOriginal write setDataAfastamentoOriginal;

    

end;

type TAfastamentoFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAfastamento: String;
    var m_Data: TDate;
    var m_Funcionario: String;
    var m_Empresa: String;
    

    function getIdAfastamento(): String;
    function getData(): TDate;
    function getFuncionario(): String;
    function getEmpresa(): String;
    

    procedure setIdAfastamento(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idafastamento')]
    property idafastamento: String read getIdAfastamento write setIdAfastamento;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TAfastamentoFuncionarioNovo.getIdAfastamento: String;
begin
  Result := Self.m_IdAfastamento;
end;

procedure TAfastamentoFuncionarioNovo.setIdAfastamento(const a_Value: String);
begin
  Self.m_IdAfastamento := a_Value;
end;

function TAfastamentoFuncionarioNovo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TAfastamentoFuncionarioNovo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TAfastamentoFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAfastamentoFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAfastamentoFuncionarioNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TAfastamentoFuncionarioNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TAfastamentoFuncionarioNovo.getDias: Integer;
begin
  Result := Self.m_Dias;
end;

procedure TAfastamentoFuncionarioNovo.setDias(const a_Value: Integer);
begin
  Self.m_Dias := a_Value;
end;

function TAfastamentoFuncionarioNovo.getTipoHistorico: String;
begin
  Result := Self.m_TipoHistorico;
end;

procedure TAfastamentoFuncionarioNovo.setTipoHistorico(const a_Value: String);
begin
  Self.m_TipoHistorico := a_Value;
end;

function TAfastamentoFuncionarioNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TAfastamentoFuncionarioNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TAfastamentoFuncionarioNovo.Destroy;
begin

end;

function TAfastamentoFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAfastamentoFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAfastamentoFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'AfastamentoFuncionarioNovo';
end;

function TAfastamentoFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAfastamentoFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAfastamentoFuncionarioAlterarDadosGerais.getIdAfastamento: String;
begin
  Result := Self.m_IdAfastamento;
end;

procedure TAfastamentoFuncionarioAlterarDadosGerais.setIdAfastamento(const a_Value: String);
begin
  Self.m_IdAfastamento := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosGerais.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TAfastamentoFuncionarioAlterarDadosGerais.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosGerais.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TAfastamentoFuncionarioAlterarDadosGerais.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAfastamentoFuncionarioAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosGerais.getDataNova: TDate;
begin
  Result := Self.m_DataNova;
end;

procedure TAfastamentoFuncionarioAlterarDadosGerais.setDataNova(const a_Value: TDate);
begin
  Self.m_DataNova := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosGerais.getDias: Integer;
begin
  Result := Self.m_Dias;
end;

procedure TAfastamentoFuncionarioAlterarDadosGerais.setDias(const a_Value: Integer);
begin
  Self.m_Dias := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosGerais.getTipoHistorico: String;
begin
  Result := Self.m_TipoHistorico;
end;

procedure TAfastamentoFuncionarioAlterarDadosGerais.setTipoHistorico(const a_Value: String);
begin
  Self.m_TipoHistorico := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosGerais.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TAfastamentoFuncionarioAlterarDadosGerais.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TAfastamentoFuncionarioAlterarDadosGerais.Destroy;
begin

end;

function TAfastamentoFuncionarioAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAfastamentoFuncionarioAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAfastamentoFuncionarioAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'AfastamentoFuncionarioAlterarDadosGerais';
end;

function TAfastamentoFuncionarioAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAfastamentoFuncionarioAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAfastamentoFuncionarioAlterarDadosMedicos.getIdAfastamento: String;
begin
  Result := Self.m_IdAfastamento;
end;

procedure TAfastamentoFuncionarioAlterarDadosMedicos.setIdAfastamento(const a_Value: String);
begin
  Self.m_IdAfastamento := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosMedicos.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TAfastamentoFuncionarioAlterarDadosMedicos.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosMedicos.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TAfastamentoFuncionarioAlterarDadosMedicos.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosMedicos.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAfastamentoFuncionarioAlterarDadosMedicos.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosMedicos.getMedico: String;
begin
  Result := Self.m_Medico;
end;

procedure TAfastamentoFuncionarioAlterarDadosMedicos.setMedico(const a_Value: String);
begin
  Self.m_Medico := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosMedicos.getCID: String;
begin
  Result := Self.m_CID;
end;

procedure TAfastamentoFuncionarioAlterarDadosMedicos.setCID(const a_Value: String);
begin
  Self.m_CID := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosMedicos.getTipoAcidenteTransito: Integer;
begin
  Result := Self.m_TipoAcidenteTransito;
end;

procedure TAfastamentoFuncionarioAlterarDadosMedicos.setTipoAcidenteTransito(const a_Value: Integer);
begin
  Self.m_TipoAcidenteTransito := a_Value;
end;

destructor TAfastamentoFuncionarioAlterarDadosMedicos.Destroy;
begin

end;

function TAfastamentoFuncionarioAlterarDadosMedicos.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAfastamentoFuncionarioAlterarDadosMedicos.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAfastamentoFuncionarioAlterarDadosMedicos.getNameAPI(): String;
begin
  Result := 'AfastamentoFuncionarioAlterarDadosMedicos';
end;

function TAfastamentoFuncionarioAlterarDadosMedicos.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAfastamentoFuncionarioAlterarDadosMedicos.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAfastamentoFuncionarioAlterarDadosSindicais.getIdAfastamento: String;
begin
  Result := Self.m_IdAfastamento;
end;

procedure TAfastamentoFuncionarioAlterarDadosSindicais.setIdAfastamento(const a_Value: String);
begin
  Self.m_IdAfastamento := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosSindicais.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TAfastamentoFuncionarioAlterarDadosSindicais.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosSindicais.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TAfastamentoFuncionarioAlterarDadosSindicais.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosSindicais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAfastamentoFuncionarioAlterarDadosSindicais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosSindicais.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TAfastamentoFuncionarioAlterarDadosSindicais.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosSindicais.getOnus: String;
begin
  Result := Self.m_Onus;
end;

procedure TAfastamentoFuncionarioAlterarDadosSindicais.setOnus(const a_Value: String);
begin
  Self.m_Onus := a_Value;
end;

destructor TAfastamentoFuncionarioAlterarDadosSindicais.Destroy;
begin

end;

function TAfastamentoFuncionarioAlterarDadosSindicais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAfastamentoFuncionarioAlterarDadosSindicais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAfastamentoFuncionarioAlterarDadosSindicais.getNameAPI(): String;
begin
  Result := 'AfastamentoFuncionarioAlterarDadosSindicais';
end;

function TAfastamentoFuncionarioAlterarDadosSindicais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAfastamentoFuncionarioAlterarDadosSindicais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAfastamentoFuncionarioAlterarDadosCessao.getIdAfastamento: String;
begin
  Result := Self.m_IdAfastamento;
end;

procedure TAfastamentoFuncionarioAlterarDadosCessao.setIdAfastamento(const a_Value: String);
begin
  Self.m_IdAfastamento := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosCessao.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TAfastamentoFuncionarioAlterarDadosCessao.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosCessao.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TAfastamentoFuncionarioAlterarDadosCessao.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosCessao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAfastamentoFuncionarioAlterarDadosCessao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosCessao.getCNPJEmpresaCessionaria: String;
begin
  Result := Self.m_CNPJEmpresaCessionaria;
end;

procedure TAfastamentoFuncionarioAlterarDadosCessao.setCNPJEmpresaCessionaria(const a_Value: String);
begin
  Self.m_CNPJEmpresaCessionaria := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosCessao.getOnus: Integer;
begin
  Result := Self.m_Onus;
end;

procedure TAfastamentoFuncionarioAlterarDadosCessao.setOnus(const a_Value: Integer);
begin
  Self.m_Onus := a_Value;
end;

destructor TAfastamentoFuncionarioAlterarDadosCessao.Destroy;
begin

end;

function TAfastamentoFuncionarioAlterarDadosCessao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAfastamentoFuncionarioAlterarDadosCessao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAfastamentoFuncionarioAlterarDadosCessao.getNameAPI(): String;
begin
  Result := 'AfastamentoFuncionarioAlterarDadosCessao';
end;

function TAfastamentoFuncionarioAlterarDadosCessao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAfastamentoFuncionarioAlterarDadosCessao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAfastamentoFuncionarioAlterarDadosFerias.getIdAfastamento: String;
begin
  Result := Self.m_IdAfastamento;
end;

procedure TAfastamentoFuncionarioAlterarDadosFerias.setIdAfastamento(const a_Value: String);
begin
  Self.m_IdAfastamento := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosFerias.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TAfastamentoFuncionarioAlterarDadosFerias.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosFerias.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TAfastamentoFuncionarioAlterarDadosFerias.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosFerias.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAfastamentoFuncionarioAlterarDadosFerias.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosFerias.getDataInicioPeriodoAquisitivo: TDate;
begin
  Result := Self.m_DataInicioPeriodoAquisitivo;
end;

procedure TAfastamentoFuncionarioAlterarDadosFerias.setDataInicioPeriodoAquisitivo(const a_Value: TDate);
begin
  Self.m_DataInicioPeriodoAquisitivo := a_Value;
end;

function TAfastamentoFuncionarioAlterarDadosFerias.getDiasPagosSaldoFerias: Integer;
begin
  Result := Self.m_DiasPagosSaldoFerias;
end;

procedure TAfastamentoFuncionarioAlterarDadosFerias.setDiasPagosSaldoFerias(const a_Value: Integer);
begin
  Self.m_DiasPagosSaldoFerias := a_Value;
end;

destructor TAfastamentoFuncionarioAlterarDadosFerias.Destroy;
begin

end;

function TAfastamentoFuncionarioAlterarDadosFerias.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAfastamentoFuncionarioAlterarDadosFerias.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAfastamentoFuncionarioAlterarDadosFerias.getNameAPI(): String;
begin
  Result := 'AfastamentoFuncionarioAlterarDadosFerias';
end;

function TAfastamentoFuncionarioAlterarDadosFerias.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAfastamentoFuncionarioAlterarDadosFerias.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAfastamentoFuncionarioAlterarAfastamentoOriginal.getIdAfastamento: String;
begin
  Result := Self.m_IdAfastamento;
end;

procedure TAfastamentoFuncionarioAlterarAfastamentoOriginal.setIdAfastamento(const a_Value: String);
begin
  Self.m_IdAfastamento := a_Value;
end;

function TAfastamentoFuncionarioAlterarAfastamentoOriginal.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TAfastamentoFuncionarioAlterarAfastamentoOriginal.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TAfastamentoFuncionarioAlterarAfastamentoOriginal.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TAfastamentoFuncionarioAlterarAfastamentoOriginal.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TAfastamentoFuncionarioAlterarAfastamentoOriginal.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAfastamentoFuncionarioAlterarAfastamentoOriginal.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAfastamentoFuncionarioAlterarAfastamentoOriginal.getIdAfastamentoOriginal: String;
begin
  Result := Self.m_IdAfastamentoOriginal;
end;

procedure TAfastamentoFuncionarioAlterarAfastamentoOriginal.setIdAfastamentoOriginal(const a_Value: String);
begin
  Self.m_IdAfastamentoOriginal := a_Value;
end;

function TAfastamentoFuncionarioAlterarAfastamentoOriginal.getDataAfastamentoOriginal: TDate;
begin
  Result := Self.m_DataAfastamentoOriginal;
end;

procedure TAfastamentoFuncionarioAlterarAfastamentoOriginal.setDataAfastamentoOriginal(const a_Value: TDate);
begin
  Self.m_DataAfastamentoOriginal := a_Value;
end;

destructor TAfastamentoFuncionarioAlterarAfastamentoOriginal.Destroy;
begin

end;

function TAfastamentoFuncionarioAlterarAfastamentoOriginal.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAfastamentoFuncionarioAlterarAfastamentoOriginal.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAfastamentoFuncionarioAlterarAfastamentoOriginal.getNameAPI(): String;
begin
  Result := 'AfastamentoFuncionarioAlterarAfastamentoOriginal';
end;

function TAfastamentoFuncionarioAlterarAfastamentoOriginal.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAfastamentoFuncionarioAlterarAfastamentoOriginal.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAfastamentoFuncionarioExcluir.getIdAfastamento: String;
begin
  Result := Self.m_IdAfastamento;
end;

procedure TAfastamentoFuncionarioExcluir.setIdAfastamento(const a_Value: String);
begin
  Self.m_IdAfastamento := a_Value;
end;

function TAfastamentoFuncionarioExcluir.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TAfastamentoFuncionarioExcluir.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TAfastamentoFuncionarioExcluir.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TAfastamentoFuncionarioExcluir.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TAfastamentoFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAfastamentoFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TAfastamentoFuncionarioExcluir.Destroy;
begin

end;

function TAfastamentoFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAfastamentoFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAfastamentoFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'AfastamentoFuncionarioExcluir';
end;

function TAfastamentoFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAfastamentoFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
