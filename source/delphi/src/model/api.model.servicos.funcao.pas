unit api.model.servicos.Funcao;

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

type TFuncaoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcao: String;
    var m_GrupoEmpresarial: String;
    var m_Cargo: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Bloqueado: Boolean;
    var m_CriadoPor: String;
    

    function getFuncao(): String;
    function getGrupoEmpresarial(): String;
    function getCargo(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getBloqueado(): Boolean;
    function getCriadoPor(): String;
    

    procedure setFuncao(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setBloqueado(const a_Value: Boolean);
    procedure setCriadoPor(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('bloqueado')]
    property bloqueado: Boolean read getBloqueado write setBloqueado;

    [NasajonSerializeAttribute('criadopor')]
    property criadopor: String read getCriadoPor write setCriadoPor;

    

end;

type TFuncaoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcao: String;
    var m_GrupoEmpresarial: String;
    var m_Cargo: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Bloqueado: Boolean;
    

    function getFuncao(): String;
    function getGrupoEmpresarial(): String;
    function getCargo(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getBloqueado(): Boolean;
    

    procedure setFuncao(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setBloqueado(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('bloqueado')]
    property bloqueado: Boolean read getBloqueado write setBloqueado;

    

end;

type TFuncaoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcao: String;
    

    function getFuncao(): String;
    

    procedure setFuncao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

    

end;

	
implementation

  uses
      api.send;  

function TFuncaoNovo.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TFuncaoNovo.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

function TFuncaoNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TFuncaoNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TFuncaoNovo.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TFuncaoNovo.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TFuncaoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TFuncaoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TFuncaoNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TFuncaoNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TFuncaoNovo.getBloqueado: Boolean;
begin
  Result := Self.m_Bloqueado;
end;

procedure TFuncaoNovo.setBloqueado(const a_Value: Boolean);
begin
  Self.m_Bloqueado := a_Value;
end;

function TFuncaoNovo.getCriadoPor: String;
begin
  Result := Self.m_CriadoPor;
end;

procedure TFuncaoNovo.setCriadoPor(const a_Value: String);
begin
  Self.m_CriadoPor := a_Value;
end;

destructor TFuncaoNovo.Destroy;
begin

end;

function TFuncaoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncaoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncaoNovo.getNameAPI(): String;
begin
  Result := 'FuncaoNovo';
end;

function TFuncaoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncaoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncaoAlterar.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TFuncaoAlterar.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

function TFuncaoAlterar.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TFuncaoAlterar.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TFuncaoAlterar.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TFuncaoAlterar.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TFuncaoAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TFuncaoAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TFuncaoAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TFuncaoAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TFuncaoAlterar.getBloqueado: Boolean;
begin
  Result := Self.m_Bloqueado;
end;

procedure TFuncaoAlterar.setBloqueado(const a_Value: Boolean);
begin
  Self.m_Bloqueado := a_Value;
end;

destructor TFuncaoAlterar.Destroy;
begin

end;

function TFuncaoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncaoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncaoAlterar.getNameAPI(): String;
begin
  Result := 'FuncaoAlterar';
end;

function TFuncaoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncaoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncaoExcluir.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TFuncaoExcluir.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

destructor TFuncaoExcluir.Destroy;
begin

end;

function TFuncaoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncaoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncaoExcluir.getNameAPI(): String;
begin
  Result := 'FuncaoExcluir';
end;

function TFuncaoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncaoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
