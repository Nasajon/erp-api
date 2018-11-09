unit api.model.persona.TarifaConcessionariaValeTransporte;

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

type TTarifaConcessionariaValeTransporteNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdTarifa: String;
    var m_Concessionaria: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Valor: Currency;
    var m_Tipo: Integer;
    

    function getIdTarifa(): String;
    function getConcessionaria(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getValor(): Currency;
    function getTipo(): Integer;
    

    procedure setIdTarifa(const a_Value: String);
    procedure setConcessionaria(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setValor(const a_Value: Currency);
    procedure setTipo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idtarifa')]
    property idtarifa: String read getIdTarifa write setIdTarifa;

    [NasajonSerializeAttribute('concessionaria')]
    property concessionaria: String read getConcessionaria write setConcessionaria;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    /// <summary>
/// Ônibus(1), Metrô(2), Trem(3), Barca(4) ou Van(5)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    

end;

type TTarifaConcessionariaValeTransporteAlterarValor = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Tarifa: String;
    var m_Concessionaria: String;
    var m_Valor: Currency;
    

    function getTarifa(): String;
    function getConcessionaria(): String;
    function getValor(): Currency;
    

    procedure setTarifa(const a_Value: String);
    procedure setConcessionaria(const a_Value: String);
    procedure setValor(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tarifa')]
    property tarifa: String read getTarifa write setTarifa;

    [NasajonSerializeAttribute('concessionaria')]
    property concessionaria: String read getConcessionaria write setConcessionaria;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    

end;

type TTarifaConcessionariaValeTransporteAlterarCodigoExterno = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Tarifa: String;
    var m_Concessionaria: String;
    var m_CodigoExterno: String;
    

    function getTarifa(): String;
    function getConcessionaria(): String;
    function getCodigoExterno(): String;
    

    procedure setTarifa(const a_Value: String);
    procedure setConcessionaria(const a_Value: String);
    procedure setCodigoExterno(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tarifa')]
    property tarifa: String read getTarifa write setTarifa;

    [NasajonSerializeAttribute('concessionaria')]
    property concessionaria: String read getConcessionaria write setConcessionaria;

    /// <summary>
/// Informar o código cadastrado em um sistema externo
    /// </summary>
    [NasajonSerializeAttribute('codigoexterno')]
    property codigoexterno: String read getCodigoExterno write setCodigoExterno;

    

end;

type TTarifaConcessionariaValeTransporteExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Tarifa: String;
    var m_Concessionaria: String;
    

    function getTarifa(): String;
    function getConcessionaria(): String;
    

    procedure setTarifa(const a_Value: String);
    procedure setConcessionaria(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('tarifa')]
    property tarifa: String read getTarifa write setTarifa;

    [NasajonSerializeAttribute('concessionaria')]
    property concessionaria: String read getConcessionaria write setConcessionaria;

    

end;

	
implementation

  uses
      api.send;  

function TTarifaConcessionariaValeTransporteNovo.getIdTarifa: String;
begin
  Result := Self.m_IdTarifa;
end;

procedure TTarifaConcessionariaValeTransporteNovo.setIdTarifa(const a_Value: String);
begin
  Self.m_IdTarifa := a_Value;
end;

function TTarifaConcessionariaValeTransporteNovo.getConcessionaria: String;
begin
  Result := Self.m_Concessionaria;
end;

procedure TTarifaConcessionariaValeTransporteNovo.setConcessionaria(const a_Value: String);
begin
  Self.m_Concessionaria := a_Value;
end;

function TTarifaConcessionariaValeTransporteNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TTarifaConcessionariaValeTransporteNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TTarifaConcessionariaValeTransporteNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TTarifaConcessionariaValeTransporteNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TTarifaConcessionariaValeTransporteNovo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TTarifaConcessionariaValeTransporteNovo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TTarifaConcessionariaValeTransporteNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TTarifaConcessionariaValeTransporteNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

destructor TTarifaConcessionariaValeTransporteNovo.Destroy;
begin

end;

function TTarifaConcessionariaValeTransporteNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTarifaConcessionariaValeTransporteNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTarifaConcessionariaValeTransporteNovo.getNameAPI(): String;
begin
  Result := 'TarifaConcessionariaValeTransporteNovo';
end;

function TTarifaConcessionariaValeTransporteNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTarifaConcessionariaValeTransporteNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTarifaConcessionariaValeTransporteAlterarValor.getTarifa: String;
begin
  Result := Self.m_Tarifa;
end;

procedure TTarifaConcessionariaValeTransporteAlterarValor.setTarifa(const a_Value: String);
begin
  Self.m_Tarifa := a_Value;
end;

function TTarifaConcessionariaValeTransporteAlterarValor.getConcessionaria: String;
begin
  Result := Self.m_Concessionaria;
end;

procedure TTarifaConcessionariaValeTransporteAlterarValor.setConcessionaria(const a_Value: String);
begin
  Self.m_Concessionaria := a_Value;
end;

function TTarifaConcessionariaValeTransporteAlterarValor.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TTarifaConcessionariaValeTransporteAlterarValor.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

destructor TTarifaConcessionariaValeTransporteAlterarValor.Destroy;
begin

end;

function TTarifaConcessionariaValeTransporteAlterarValor.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTarifaConcessionariaValeTransporteAlterarValor.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTarifaConcessionariaValeTransporteAlterarValor.getNameAPI(): String;
begin
  Result := 'TarifaConcessionariaValeTransporteAlterarValor';
end;

function TTarifaConcessionariaValeTransporteAlterarValor.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTarifaConcessionariaValeTransporteAlterarValor.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTarifaConcessionariaValeTransporteAlterarCodigoExterno.getTarifa: String;
begin
  Result := Self.m_Tarifa;
end;

procedure TTarifaConcessionariaValeTransporteAlterarCodigoExterno.setTarifa(const a_Value: String);
begin
  Self.m_Tarifa := a_Value;
end;

function TTarifaConcessionariaValeTransporteAlterarCodigoExterno.getConcessionaria: String;
begin
  Result := Self.m_Concessionaria;
end;

procedure TTarifaConcessionariaValeTransporteAlterarCodigoExterno.setConcessionaria(const a_Value: String);
begin
  Self.m_Concessionaria := a_Value;
end;

function TTarifaConcessionariaValeTransporteAlterarCodigoExterno.getCodigoExterno: String;
begin
  Result := Self.m_CodigoExterno;
end;

procedure TTarifaConcessionariaValeTransporteAlterarCodigoExterno.setCodigoExterno(const a_Value: String);
begin
  Self.m_CodigoExterno := a_Value;
end;

destructor TTarifaConcessionariaValeTransporteAlterarCodigoExterno.Destroy;
begin

end;

function TTarifaConcessionariaValeTransporteAlterarCodigoExterno.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTarifaConcessionariaValeTransporteAlterarCodigoExterno.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTarifaConcessionariaValeTransporteAlterarCodigoExterno.getNameAPI(): String;
begin
  Result := 'TarifaConcessionariaValeTransporteAlterarCodigoExterno';
end;

function TTarifaConcessionariaValeTransporteAlterarCodigoExterno.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTarifaConcessionariaValeTransporteAlterarCodigoExterno.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTarifaConcessionariaValeTransporteExcluir.getTarifa: String;
begin
  Result := Self.m_Tarifa;
end;

procedure TTarifaConcessionariaValeTransporteExcluir.setTarifa(const a_Value: String);
begin
  Self.m_Tarifa := a_Value;
end;

function TTarifaConcessionariaValeTransporteExcluir.getConcessionaria: String;
begin
  Result := Self.m_Concessionaria;
end;

procedure TTarifaConcessionariaValeTransporteExcluir.setConcessionaria(const a_Value: String);
begin
  Self.m_Concessionaria := a_Value;
end;

destructor TTarifaConcessionariaValeTransporteExcluir.Destroy;
begin

end;

function TTarifaConcessionariaValeTransporteExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTarifaConcessionariaValeTransporteExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTarifaConcessionariaValeTransporteExcluir.getNameAPI(): String;
begin
  Result := 'TarifaConcessionariaValeTransporteExcluir';
end;

function TTarifaConcessionariaValeTransporteExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTarifaConcessionariaValeTransporteExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
