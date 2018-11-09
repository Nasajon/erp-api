unit api.model.persona.DocumentoDependenteFuncionario;

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

type TDocumentoDependenteFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdDocumento: String;
    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_TipoDocumento: String;
    var m_Url: WideString;
    var m_Bin: String;
    

    function getIdDocumento(): String;
    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTipoDocumento(): String;
    function getUrl(): WideString;
    function getBin(): String;
    

    procedure setIdDocumento(const a_Value: String);
    procedure setDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTipoDocumento(const a_Value: String);
    procedure setUrl(const a_Value: WideString);
    procedure setBin(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('iddocumento')]
    property iddocumento: String read getIdDocumento write setIdDocumento;

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('tipodocumento')]
    property tipodocumento: String read getTipoDocumento write setTipoDocumento;

    [NasajonSerializeAttribute('url')]
    property url: WideString read getUrl write setUrl;

    [NasajonSerializeAttribute('bin')]
    property bin: String read getBin write setBin;

    

end;

type TDocumentoDependenteFuncionarioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdDocumento: String;
    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_TipoDocumento: String;
    var m_Url: WideString;
    var m_Bin: String;
    

    function getIdDocumento(): String;
    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTipoDocumento(): String;
    function getUrl(): WideString;
    function getBin(): String;
    

    procedure setIdDocumento(const a_Value: String);
    procedure setDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTipoDocumento(const a_Value: String);
    procedure setUrl(const a_Value: WideString);
    procedure setBin(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('iddocumento')]
    property iddocumento: String read getIdDocumento write setIdDocumento;

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('tipodocumento')]
    property tipodocumento: String read getTipoDocumento write setTipoDocumento;

    [NasajonSerializeAttribute('url')]
    property url: WideString read getUrl write setUrl;

    [NasajonSerializeAttribute('bin')]
    property bin: String read getBin write setBin;

    

end;

type TDocumentoDependenteFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdDocumento: String;
    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_TipoDocumento: String;
    

    function getIdDocumento(): String;
    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTipoDocumento(): String;
    

    procedure setIdDocumento(const a_Value: String);
    procedure setDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTipoDocumento(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('iddocumento')]
    property iddocumento: String read getIdDocumento write setIdDocumento;

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('tipodocumento')]
    property tipodocumento: String read getTipoDocumento write setTipoDocumento;

    

end;

	
implementation

  uses
      api.send;  

function TDocumentoDependenteFuncionarioNovo.getIdDocumento: String;
begin
  Result := Self.m_IdDocumento;
end;

procedure TDocumentoDependenteFuncionarioNovo.setIdDocumento(const a_Value: String);
begin
  Self.m_IdDocumento := a_Value;
end;

function TDocumentoDependenteFuncionarioNovo.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDocumentoDependenteFuncionarioNovo.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDocumentoDependenteFuncionarioNovo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDocumentoDependenteFuncionarioNovo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDocumentoDependenteFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDocumentoDependenteFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDocumentoDependenteFuncionarioNovo.getTipoDocumento: String;
begin
  Result := Self.m_TipoDocumento;
end;

procedure TDocumentoDependenteFuncionarioNovo.setTipoDocumento(const a_Value: String);
begin
  Self.m_TipoDocumento := a_Value;
end;

function TDocumentoDependenteFuncionarioNovo.getUrl: WideString;
begin
  Result := Self.m_Url;
end;

procedure TDocumentoDependenteFuncionarioNovo.setUrl(const a_Value: WideString);
begin
  Self.m_Url := a_Value;
end;

function TDocumentoDependenteFuncionarioNovo.getBin: String;
begin
  Result := Self.m_Bin;
end;

procedure TDocumentoDependenteFuncionarioNovo.setBin(const a_Value: String);
begin
  Self.m_Bin := a_Value;
end;

destructor TDocumentoDependenteFuncionarioNovo.Destroy;
begin

end;

function TDocumentoDependenteFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocumentoDependenteFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocumentoDependenteFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'DocumentoDependenteFuncionarioNovo';
end;

function TDocumentoDependenteFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocumentoDependenteFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDocumentoDependenteFuncionarioAlterar.getIdDocumento: String;
begin
  Result := Self.m_IdDocumento;
end;

procedure TDocumentoDependenteFuncionarioAlterar.setIdDocumento(const a_Value: String);
begin
  Self.m_IdDocumento := a_Value;
end;

function TDocumentoDependenteFuncionarioAlterar.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDocumentoDependenteFuncionarioAlterar.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDocumentoDependenteFuncionarioAlterar.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDocumentoDependenteFuncionarioAlterar.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDocumentoDependenteFuncionarioAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDocumentoDependenteFuncionarioAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDocumentoDependenteFuncionarioAlterar.getTipoDocumento: String;
begin
  Result := Self.m_TipoDocumento;
end;

procedure TDocumentoDependenteFuncionarioAlterar.setTipoDocumento(const a_Value: String);
begin
  Self.m_TipoDocumento := a_Value;
end;

function TDocumentoDependenteFuncionarioAlterar.getUrl: WideString;
begin
  Result := Self.m_Url;
end;

procedure TDocumentoDependenteFuncionarioAlterar.setUrl(const a_Value: WideString);
begin
  Self.m_Url := a_Value;
end;

function TDocumentoDependenteFuncionarioAlterar.getBin: String;
begin
  Result := Self.m_Bin;
end;

procedure TDocumentoDependenteFuncionarioAlterar.setBin(const a_Value: String);
begin
  Self.m_Bin := a_Value;
end;

destructor TDocumentoDependenteFuncionarioAlterar.Destroy;
begin

end;

function TDocumentoDependenteFuncionarioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocumentoDependenteFuncionarioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocumentoDependenteFuncionarioAlterar.getNameAPI(): String;
begin
  Result := 'DocumentoDependenteFuncionarioAlterar';
end;

function TDocumentoDependenteFuncionarioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocumentoDependenteFuncionarioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDocumentoDependenteFuncionarioExcluir.getIdDocumento: String;
begin
  Result := Self.m_IdDocumento;
end;

procedure TDocumentoDependenteFuncionarioExcluir.setIdDocumento(const a_Value: String);
begin
  Self.m_IdDocumento := a_Value;
end;

function TDocumentoDependenteFuncionarioExcluir.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDocumentoDependenteFuncionarioExcluir.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDocumentoDependenteFuncionarioExcluir.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDocumentoDependenteFuncionarioExcluir.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDocumentoDependenteFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDocumentoDependenteFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDocumentoDependenteFuncionarioExcluir.getTipoDocumento: String;
begin
  Result := Self.m_TipoDocumento;
end;

procedure TDocumentoDependenteFuncionarioExcluir.setTipoDocumento(const a_Value: String);
begin
  Self.m_TipoDocumento := a_Value;
end;

destructor TDocumentoDependenteFuncionarioExcluir.Destroy;
begin

end;

function TDocumentoDependenteFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocumentoDependenteFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocumentoDependenteFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'DocumentoDependenteFuncionarioExcluir';
end;

function TDocumentoDependenteFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocumentoDependenteFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
