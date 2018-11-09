unit api.model.persona.ReajusteSindicato;

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

type TReajusteSindicatoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdReajuste: String;
    var m_Sindicato: String;
    var m_Data: TDate;
    var m_DataDeveriaTerSidoConcedido: TDate;
    var m_Tipo: Integer;
    var m_Percentual: Currency;
    var m_Descricao: String;
    

    function getIdReajuste(): String;
    function getSindicato(): String;
    function getData(): TDate;
    function getDataDeveriaTerSidoConcedido(): TDate;
    function getTipo(): Integer;
    function getPercentual(): Currency;
    function getDescricao(): String;
    

    procedure setIdReajuste(const a_Value: String);
    procedure setSindicato(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setDataDeveriaTerSidoConcedido(const a_Value: TDate);
    procedure setTipo(const a_Value: Integer);
    procedure setPercentual(const a_Value: Currency);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idreajuste')]
    property idreajuste: String read getIdReajuste write setIdReajuste;

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('datadeveriatersidoconcedido')]
    property datadeveriatersidoconcedido: TDate read getDataDeveriaTerSidoConcedido write setDataDeveriaTerSidoConcedido;

    /// <summary>
/// Convenção(0), Acordo(1), Dissídio(2) ou CCP(3)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TReajusteSindicatoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdReajuste: String;
    var m_Sindicato: String;
    var m_Data: TDate;
    var m_DataDeveriaTerSidoConcedido: TDate;
    var m_Tipo: Integer;
    var m_Percentual: Currency;
    var m_Descricao: String;
    

    function getIdReajuste(): String;
    function getSindicato(): String;
    function getData(): TDate;
    function getDataDeveriaTerSidoConcedido(): TDate;
    function getTipo(): Integer;
    function getPercentual(): Currency;
    function getDescricao(): String;
    

    procedure setIdReajuste(const a_Value: String);
    procedure setSindicato(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setDataDeveriaTerSidoConcedido(const a_Value: TDate);
    procedure setTipo(const a_Value: Integer);
    procedure setPercentual(const a_Value: Currency);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idreajuste')]
    property idreajuste: String read getIdReajuste write setIdReajuste;

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('datadeveriatersidoconcedido')]
    property datadeveriatersidoconcedido: TDate read getDataDeveriaTerSidoConcedido write setDataDeveriaTerSidoConcedido;

    /// <summary>
/// Convenção(0), Acordo(1), Dissídio(2) ou CCP(3)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TReajusteSindicatoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdReajuste: String;
    var m_Sindicato: String;
    var m_Data: TDate;
    

    function getIdReajuste(): String;
    function getSindicato(): String;
    function getData(): TDate;
    

    procedure setIdReajuste(const a_Value: String);
    procedure setSindicato(const a_Value: String);
    procedure setData(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idreajuste')]
    property idreajuste: String read getIdReajuste write setIdReajuste;

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    

end;

	
implementation

  uses
      api.send;  

function TReajusteSindicatoNovo.getIdReajuste: String;
begin
  Result := Self.m_IdReajuste;
end;

procedure TReajusteSindicatoNovo.setIdReajuste(const a_Value: String);
begin
  Self.m_IdReajuste := a_Value;
end;

function TReajusteSindicatoNovo.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TReajusteSindicatoNovo.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TReajusteSindicatoNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TReajusteSindicatoNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TReajusteSindicatoNovo.getDataDeveriaTerSidoConcedido: TDate;
begin
  Result := Self.m_DataDeveriaTerSidoConcedido;
end;

procedure TReajusteSindicatoNovo.setDataDeveriaTerSidoConcedido(const a_Value: TDate);
begin
  Self.m_DataDeveriaTerSidoConcedido := a_Value;
end;

function TReajusteSindicatoNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TReajusteSindicatoNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TReajusteSindicatoNovo.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure TReajusteSindicatoNovo.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

function TReajusteSindicatoNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TReajusteSindicatoNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TReajusteSindicatoNovo.Destroy;
begin

end;

function TReajusteSindicatoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TReajusteSindicatoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TReajusteSindicatoNovo.getNameAPI(): String;
begin
  Result := 'ReajusteSindicatoNovo';
end;

function TReajusteSindicatoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TReajusteSindicatoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TReajusteSindicatoAlterar.getIdReajuste: String;
begin
  Result := Self.m_IdReajuste;
end;

procedure TReajusteSindicatoAlterar.setIdReajuste(const a_Value: String);
begin
  Self.m_IdReajuste := a_Value;
end;

function TReajusteSindicatoAlterar.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TReajusteSindicatoAlterar.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TReajusteSindicatoAlterar.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TReajusteSindicatoAlterar.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TReajusteSindicatoAlterar.getDataDeveriaTerSidoConcedido: TDate;
begin
  Result := Self.m_DataDeveriaTerSidoConcedido;
end;

procedure TReajusteSindicatoAlterar.setDataDeveriaTerSidoConcedido(const a_Value: TDate);
begin
  Self.m_DataDeveriaTerSidoConcedido := a_Value;
end;

function TReajusteSindicatoAlterar.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TReajusteSindicatoAlterar.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TReajusteSindicatoAlterar.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure TReajusteSindicatoAlterar.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

function TReajusteSindicatoAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TReajusteSindicatoAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TReajusteSindicatoAlterar.Destroy;
begin

end;

function TReajusteSindicatoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TReajusteSindicatoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TReajusteSindicatoAlterar.getNameAPI(): String;
begin
  Result := 'ReajusteSindicatoAlterar';
end;

function TReajusteSindicatoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TReajusteSindicatoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TReajusteSindicatoExcluir.getIdReajuste: String;
begin
  Result := Self.m_IdReajuste;
end;

procedure TReajusteSindicatoExcluir.setIdReajuste(const a_Value: String);
begin
  Self.m_IdReajuste := a_Value;
end;

function TReajusteSindicatoExcluir.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TReajusteSindicatoExcluir.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TReajusteSindicatoExcluir.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TReajusteSindicatoExcluir.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

destructor TReajusteSindicatoExcluir.Destroy;
begin

end;

function TReajusteSindicatoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TReajusteSindicatoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TReajusteSindicatoExcluir.getNameAPI(): String;
begin
  Result := 'ReajusteSindicatoExcluir';
end;

function TReajusteSindicatoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TReajusteSindicatoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
