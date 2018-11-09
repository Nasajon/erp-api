unit api.model.ns.ElementoDeControle;

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

type TElementoDeControleNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_tipo: Integer;
    var m_modulo: Integer;
    

    function getid(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function gettipo(): Integer;
    function getmodulo(): Integer;
    

    procedure setid(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure settipo(const a_Value: Integer);
    procedure setmodulo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    /// <summary>
/// 
/// 					0 - Texto,
///                     1 - Inteiro,
///                     2 - Verdadeiro/Falso,
///                     3 - Decimal,
///                     4 - Data,
///                     5 - Lista,
///                     6 - Memo
/// 				
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    /// <summary>
/// Valores suportados: 
/// 				0 - Produto, 
/// 				1 - Serviço Técnico, 
/// 				2 - Ativo, 
/// 				3 - Documento, 
/// 				4 - Ordem de Serviço, 
/// 				5 - Participante, 
/// 				6 - Proposta, 
/// 				7 - Pedido de Faturamento
    /// </summary>
    [NasajonSerializeAttribute('modulo')]
    property modulo: Integer read getmodulo write setmodulo;

    

end;

type TElementoDeControleExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_identificador: String;
    

    function getidentificador(): String;
    

    procedure setidentificador(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('identificador')]
    property identificador: String read getidentificador write setidentificador;

    

end;

type TElementoDeControleAplicarValorNoRegistro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id_elementoDeControle: String;
    var m_id_registro: String;
    var m_valor: String;
    

    function getid_elementoDeControle(): String;
    function getid_registro(): String;
    function getvalor(): String;
    

    procedure setid_elementoDeControle(const a_Value: String);
    procedure setid_registro(const a_Value: String);
    procedure setvalor(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id_elementodecontrole')]
    property id_elementodecontrole: String read getid_elementoDeControle write setid_elementoDeControle;

    [NasajonSerializeAttribute('id_registro')]
    property id_registro: String read getid_registro write setid_registro;

    [NasajonSerializeAttribute('valor')]
    property valor: String read getvalor write setvalor;

    

end;

	
implementation

  uses
      api.send;  

function TElementoDeControleNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TElementoDeControleNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TElementoDeControleNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TElementoDeControleNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TElementoDeControleNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TElementoDeControleNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TElementoDeControleNovo.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TElementoDeControleNovo.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TElementoDeControleNovo.getmodulo: Integer;
begin
  Result := Self.m_modulo;
end;

procedure TElementoDeControleNovo.setmodulo(const a_Value: Integer);
begin
  Self.m_modulo := a_Value;
end;

destructor TElementoDeControleNovo.Destroy;
begin

end;

function TElementoDeControleNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TElementoDeControleNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TElementoDeControleNovo.getNameAPI(): String;
begin
  Result := 'ElementoDeControleNovo';
end;

function TElementoDeControleNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TElementoDeControleNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TElementoDeControleExcluir.getidentificador: String;
begin
  Result := Self.m_identificador;
end;

procedure TElementoDeControleExcluir.setidentificador(const a_Value: String);
begin
  Self.m_identificador := a_Value;
end;

destructor TElementoDeControleExcluir.Destroy;
begin

end;

function TElementoDeControleExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TElementoDeControleExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TElementoDeControleExcluir.getNameAPI(): String;
begin
  Result := 'ElementoDeControleExcluir';
end;

function TElementoDeControleExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TElementoDeControleExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TElementoDeControleAplicarValorNoRegistro.getid_elementoDeControle: String;
begin
  Result := Self.m_id_elementoDeControle;
end;

procedure TElementoDeControleAplicarValorNoRegistro.setid_elementoDeControle(const a_Value: String);
begin
  Self.m_id_elementoDeControle := a_Value;
end;

function TElementoDeControleAplicarValorNoRegistro.getid_registro: String;
begin
  Result := Self.m_id_registro;
end;

procedure TElementoDeControleAplicarValorNoRegistro.setid_registro(const a_Value: String);
begin
  Self.m_id_registro := a_Value;
end;

function TElementoDeControleAplicarValorNoRegistro.getvalor: String;
begin
  Result := Self.m_valor;
end;

procedure TElementoDeControleAplicarValorNoRegistro.setvalor(const a_Value: String);
begin
  Self.m_valor := a_Value;
end;

destructor TElementoDeControleAplicarValorNoRegistro.Destroy;
begin

end;

function TElementoDeControleAplicarValorNoRegistro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TElementoDeControleAplicarValorNoRegistro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TElementoDeControleAplicarValorNoRegistro.getNameAPI(): String;
begin
  Result := 'ElementoDeControleAplicarValorNoRegistro';
end;

function TElementoDeControleAplicarValorNoRegistro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TElementoDeControleAplicarValorNoRegistro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
