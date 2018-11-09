unit api.model.servicos.importacao_pagamento;

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
	
  , api.model.timportacao_parcela
  , System.Generics.Collections
	

	;

type Timportacao_pagamento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_FormaPagamento: String;
    var m_Banco: String;
    var m_AgenciaNumero: String;
    var m_AgenciaDigito: String;
    var m_ContaNumero: String;
    var m_ContaDigito: String;
    var m_LayoutCobranca: String;
    var m_Parcelas: TObjectList<>;
    

    function getFormaPagamento(): String;
    function getBanco(): String;
    function getAgenciaNumero(): String;
    function getAgenciaDigito(): String;
    function getContaNumero(): String;
    function getContaDigito(): String;
    function getLayoutCobranca(): String;
    function getParcelas(): TObjectList<>;
    

    procedure setFormaPagamento(const a_Value: String);
    procedure setBanco(const a_Value: String);
    procedure setAgenciaNumero(const a_Value: String);
    procedure setAgenciaDigito(const a_Value: String);
    procedure setContaNumero(const a_Value: String);
    procedure setContaDigito(const a_Value: String);
    procedure setLayoutCobranca(const a_Value: String);
    procedure setParcelas(const a_Value: TObjectList<>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('formapagamento')]
    property formapagamento: String read getFormaPagamento write setFormaPagamento;

    [NasajonSerializeAttribute('banco')]
    property banco: String read getBanco write setBanco;

    [NasajonSerializeAttribute('agencianumero')]
    property agencianumero: String read getAgenciaNumero write setAgenciaNumero;

    [NasajonSerializeAttribute('agenciadigito')]
    property agenciadigito: String read getAgenciaDigito write setAgenciaDigito;

    [NasajonSerializeAttribute('contanumero')]
    property contanumero: String read getContaNumero write setContaNumero;

    [NasajonSerializeAttribute('contadigito')]
    property contadigito: String read getContaDigito write setContaDigito;

    [NasajonSerializeAttribute('layoutcobranca')]
    property layoutcobranca: String read getLayoutCobranca write setLayoutCobranca;

    [NasajonSerializeAttribute('parcelas')]
    property parcelas: TObjectList<> read getParcelas write setParcelas;

    

end;

	
implementation

  uses
      api.send;  

function Timportacao_pagamento.getFormaPagamento: String;
begin
  Result := Self.m_FormaPagamento;
end;

procedure Timportacao_pagamento.setFormaPagamento(const a_Value: String);
begin
  Self.m_FormaPagamento := a_Value;
end;

function Timportacao_pagamento.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure Timportacao_pagamento.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

function Timportacao_pagamento.getAgenciaNumero: String;
begin
  Result := Self.m_AgenciaNumero;
end;

procedure Timportacao_pagamento.setAgenciaNumero(const a_Value: String);
begin
  Self.m_AgenciaNumero := a_Value;
end;

function Timportacao_pagamento.getAgenciaDigito: String;
begin
  Result := Self.m_AgenciaDigito;
end;

procedure Timportacao_pagamento.setAgenciaDigito(const a_Value: String);
begin
  Self.m_AgenciaDigito := a_Value;
end;

function Timportacao_pagamento.getContaNumero: String;
begin
  Result := Self.m_ContaNumero;
end;

procedure Timportacao_pagamento.setContaNumero(const a_Value: String);
begin
  Self.m_ContaNumero := a_Value;
end;

function Timportacao_pagamento.getContaDigito: String;
begin
  Result := Self.m_ContaDigito;
end;

procedure Timportacao_pagamento.setContaDigito(const a_Value: String);
begin
  Self.m_ContaDigito := a_Value;
end;

function Timportacao_pagamento.getLayoutCobranca: String;
begin
  Result := Self.m_LayoutCobranca;
end;

procedure Timportacao_pagamento.setLayoutCobranca(const a_Value: String);
begin
  Self.m_LayoutCobranca := a_Value;
end;

function Timportacao_pagamento.getParcelas: TObjectList<>;
begin
  if not Assigned(Self.m_Parcelas)
    then Self.m_Parcelas := TObjectList<>.Create();
  Result := Self.m_Parcelas;
end;

procedure Timportacao_pagamento.setParcelas(const a_Value: TObjectList<>);
begin
  Self.m_Parcelas := a_Value;
end;

destructor Timportacao_pagamento.Destroy;
begin
  Self.Parcelas.Free();
end;

function Timportacao_pagamento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Timportacao_pagamento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Timportacao_pagamento.getNameAPI(): String;
begin
  Result := 'importacao_pagamento';
end;

function Timportacao_pagamento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Timportacao_pagamento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
