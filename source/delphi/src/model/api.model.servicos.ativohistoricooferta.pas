unit api.model.servicos.AtivoHistoricoOferta;

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

type TAtivoHistoricoOfertaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ativohistoricooferta: String;
    var m_id_objetoservico: String;
    var m_id_oferta: String;
    var m_ativa: Boolean;
    var m_data: TDate;
    

    function getativohistoricooferta(): String;
    function getid_objetoservico(): String;
    function getid_oferta(): String;
    function getativa(): Boolean;
    function getdata(): TDate;
    

    procedure setativohistoricooferta(const a_Value: String);
    procedure setid_objetoservico(const a_Value: String);
    procedure setid_oferta(const a_Value: String);
    procedure setativa(const a_Value: Boolean);
    procedure setdata(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('ativohistoricooferta')]
    property ativohistoricooferta: String read getativohistoricooferta write setativohistoricooferta;

    [NasajonSerializeAttribute('id_objetoservico')]
    property id_objetoservico: String read getid_objetoservico write setid_objetoservico;

    [NasajonSerializeAttribute('id_oferta')]
    property id_oferta: String read getid_oferta write setid_oferta;

    [NasajonSerializeAttribute('ativa')]
    property ativa: Boolean read getativa write setativa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getdata write setdata;

    

end;

type TAtivoHistoricoOfertaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ativohistoricooferta: String;
    var m_id_objetoservico: String;
    var m_id_oferta: String;
    var m_ativa: Boolean;
    var m_data: TDate;
    

    function getativohistoricooferta(): String;
    function getid_objetoservico(): String;
    function getid_oferta(): String;
    function getativa(): Boolean;
    function getdata(): TDate;
    

    procedure setativohistoricooferta(const a_Value: String);
    procedure setid_objetoservico(const a_Value: String);
    procedure setid_oferta(const a_Value: String);
    procedure setativa(const a_Value: Boolean);
    procedure setdata(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('ativohistoricooferta')]
    property ativohistoricooferta: String read getativohistoricooferta write setativohistoricooferta;

    [NasajonSerializeAttribute('id_objetoservico')]
    property id_objetoservico: String read getid_objetoservico write setid_objetoservico;

    [NasajonSerializeAttribute('id_oferta')]
    property id_oferta: String read getid_oferta write setid_oferta;

    [NasajonSerializeAttribute('ativa')]
    property ativa: Boolean read getativa write setativa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getdata write setdata;

    

end;

type TAtivoHistoricoOfertaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ativohistoricooferta: String;
    

    function getativohistoricooferta(): String;
    

    procedure setativohistoricooferta(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('ativohistoricooferta')]
    property ativohistoricooferta: String read getativohistoricooferta write setativohistoricooferta;

    

end;

	
implementation

  uses
      api.send;  

function TAtivoHistoricoOfertaNovo.getativohistoricooferta: String;
begin
  Result := Self.m_ativohistoricooferta;
end;

procedure TAtivoHistoricoOfertaNovo.setativohistoricooferta(const a_Value: String);
begin
  Self.m_ativohistoricooferta := a_Value;
end;

function TAtivoHistoricoOfertaNovo.getid_objetoservico: String;
begin
  Result := Self.m_id_objetoservico;
end;

procedure TAtivoHistoricoOfertaNovo.setid_objetoservico(const a_Value: String);
begin
  Self.m_id_objetoservico := a_Value;
end;

function TAtivoHistoricoOfertaNovo.getid_oferta: String;
begin
  Result := Self.m_id_oferta;
end;

procedure TAtivoHistoricoOfertaNovo.setid_oferta(const a_Value: String);
begin
  Self.m_id_oferta := a_Value;
end;

function TAtivoHistoricoOfertaNovo.getativa: Boolean;
begin
  Result := Self.m_ativa;
end;

procedure TAtivoHistoricoOfertaNovo.setativa(const a_Value: Boolean);
begin
  Self.m_ativa := a_Value;
end;

function TAtivoHistoricoOfertaNovo.getdata: TDate;
begin
  Result := Self.m_data;
end;

procedure TAtivoHistoricoOfertaNovo.setdata(const a_Value: TDate);
begin
  Self.m_data := a_Value;
end;

destructor TAtivoHistoricoOfertaNovo.Destroy;
begin

end;

function TAtivoHistoricoOfertaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAtivoHistoricoOfertaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAtivoHistoricoOfertaNovo.getNameAPI(): String;
begin
  Result := 'AtivoHistoricoOfertaNovo';
end;

function TAtivoHistoricoOfertaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAtivoHistoricoOfertaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAtivoHistoricoOfertaAlterar.getativohistoricooferta: String;
begin
  Result := Self.m_ativohistoricooferta;
end;

procedure TAtivoHistoricoOfertaAlterar.setativohistoricooferta(const a_Value: String);
begin
  Self.m_ativohistoricooferta := a_Value;
end;

function TAtivoHistoricoOfertaAlterar.getid_objetoservico: String;
begin
  Result := Self.m_id_objetoservico;
end;

procedure TAtivoHistoricoOfertaAlterar.setid_objetoservico(const a_Value: String);
begin
  Self.m_id_objetoservico := a_Value;
end;

function TAtivoHistoricoOfertaAlterar.getid_oferta: String;
begin
  Result := Self.m_id_oferta;
end;

procedure TAtivoHistoricoOfertaAlterar.setid_oferta(const a_Value: String);
begin
  Self.m_id_oferta := a_Value;
end;

function TAtivoHistoricoOfertaAlterar.getativa: Boolean;
begin
  Result := Self.m_ativa;
end;

procedure TAtivoHistoricoOfertaAlterar.setativa(const a_Value: Boolean);
begin
  Self.m_ativa := a_Value;
end;

function TAtivoHistoricoOfertaAlterar.getdata: TDate;
begin
  Result := Self.m_data;
end;

procedure TAtivoHistoricoOfertaAlterar.setdata(const a_Value: TDate);
begin
  Self.m_data := a_Value;
end;

destructor TAtivoHistoricoOfertaAlterar.Destroy;
begin

end;

function TAtivoHistoricoOfertaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAtivoHistoricoOfertaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAtivoHistoricoOfertaAlterar.getNameAPI(): String;
begin
  Result := 'AtivoHistoricoOfertaAlterar';
end;

function TAtivoHistoricoOfertaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAtivoHistoricoOfertaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAtivoHistoricoOfertaExcluir.getativohistoricooferta: String;
begin
  Result := Self.m_ativohistoricooferta;
end;

procedure TAtivoHistoricoOfertaExcluir.setativohistoricooferta(const a_Value: String);
begin
  Self.m_ativohistoricooferta := a_Value;
end;

destructor TAtivoHistoricoOfertaExcluir.Destroy;
begin

end;

function TAtivoHistoricoOfertaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAtivoHistoricoOfertaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAtivoHistoricoOfertaExcluir.getNameAPI(): String;
begin
  Result := 'AtivoHistoricoOfertaExcluir';
end;

function TAtivoHistoricoOfertaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAtivoHistoricoOfertaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
