unit api.model.persona.TipoDocumentoColaborador;

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

type TTipoDocumentoColaboradorNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdTipoDocumento: String;
    var m_Descricao: String;
    

    function getIdTipoDocumento(): String;
    function getDescricao(): String;
    

    procedure setIdTipoDocumento(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idtipodocumento')]
    property idtipodocumento: String read getIdTipoDocumento write setIdTipoDocumento;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TTipoDocumentoColaboradorAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoDocumento: String;
    var m_Descricao: String;
    

    function getTipoDocumento(): String;
    function getDescricao(): String;
    

    procedure setTipoDocumento(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tipodocumento')]
    property tipodocumento: String read getTipoDocumento write setTipoDocumento;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TTipoDocumentoColaboradorExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_TipoDocumento: String;
    

    function getTipoDocumento(): String;
    

    procedure setTipoDocumento(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tipodocumento')]
    property tipodocumento: String read getTipoDocumento write setTipoDocumento;

    

end;

	
implementation

  uses
      api.send;  

function TTipoDocumentoColaboradorNovo.getIdTipoDocumento: String;
begin
  Result := Self.m_IdTipoDocumento;
end;

procedure TTipoDocumentoColaboradorNovo.setIdTipoDocumento(const a_Value: String);
begin
  Self.m_IdTipoDocumento := a_Value;
end;

function TTipoDocumentoColaboradorNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TTipoDocumentoColaboradorNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TTipoDocumentoColaboradorNovo.Destroy;
begin

end;

function TTipoDocumentoColaboradorNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoDocumentoColaboradorNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoDocumentoColaboradorNovo.getNameAPI(): String;
begin
  Result := 'TipoDocumentoColaboradorNovo';
end;

function TTipoDocumentoColaboradorNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoDocumentoColaboradorNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTipoDocumentoColaboradorAlterar.getTipoDocumento: String;
begin
  Result := Self.m_TipoDocumento;
end;

procedure TTipoDocumentoColaboradorAlterar.setTipoDocumento(const a_Value: String);
begin
  Self.m_TipoDocumento := a_Value;
end;

function TTipoDocumentoColaboradorAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TTipoDocumentoColaboradorAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TTipoDocumentoColaboradorAlterar.Destroy;
begin

end;

function TTipoDocumentoColaboradorAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoDocumentoColaboradorAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoDocumentoColaboradorAlterar.getNameAPI(): String;
begin
  Result := 'TipoDocumentoColaboradorAlterar';
end;

function TTipoDocumentoColaboradorAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoDocumentoColaboradorAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTipoDocumentoColaboradorExcluir.getTipoDocumento: String;
begin
  Result := Self.m_TipoDocumento;
end;

procedure TTipoDocumentoColaboradorExcluir.setTipoDocumento(const a_Value: String);
begin
  Self.m_TipoDocumento := a_Value;
end;

destructor TTipoDocumentoColaboradorExcluir.Destroy;
begin

end;

function TTipoDocumentoColaboradorExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTipoDocumentoColaboradorExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTipoDocumentoColaboradorExcluir.getNameAPI(): String;
begin
  Result := 'TipoDocumentoColaboradorExcluir';
end;

function TTipoDocumentoColaboradorExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTipoDocumentoColaboradorExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
