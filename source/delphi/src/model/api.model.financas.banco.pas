unit api.model.financas.Banco;

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

type TBancoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdBanco: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Numero: String;
    

    function getIdBanco(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getNumero(): String;
    

    procedure setIdBanco(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setNumero(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idbanco')]
    property idbanco: String read getIdBanco write setIdBanco;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    

end;

type TBancoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Banco: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Numero: String;
    

    function getBanco(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getNumero(): String;
    

    procedure setBanco(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setNumero(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('banco')]
    property banco: String read getBanco write setBanco;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    

end;

type TBancoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Banco: String;
    

    function getBanco(): String;
    

    procedure setBanco(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('banco')]
    property banco: String read getBanco write setBanco;

    

end;

	
implementation

  uses
      api.send;  

function TBancoNovo.getIdBanco: String;
begin
  Result := Self.m_IdBanco;
end;

procedure TBancoNovo.setIdBanco(const a_Value: String);
begin
  Self.m_IdBanco := a_Value;
end;

function TBancoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TBancoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TBancoNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TBancoNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TBancoNovo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TBancoNovo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

destructor TBancoNovo.Destroy;
begin

end;

function TBancoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TBancoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TBancoNovo.getNameAPI(): String;
begin
  Result := 'BancoNovo';
end;

function TBancoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TBancoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TBancoAlterar.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TBancoAlterar.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

function TBancoAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TBancoAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TBancoAlterar.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TBancoAlterar.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TBancoAlterar.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TBancoAlterar.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

destructor TBancoAlterar.Destroy;
begin

end;

function TBancoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TBancoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TBancoAlterar.getNameAPI(): String;
begin
  Result := 'BancoAlterar';
end;

function TBancoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TBancoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TBancoExcluir.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TBancoExcluir.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

destructor TBancoExcluir.Destroy;
begin

end;

function TBancoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TBancoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TBancoExcluir.getNameAPI(): String;
begin
  Result := 'BancoExcluir';
end;

function TBancoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TBancoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
