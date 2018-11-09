unit api.model.persona.DocumentoFuncionario;

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

type TDocumentoFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdDocumento: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_TipoDocumento: String;
    var m_Url: WideString;
    var m_Bin: String;
    

    function getIdDocumento(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTipoDocumento(): String;
    function getUrl(): WideString;
    function getBin(): String;
    

    procedure setIdDocumento(const a_Value: String);
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

type TDocumentoFuncionarioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdDocumento: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_TipoDocumento: String;
    var m_Url: WideString;
    var m_Bin: String;
    

    function getIdDocumento(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTipoDocumento(): String;
    function getUrl(): WideString;
    function getBin(): String;
    

    procedure setIdDocumento(const a_Value: String);
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

type TDocumentoFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdDocumento: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_TipoDocumento: String;
    

    function getIdDocumento(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTipoDocumento(): String;
    

    procedure setIdDocumento(const a_Value: String);
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

function TDocumentoFuncionarioNovo.getIdDocumento: String;
begin
  Result := Self.m_IdDocumento;
end;

procedure TDocumentoFuncionarioNovo.setIdDocumento(const a_Value: String);
begin
  Self.m_IdDocumento := a_Value;
end;

function TDocumentoFuncionarioNovo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDocumentoFuncionarioNovo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDocumentoFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDocumentoFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDocumentoFuncionarioNovo.getTipoDocumento: String;
begin
  Result := Self.m_TipoDocumento;
end;

procedure TDocumentoFuncionarioNovo.setTipoDocumento(const a_Value: String);
begin
  Self.m_TipoDocumento := a_Value;
end;

function TDocumentoFuncionarioNovo.getUrl: WideString;
begin
  Result := Self.m_Url;
end;

procedure TDocumentoFuncionarioNovo.setUrl(const a_Value: WideString);
begin
  Self.m_Url := a_Value;
end;

function TDocumentoFuncionarioNovo.getBin: String;
begin
  Result := Self.m_Bin;
end;

procedure TDocumentoFuncionarioNovo.setBin(const a_Value: String);
begin
  Self.m_Bin := a_Value;
end;

destructor TDocumentoFuncionarioNovo.Destroy;
begin

end;

function TDocumentoFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocumentoFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocumentoFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'DocumentoFuncionarioNovo';
end;

function TDocumentoFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocumentoFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDocumentoFuncionarioAlterar.getIdDocumento: String;
begin
  Result := Self.m_IdDocumento;
end;

procedure TDocumentoFuncionarioAlterar.setIdDocumento(const a_Value: String);
begin
  Self.m_IdDocumento := a_Value;
end;

function TDocumentoFuncionarioAlterar.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDocumentoFuncionarioAlterar.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDocumentoFuncionarioAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDocumentoFuncionarioAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDocumentoFuncionarioAlterar.getTipoDocumento: String;
begin
  Result := Self.m_TipoDocumento;
end;

procedure TDocumentoFuncionarioAlterar.setTipoDocumento(const a_Value: String);
begin
  Self.m_TipoDocumento := a_Value;
end;

function TDocumentoFuncionarioAlterar.getUrl: WideString;
begin
  Result := Self.m_Url;
end;

procedure TDocumentoFuncionarioAlterar.setUrl(const a_Value: WideString);
begin
  Self.m_Url := a_Value;
end;

function TDocumentoFuncionarioAlterar.getBin: String;
begin
  Result := Self.m_Bin;
end;

procedure TDocumentoFuncionarioAlterar.setBin(const a_Value: String);
begin
  Self.m_Bin := a_Value;
end;

destructor TDocumentoFuncionarioAlterar.Destroy;
begin

end;

function TDocumentoFuncionarioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocumentoFuncionarioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocumentoFuncionarioAlterar.getNameAPI(): String;
begin
  Result := 'DocumentoFuncionarioAlterar';
end;

function TDocumentoFuncionarioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocumentoFuncionarioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDocumentoFuncionarioExcluir.getIdDocumento: String;
begin
  Result := Self.m_IdDocumento;
end;

procedure TDocumentoFuncionarioExcluir.setIdDocumento(const a_Value: String);
begin
  Self.m_IdDocumento := a_Value;
end;

function TDocumentoFuncionarioExcluir.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDocumentoFuncionarioExcluir.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDocumentoFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDocumentoFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDocumentoFuncionarioExcluir.getTipoDocumento: String;
begin
  Result := Self.m_TipoDocumento;
end;

procedure TDocumentoFuncionarioExcluir.setTipoDocumento(const a_Value: String);
begin
  Self.m_TipoDocumento := a_Value;
end;

destructor TDocumentoFuncionarioExcluir.Destroy;
begin

end;

function TDocumentoFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDocumentoFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDocumentoFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'DocumentoFuncionarioExcluir';
end;

function TDocumentoFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDocumentoFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
