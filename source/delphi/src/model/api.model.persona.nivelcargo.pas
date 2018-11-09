unit api.model.persona.NivelCargo;

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

type TNivelCargoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdNivel: String;
    var m_Cargo: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Data: TDate;
    var m_ValorSalario: Currency;
    var m_Observacao: String;
    

    function getIdNivel(): String;
    function getCargo(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getData(): TDate;
    function getValorSalario(): Currency;
    function getObservacao(): String;
    

    procedure setIdNivel(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setValorSalario(const a_Value: Currency);
    procedure setObservacao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idnivel')]
    property idnivel: String read getIdNivel write setIdNivel;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('valorsalario')]
    property valorsalario: Currency read getValorSalario write setValorSalario;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

    

end;

type TNivelCargoAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Nivel: String;
    var m_Cargo: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Data: TDate;
    var m_ValorSalario: Currency;
    var m_Observacao: String;
    

    function getNivel(): String;
    function getCargo(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getData(): TDate;
    function getValorSalario(): Currency;
    function getObservacao(): String;
    

    procedure setNivel(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setValorSalario(const a_Value: Currency);
    procedure setObservacao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('nivel')]
    property nivel: String read getNivel write setNivel;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('valorsalario')]
    property valorsalario: Currency read getValorSalario write setValorSalario;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

    

end;

type TNivelCargoAlterarDadosAnteriores = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Nivel: String;
    var m_Cargo: String;
    var m_Empresa: String;
    var m_DataAtualizacaoAnteriora: TDate;
    var m_ValorSalarioAnterior: Currency;
    

    function getNivel(): String;
    function getCargo(): String;
    function getEmpresa(): String;
    function getDataAtualizacaoAnteriora(): TDate;
    function getValorSalarioAnterior(): Currency;
    

    procedure setNivel(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataAtualizacaoAnteriora(const a_Value: TDate);
    procedure setValorSalarioAnterior(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('nivel')]
    property nivel: String read getNivel write setNivel;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('dataatualizacaoanteriora')]
    property dataatualizacaoanteriora: TDate read getDataAtualizacaoAnteriora write setDataAtualizacaoAnteriora;

    [NasajonSerializeAttribute('valorsalarioanterior')]
    property valorsalarioanterior: Currency read getValorSalarioAnterior write setValorSalarioAnterior;

    

end;

type TNivelCargoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Nivel: String;
    var m_Cargo: String;
    var m_Empresa: String;
    

    function getNivel(): String;
    function getCargo(): String;
    function getEmpresa(): String;
    

    procedure setNivel(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('nivel')]
    property nivel: String read getNivel write setNivel;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TNivelCargoNovo.getIdNivel: String;
begin
  Result := Self.m_IdNivel;
end;

procedure TNivelCargoNovo.setIdNivel(const a_Value: String);
begin
  Self.m_IdNivel := a_Value;
end;

function TNivelCargoNovo.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TNivelCargoNovo.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TNivelCargoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TNivelCargoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TNivelCargoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TNivelCargoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TNivelCargoNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TNivelCargoNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TNivelCargoNovo.getValorSalario: Currency;
begin
  Result := Self.m_ValorSalario;
end;

procedure TNivelCargoNovo.setValorSalario(const a_Value: Currency);
begin
  Self.m_ValorSalario := a_Value;
end;

function TNivelCargoNovo.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TNivelCargoNovo.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

destructor TNivelCargoNovo.Destroy;
begin

end;

function TNivelCargoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TNivelCargoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TNivelCargoNovo.getNameAPI(): String;
begin
  Result := 'NivelCargoNovo';
end;

function TNivelCargoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TNivelCargoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TNivelCargoAlterarDadosGerais.getNivel: String;
begin
  Result := Self.m_Nivel;
end;

procedure TNivelCargoAlterarDadosGerais.setNivel(const a_Value: String);
begin
  Self.m_Nivel := a_Value;
end;

function TNivelCargoAlterarDadosGerais.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TNivelCargoAlterarDadosGerais.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TNivelCargoAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TNivelCargoAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TNivelCargoAlterarDadosGerais.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TNivelCargoAlterarDadosGerais.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TNivelCargoAlterarDadosGerais.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TNivelCargoAlterarDadosGerais.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TNivelCargoAlterarDadosGerais.getValorSalario: Currency;
begin
  Result := Self.m_ValorSalario;
end;

procedure TNivelCargoAlterarDadosGerais.setValorSalario(const a_Value: Currency);
begin
  Self.m_ValorSalario := a_Value;
end;

function TNivelCargoAlterarDadosGerais.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TNivelCargoAlterarDadosGerais.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

destructor TNivelCargoAlterarDadosGerais.Destroy;
begin

end;

function TNivelCargoAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TNivelCargoAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TNivelCargoAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'NivelCargoAlterarDadosGerais';
end;

function TNivelCargoAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TNivelCargoAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TNivelCargoAlterarDadosAnteriores.getNivel: String;
begin
  Result := Self.m_Nivel;
end;

procedure TNivelCargoAlterarDadosAnteriores.setNivel(const a_Value: String);
begin
  Self.m_Nivel := a_Value;
end;

function TNivelCargoAlterarDadosAnteriores.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TNivelCargoAlterarDadosAnteriores.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TNivelCargoAlterarDadosAnteriores.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TNivelCargoAlterarDadosAnteriores.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TNivelCargoAlterarDadosAnteriores.getDataAtualizacaoAnteriora: TDate;
begin
  Result := Self.m_DataAtualizacaoAnteriora;
end;

procedure TNivelCargoAlterarDadosAnteriores.setDataAtualizacaoAnteriora(const a_Value: TDate);
begin
  Self.m_DataAtualizacaoAnteriora := a_Value;
end;

function TNivelCargoAlterarDadosAnteriores.getValorSalarioAnterior: Currency;
begin
  Result := Self.m_ValorSalarioAnterior;
end;

procedure TNivelCargoAlterarDadosAnteriores.setValorSalarioAnterior(const a_Value: Currency);
begin
  Self.m_ValorSalarioAnterior := a_Value;
end;

destructor TNivelCargoAlterarDadosAnteriores.Destroy;
begin

end;

function TNivelCargoAlterarDadosAnteriores.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TNivelCargoAlterarDadosAnteriores.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TNivelCargoAlterarDadosAnteriores.getNameAPI(): String;
begin
  Result := 'NivelCargoAlterarDadosAnteriores';
end;

function TNivelCargoAlterarDadosAnteriores.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TNivelCargoAlterarDadosAnteriores.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TNivelCargoExcluir.getNivel: String;
begin
  Result := Self.m_Nivel;
end;

procedure TNivelCargoExcluir.setNivel(const a_Value: String);
begin
  Self.m_Nivel := a_Value;
end;

function TNivelCargoExcluir.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TNivelCargoExcluir.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TNivelCargoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TNivelCargoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TNivelCargoExcluir.Destroy;
begin

end;

function TNivelCargoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TNivelCargoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TNivelCargoExcluir.getNameAPI(): String;
begin
  Result := 'NivelCargoExcluir';
end;

function TNivelCargoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TNivelCargoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
