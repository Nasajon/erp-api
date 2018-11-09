unit api.model.servicos.AtivoHistoricoOfertaComponente;

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

type TAtivoHistoricoOfertaComponenteNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ativohistoricoofertacomponente: String;
    var m_id_objetoservicohistoricooferta: String;
    var m_id_componente: String;
    var m_quantidade: Currency;
    var m_ativa: Boolean;
    var m_data: TDate;
    

    function getativohistoricoofertacomponente(): String;
    function getid_objetoservicohistoricooferta(): String;
    function getid_componente(): String;
    function getquantidade(): Currency;
    function getativa(): Boolean;
    function getdata(): TDate;
    

    procedure setativohistoricoofertacomponente(const a_Value: String);
    procedure setid_objetoservicohistoricooferta(const a_Value: String);
    procedure setid_componente(const a_Value: String);
    procedure setquantidade(const a_Value: Currency);
    procedure setativa(const a_Value: Boolean);
    procedure setdata(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('ativohistoricoofertacomponente')]
    property ativohistoricoofertacomponente: String read getativohistoricoofertacomponente write setativohistoricoofertacomponente;

    [NasajonSerializeAttribute('id_objetoservicohistoricooferta')]
    property id_objetoservicohistoricooferta: String read getid_objetoservicohistoricooferta write setid_objetoservicohistoricooferta;

    [NasajonSerializeAttribute('id_componente')]
    property id_componente: String read getid_componente write setid_componente;

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Currency read getquantidade write setquantidade;

    [NasajonSerializeAttribute('ativa')]
    property ativa: Boolean read getativa write setativa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getdata write setdata;

    

end;

type TAtivoHistoricoOfertaComponenteAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ativohistoricoofertacomponente: String;
    var m_id_objetoservicohistoricooferta: String;
    var m_id_componente: String;
    var m_quantidade: Currency;
    var m_ativa: Boolean;
    var m_data: TDate;
    

    function getativohistoricoofertacomponente(): String;
    function getid_objetoservicohistoricooferta(): String;
    function getid_componente(): String;
    function getquantidade(): Currency;
    function getativa(): Boolean;
    function getdata(): TDate;
    

    procedure setativohistoricoofertacomponente(const a_Value: String);
    procedure setid_objetoservicohistoricooferta(const a_Value: String);
    procedure setid_componente(const a_Value: String);
    procedure setquantidade(const a_Value: Currency);
    procedure setativa(const a_Value: Boolean);
    procedure setdata(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('ativohistoricoofertacomponente')]
    property ativohistoricoofertacomponente: String read getativohistoricoofertacomponente write setativohistoricoofertacomponente;

    [NasajonSerializeAttribute('id_objetoservicohistoricooferta')]
    property id_objetoservicohistoricooferta: String read getid_objetoservicohistoricooferta write setid_objetoservicohistoricooferta;

    [NasajonSerializeAttribute('id_componente')]
    property id_componente: String read getid_componente write setid_componente;

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Currency read getquantidade write setquantidade;

    [NasajonSerializeAttribute('ativa')]
    property ativa: Boolean read getativa write setativa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getdata write setdata;

    

end;

type TAtivoHistoricoOfertaComponenteExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ativohistoricoofertacomponente: String;
    

    function getativohistoricoofertacomponente(): String;
    

    procedure setativohistoricoofertacomponente(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('ativohistoricoofertacomponente')]
    property ativohistoricoofertacomponente: String read getativohistoricoofertacomponente write setativohistoricoofertacomponente;

    

end;

	
implementation

  uses
      api.send;  

function TAtivoHistoricoOfertaComponenteNovo.getativohistoricoofertacomponente: String;
begin
  Result := Self.m_ativohistoricoofertacomponente;
end;

procedure TAtivoHistoricoOfertaComponenteNovo.setativohistoricoofertacomponente(const a_Value: String);
begin
  Self.m_ativohistoricoofertacomponente := a_Value;
end;

function TAtivoHistoricoOfertaComponenteNovo.getid_objetoservicohistoricooferta: String;
begin
  Result := Self.m_id_objetoservicohistoricooferta;
end;

procedure TAtivoHistoricoOfertaComponenteNovo.setid_objetoservicohistoricooferta(const a_Value: String);
begin
  Self.m_id_objetoservicohistoricooferta := a_Value;
end;

function TAtivoHistoricoOfertaComponenteNovo.getid_componente: String;
begin
  Result := Self.m_id_componente;
end;

procedure TAtivoHistoricoOfertaComponenteNovo.setid_componente(const a_Value: String);
begin
  Self.m_id_componente := a_Value;
end;

function TAtivoHistoricoOfertaComponenteNovo.getquantidade: Currency;
begin
  Result := Self.m_quantidade;
end;

procedure TAtivoHistoricoOfertaComponenteNovo.setquantidade(const a_Value: Currency);
begin
  Self.m_quantidade := a_Value;
end;

function TAtivoHistoricoOfertaComponenteNovo.getativa: Boolean;
begin
  Result := Self.m_ativa;
end;

procedure TAtivoHistoricoOfertaComponenteNovo.setativa(const a_Value: Boolean);
begin
  Self.m_ativa := a_Value;
end;

function TAtivoHistoricoOfertaComponenteNovo.getdata: TDate;
begin
  Result := Self.m_data;
end;

procedure TAtivoHistoricoOfertaComponenteNovo.setdata(const a_Value: TDate);
begin
  Self.m_data := a_Value;
end;

destructor TAtivoHistoricoOfertaComponenteNovo.Destroy;
begin

end;

function TAtivoHistoricoOfertaComponenteNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAtivoHistoricoOfertaComponenteNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAtivoHistoricoOfertaComponenteNovo.getNameAPI(): String;
begin
  Result := 'AtivoHistoricoOfertaComponenteNovo';
end;

function TAtivoHistoricoOfertaComponenteNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAtivoHistoricoOfertaComponenteNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAtivoHistoricoOfertaComponenteAlterar.getativohistoricoofertacomponente: String;
begin
  Result := Self.m_ativohistoricoofertacomponente;
end;

procedure TAtivoHistoricoOfertaComponenteAlterar.setativohistoricoofertacomponente(const a_Value: String);
begin
  Self.m_ativohistoricoofertacomponente := a_Value;
end;

function TAtivoHistoricoOfertaComponenteAlterar.getid_objetoservicohistoricooferta: String;
begin
  Result := Self.m_id_objetoservicohistoricooferta;
end;

procedure TAtivoHistoricoOfertaComponenteAlterar.setid_objetoservicohistoricooferta(const a_Value: String);
begin
  Self.m_id_objetoservicohistoricooferta := a_Value;
end;

function TAtivoHistoricoOfertaComponenteAlterar.getid_componente: String;
begin
  Result := Self.m_id_componente;
end;

procedure TAtivoHistoricoOfertaComponenteAlterar.setid_componente(const a_Value: String);
begin
  Self.m_id_componente := a_Value;
end;

function TAtivoHistoricoOfertaComponenteAlterar.getquantidade: Currency;
begin
  Result := Self.m_quantidade;
end;

procedure TAtivoHistoricoOfertaComponenteAlterar.setquantidade(const a_Value: Currency);
begin
  Self.m_quantidade := a_Value;
end;

function TAtivoHistoricoOfertaComponenteAlterar.getativa: Boolean;
begin
  Result := Self.m_ativa;
end;

procedure TAtivoHistoricoOfertaComponenteAlterar.setativa(const a_Value: Boolean);
begin
  Self.m_ativa := a_Value;
end;

function TAtivoHistoricoOfertaComponenteAlterar.getdata: TDate;
begin
  Result := Self.m_data;
end;

procedure TAtivoHistoricoOfertaComponenteAlterar.setdata(const a_Value: TDate);
begin
  Self.m_data := a_Value;
end;

destructor TAtivoHistoricoOfertaComponenteAlterar.Destroy;
begin

end;

function TAtivoHistoricoOfertaComponenteAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAtivoHistoricoOfertaComponenteAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAtivoHistoricoOfertaComponenteAlterar.getNameAPI(): String;
begin
  Result := 'AtivoHistoricoOfertaComponenteAlterar';
end;

function TAtivoHistoricoOfertaComponenteAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAtivoHistoricoOfertaComponenteAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAtivoHistoricoOfertaComponenteExcluir.getativohistoricoofertacomponente: String;
begin
  Result := Self.m_ativohistoricoofertacomponente;
end;

procedure TAtivoHistoricoOfertaComponenteExcluir.setativohistoricoofertacomponente(const a_Value: String);
begin
  Self.m_ativohistoricoofertacomponente := a_Value;
end;

destructor TAtivoHistoricoOfertaComponenteExcluir.Destroy;
begin

end;

function TAtivoHistoricoOfertaComponenteExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAtivoHistoricoOfertaComponenteExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAtivoHistoricoOfertaComponenteExcluir.getNameAPI(): String;
begin
  Result := 'AtivoHistoricoOfertaComponenteExcluir';
end;

function TAtivoHistoricoOfertaComponenteExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAtivoHistoricoOfertaComponenteExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
