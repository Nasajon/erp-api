unit api.model.ns.LocalDeUso;

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

type TLocalDeUsoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_centrocusto: String;
    var m_projeto: String;
    var m_grupoempresarial: String;
    var m_agrega_solicitacoes: Boolean;
    

    function getid(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getcentrocusto(): String;
    function getprojeto(): String;
    function getgrupoempresarial(): String;
    function getagrega_solicitacoes(): Boolean;
    

    procedure setid(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setcentrocusto(const a_Value: String);
    procedure setprojeto(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setagrega_solicitacoes(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('centrocusto')]
    property centrocusto: String read getcentrocusto write setcentrocusto;

    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getprojeto write setprojeto;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    [NasajonSerializeAttribute('agrega_solicitacoes')]
    property agrega_solicitacoes: Boolean read getagrega_solicitacoes write setagrega_solicitacoes;

    

end;

type TLocalDeUsoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_descricao: String;
    var m_centrocusto: String;
    var m_projeto: String;
    var m_grupoempresarial: String;
    var m_agrega_solicitacoes: Boolean;
    

    function getid(): String;
    function getdescricao(): String;
    function getcentrocusto(): String;
    function getprojeto(): String;
    function getgrupoempresarial(): String;
    function getagrega_solicitacoes(): Boolean;
    

    procedure setid(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setcentrocusto(const a_Value: String);
    procedure setprojeto(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setagrega_solicitacoes(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('centrocusto')]
    property centrocusto: String read getcentrocusto write setcentrocusto;

    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getprojeto write setprojeto;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    [NasajonSerializeAttribute('agrega_solicitacoes')]
    property agrega_solicitacoes: Boolean read getagrega_solicitacoes write setagrega_solicitacoes;

    

end;

type TLocalDeUsoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    

    function getid(): String;
    

    procedure setid(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    

end;

	
implementation

  uses
      api.send;  

function TLocalDeUsoNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TLocalDeUsoNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TLocalDeUsoNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TLocalDeUsoNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TLocalDeUsoNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TLocalDeUsoNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TLocalDeUsoNovo.getcentrocusto: String;
begin
  Result := Self.m_centrocusto;
end;

procedure TLocalDeUsoNovo.setcentrocusto(const a_Value: String);
begin
  Self.m_centrocusto := a_Value;
end;

function TLocalDeUsoNovo.getprojeto: String;
begin
  Result := Self.m_projeto;
end;

procedure TLocalDeUsoNovo.setprojeto(const a_Value: String);
begin
  Self.m_projeto := a_Value;
end;

function TLocalDeUsoNovo.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TLocalDeUsoNovo.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TLocalDeUsoNovo.getagrega_solicitacoes: Boolean;
begin
  Result := Self.m_agrega_solicitacoes;
end;

procedure TLocalDeUsoNovo.setagrega_solicitacoes(const a_Value: Boolean);
begin
  Self.m_agrega_solicitacoes := a_Value;
end;

destructor TLocalDeUsoNovo.Destroy;
begin

end;

function TLocalDeUsoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLocalDeUsoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLocalDeUsoNovo.getNameAPI(): String;
begin
  Result := 'LocalDeUsoNovo';
end;

function TLocalDeUsoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLocalDeUsoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLocalDeUsoAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TLocalDeUsoAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TLocalDeUsoAlterar.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TLocalDeUsoAlterar.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TLocalDeUsoAlterar.getcentrocusto: String;
begin
  Result := Self.m_centrocusto;
end;

procedure TLocalDeUsoAlterar.setcentrocusto(const a_Value: String);
begin
  Self.m_centrocusto := a_Value;
end;

function TLocalDeUsoAlterar.getprojeto: String;
begin
  Result := Self.m_projeto;
end;

procedure TLocalDeUsoAlterar.setprojeto(const a_Value: String);
begin
  Self.m_projeto := a_Value;
end;

function TLocalDeUsoAlterar.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TLocalDeUsoAlterar.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TLocalDeUsoAlterar.getagrega_solicitacoes: Boolean;
begin
  Result := Self.m_agrega_solicitacoes;
end;

procedure TLocalDeUsoAlterar.setagrega_solicitacoes(const a_Value: Boolean);
begin
  Self.m_agrega_solicitacoes := a_Value;
end;

destructor TLocalDeUsoAlterar.Destroy;
begin

end;

function TLocalDeUsoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLocalDeUsoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLocalDeUsoAlterar.getNameAPI(): String;
begin
  Result := 'LocalDeUsoAlterar';
end;

function TLocalDeUsoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLocalDeUsoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLocalDeUsoExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TLocalDeUsoExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

destructor TLocalDeUsoExcluir.Destroy;
begin

end;

function TLocalDeUsoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLocalDeUsoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLocalDeUsoExcluir.getNameAPI(): String;
begin
  Result := 'LocalDeUsoExcluir';
end;

function TLocalDeUsoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLocalDeUsoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
