unit api.model.servicos.ProjetoFuncao;

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

type TProjetoFuncaoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Identificador: String;
    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Cargo: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Bloqueado: Boolean;
    var m_CriadoPor: String;
    

    function getIdentificador(): String;
    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getCargo(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getBloqueado(): Boolean;
    function getCriadoPor(): String;
    

    procedure setIdentificador(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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
    

    [NasajonSerializeAttribute('identificador')]
    property identificador: String read getIdentificador write setIdentificador;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

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

type TProjetoFuncaoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Identificador: String;
    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Cargo: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Bloqueado: Boolean;
    

    function getIdentificador(): String;
    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getCargo(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getBloqueado(): Boolean;
    

    procedure setIdentificador(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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
    

    [NasajonSerializeAttribute('identificador')]
    property identificador: String read getIdentificador write setIdentificador;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('bloqueado')]
    property bloqueado: Boolean read getBloqueado write setBloqueado;

    

end;

type TProjetoFuncaoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Identificador: String;
    var m_GrupoEmpresarial: String;
    

    function getIdentificador(): String;
    function getGrupoEmpresarial(): String;
    

    procedure setIdentificador(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('identificador')]
    property identificador: String read getIdentificador write setIdentificador;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    

end;

	
implementation

  uses
      api.send;  

function TProjetoFuncaoNovo.getIdentificador: String;
begin
  Result := Self.m_Identificador;
end;

procedure TProjetoFuncaoNovo.setIdentificador(const a_Value: String);
begin
  Self.m_Identificador := a_Value;
end;

function TProjetoFuncaoNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TProjetoFuncaoNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TProjetoFuncaoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TProjetoFuncaoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TProjetoFuncaoNovo.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TProjetoFuncaoNovo.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TProjetoFuncaoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TProjetoFuncaoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TProjetoFuncaoNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TProjetoFuncaoNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TProjetoFuncaoNovo.getBloqueado: Boolean;
begin
  Result := Self.m_Bloqueado;
end;

procedure TProjetoFuncaoNovo.setBloqueado(const a_Value: Boolean);
begin
  Self.m_Bloqueado := a_Value;
end;

function TProjetoFuncaoNovo.getCriadoPor: String;
begin
  Result := Self.m_CriadoPor;
end;

procedure TProjetoFuncaoNovo.setCriadoPor(const a_Value: String);
begin
  Self.m_CriadoPor := a_Value;
end;

destructor TProjetoFuncaoNovo.Destroy;
begin

end;

function TProjetoFuncaoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProjetoFuncaoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProjetoFuncaoNovo.getNameAPI(): String;
begin
  Result := 'ProjetoFuncaoNovo';
end;

function TProjetoFuncaoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProjetoFuncaoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProjetoFuncaoAlterar.getIdentificador: String;
begin
  Result := Self.m_Identificador;
end;

procedure TProjetoFuncaoAlterar.setIdentificador(const a_Value: String);
begin
  Self.m_Identificador := a_Value;
end;

function TProjetoFuncaoAlterar.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TProjetoFuncaoAlterar.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TProjetoFuncaoAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TProjetoFuncaoAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TProjetoFuncaoAlterar.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TProjetoFuncaoAlterar.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TProjetoFuncaoAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TProjetoFuncaoAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TProjetoFuncaoAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TProjetoFuncaoAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TProjetoFuncaoAlterar.getBloqueado: Boolean;
begin
  Result := Self.m_Bloqueado;
end;

procedure TProjetoFuncaoAlterar.setBloqueado(const a_Value: Boolean);
begin
  Self.m_Bloqueado := a_Value;
end;

destructor TProjetoFuncaoAlterar.Destroy;
begin

end;

function TProjetoFuncaoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProjetoFuncaoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProjetoFuncaoAlterar.getNameAPI(): String;
begin
  Result := 'ProjetoFuncaoAlterar';
end;

function TProjetoFuncaoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProjetoFuncaoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProjetoFuncaoExcluir.getIdentificador: String;
begin
  Result := Self.m_Identificador;
end;

procedure TProjetoFuncaoExcluir.setIdentificador(const a_Value: String);
begin
  Self.m_Identificador := a_Value;
end;

function TProjetoFuncaoExcluir.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TProjetoFuncaoExcluir.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

destructor TProjetoFuncaoExcluir.Destroy;
begin

end;

function TProjetoFuncaoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProjetoFuncaoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProjetoFuncaoExcluir.getNameAPI(): String;
begin
  Result := 'ProjetoFuncaoExcluir';
end;

function TProjetoFuncaoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProjetoFuncaoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
