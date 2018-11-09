unit api.model.servicos.TipoProjeto;

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

type TTipoProjetoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoProjeto: String;
    var m_GrupoEmpresarial: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getTipoProjeto(): String;
    function getGrupoEmpresarial(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setTipoProjeto(const a_Value: String);
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
    

    [NasajonSerializeAttribute('tipoprojeto')]
    property tipoprojeto: String read getTipoProjeto write setTipoProjeto;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TTipoProjetoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoProjeto: String;
    var m_GrupoEmpresarial: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getTipoProjeto(): String;
    function getGrupoEmpresarial(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setTipoProjeto(const a_Value: String);
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
    

    [NasajonSerializeAttribute('tipoprojeto')]
    property tipoprojeto: String read getTipoProjeto write setTipoProjeto;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TTipoProjetoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoProjeto: String;
    var m_GrupoEmpresarial: String;
    

    function getTipoProjeto(): String;
    function getGrupoEmpresarial(): String;
    

    procedure setTipoProjeto(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tipoprojeto')]
    property tipoprojeto: String read getTipoProjeto write setTipoProjeto;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    

end;

	
implementation

  uses
      api.send;  

function TTipoProjetoNovo.getTipoProjeto: String;
begin
  Result := Self.m_TipoProjeto;
end;

procedure TTipoProjetoNovo.setTipoProjeto(const a_Value: String);
begin
  Self.m_TipoProjeto := a_Value;
end;

function TTipoProjetoNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TTipoProjetoNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TTipoProjetoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TTipoProjetoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TTipoProjetoNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TTipoProjetoNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TTipoProjetoNovo.Destroy;
begin

end;

function TTipoProjetoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoProjetoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoProjetoNovo.getNameAPI(): String;
begin
  Result := 'TipoProjetoNovo';
end;

function TTipoProjetoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoProjetoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTipoProjetoAlterar.getTipoProjeto: String;
begin
  Result := Self.m_TipoProjeto;
end;

procedure TTipoProjetoAlterar.setTipoProjeto(const a_Value: String);
begin
  Self.m_TipoProjeto := a_Value;
end;

function TTipoProjetoAlterar.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TTipoProjetoAlterar.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TTipoProjetoAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TTipoProjetoAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TTipoProjetoAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TTipoProjetoAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TTipoProjetoAlterar.Destroy;
begin

end;

function TTipoProjetoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoProjetoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoProjetoAlterar.getNameAPI(): String;
begin
  Result := 'TipoProjetoAlterar';
end;

function TTipoProjetoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoProjetoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTipoProjetoExcluir.getTipoProjeto: String;
begin
  Result := Self.m_TipoProjeto;
end;

procedure TTipoProjetoExcluir.setTipoProjeto(const a_Value: String);
begin
  Self.m_TipoProjeto := a_Value;
end;

function TTipoProjetoExcluir.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TTipoProjetoExcluir.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

destructor TTipoProjetoExcluir.Destroy;
begin

end;

function TTipoProjetoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoProjetoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoProjetoExcluir.getNameAPI(): String;
begin
  Result := 'TipoProjetoExcluir';
end;

function TTipoProjetoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoProjetoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
