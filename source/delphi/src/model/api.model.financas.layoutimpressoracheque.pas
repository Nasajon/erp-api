unit api.model.financas.LayoutImpressoraCheque;

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

type TLayoutImpressoraChequeNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ID: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Banco: String;
    

    function getID(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getBanco(): String;
    

    procedure setID(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setBanco(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getID write setID;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('banco')]
    property banco: String read getBanco write setBanco;

    

end;

type TLayoutImpressoraChequeAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_LayoutImpressoraCheque: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Banco: String;
    

    function getLayoutImpressoraCheque(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getBanco(): String;
    

    procedure setLayoutImpressoraCheque(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setBanco(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('layoutimpressoracheque')]
    property layoutimpressoracheque: String read getLayoutImpressoraCheque write setLayoutImpressoraCheque;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('banco')]
    property banco: String read getBanco write setBanco;

    

end;

type TLayoutImpressoraChequeExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_LayoutImpressoraCheque: String;
    var m_Banco: String;
    

    function getLayoutImpressoraCheque(): String;
    function getBanco(): String;
    

    procedure setLayoutImpressoraCheque(const a_Value: String);
    procedure setBanco(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('layoutimpressoracheque')]
    property layoutimpressoracheque: String read getLayoutImpressoraCheque write setLayoutImpressoraCheque;

    [NasajonSerializeAttribute('banco')]
    property banco: String read getBanco write setBanco;

    

end;

	
implementation

  uses
      api.send;  

function TLayoutImpressoraChequeNovo.getID: String;
begin
  Result := Self.m_ID;
end;

procedure TLayoutImpressoraChequeNovo.setID(const a_Value: String);
begin
  Self.m_ID := a_Value;
end;

function TLayoutImpressoraChequeNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TLayoutImpressoraChequeNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TLayoutImpressoraChequeNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TLayoutImpressoraChequeNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TLayoutImpressoraChequeNovo.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TLayoutImpressoraChequeNovo.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

destructor TLayoutImpressoraChequeNovo.Destroy;
begin

end;

function TLayoutImpressoraChequeNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLayoutImpressoraChequeNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLayoutImpressoraChequeNovo.getNameAPI(): String;
begin
  Result := 'LayoutImpressoraChequeNovo';
end;

function TLayoutImpressoraChequeNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLayoutImpressoraChequeNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLayoutImpressoraChequeAlterar.getLayoutImpressoraCheque: String;
begin
  Result := Self.m_LayoutImpressoraCheque;
end;

procedure TLayoutImpressoraChequeAlterar.setLayoutImpressoraCheque(const a_Value: String);
begin
  Self.m_LayoutImpressoraCheque := a_Value;
end;

function TLayoutImpressoraChequeAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TLayoutImpressoraChequeAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TLayoutImpressoraChequeAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TLayoutImpressoraChequeAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TLayoutImpressoraChequeAlterar.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TLayoutImpressoraChequeAlterar.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

destructor TLayoutImpressoraChequeAlterar.Destroy;
begin

end;

function TLayoutImpressoraChequeAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLayoutImpressoraChequeAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLayoutImpressoraChequeAlterar.getNameAPI(): String;
begin
  Result := 'LayoutImpressoraChequeAlterar';
end;

function TLayoutImpressoraChequeAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLayoutImpressoraChequeAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLayoutImpressoraChequeExcluir.getLayoutImpressoraCheque: String;
begin
  Result := Self.m_LayoutImpressoraCheque;
end;

procedure TLayoutImpressoraChequeExcluir.setLayoutImpressoraCheque(const a_Value: String);
begin
  Self.m_LayoutImpressoraCheque := a_Value;
end;

function TLayoutImpressoraChequeExcluir.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TLayoutImpressoraChequeExcluir.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

destructor TLayoutImpressoraChequeExcluir.Destroy;
begin

end;

function TLayoutImpressoraChequeExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLayoutImpressoraChequeExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLayoutImpressoraChequeExcluir.getNameAPI(): String;
begin
  Result := 'LayoutImpressoraChequeExcluir';
end;

function TLayoutImpressoraChequeExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLayoutImpressoraChequeExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
