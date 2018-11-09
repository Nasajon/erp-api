unit api.model.ns.Vendedor;

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

type TVendedorNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idvendedor: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_nome: String;
    var m_identidade: String;
    var m_documento: String;
    

    function getidvendedor(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getnome(): String;
    function getidentidade(): String;
    function getdocumento(): String;
    

    procedure setidvendedor(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setidentidade(const a_Value: String);
    procedure setdocumento(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idvendedor')]
    property idvendedor: String read getidvendedor write setidvendedor;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('identidade')]
    property identidade: String read getidentidade write setidentidade;

    /// <summary>
/// Este campo aceita CPF ou CNPJ com ou sem mascara.
    /// </summary>
    [NasajonSerializeAttribute('documento')]
    property documento: String read getdocumento write setdocumento;

    

end;

type TVendedorAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idvendedor: String;
    var m_nome: String;
    var m_identidade: String;
    var m_documento: String;
    

    function getidvendedor(): String;
    function getnome(): String;
    function getidentidade(): String;
    function getdocumento(): String;
    

    procedure setidvendedor(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setidentidade(const a_Value: String);
    procedure setdocumento(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idvendedor')]
    property idvendedor: String read getidvendedor write setidvendedor;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('identidade')]
    property identidade: String read getidentidade write setidentidade;

    /// <summary>
/// Este campo aceita CPF ou CNPJ com ou sem mascara.
    /// </summary>
    [NasajonSerializeAttribute('documento')]
    property documento: String read getdocumento write setdocumento;

    

end;

type TVendedorExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idvendedor: String;
    

    function getidvendedor(): String;
    

    procedure setidvendedor(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idvendedor')]
    property idvendedor: String read getidvendedor write setidvendedor;

    

end;

	
implementation

  uses
      api.send;  

function TVendedorNovo.getidvendedor: String;
begin
  Result := Self.m_idvendedor;
end;

procedure TVendedorNovo.setidvendedor(const a_Value: String);
begin
  Self.m_idvendedor := a_Value;
end;

function TVendedorNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TVendedorNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TVendedorNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TVendedorNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TVendedorNovo.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TVendedorNovo.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TVendedorNovo.getidentidade: String;
begin
  Result := Self.m_identidade;
end;

procedure TVendedorNovo.setidentidade(const a_Value: String);
begin
  Self.m_identidade := a_Value;
end;

function TVendedorNovo.getdocumento: String;
begin
  Result := Self.m_documento;
end;

procedure TVendedorNovo.setdocumento(const a_Value: String);
begin
  Self.m_documento := a_Value;
end;

destructor TVendedorNovo.Destroy;
begin

end;

function TVendedorNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TVendedorNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TVendedorNovo.getNameAPI(): String;
begin
  Result := 'VendedorNovo';
end;

function TVendedorNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TVendedorNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TVendedorAlterar.getidvendedor: String;
begin
  Result := Self.m_idvendedor;
end;

procedure TVendedorAlterar.setidvendedor(const a_Value: String);
begin
  Self.m_idvendedor := a_Value;
end;

function TVendedorAlterar.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TVendedorAlterar.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TVendedorAlterar.getidentidade: String;
begin
  Result := Self.m_identidade;
end;

procedure TVendedorAlterar.setidentidade(const a_Value: String);
begin
  Self.m_identidade := a_Value;
end;

function TVendedorAlterar.getdocumento: String;
begin
  Result := Self.m_documento;
end;

procedure TVendedorAlterar.setdocumento(const a_Value: String);
begin
  Self.m_documento := a_Value;
end;

destructor TVendedorAlterar.Destroy;
begin

end;

function TVendedorAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TVendedorAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TVendedorAlterar.getNameAPI(): String;
begin
  Result := 'VendedorAlterar';
end;

function TVendedorAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TVendedorAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TVendedorExcluir.getidvendedor: String;
begin
  Result := Self.m_idvendedor;
end;

procedure TVendedorExcluir.setidvendedor(const a_Value: String);
begin
  Self.m_idvendedor := a_Value;
end;

destructor TVendedorExcluir.Destroy;
begin

end;

function TVendedorExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TVendedorExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TVendedorExcluir.getNameAPI(): String;
begin
  Result := 'VendedorExcluir';
end;

function TVendedorExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TVendedorExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
