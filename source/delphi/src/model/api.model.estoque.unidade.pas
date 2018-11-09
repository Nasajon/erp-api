unit api.model.estoque.Unidade;

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

type TUnidadeNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idunidade: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_decimais: Integer;
    var m_idgrupo: String;
    

    function getidunidade(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getdecimais(): Integer;
    function getidgrupo(): String;
    

    procedure setidunidade(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setdecimais(const a_Value: Integer);
    procedure setidgrupo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idunidade')]
    property idunidade: String read getidunidade write setidunidade;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('decimais')]
    property decimais: Integer read getdecimais write setdecimais;

    [NasajonSerializeAttribute('idgrupo')]
    property idgrupo: String read getidgrupo write setidgrupo;

    

end;

type TUnidadeAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idunidade: String;
    var m_descricao: String;
    var m_decimais: Integer;
    

    function getidunidade(): String;
    function getdescricao(): String;
    function getdecimais(): Integer;
    

    procedure setidunidade(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setdecimais(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idunidade')]
    property idunidade: String read getidunidade write setidunidade;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('decimais')]
    property decimais: Integer read getdecimais write setdecimais;

    

end;

type TUnidadeExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idunidade: String;
    

    function getidunidade(): String;
    

    procedure setidunidade(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idunidade')]
    property idunidade: String read getidunidade write setidunidade;

    

end;

	
implementation

  uses
      api.send;  

function TUnidadeNovo.getidunidade: String;
begin
  Result := Self.m_idunidade;
end;

procedure TUnidadeNovo.setidunidade(const a_Value: String);
begin
  Self.m_idunidade := a_Value;
end;

function TUnidadeNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TUnidadeNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TUnidadeNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TUnidadeNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TUnidadeNovo.getdecimais: Integer;
begin
  Result := Self.m_decimais;
end;

procedure TUnidadeNovo.setdecimais(const a_Value: Integer);
begin
  Self.m_decimais := a_Value;
end;

function TUnidadeNovo.getidgrupo: String;
begin
  Result := Self.m_idgrupo;
end;

procedure TUnidadeNovo.setidgrupo(const a_Value: String);
begin
  Self.m_idgrupo := a_Value;
end;

destructor TUnidadeNovo.Destroy;
begin

end;

function TUnidadeNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TUnidadeNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TUnidadeNovo.getNameAPI(): String;
begin
  Result := 'UnidadeNovo';
end;

function TUnidadeNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TUnidadeNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TUnidadeAlterar.getidunidade: String;
begin
  Result := Self.m_idunidade;
end;

procedure TUnidadeAlterar.setidunidade(const a_Value: String);
begin
  Self.m_idunidade := a_Value;
end;

function TUnidadeAlterar.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TUnidadeAlterar.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TUnidadeAlterar.getdecimais: Integer;
begin
  Result := Self.m_decimais;
end;

procedure TUnidadeAlterar.setdecimais(const a_Value: Integer);
begin
  Self.m_decimais := a_Value;
end;

destructor TUnidadeAlterar.Destroy;
begin

end;

function TUnidadeAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TUnidadeAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TUnidadeAlterar.getNameAPI(): String;
begin
  Result := 'UnidadeAlterar';
end;

function TUnidadeAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TUnidadeAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TUnidadeExcluir.getidunidade: String;
begin
  Result := Self.m_idunidade;
end;

procedure TUnidadeExcluir.setidunidade(const a_Value: String);
begin
  Self.m_idunidade := a_Value;
end;

destructor TUnidadeExcluir.Destroy;
begin

end;

function TUnidadeExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TUnidadeExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TUnidadeExcluir.getNameAPI(): String;
begin
  Result := 'UnidadeExcluir';
end;

function TUnidadeExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TUnidadeExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
