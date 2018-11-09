unit api.model.persona.TarifaValeTransporteFuncionario;

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

type TTarifaValeTransporteFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdTarifa: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_TarifaConcessionaria: String;
    var m_Concessionaria: String;
    var m_Quantidade: Integer;
    

    function getIdTarifa(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTarifaConcessionaria(): String;
    function getConcessionaria(): String;
    function getQuantidade(): Integer;
    

    procedure setIdTarifa(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTarifaConcessionaria(const a_Value: String);
    procedure setConcessionaria(const a_Value: String);
    procedure setQuantidade(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idtarifa')]
    property idtarifa: String read getIdTarifa write setIdTarifa;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('tarifaconcessionaria')]
    property tarifaconcessionaria: String read getTarifaConcessionaria write setTarifaConcessionaria;

    [NasajonSerializeAttribute('concessionaria')]
    property concessionaria: String read getConcessionaria write setConcessionaria;

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Integer read getQuantidade write setQuantidade;

    

end;

type TTarifaValeTransporteFuncionarioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdTarifa: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_TarifaConcessionaria: String;
    var m_Concessionaria: String;
    var m_Quantidade: Integer;
    

    function getIdTarifa(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTarifaConcessionaria(): String;
    function getConcessionaria(): String;
    function getQuantidade(): Integer;
    

    procedure setIdTarifa(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTarifaConcessionaria(const a_Value: String);
    procedure setConcessionaria(const a_Value: String);
    procedure setQuantidade(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idtarifa')]
    property idtarifa: String read getIdTarifa write setIdTarifa;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('tarifaconcessionaria')]
    property tarifaconcessionaria: String read getTarifaConcessionaria write setTarifaConcessionaria;

    [NasajonSerializeAttribute('concessionaria')]
    property concessionaria: String read getConcessionaria write setConcessionaria;

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Integer read getQuantidade write setQuantidade;

    

end;

type TTarifaValeTransporteFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdTarifa: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_TarifaConcessionaria: String;
    var m_Concessionaria: String;
    

    function getIdTarifa(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTarifaConcessionaria(): String;
    function getConcessionaria(): String;
    

    procedure setIdTarifa(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTarifaConcessionaria(const a_Value: String);
    procedure setConcessionaria(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idtarifa')]
    property idtarifa: String read getIdTarifa write setIdTarifa;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('tarifaconcessionaria')]
    property tarifaconcessionaria: String read getTarifaConcessionaria write setTarifaConcessionaria;

    [NasajonSerializeAttribute('concessionaria')]
    property concessionaria: String read getConcessionaria write setConcessionaria;

    

end;

	
implementation

  uses
      api.send;  

function TTarifaValeTransporteFuncionarioNovo.getIdTarifa: String;
begin
  Result := Self.m_IdTarifa;
end;

procedure TTarifaValeTransporteFuncionarioNovo.setIdTarifa(const a_Value: String);
begin
  Self.m_IdTarifa := a_Value;
end;

function TTarifaValeTransporteFuncionarioNovo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TTarifaValeTransporteFuncionarioNovo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TTarifaValeTransporteFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TTarifaValeTransporteFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TTarifaValeTransporteFuncionarioNovo.getTarifaConcessionaria: String;
begin
  Result := Self.m_TarifaConcessionaria;
end;

procedure TTarifaValeTransporteFuncionarioNovo.setTarifaConcessionaria(const a_Value: String);
begin
  Self.m_TarifaConcessionaria := a_Value;
end;

function TTarifaValeTransporteFuncionarioNovo.getConcessionaria: String;
begin
  Result := Self.m_Concessionaria;
end;

procedure TTarifaValeTransporteFuncionarioNovo.setConcessionaria(const a_Value: String);
begin
  Self.m_Concessionaria := a_Value;
end;

function TTarifaValeTransporteFuncionarioNovo.getQuantidade: Integer;
begin
  Result := Self.m_Quantidade;
end;

procedure TTarifaValeTransporteFuncionarioNovo.setQuantidade(const a_Value: Integer);
begin
  Self.m_Quantidade := a_Value;
end;

destructor TTarifaValeTransporteFuncionarioNovo.Destroy;
begin

end;

function TTarifaValeTransporteFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTarifaValeTransporteFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTarifaValeTransporteFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'TarifaValeTransporteFuncionarioNovo';
end;

function TTarifaValeTransporteFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTarifaValeTransporteFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTarifaValeTransporteFuncionarioAlterar.getIdTarifa: String;
begin
  Result := Self.m_IdTarifa;
end;

procedure TTarifaValeTransporteFuncionarioAlterar.setIdTarifa(const a_Value: String);
begin
  Self.m_IdTarifa := a_Value;
end;

function TTarifaValeTransporteFuncionarioAlterar.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TTarifaValeTransporteFuncionarioAlterar.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TTarifaValeTransporteFuncionarioAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TTarifaValeTransporteFuncionarioAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TTarifaValeTransporteFuncionarioAlterar.getTarifaConcessionaria: String;
begin
  Result := Self.m_TarifaConcessionaria;
end;

procedure TTarifaValeTransporteFuncionarioAlterar.setTarifaConcessionaria(const a_Value: String);
begin
  Self.m_TarifaConcessionaria := a_Value;
end;

function TTarifaValeTransporteFuncionarioAlterar.getConcessionaria: String;
begin
  Result := Self.m_Concessionaria;
end;

procedure TTarifaValeTransporteFuncionarioAlterar.setConcessionaria(const a_Value: String);
begin
  Self.m_Concessionaria := a_Value;
end;

function TTarifaValeTransporteFuncionarioAlterar.getQuantidade: Integer;
begin
  Result := Self.m_Quantidade;
end;

procedure TTarifaValeTransporteFuncionarioAlterar.setQuantidade(const a_Value: Integer);
begin
  Self.m_Quantidade := a_Value;
end;

destructor TTarifaValeTransporteFuncionarioAlterar.Destroy;
begin

end;

function TTarifaValeTransporteFuncionarioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTarifaValeTransporteFuncionarioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTarifaValeTransporteFuncionarioAlterar.getNameAPI(): String;
begin
  Result := 'TarifaValeTransporteFuncionarioAlterar';
end;

function TTarifaValeTransporteFuncionarioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTarifaValeTransporteFuncionarioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTarifaValeTransporteFuncionarioExcluir.getIdTarifa: String;
begin
  Result := Self.m_IdTarifa;
end;

procedure TTarifaValeTransporteFuncionarioExcluir.setIdTarifa(const a_Value: String);
begin
  Self.m_IdTarifa := a_Value;
end;

function TTarifaValeTransporteFuncionarioExcluir.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TTarifaValeTransporteFuncionarioExcluir.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TTarifaValeTransporteFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TTarifaValeTransporteFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TTarifaValeTransporteFuncionarioExcluir.getTarifaConcessionaria: String;
begin
  Result := Self.m_TarifaConcessionaria;
end;

procedure TTarifaValeTransporteFuncionarioExcluir.setTarifaConcessionaria(const a_Value: String);
begin
  Self.m_TarifaConcessionaria := a_Value;
end;

function TTarifaValeTransporteFuncionarioExcluir.getConcessionaria: String;
begin
  Result := Self.m_Concessionaria;
end;

procedure TTarifaValeTransporteFuncionarioExcluir.setConcessionaria(const a_Value: String);
begin
  Self.m_Concessionaria := a_Value;
end;

destructor TTarifaValeTransporteFuncionarioExcluir.Destroy;
begin

end;

function TTarifaValeTransporteFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTarifaValeTransporteFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTarifaValeTransporteFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'TarifaValeTransporteFuncionarioExcluir';
end;

function TTarifaValeTransporteFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTarifaValeTransporteFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
