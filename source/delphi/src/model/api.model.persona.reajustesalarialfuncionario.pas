unit api.model.persona.ReajusteSalarialFuncionario;

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

type TReajusteSalarialFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdReajuste: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_Descricao: String;
    var m_Tipo: Integer;
    var m_Percentual: Currency;
    var m_SalarioAnterior: Currency;
    var m_SalarioNovo: Currency;
    var m_UnidadeSalarioNovo: Integer;
    

    function getIdReajuste(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getDescricao(): String;
    function getTipo(): Integer;
    function getPercentual(): Currency;
    function getSalarioAnterior(): Currency;
    function getSalarioNovo(): Currency;
    function getUnidadeSalarioNovo(): Integer;
    

    procedure setIdReajuste(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setDescricao(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setPercentual(const a_Value: Currency);
    procedure setSalarioAnterior(const a_Value: Currency);
    procedure setSalarioNovo(const a_Value: Currency);
    procedure setUnidadeSalarioNovo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idreajuste')]
    property idreajuste: String read getIdReajuste write setIdReajuste;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Promoção(0), Antecipação(1) ou Sindical(2)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    [NasajonSerializeAttribute('salarioanterior')]
    property salarioanterior: Currency read getSalarioAnterior write setSalarioAnterior;

    [NasajonSerializeAttribute('salarionovo')]
    property salarionovo: Currency read getSalarioNovo write setSalarioNovo;

    /// <summary>
/// Hora(1), Dia(2), Semana(3), Mês(4) ou Tarefa(5)
    /// </summary>
    [NasajonSerializeAttribute('unidadesalarionovo')]
    property unidadesalarionovo: Integer read getUnidadeSalarioNovo write setUnidadeSalarioNovo;

    

end;

type TReajusteSalarialFuncionarioAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdReajuste: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_Descricao: String;
    var m_Tipo: Integer;
    var m_Percentual: Currency;
    var m_SalarioAnterior: Currency;
    var m_SalarioNovo: Currency;
    var m_UnidadeSalarioNovo: Integer;
    

    function getIdReajuste(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getDescricao(): String;
    function getTipo(): Integer;
    function getPercentual(): Currency;
    function getSalarioAnterior(): Currency;
    function getSalarioNovo(): Currency;
    function getUnidadeSalarioNovo(): Integer;
    

    procedure setIdReajuste(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setDescricao(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setPercentual(const a_Value: Currency);
    procedure setSalarioAnterior(const a_Value: Currency);
    procedure setSalarioNovo(const a_Value: Currency);
    procedure setUnidadeSalarioNovo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idreajuste')]
    property idreajuste: String read getIdReajuste write setIdReajuste;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    [NasajonSerializeAttribute('salarioanterior')]
    property salarioanterior: Currency read getSalarioAnterior write setSalarioAnterior;

    [NasajonSerializeAttribute('salarionovo')]
    property salarionovo: Currency read getSalarioNovo write setSalarioNovo;

    /// <summary>
/// Hora(1), Dia(2), Semana(3), Mês(4) ou Tarefa(5)
    /// </summary>
    [NasajonSerializeAttribute('unidadesalarionovo')]
    property unidadesalarionovo: Integer read getUnidadeSalarioNovo write setUnidadeSalarioNovo;

    

end;

type TReajusteSalarialFuncionarioAlterarReajusteSindical = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdReajuste: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_IdReajusteSindical: String;
    var m_DataReajusteSindical: TDate;
    var m_Sindicato: String;
    

    function getIdReajuste(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getIdReajusteSindical(): String;
    function getDataReajusteSindical(): TDate;
    function getSindicato(): String;
    

    procedure setIdReajuste(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setIdReajusteSindical(const a_Value: String);
    procedure setDataReajusteSindical(const a_Value: TDate);
    procedure setSindicato(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idreajuste')]
    property idreajuste: String read getIdReajuste write setIdReajuste;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('idreajustesindical')]
    property idreajustesindical: String read getIdReajusteSindical write setIdReajusteSindical;

    [NasajonSerializeAttribute('datareajustesindical')]
    property datareajustesindical: TDate read getDataReajusteSindical write setDataReajusteSindical;

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    

end;

type TReajusteSalarialFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdReajuste: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    

    function getIdReajuste(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    

    procedure setIdReajuste(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idreajuste')]
    property idreajuste: String read getIdReajuste write setIdReajuste;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    

end;

	
implementation

  uses
      api.send;  

function TReajusteSalarialFuncionarioNovo.getIdReajuste: String;
begin
  Result := Self.m_IdReajuste;
end;

procedure TReajusteSalarialFuncionarioNovo.setIdReajuste(const a_Value: String);
begin
  Self.m_IdReajuste := a_Value;
end;

function TReajusteSalarialFuncionarioNovo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TReajusteSalarialFuncionarioNovo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TReajusteSalarialFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TReajusteSalarialFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TReajusteSalarialFuncionarioNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TReajusteSalarialFuncionarioNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TReajusteSalarialFuncionarioNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TReajusteSalarialFuncionarioNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TReajusteSalarialFuncionarioNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TReajusteSalarialFuncionarioNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TReajusteSalarialFuncionarioNovo.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure TReajusteSalarialFuncionarioNovo.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

function TReajusteSalarialFuncionarioNovo.getSalarioAnterior: Currency;
begin
  Result := Self.m_SalarioAnterior;
end;

procedure TReajusteSalarialFuncionarioNovo.setSalarioAnterior(const a_Value: Currency);
begin
  Self.m_SalarioAnterior := a_Value;
end;

function TReajusteSalarialFuncionarioNovo.getSalarioNovo: Currency;
begin
  Result := Self.m_SalarioNovo;
end;

procedure TReajusteSalarialFuncionarioNovo.setSalarioNovo(const a_Value: Currency);
begin
  Self.m_SalarioNovo := a_Value;
end;

function TReajusteSalarialFuncionarioNovo.getUnidadeSalarioNovo: Integer;
begin
  Result := Self.m_UnidadeSalarioNovo;
end;

procedure TReajusteSalarialFuncionarioNovo.setUnidadeSalarioNovo(const a_Value: Integer);
begin
  Self.m_UnidadeSalarioNovo := a_Value;
end;

destructor TReajusteSalarialFuncionarioNovo.Destroy;
begin

end;

function TReajusteSalarialFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TReajusteSalarialFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TReajusteSalarialFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'ReajusteSalarialFuncionarioNovo';
end;

function TReajusteSalarialFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TReajusteSalarialFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getIdReajuste: String;
begin
  Result := Self.m_IdReajuste;
end;

procedure TReajusteSalarialFuncionarioAlterarDadosGerais.setIdReajuste(const a_Value: String);
begin
  Self.m_IdReajuste := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TReajusteSalarialFuncionarioAlterarDadosGerais.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TReajusteSalarialFuncionarioAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TReajusteSalarialFuncionarioAlterarDadosGerais.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TReajusteSalarialFuncionarioAlterarDadosGerais.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TReajusteSalarialFuncionarioAlterarDadosGerais.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure TReajusteSalarialFuncionarioAlterarDadosGerais.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getSalarioAnterior: Currency;
begin
  Result := Self.m_SalarioAnterior;
end;

procedure TReajusteSalarialFuncionarioAlterarDadosGerais.setSalarioAnterior(const a_Value: Currency);
begin
  Self.m_SalarioAnterior := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getSalarioNovo: Currency;
begin
  Result := Self.m_SalarioNovo;
end;

procedure TReajusteSalarialFuncionarioAlterarDadosGerais.setSalarioNovo(const a_Value: Currency);
begin
  Self.m_SalarioNovo := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getUnidadeSalarioNovo: Integer;
begin
  Result := Self.m_UnidadeSalarioNovo;
end;

procedure TReajusteSalarialFuncionarioAlterarDadosGerais.setUnidadeSalarioNovo(const a_Value: Integer);
begin
  Self.m_UnidadeSalarioNovo := a_Value;
end;

destructor TReajusteSalarialFuncionarioAlterarDadosGerais.Destroy;
begin

end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'ReajusteSalarialFuncionarioAlterarDadosGerais';
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TReajusteSalarialFuncionarioAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TReajusteSalarialFuncionarioAlterarReajusteSindical.getIdReajuste: String;
begin
  Result := Self.m_IdReajuste;
end;

procedure TReajusteSalarialFuncionarioAlterarReajusteSindical.setIdReajuste(const a_Value: String);
begin
  Self.m_IdReajuste := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarReajusteSindical.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TReajusteSalarialFuncionarioAlterarReajusteSindical.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarReajusteSindical.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TReajusteSalarialFuncionarioAlterarReajusteSindical.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarReajusteSindical.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TReajusteSalarialFuncionarioAlterarReajusteSindical.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarReajusteSindical.getIdReajusteSindical: String;
begin
  Result := Self.m_IdReajusteSindical;
end;

procedure TReajusteSalarialFuncionarioAlterarReajusteSindical.setIdReajusteSindical(const a_Value: String);
begin
  Self.m_IdReajusteSindical := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarReajusteSindical.getDataReajusteSindical: TDate;
begin
  Result := Self.m_DataReajusteSindical;
end;

procedure TReajusteSalarialFuncionarioAlterarReajusteSindical.setDataReajusteSindical(const a_Value: TDate);
begin
  Self.m_DataReajusteSindical := a_Value;
end;

function TReajusteSalarialFuncionarioAlterarReajusteSindical.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TReajusteSalarialFuncionarioAlterarReajusteSindical.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

destructor TReajusteSalarialFuncionarioAlterarReajusteSindical.Destroy;
begin

end;

function TReajusteSalarialFuncionarioAlterarReajusteSindical.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TReajusteSalarialFuncionarioAlterarReajusteSindical.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TReajusteSalarialFuncionarioAlterarReajusteSindical.getNameAPI(): String;
begin
  Result := 'ReajusteSalarialFuncionarioAlterarReajusteSindical';
end;

function TReajusteSalarialFuncionarioAlterarReajusteSindical.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TReajusteSalarialFuncionarioAlterarReajusteSindical.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TReajusteSalarialFuncionarioExcluir.getIdReajuste: String;
begin
  Result := Self.m_IdReajuste;
end;

procedure TReajusteSalarialFuncionarioExcluir.setIdReajuste(const a_Value: String);
begin
  Self.m_IdReajuste := a_Value;
end;

function TReajusteSalarialFuncionarioExcluir.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TReajusteSalarialFuncionarioExcluir.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TReajusteSalarialFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TReajusteSalarialFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TReajusteSalarialFuncionarioExcluir.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TReajusteSalarialFuncionarioExcluir.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

destructor TReajusteSalarialFuncionarioExcluir.Destroy;
begin

end;

function TReajusteSalarialFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TReajusteSalarialFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TReajusteSalarialFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'ReajusteSalarialFuncionarioExcluir';
end;

function TReajusteSalarialFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TReajusteSalarialFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
