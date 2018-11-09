unit api.model.ns.configuracaotrabalhadorporcentrocusto;

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

type TconfiguracaotrabalhadorporcentrocustoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

type TconfiguracaotrabalhadorporcentrocustoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

type TconfiguracaotrabalhadorporcentrocustoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TconfiguracaotrabalhadorporcentrocustoNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracaotrabalhadorporcentrocustoNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoNovo.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracaotrabalhadorporcentrocustoNovo.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoNovo.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TconfiguracaotrabalhadorporcentrocustoNovo.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoNovo.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TconfiguracaotrabalhadorporcentrocustoNovo.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoNovo.getTrabalhador: String;
begin
  Result := Self.m_Trabalhador;
end;

procedure TconfiguracaotrabalhadorporcentrocustoNovo.setTrabalhador(const a_Value: String);
begin
  Self.m_Trabalhador := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoNovo.getCentroDeCusto: String;
begin
  Result := Self.m_CentroDeCusto;
end;

procedure TconfiguracaotrabalhadorporcentrocustoNovo.setCentroDeCusto(const a_Value: String);
begin
  Self.m_CentroDeCusto := a_Value;
end;

destructor TconfiguracaotrabalhadorporcentrocustoNovo.Destroy;
begin

end;

function TconfiguracaotrabalhadorporcentrocustoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracaotrabalhadorporcentrocustoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracaotrabalhadorporcentrocustoNovo.getNameAPI(): String;
begin
  Result := 'configuracaotrabalhadorporcentrocustoNovo';
end;

function TconfiguracaotrabalhadorporcentrocustoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracaotrabalhadorporcentrocustoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TconfiguracaotrabalhadorporcentrocustoAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracaotrabalhadorporcentrocustoAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoAlterar.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracaotrabalhadorporcentrocustoAlterar.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoAlterar.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TconfiguracaotrabalhadorporcentrocustoAlterar.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoAlterar.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TconfiguracaotrabalhadorporcentrocustoAlterar.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoAlterar.getTrabalhador: String;
begin
  Result := Self.m_Trabalhador;
end;

procedure TconfiguracaotrabalhadorporcentrocustoAlterar.setTrabalhador(const a_Value: String);
begin
  Self.m_Trabalhador := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoAlterar.getCentroDeCusto: String;
begin
  Result := Self.m_CentroDeCusto;
end;

procedure TconfiguracaotrabalhadorporcentrocustoAlterar.setCentroDeCusto(const a_Value: String);
begin
  Self.m_CentroDeCusto := a_Value;
end;

destructor TconfiguracaotrabalhadorporcentrocustoAlterar.Destroy;
begin

end;

function TconfiguracaotrabalhadorporcentrocustoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracaotrabalhadorporcentrocustoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracaotrabalhadorporcentrocustoAlterar.getNameAPI(): String;
begin
  Result := 'configuracaotrabalhadorporcentrocustoAlterar';
end;

function TconfiguracaotrabalhadorporcentrocustoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracaotrabalhadorporcentrocustoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TconfiguracaotrabalhadorporcentrocustoExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracaotrabalhadorporcentrocustoExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoExcluir.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracaotrabalhadorporcentrocustoExcluir.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoExcluir.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TconfiguracaotrabalhadorporcentrocustoExcluir.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoExcluir.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TconfiguracaotrabalhadorporcentrocustoExcluir.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TconfiguracaotrabalhadorporcentrocustoExcluir.getTrabalhador: String;
begin
  Result := Self.m_Trabalhador;
end;

procedure TconfiguracaotrabalhadorporcentrocustoExcluir.setTrabalhador(const a_Value: String);
begin
  Self.m_Trabalhador := a_Value;
end;

destructor TconfiguracaotrabalhadorporcentrocustoExcluir.Destroy;
begin

end;

function TconfiguracaotrabalhadorporcentrocustoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracaotrabalhadorporcentrocustoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracaotrabalhadorporcentrocustoExcluir.getNameAPI(): String;
begin
  Result := 'configuracaotrabalhadorporcentrocustoExcluir';
end;

function TconfiguracaotrabalhadorporcentrocustoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracaotrabalhadorporcentrocustoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
