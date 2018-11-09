unit api.model.servicos.unidadesdecustos;

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

type TunidadesdecustosNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_unidadedecustodecusto: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_valor: String;
    var m_created_by: String;
    

    function getunidadedecustodecusto(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getvalor(): String;
    function getcreated_by(): String;
    

    procedure setunidadedecustodecusto(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setvalor(const a_Value: String);
    procedure setcreated_by(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('unidadedecustodecusto')]
    property unidadedecustodecusto: String read getunidadedecustodecusto write setunidadedecustodecusto;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('valor')]
    property valor: String read getvalor write setvalor;

    [NasajonSerializeAttribute('created_by')]
    property created_by: String read getcreated_by write setcreated_by;

    

end;

type TunidadesdecustosAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_unidadedecustodecusto: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_valor: String;
    var m_updated_by: String;
    

    function getunidadedecustodecusto(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getvalor(): String;
    function getupdated_by(): String;
    

    procedure setunidadedecustodecusto(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setvalor(const a_Value: String);
    procedure setupdated_by(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('unidadedecustodecusto')]
    property unidadedecustodecusto: String read getunidadedecustodecusto write setunidadedecustodecusto;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('valor')]
    property valor: String read getvalor write setvalor;

    [NasajonSerializeAttribute('updated_by')]
    property updated_by: String read getupdated_by write setupdated_by;

    

end;

type TunidadesdecustosExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_unidadedecusto: String;
    

    function getunidadedecusto(): String;
    

    procedure setunidadedecusto(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('unidadedecusto')]
    property unidadedecusto: String read getunidadedecusto write setunidadedecusto;

    

end;

	
implementation

  uses
      api.send;  

function TunidadesdecustosNovo.getunidadedecustodecusto: String;
begin
  Result := Self.m_unidadedecustodecusto;
end;

procedure TunidadesdecustosNovo.setunidadedecustodecusto(const a_Value: String);
begin
  Self.m_unidadedecustodecusto := a_Value;
end;

function TunidadesdecustosNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TunidadesdecustosNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TunidadesdecustosNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TunidadesdecustosNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TunidadesdecustosNovo.getvalor: String;
begin
  Result := Self.m_valor;
end;

procedure TunidadesdecustosNovo.setvalor(const a_Value: String);
begin
  Self.m_valor := a_Value;
end;

function TunidadesdecustosNovo.getcreated_by: String;
begin
  Result := Self.m_created_by;
end;

procedure TunidadesdecustosNovo.setcreated_by(const a_Value: String);
begin
  Self.m_created_by := a_Value;
end;

destructor TunidadesdecustosNovo.Destroy;
begin

end;

function TunidadesdecustosNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TunidadesdecustosNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TunidadesdecustosNovo.getNameAPI(): String;
begin
  Result := 'unidadesdecustosNovo';
end;

function TunidadesdecustosNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TunidadesdecustosNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TunidadesdecustosAlterar.getunidadedecustodecusto: String;
begin
  Result := Self.m_unidadedecustodecusto;
end;

procedure TunidadesdecustosAlterar.setunidadedecustodecusto(const a_Value: String);
begin
  Self.m_unidadedecustodecusto := a_Value;
end;

function TunidadesdecustosAlterar.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TunidadesdecustosAlterar.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TunidadesdecustosAlterar.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TunidadesdecustosAlterar.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TunidadesdecustosAlterar.getvalor: String;
begin
  Result := Self.m_valor;
end;

procedure TunidadesdecustosAlterar.setvalor(const a_Value: String);
begin
  Self.m_valor := a_Value;
end;

function TunidadesdecustosAlterar.getupdated_by: String;
begin
  Result := Self.m_updated_by;
end;

procedure TunidadesdecustosAlterar.setupdated_by(const a_Value: String);
begin
  Self.m_updated_by := a_Value;
end;

destructor TunidadesdecustosAlterar.Destroy;
begin

end;

function TunidadesdecustosAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TunidadesdecustosAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TunidadesdecustosAlterar.getNameAPI(): String;
begin
  Result := 'unidadesdecustosAlterar';
end;

function TunidadesdecustosAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TunidadesdecustosAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TunidadesdecustosExcluir.getunidadedecusto: String;
begin
  Result := Self.m_unidadedecusto;
end;

procedure TunidadesdecustosExcluir.setunidadedecusto(const a_Value: String);
begin
  Self.m_unidadedecusto := a_Value;
end;

destructor TunidadesdecustosExcluir.Destroy;
begin

end;

function TunidadesdecustosExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TunidadesdecustosExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TunidadesdecustosExcluir.getNameAPI(): String;
begin
  Result := 'unidadesdecustosExcluir';
end;

function TunidadesdecustosExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TunidadesdecustosExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
