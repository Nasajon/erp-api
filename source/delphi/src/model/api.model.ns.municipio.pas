unit api.model.ns.Municipio;

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

type TMunicipio = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_ibge: String;
    var m_nome: String;
    var m_uf: String;
    var m_zfm: String;
    

    function getid(): String;
    function getibge(): String;
    function getnome(): String;
    function getuf(): String;
    function getzfm(): String;
    

    procedure setid(const a_Value: String);
    procedure setibge(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setuf(const a_Value: String);
    procedure setzfm(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('ibge')]
    property ibge: String read getibge write setibge;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getuf write setuf;

    [NasajonSerializeAttribute('zfm')]
    property zfm: String read getzfm write setzfm;

    

end;

type TMunicipioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_ibge: String;
    var m_nome: String;
    var m_uf: String;
    var m_zfm: String;
    

    function getid(): String;
    function getibge(): String;
    function getnome(): String;
    function getuf(): String;
    function getzfm(): String;
    

    procedure setid(const a_Value: String);
    procedure setibge(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setuf(const a_Value: String);
    procedure setzfm(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('ibge')]
    property ibge: String read getibge write setibge;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getuf write setuf;

    [NasajonSerializeAttribute('zfm')]
    property zfm: String read getzfm write setzfm;

    

end;

type TMunicipioAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_ibge: String;
    var m_nome: String;
    var m_uf: String;
    var m_zfm: String;
    

    function getid(): String;
    function getibge(): String;
    function getnome(): String;
    function getuf(): String;
    function getzfm(): String;
    

    procedure setid(const a_Value: String);
    procedure setibge(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setuf(const a_Value: String);
    procedure setzfm(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('ibge')]
    property ibge: String read getibge write setibge;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getuf write setuf;

    [NasajonSerializeAttribute('zfm')]
    property zfm: String read getzfm write setzfm;

    

end;

type TMunicipioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TMunicipio.getid: String;
begin
  Result := Self.m_id;
end;

procedure TMunicipio.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TMunicipio.getibge: String;
begin
  Result := Self.m_ibge;
end;

procedure TMunicipio.setibge(const a_Value: String);
begin
  Self.m_ibge := a_Value;
end;

function TMunicipio.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TMunicipio.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TMunicipio.getuf: String;
begin
  Result := Self.m_uf;
end;

procedure TMunicipio.setuf(const a_Value: String);
begin
  Self.m_uf := a_Value;
end;

function TMunicipio.getzfm: String;
begin
  Result := Self.m_zfm;
end;

procedure TMunicipio.setzfm(const a_Value: String);
begin
  Self.m_zfm := a_Value;
end;

destructor TMunicipio.Destroy;
begin

end;

function TMunicipio.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMunicipio.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMunicipio.getNameAPI(): String;
begin
  Result := 'Municipio';
end;

function TMunicipio.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMunicipio.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMunicipioNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TMunicipioNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TMunicipioNovo.getibge: String;
begin
  Result := Self.m_ibge;
end;

procedure TMunicipioNovo.setibge(const a_Value: String);
begin
  Self.m_ibge := a_Value;
end;

function TMunicipioNovo.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TMunicipioNovo.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TMunicipioNovo.getuf: String;
begin
  Result := Self.m_uf;
end;

procedure TMunicipioNovo.setuf(const a_Value: String);
begin
  Self.m_uf := a_Value;
end;

function TMunicipioNovo.getzfm: String;
begin
  Result := Self.m_zfm;
end;

procedure TMunicipioNovo.setzfm(const a_Value: String);
begin
  Self.m_zfm := a_Value;
end;

destructor TMunicipioNovo.Destroy;
begin

end;

function TMunicipioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMunicipioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMunicipioNovo.getNameAPI(): String;
begin
  Result := 'MunicipioNovo';
end;

function TMunicipioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMunicipioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMunicipioAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TMunicipioAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TMunicipioAlterar.getibge: String;
begin
  Result := Self.m_ibge;
end;

procedure TMunicipioAlterar.setibge(const a_Value: String);
begin
  Self.m_ibge := a_Value;
end;

function TMunicipioAlterar.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TMunicipioAlterar.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TMunicipioAlterar.getuf: String;
begin
  Result := Self.m_uf;
end;

procedure TMunicipioAlterar.setuf(const a_Value: String);
begin
  Self.m_uf := a_Value;
end;

function TMunicipioAlterar.getzfm: String;
begin
  Result := Self.m_zfm;
end;

procedure TMunicipioAlterar.setzfm(const a_Value: String);
begin
  Self.m_zfm := a_Value;
end;

destructor TMunicipioAlterar.Destroy;
begin

end;

function TMunicipioAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMunicipioAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMunicipioAlterar.getNameAPI(): String;
begin
  Result := 'MunicipioAlterar';
end;

function TMunicipioAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMunicipioAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TMunicipioExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TMunicipioExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

destructor TMunicipioExcluir.Destroy;
begin

end;

function TMunicipioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TMunicipioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TMunicipioExcluir.getNameAPI(): String;
begin
  Result := 'MunicipioExcluir';
end;

function TMunicipioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TMunicipioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
