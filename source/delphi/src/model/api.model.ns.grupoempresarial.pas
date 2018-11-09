unit api.model.ns.GrupoEmpresarial;

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

type TGrupoEmpresarial = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_GrupoEmpresarial: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getGrupoEmpresarial(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TGrupoEmpresarialNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdGrupoEmpresarial: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getIdGrupoEmpresarial(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setIdGrupoEmpresarial(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idgrupoempresarial')]
    property idgrupoempresarial: String read getIdGrupoEmpresarial write setIdGrupoEmpresarial;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TGrupoEmpresarialAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_GrupoEmpresarial: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getGrupoEmpresarial(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TGrupoEmpresarialExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_GrupoEmpresarial: String;
    

    function getGrupoEmpresarial(): String;
    

    procedure setGrupoEmpresarial(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    

end;

	
implementation

  uses
      api.send;  

function TGrupoEmpresarial.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TGrupoEmpresarial.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TGrupoEmpresarial.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TGrupoEmpresarial.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TGrupoEmpresarial.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TGrupoEmpresarial.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TGrupoEmpresarial.Destroy;
begin

end;

function TGrupoEmpresarial.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TGrupoEmpresarial.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TGrupoEmpresarial.getNameAPI(): String;
begin
  Result := 'GrupoEmpresarial';
end;

function TGrupoEmpresarial.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TGrupoEmpresarial.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TGrupoEmpresarialNovo.getIdGrupoEmpresarial: String;
begin
  Result := Self.m_IdGrupoEmpresarial;
end;

procedure TGrupoEmpresarialNovo.setIdGrupoEmpresarial(const a_Value: String);
begin
  Self.m_IdGrupoEmpresarial := a_Value;
end;

function TGrupoEmpresarialNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TGrupoEmpresarialNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TGrupoEmpresarialNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TGrupoEmpresarialNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TGrupoEmpresarialNovo.Destroy;
begin

end;

function TGrupoEmpresarialNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TGrupoEmpresarialNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TGrupoEmpresarialNovo.getNameAPI(): String;
begin
  Result := 'GrupoEmpresarialNovo';
end;

function TGrupoEmpresarialNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TGrupoEmpresarialNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TGrupoEmpresarialAlterar.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TGrupoEmpresarialAlterar.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TGrupoEmpresarialAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TGrupoEmpresarialAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TGrupoEmpresarialAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TGrupoEmpresarialAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TGrupoEmpresarialAlterar.Destroy;
begin

end;

function TGrupoEmpresarialAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TGrupoEmpresarialAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TGrupoEmpresarialAlterar.getNameAPI(): String;
begin
  Result := 'GrupoEmpresarialAlterar';
end;

function TGrupoEmpresarialAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TGrupoEmpresarialAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TGrupoEmpresarialExcluir.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TGrupoEmpresarialExcluir.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

destructor TGrupoEmpresarialExcluir.Destroy;
begin

end;

function TGrupoEmpresarialExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TGrupoEmpresarialExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TGrupoEmpresarialExcluir.getNameAPI(): String;
begin
  Result := 'GrupoEmpresarialExcluir';
end;

function TGrupoEmpresarialExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TGrupoEmpresarialExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
