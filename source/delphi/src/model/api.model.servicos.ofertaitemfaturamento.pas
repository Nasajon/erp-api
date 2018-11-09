unit api.model.servicos.OfertaItemFaturamento;

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

type TOfertaItemFaturamentoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_servicocatalogoitem: String;
    var m_servicocatalogo: String;
    var m_itemfaturamento: String;
    var m_quantidade: Currency;
    var m_valorbase: Currency;
    var m_finalidade: Integer;
    

    function getservicocatalogoitem(): String;
    function getservicocatalogo(): String;
    function getitemfaturamento(): String;
    function getquantidade(): Currency;
    function getvalorbase(): Currency;
    function getfinalidade(): Integer;
    

    procedure setservicocatalogoitem(const a_Value: String);
    procedure setservicocatalogo(const a_Value: String);
    procedure setitemfaturamento(const a_Value: String);
    procedure setquantidade(const a_Value: Currency);
    procedure setvalorbase(const a_Value: Currency);
    procedure setfinalidade(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('servicocatalogoitem')]
    property servicocatalogoitem: String read getservicocatalogoitem write setservicocatalogoitem;

    [NasajonSerializeAttribute('servicocatalogo')]
    property servicocatalogo: String read getservicocatalogo write setservicocatalogo;

    [NasajonSerializeAttribute('itemfaturamento')]
    property itemfaturamento: String read getitemfaturamento write setitemfaturamento;

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Currency read getquantidade write setquantidade;

    [NasajonSerializeAttribute('valorbase')]
    property valorbase: Currency read getvalorbase write setvalorbase;

    [NasajonSerializeAttribute('finalidade')]
    property finalidade: Integer read getfinalidade write setfinalidade;

    

end;

type TOfertaItemFaturamentoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_servicocatalogoitem: String;
    var m_servicocatalogo: String;
    var m_itemfaturamento: String;
    var m_quantidade: Currency;
    var m_valorbase: Currency;
    var m_finalidade: Integer;
    

    function getservicocatalogoitem(): String;
    function getservicocatalogo(): String;
    function getitemfaturamento(): String;
    function getquantidade(): Currency;
    function getvalorbase(): Currency;
    function getfinalidade(): Integer;
    

    procedure setservicocatalogoitem(const a_Value: String);
    procedure setservicocatalogo(const a_Value: String);
    procedure setitemfaturamento(const a_Value: String);
    procedure setquantidade(const a_Value: Currency);
    procedure setvalorbase(const a_Value: Currency);
    procedure setfinalidade(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('servicocatalogoitem')]
    property servicocatalogoitem: String read getservicocatalogoitem write setservicocatalogoitem;

    [NasajonSerializeAttribute('servicocatalogo')]
    property servicocatalogo: String read getservicocatalogo write setservicocatalogo;

    [NasajonSerializeAttribute('itemfaturamento')]
    property itemfaturamento: String read getitemfaturamento write setitemfaturamento;

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Currency read getquantidade write setquantidade;

    [NasajonSerializeAttribute('valorbase')]
    property valorbase: Currency read getvalorbase write setvalorbase;

    [NasajonSerializeAttribute('finalidade')]
    property finalidade: Integer read getfinalidade write setfinalidade;

    

end;

type TOfertaItemFaturamentoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_servicocatalogoitem: String;
    

    function getservicocatalogoitem(): String;
    

    procedure setservicocatalogoitem(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('servicocatalogoitem')]
    property servicocatalogoitem: String read getservicocatalogoitem write setservicocatalogoitem;

    

end;

	
implementation

  uses
      api.send;  

function TOfertaItemFaturamentoNovo.getservicocatalogoitem: String;
begin
  Result := Self.m_servicocatalogoitem;
end;

procedure TOfertaItemFaturamentoNovo.setservicocatalogoitem(const a_Value: String);
begin
  Self.m_servicocatalogoitem := a_Value;
end;

function TOfertaItemFaturamentoNovo.getservicocatalogo: String;
begin
  Result := Self.m_servicocatalogo;
end;

procedure TOfertaItemFaturamentoNovo.setservicocatalogo(const a_Value: String);
begin
  Self.m_servicocatalogo := a_Value;
end;

function TOfertaItemFaturamentoNovo.getitemfaturamento: String;
begin
  Result := Self.m_itemfaturamento;
end;

procedure TOfertaItemFaturamentoNovo.setitemfaturamento(const a_Value: String);
begin
  Self.m_itemfaturamento := a_Value;
end;

function TOfertaItemFaturamentoNovo.getquantidade: Currency;
begin
  Result := Self.m_quantidade;
end;

procedure TOfertaItemFaturamentoNovo.setquantidade(const a_Value: Currency);
begin
  Self.m_quantidade := a_Value;
end;

function TOfertaItemFaturamentoNovo.getvalorbase: Currency;
begin
  Result := Self.m_valorbase;
end;

procedure TOfertaItemFaturamentoNovo.setvalorbase(const a_Value: Currency);
begin
  Self.m_valorbase := a_Value;
end;

function TOfertaItemFaturamentoNovo.getfinalidade: Integer;
begin
  Result := Self.m_finalidade;
end;

procedure TOfertaItemFaturamentoNovo.setfinalidade(const a_Value: Integer);
begin
  Self.m_finalidade := a_Value;
end;

destructor TOfertaItemFaturamentoNovo.Destroy;
begin

end;

function TOfertaItemFaturamentoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TOfertaItemFaturamentoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TOfertaItemFaturamentoNovo.getNameAPI(): String;
begin
  Result := 'OfertaItemFaturamentoNovo';
end;

function TOfertaItemFaturamentoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TOfertaItemFaturamentoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TOfertaItemFaturamentoAlterar.getservicocatalogoitem: String;
begin
  Result := Self.m_servicocatalogoitem;
end;

procedure TOfertaItemFaturamentoAlterar.setservicocatalogoitem(const a_Value: String);
begin
  Self.m_servicocatalogoitem := a_Value;
end;

function TOfertaItemFaturamentoAlterar.getservicocatalogo: String;
begin
  Result := Self.m_servicocatalogo;
end;

procedure TOfertaItemFaturamentoAlterar.setservicocatalogo(const a_Value: String);
begin
  Self.m_servicocatalogo := a_Value;
end;

function TOfertaItemFaturamentoAlterar.getitemfaturamento: String;
begin
  Result := Self.m_itemfaturamento;
end;

procedure TOfertaItemFaturamentoAlterar.setitemfaturamento(const a_Value: String);
begin
  Self.m_itemfaturamento := a_Value;
end;

function TOfertaItemFaturamentoAlterar.getquantidade: Currency;
begin
  Result := Self.m_quantidade;
end;

procedure TOfertaItemFaturamentoAlterar.setquantidade(const a_Value: Currency);
begin
  Self.m_quantidade := a_Value;
end;

function TOfertaItemFaturamentoAlterar.getvalorbase: Currency;
begin
  Result := Self.m_valorbase;
end;

procedure TOfertaItemFaturamentoAlterar.setvalorbase(const a_Value: Currency);
begin
  Self.m_valorbase := a_Value;
end;

function TOfertaItemFaturamentoAlterar.getfinalidade: Integer;
begin
  Result := Self.m_finalidade;
end;

procedure TOfertaItemFaturamentoAlterar.setfinalidade(const a_Value: Integer);
begin
  Self.m_finalidade := a_Value;
end;

destructor TOfertaItemFaturamentoAlterar.Destroy;
begin

end;

function TOfertaItemFaturamentoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TOfertaItemFaturamentoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TOfertaItemFaturamentoAlterar.getNameAPI(): String;
begin
  Result := 'OfertaItemFaturamentoAlterar';
end;

function TOfertaItemFaturamentoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TOfertaItemFaturamentoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TOfertaItemFaturamentoExcluir.getservicocatalogoitem: String;
begin
  Result := Self.m_servicocatalogoitem;
end;

procedure TOfertaItemFaturamentoExcluir.setservicocatalogoitem(const a_Value: String);
begin
  Self.m_servicocatalogoitem := a_Value;
end;

destructor TOfertaItemFaturamentoExcluir.Destroy;
begin

end;

function TOfertaItemFaturamentoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TOfertaItemFaturamentoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TOfertaItemFaturamentoExcluir.getNameAPI(): String;
begin
  Result := 'OfertaItemFaturamentoExcluir';
end;

function TOfertaItemFaturamentoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TOfertaItemFaturamentoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
