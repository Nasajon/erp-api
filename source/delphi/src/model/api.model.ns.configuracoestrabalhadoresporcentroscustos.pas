unit api.model.ns.configuracoestrabalhadoresporcentroscustos;

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

type TconfiguracoestrabalhadoresporcentroscustosNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_estabelecimento: String;
    var m_Trabalhador: String;
    var m_CentroDeCusto: String;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getestabelecimento(): String;
    function getTrabalhador(): String;
    function getCentroDeCusto(): String;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setestabelecimento(const a_Value: String);
    procedure setTrabalhador(const a_Value: String);
    procedure setCentroDeCusto(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getempresa write setempresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    [NasajonSerializeAttribute('trabalhador')]
    property trabalhador: String read getTrabalhador write setTrabalhador;

    [NasajonSerializeAttribute('centrodecusto')]
    property centrodecusto: String read getCentroDeCusto write setCentroDeCusto;

    

end;

type TconfiguracoestrabalhadoresporcentroscustosAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_estabelecimento: String;
    var m_Trabalhador: String;
    var m_CentroDeCusto: String;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getestabelecimento(): String;
    function getTrabalhador(): String;
    function getCentroDeCusto(): String;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setestabelecimento(const a_Value: String);
    procedure setTrabalhador(const a_Value: String);
    procedure setCentroDeCusto(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getempresa write setempresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    [NasajonSerializeAttribute('trabalhador')]
    property trabalhador: String read getTrabalhador write setTrabalhador;

    [NasajonSerializeAttribute('centrodecusto')]
    property centrodecusto: String read getCentroDeCusto write setCentroDeCusto;

    

end;

type TconfiguracoestrabalhadoresporcentroscustosExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_estabelecimento: String;
    var m_Trabalhador: String;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getestabelecimento(): String;
    function getTrabalhador(): String;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setestabelecimento(const a_Value: String);
    procedure setTrabalhador(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getempresa write setempresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    [NasajonSerializeAttribute('trabalhador')]
    property trabalhador: String read getTrabalhador write setTrabalhador;

    

end;

	
implementation

  uses
      api.send;  

function TconfiguracoestrabalhadoresporcentroscustosNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosNovo.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosNovo.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosNovo.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosNovo.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosNovo.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosNovo.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosNovo.getTrabalhador: String;
begin
  Result := Self.m_Trabalhador;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosNovo.setTrabalhador(const a_Value: String);
begin
  Self.m_Trabalhador := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosNovo.getCentroDeCusto: String;
begin
  Result := Self.m_CentroDeCusto;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosNovo.setCentroDeCusto(const a_Value: String);
begin
  Self.m_CentroDeCusto := a_Value;
end;

destructor TconfiguracoestrabalhadoresporcentroscustosNovo.Destroy;
begin

end;

function TconfiguracoestrabalhadoresporcentroscustosNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracoestrabalhadoresporcentroscustosNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracoestrabalhadoresporcentroscustosNovo.getNameAPI(): String;
begin
  Result := 'configuracoestrabalhadoresporcentroscustosNovo';
end;

function TconfiguracoestrabalhadoresporcentroscustosNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracoestrabalhadoresporcentroscustosNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TconfiguracoestrabalhadoresporcentroscustosAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosAlterar.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosAlterar.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosAlterar.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosAlterar.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosAlterar.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosAlterar.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosAlterar.getTrabalhador: String;
begin
  Result := Self.m_Trabalhador;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosAlterar.setTrabalhador(const a_Value: String);
begin
  Self.m_Trabalhador := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosAlterar.getCentroDeCusto: String;
begin
  Result := Self.m_CentroDeCusto;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosAlterar.setCentroDeCusto(const a_Value: String);
begin
  Self.m_CentroDeCusto := a_Value;
end;

destructor TconfiguracoestrabalhadoresporcentroscustosAlterar.Destroy;
begin

end;

function TconfiguracoestrabalhadoresporcentroscustosAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracoestrabalhadoresporcentroscustosAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracoestrabalhadoresporcentroscustosAlterar.getNameAPI(): String;
begin
  Result := 'configuracoestrabalhadoresporcentroscustosAlterar';
end;

function TconfiguracoestrabalhadoresporcentroscustosAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracoestrabalhadoresporcentroscustosAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TconfiguracoestrabalhadoresporcentroscustosExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosExcluir.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosExcluir.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosExcluir.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosExcluir.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosExcluir.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosExcluir.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TconfiguracoestrabalhadoresporcentroscustosExcluir.getTrabalhador: String;
begin
  Result := Self.m_Trabalhador;
end;

procedure TconfiguracoestrabalhadoresporcentroscustosExcluir.setTrabalhador(const a_Value: String);
begin
  Self.m_Trabalhador := a_Value;
end;

destructor TconfiguracoestrabalhadoresporcentroscustosExcluir.Destroy;
begin

end;

function TconfiguracoestrabalhadoresporcentroscustosExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracoestrabalhadoresporcentroscustosExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracoestrabalhadoresporcentroscustosExcluir.getNameAPI(): String;
begin
  Result := 'configuracoestrabalhadoresporcentroscustosExcluir';
end;

function TconfiguracoestrabalhadoresporcentroscustosExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracoestrabalhadoresporcentroscustosExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
