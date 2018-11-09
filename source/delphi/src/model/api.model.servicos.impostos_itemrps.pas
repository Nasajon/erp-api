unit api.model.servicos.Impostos_ItemRPS;

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
	
  , api.model.servicos.Impostos_Tributo
  , System.Generics.Collections
	

	;

type TImpostos_ItemRPS = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_itemrps_id: String;
    var m_Item_Faturamento_ID: String;
    var m_itemrps_percentual_incidencia_inss: Currency;
    var m_itemrps_percentual_base_iss: Currency;
    var m_itemrps_quantidade: Currency;
    var m_itemrps_valor_unitario: Currency;
    var m_itemrps_desconto: Currency;
    var m_itemrps_valor_total: Currency;
    var m_itemrps_lista_tributos: TObjectList<TImpostos_Tributo>;
    

    function getitemrps_id(): String;
    function getItem_Faturamento_ID(): String;
    function getitemrps_percentual_incidencia_inss(): Currency;
    function getitemrps_percentual_base_iss(): Currency;
    function getitemrps_quantidade(): Currency;
    function getitemrps_valor_unitario(): Currency;
    function getitemrps_desconto(): Currency;
    function getitemrps_valor_total(): Currency;
    function getitemrps_lista_tributos(): TObjectList<TImpostos_Tributo>;
    

    procedure setitemrps_id(const a_Value: String);
    procedure setItem_Faturamento_ID(const a_Value: String);
    procedure setitemrps_percentual_incidencia_inss(const a_Value: Currency);
    procedure setitemrps_percentual_base_iss(const a_Value: Currency);
    procedure setitemrps_quantidade(const a_Value: Currency);
    procedure setitemrps_valor_unitario(const a_Value: Currency);
    procedure setitemrps_desconto(const a_Value: Currency);
    procedure setitemrps_valor_total(const a_Value: Currency);
    procedure setitemrps_lista_tributos(const a_Value: TObjectList<TImpostos_Tributo>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('itemrps_id')]
    property itemrps_id: String read getitemrps_id write setitemrps_id;

    [NasajonSerializeAttribute('item_faturamento_id')]
    property item_faturamento_id: String read getItem_Faturamento_ID write setItem_Faturamento_ID;

    [NasajonSerializeAttribute('itemrps_percentual_incidencia_inss')]
    property itemrps_percentual_incidencia_inss: Currency read getitemrps_percentual_incidencia_inss write setitemrps_percentual_incidencia_inss;

    [NasajonSerializeAttribute('itemrps_percentual_base_iss')]
    property itemrps_percentual_base_iss: Currency read getitemrps_percentual_base_iss write setitemrps_percentual_base_iss;

    [NasajonSerializeAttribute('itemrps_quantidade')]
    property itemrps_quantidade: Currency read getitemrps_quantidade write setitemrps_quantidade;

    [NasajonSerializeAttribute('itemrps_valor_unitario')]
    property itemrps_valor_unitario: Currency read getitemrps_valor_unitario write setitemrps_valor_unitario;

    [NasajonSerializeAttribute('itemrps_desconto')]
    property itemrps_desconto: Currency read getitemrps_desconto write setitemrps_desconto;

    [NasajonSerializeAttribute('itemrps_valor_total')]
    property itemrps_valor_total: Currency read getitemrps_valor_total write setitemrps_valor_total;

    [NasajonSerializeAttribute('itemrps_lista_tributos')]
    property itemrps_lista_tributos: TObjectList<TImpostos_Tributo> read getitemrps_lista_tributos write setitemrps_lista_tributos;

    

end;

	
implementation

  uses
      api.send;  

function TImpostos_ItemRPS.getitemrps_id: String;
begin
  Result := Self.m_itemrps_id;
end;

procedure TImpostos_ItemRPS.setitemrps_id(const a_Value: String);
begin
  Self.m_itemrps_id := a_Value;
end;

function TImpostos_ItemRPS.getItem_Faturamento_ID: String;
begin
  Result := Self.m_Item_Faturamento_ID;
end;

procedure TImpostos_ItemRPS.setItem_Faturamento_ID(const a_Value: String);
begin
  Self.m_Item_Faturamento_ID := a_Value;
end;

function TImpostos_ItemRPS.getitemrps_percentual_incidencia_inss: Currency;
begin
  Result := Self.m_itemrps_percentual_incidencia_inss;
end;

procedure TImpostos_ItemRPS.setitemrps_percentual_incidencia_inss(const a_Value: Currency);
begin
  Self.m_itemrps_percentual_incidencia_inss := a_Value;
end;

function TImpostos_ItemRPS.getitemrps_percentual_base_iss: Currency;
begin
  Result := Self.m_itemrps_percentual_base_iss;
end;

procedure TImpostos_ItemRPS.setitemrps_percentual_base_iss(const a_Value: Currency);
begin
  Self.m_itemrps_percentual_base_iss := a_Value;
end;

function TImpostos_ItemRPS.getitemrps_quantidade: Currency;
begin
  Result := Self.m_itemrps_quantidade;
end;

procedure TImpostos_ItemRPS.setitemrps_quantidade(const a_Value: Currency);
begin
  Self.m_itemrps_quantidade := a_Value;
end;

function TImpostos_ItemRPS.getitemrps_valor_unitario: Currency;
begin
  Result := Self.m_itemrps_valor_unitario;
end;

procedure TImpostos_ItemRPS.setitemrps_valor_unitario(const a_Value: Currency);
begin
  Self.m_itemrps_valor_unitario := a_Value;
end;

function TImpostos_ItemRPS.getitemrps_desconto: Currency;
begin
  Result := Self.m_itemrps_desconto;
end;

procedure TImpostos_ItemRPS.setitemrps_desconto(const a_Value: Currency);
begin
  Self.m_itemrps_desconto := a_Value;
end;

function TImpostos_ItemRPS.getitemrps_valor_total: Currency;
begin
  Result := Self.m_itemrps_valor_total;
end;

procedure TImpostos_ItemRPS.setitemrps_valor_total(const a_Value: Currency);
begin
  Self.m_itemrps_valor_total := a_Value;
end;

function TImpostos_ItemRPS.getitemrps_lista_tributos: TObjectList<TImpostos_Tributo>;
begin
  if not Assigned(Self.m_itemrps_lista_tributos)
    then Self.m_itemrps_lista_tributos := TObjectList<TImpostos_Tributo>.Create();
  Result := Self.m_itemrps_lista_tributos;
end;

procedure TImpostos_ItemRPS.setitemrps_lista_tributos(const a_Value: TObjectList<TImpostos_Tributo>);
begin
  Self.m_itemrps_lista_tributos := a_Value;
end;

destructor TImpostos_ItemRPS.Destroy;
begin
  Self.itemrps_lista_tributos.Free();
end;

function TImpostos_ItemRPS.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TImpostos_ItemRPS.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TImpostos_ItemRPS.getNameAPI(): String;
begin
  Result := 'Impostos_ItemRPS';
end;

function TImpostos_ItemRPS.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TImpostos_ItemRPS.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
