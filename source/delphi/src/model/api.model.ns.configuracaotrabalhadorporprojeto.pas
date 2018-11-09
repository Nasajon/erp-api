unit api.model.ns.configuracaotrabalhadorporprojeto;

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

type TconfiguracaotrabalhadorporprojetoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_estabelecimento: String;
    var m_Trabalhador: String;
    var m_Projeto: String;
    var m_ano: Integer;
    var m_mes: Integer;
    var m_horas: Double;
    var m_percentual: Currency;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getestabelecimento(): String;
    function getTrabalhador(): String;
    function getProjeto(): String;
    function getano(): Integer;
    function getmes(): Integer;
    function gethoras(): Double;
    function getpercentual(): Currency;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setestabelecimento(const a_Value: String);
    procedure setTrabalhador(const a_Value: String);
    procedure setProjeto(const a_Value: String);
    procedure setano(const a_Value: Integer);
    procedure setmes(const a_Value: Integer);
    procedure sethoras(const a_Value: Double);
    procedure setpercentual(const a_Value: Currency);
    

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

    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getProjeto write setProjeto;

    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    [NasajonSerializeAttribute('mes')]
    property mes: Integer read getmes write setmes;

    [NasajonSerializeAttribute('horas')]
    property horas: Double read gethoras write sethoras;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getpercentual write setpercentual;

    

end;

type TconfiguracaotrabalhadorporprojetoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_estabelecimento: String;
    var m_Trabalhador: String;
    var m_Projeto: String;
    var m_ano: Integer;
    var m_mes: Integer;
    var m_horas: Double;
    var m_percentual: Currency;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getestabelecimento(): String;
    function getTrabalhador(): String;
    function getProjeto(): String;
    function getano(): Integer;
    function getmes(): Integer;
    function gethoras(): Double;
    function getpercentual(): Currency;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setestabelecimento(const a_Value: String);
    procedure setTrabalhador(const a_Value: String);
    procedure setProjeto(const a_Value: String);
    procedure setano(const a_Value: Integer);
    procedure setmes(const a_Value: Integer);
    procedure sethoras(const a_Value: Double);
    procedure setpercentual(const a_Value: Currency);
    

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

    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getProjeto write setProjeto;

    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    [NasajonSerializeAttribute('mes')]
    property mes: Integer read getmes write setmes;

    [NasajonSerializeAttribute('horas')]
    property horas: Double read gethoras write sethoras;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getpercentual write setpercentual;

    

end;

type TconfiguracaotrabalhadorporprojetoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_estabelecimento: String;
    var m_Trabalhador: String;
    var m_Projeto: String;
    var m_ano: Integer;
    var m_mes: Integer;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getestabelecimento(): String;
    function getTrabalhador(): String;
    function getProjeto(): String;
    function getano(): Integer;
    function getmes(): Integer;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setestabelecimento(const a_Value: String);
    procedure setTrabalhador(const a_Value: String);
    procedure setProjeto(const a_Value: String);
    procedure setano(const a_Value: Integer);
    procedure setmes(const a_Value: Integer);
    

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

    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getProjeto write setProjeto;

    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    [NasajonSerializeAttribute('mes')]
    property mes: Integer read getmes write setmes;

    

end;

	
implementation

  uses
      api.send;  

function TconfiguracaotrabalhadorporprojetoNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracaotrabalhadorporprojetoNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoNovo.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracaotrabalhadorporprojetoNovo.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoNovo.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TconfiguracaotrabalhadorporprojetoNovo.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoNovo.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TconfiguracaotrabalhadorporprojetoNovo.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoNovo.getTrabalhador: String;
begin
  Result := Self.m_Trabalhador;
end;

procedure TconfiguracaotrabalhadorporprojetoNovo.setTrabalhador(const a_Value: String);
begin
  Self.m_Trabalhador := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoNovo.getProjeto: String;
begin
  Result := Self.m_Projeto;
end;

procedure TconfiguracaotrabalhadorporprojetoNovo.setProjeto(const a_Value: String);
begin
  Self.m_Projeto := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoNovo.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TconfiguracaotrabalhadorporprojetoNovo.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoNovo.getmes: Integer;
begin
  Result := Self.m_mes;
end;

procedure TconfiguracaotrabalhadorporprojetoNovo.setmes(const a_Value: Integer);
begin
  Self.m_mes := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoNovo.gethoras: Double;
begin
  Result := Self.m_horas;
end;

procedure TconfiguracaotrabalhadorporprojetoNovo.sethoras(const a_Value: Double);
begin
  Self.m_horas := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoNovo.getpercentual: Currency;
begin
  Result := Self.m_percentual;
end;

procedure TconfiguracaotrabalhadorporprojetoNovo.setpercentual(const a_Value: Currency);
begin
  Self.m_percentual := a_Value;
end;

destructor TconfiguracaotrabalhadorporprojetoNovo.Destroy;
begin

end;

function TconfiguracaotrabalhadorporprojetoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracaotrabalhadorporprojetoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracaotrabalhadorporprojetoNovo.getNameAPI(): String;
begin
  Result := 'configuracaotrabalhadorporprojetoNovo';
end;

function TconfiguracaotrabalhadorporprojetoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracaotrabalhadorporprojetoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TconfiguracaotrabalhadorporprojetoAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracaotrabalhadorporprojetoAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoAlterar.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracaotrabalhadorporprojetoAlterar.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoAlterar.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TconfiguracaotrabalhadorporprojetoAlterar.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoAlterar.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TconfiguracaotrabalhadorporprojetoAlterar.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoAlterar.getTrabalhador: String;
begin
  Result := Self.m_Trabalhador;
end;

procedure TconfiguracaotrabalhadorporprojetoAlterar.setTrabalhador(const a_Value: String);
begin
  Self.m_Trabalhador := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoAlterar.getProjeto: String;
begin
  Result := Self.m_Projeto;
end;

procedure TconfiguracaotrabalhadorporprojetoAlterar.setProjeto(const a_Value: String);
begin
  Self.m_Projeto := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoAlterar.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TconfiguracaotrabalhadorporprojetoAlterar.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoAlterar.getmes: Integer;
begin
  Result := Self.m_mes;
end;

procedure TconfiguracaotrabalhadorporprojetoAlterar.setmes(const a_Value: Integer);
begin
  Self.m_mes := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoAlterar.gethoras: Double;
begin
  Result := Self.m_horas;
end;

procedure TconfiguracaotrabalhadorporprojetoAlterar.sethoras(const a_Value: Double);
begin
  Self.m_horas := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoAlterar.getpercentual: Currency;
begin
  Result := Self.m_percentual;
end;

procedure TconfiguracaotrabalhadorporprojetoAlterar.setpercentual(const a_Value: Currency);
begin
  Self.m_percentual := a_Value;
end;

destructor TconfiguracaotrabalhadorporprojetoAlterar.Destroy;
begin

end;

function TconfiguracaotrabalhadorporprojetoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracaotrabalhadorporprojetoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracaotrabalhadorporprojetoAlterar.getNameAPI(): String;
begin
  Result := 'configuracaotrabalhadorporprojetoAlterar';
end;

function TconfiguracaotrabalhadorporprojetoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracaotrabalhadorporprojetoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TconfiguracaotrabalhadorporprojetoExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracaotrabalhadorporprojetoExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoExcluir.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracaotrabalhadorporprojetoExcluir.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoExcluir.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TconfiguracaotrabalhadorporprojetoExcluir.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoExcluir.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TconfiguracaotrabalhadorporprojetoExcluir.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoExcluir.getTrabalhador: String;
begin
  Result := Self.m_Trabalhador;
end;

procedure TconfiguracaotrabalhadorporprojetoExcluir.setTrabalhador(const a_Value: String);
begin
  Self.m_Trabalhador := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoExcluir.getProjeto: String;
begin
  Result := Self.m_Projeto;
end;

procedure TconfiguracaotrabalhadorporprojetoExcluir.setProjeto(const a_Value: String);
begin
  Self.m_Projeto := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoExcluir.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TconfiguracaotrabalhadorporprojetoExcluir.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

function TconfiguracaotrabalhadorporprojetoExcluir.getmes: Integer;
begin
  Result := Self.m_mes;
end;

procedure TconfiguracaotrabalhadorporprojetoExcluir.setmes(const a_Value: Integer);
begin
  Self.m_mes := a_Value;
end;

destructor TconfiguracaotrabalhadorporprojetoExcluir.Destroy;
begin

end;

function TconfiguracaotrabalhadorporprojetoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracaotrabalhadorporprojetoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracaotrabalhadorporprojetoExcluir.getNameAPI(): String;
begin
  Result := 'configuracaotrabalhadorporprojetoExcluir';
end;

function TconfiguracaotrabalhadorporprojetoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracaotrabalhadorporprojetoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
