unit api.model.persona.Funcao;

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

    var m_IdFuncao: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_CodigoCBO: String;
    

    function getIdFuncao(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getCodigoCBO(): String;
    

    procedure setIdFuncao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setCodigoCBO(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idfuncao')]
    property idfuncao: String read getIdFuncao write setIdFuncao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Conforme tabela de código brasileiro de ocupações
    /// </summary>
    [NasajonSerializeAttribute('codigocbo')]
    property codigocbo: String read getCodigoCBO write setCodigoCBO;

    

end;

type TFuncaoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcao: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_CodigoCBO: String;
    

    function getFuncao(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getCodigoCBO(): String;
    

    procedure setFuncao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setCodigoCBO(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Conforme tabela de código brasileiro de ocupações
    /// </summary>
    [NasajonSerializeAttribute('codigocbo')]
    property codigocbo: String read getCodigoCBO write setCodigoCBO;

    

end;

type TFuncaoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcao: String;
    var m_Empresa: String;
    

    function getFuncao(): String;
    function getEmpresa(): String;
    

    procedure setFuncao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TFuncaoNovo.getIdFuncao: String;
begin
  Result := Self.m_IdFuncao;
end;

procedure TFuncaoNovo.setIdFuncao(const a_Value: String);
begin
  Self.m_IdFuncao := a_Value;
end;

function TFuncaoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncaoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
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

function TFuncaoNovo.getCodigoCBO: String;
begin
  Result := Self.m_CodigoCBO;
end;

procedure TFuncaoNovo.setCodigoCBO(const a_Value: String);
begin
  Self.m_CodigoCBO := a_Value;
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

function TFuncaoAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncaoAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
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

function TFuncaoAlterar.getCodigoCBO: String;
begin
  Result := Self.m_CodigoCBO;
end;

procedure TFuncaoAlterar.setCodigoCBO(const a_Value: String);
begin
  Self.m_CodigoCBO := a_Value;
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

function TFuncaoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncaoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
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
