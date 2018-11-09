unit api.model.compras.VinculoItemCompra;

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

type TVinculoItemCompraNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_itemcompra: String;
    var m_produto: String;
    var m_grupoempresarial: String;
    var m_padrao: Boolean;
    

    function getid(): String;
    function getitemcompra(): String;
    function getproduto(): String;
    function getgrupoempresarial(): String;
    function getpadrao(): Boolean;
    

    procedure setid(const a_Value: String);
    procedure setitemcompra(const a_Value: String);
    procedure setproduto(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setpadrao(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('itemcompra')]
    property itemcompra: String read getitemcompra write setitemcompra;

    [NasajonSerializeAttribute('produto')]
    property produto: String read getproduto write setproduto;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    [NasajonSerializeAttribute('padrao')]
    property padrao: Boolean read getpadrao write setpadrao;

    

end;

type TVinculoItemCompraAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_itemcompra: String;
    var m_produto: String;
    var m_grupoempresarial: String;
    var m_padrao: Boolean;
    

    function getid(): String;
    function getitemcompra(): String;
    function getproduto(): String;
    function getgrupoempresarial(): String;
    function getpadrao(): Boolean;
    

    procedure setid(const a_Value: String);
    procedure setitemcompra(const a_Value: String);
    procedure setproduto(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setpadrao(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('itemcompra')]
    property itemcompra: String read getitemcompra write setitemcompra;

    [NasajonSerializeAttribute('produto')]
    property produto: String read getproduto write setproduto;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    [NasajonSerializeAttribute('padrao')]
    property padrao: Boolean read getpadrao write setpadrao;

    

end;

type TVinculoItemCompraExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TVinculoItemCompraNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TVinculoItemCompraNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TVinculoItemCompraNovo.getitemcompra: String;
begin
  Result := Self.m_itemcompra;
end;

procedure TVinculoItemCompraNovo.setitemcompra(const a_Value: String);
begin
  Self.m_itemcompra := a_Value;
end;

function TVinculoItemCompraNovo.getproduto: String;
begin
  Result := Self.m_produto;
end;

procedure TVinculoItemCompraNovo.setproduto(const a_Value: String);
begin
  Self.m_produto := a_Value;
end;

function TVinculoItemCompraNovo.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TVinculoItemCompraNovo.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TVinculoItemCompraNovo.getpadrao: Boolean;
begin
  Result := Self.m_padrao;
end;

procedure TVinculoItemCompraNovo.setpadrao(const a_Value: Boolean);
begin
  Self.m_padrao := a_Value;
end;

destructor TVinculoItemCompraNovo.Destroy;
begin

end;

function TVinculoItemCompraNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TVinculoItemCompraNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TVinculoItemCompraNovo.getNameAPI(): String;
begin
  Result := 'VinculoItemCompraNovo';
end;

function TVinculoItemCompraNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TVinculoItemCompraNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TVinculoItemCompraAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TVinculoItemCompraAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TVinculoItemCompraAlterar.getitemcompra: String;
begin
  Result := Self.m_itemcompra;
end;

procedure TVinculoItemCompraAlterar.setitemcompra(const a_Value: String);
begin
  Self.m_itemcompra := a_Value;
end;

function TVinculoItemCompraAlterar.getproduto: String;
begin
  Result := Self.m_produto;
end;

procedure TVinculoItemCompraAlterar.setproduto(const a_Value: String);
begin
  Self.m_produto := a_Value;
end;

function TVinculoItemCompraAlterar.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TVinculoItemCompraAlterar.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TVinculoItemCompraAlterar.getpadrao: Boolean;
begin
  Result := Self.m_padrao;
end;

procedure TVinculoItemCompraAlterar.setpadrao(const a_Value: Boolean);
begin
  Self.m_padrao := a_Value;
end;

destructor TVinculoItemCompraAlterar.Destroy;
begin

end;

function TVinculoItemCompraAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TVinculoItemCompraAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TVinculoItemCompraAlterar.getNameAPI(): String;
begin
  Result := 'VinculoItemCompraAlterar';
end;

function TVinculoItemCompraAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TVinculoItemCompraAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TVinculoItemCompraExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TVinculoItemCompraExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

destructor TVinculoItemCompraExcluir.Destroy;
begin

end;

function TVinculoItemCompraExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TVinculoItemCompraExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TVinculoItemCompraExcluir.getNameAPI(): String;
begin
  Result := 'VinculoItemCompraExcluir';
end;

function TVinculoItemCompraExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TVinculoItemCompraExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
