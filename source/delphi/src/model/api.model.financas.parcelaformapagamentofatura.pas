unit api.model.financas.ParcelaFormaPagamentoFatura;

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

type TParcelaFormaPagamentoFaturaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_parcela: String;
    var m_Id_pagamento: String;
    var m_Numero: String;
    var m_Valor: Currency;
    var m_Vencimento: TDate;
    var m_Sequencial: Integer;
    

    function getparcela(): String;
    function getId_pagamento(): String;
    function getNumero(): String;
    function getValor(): Currency;
    function getVencimento(): TDate;
    function getSequencial(): Integer;
    

    procedure setparcela(const a_Value: String);
    procedure setId_pagamento(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setValor(const a_Value: Currency);
    procedure setVencimento(const a_Value: TDate);
    procedure setSequencial(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('parcela')]
    property parcela: String read getparcela write setparcela;

    [NasajonSerializeAttribute('id_pagamento')]
    property id_pagamento: String read getId_pagamento write setId_pagamento;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    [NasajonSerializeAttribute('vencimento')]
    property vencimento: TDate read getVencimento write setVencimento;

    [NasajonSerializeAttribute('sequencial')]
    property sequencial: Integer read getSequencial write setSequencial;

    

end;

	
implementation

  uses
      api.send;  

function TParcelaFormaPagamentoFaturaNovo.getparcela: String;
begin
  Result := Self.m_parcela;
end;

procedure TParcelaFormaPagamentoFaturaNovo.setparcela(const a_Value: String);
begin
  Self.m_parcela := a_Value;
end;

function TParcelaFormaPagamentoFaturaNovo.getId_pagamento: String;
begin
  Result := Self.m_Id_pagamento;
end;

procedure TParcelaFormaPagamentoFaturaNovo.setId_pagamento(const a_Value: String);
begin
  Self.m_Id_pagamento := a_Value;
end;

function TParcelaFormaPagamentoFaturaNovo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TParcelaFormaPagamentoFaturaNovo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TParcelaFormaPagamentoFaturaNovo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TParcelaFormaPagamentoFaturaNovo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TParcelaFormaPagamentoFaturaNovo.getVencimento: TDate;
begin
  Result := Self.m_Vencimento;
end;

procedure TParcelaFormaPagamentoFaturaNovo.setVencimento(const a_Value: TDate);
begin
  Self.m_Vencimento := a_Value;
end;

function TParcelaFormaPagamentoFaturaNovo.getSequencial: Integer;
begin
  Result := Self.m_Sequencial;
end;

procedure TParcelaFormaPagamentoFaturaNovo.setSequencial(const a_Value: Integer);
begin
  Self.m_Sequencial := a_Value;
end;

destructor TParcelaFormaPagamentoFaturaNovo.Destroy;
begin

end;

function TParcelaFormaPagamentoFaturaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TParcelaFormaPagamentoFaturaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TParcelaFormaPagamentoFaturaNovo.getNameAPI(): String;
begin
  Result := 'ParcelaFormaPagamentoFaturaNovo';
end;

function TParcelaFormaPagamentoFaturaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TParcelaFormaPagamentoFaturaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
