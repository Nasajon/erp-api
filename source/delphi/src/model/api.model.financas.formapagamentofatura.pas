unit api.model.financas.FormaPagamentoFatura;

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

type TFormaPagamentoFaturaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_id_fatura: String;
    var m_Id_formapagamento: String;
    var m_id_conta: String;
    var m_Id_rateiopadrao: String;
    var m_id_meioeletronico: String;
    var m_Id_layoutcobranca: String;
    var m_id_operadora: String;
    var m_Id_bandeira: String;
    var m_id_parcelamento: String;
    var m_Valor: Currency;
    var m_NumeroParcelas: Integer;
    var m_DataFatura: TDate;
    var m_TipoOperacao: Integer;
    var m_AutorizacaoCartao: String;
    var m_dataautorizacaocartao: TDate;
    var m_documentocartao: String;
    var m_irretido: Currency;
    var m_pisretido: Currency;
    var m_cofinsretido: Currency;
    var m_csllretido: Currency;
    

    function getId(): String;
    function getid_fatura(): String;
    function getId_formapagamento(): String;
    function getid_conta(): String;
    function getId_rateiopadrao(): String;
    function getid_meioeletronico(): String;
    function getId_layoutcobranca(): String;
    function getid_operadora(): String;
    function getId_bandeira(): String;
    function getid_parcelamento(): String;
    function getValor(): Currency;
    function getNumeroParcelas(): Integer;
    function getDataFatura(): TDate;
    function getTipoOperacao(): Integer;
    function getAutorizacaoCartao(): String;
    function getdataautorizacaocartao(): TDate;
    function getdocumentocartao(): String;
    function getirretido(): Currency;
    function getpisretido(): Currency;
    function getcofinsretido(): Currency;
    function getcsllretido(): Currency;
    

    procedure setId(const a_Value: String);
    procedure setid_fatura(const a_Value: String);
    procedure setId_formapagamento(const a_Value: String);
    procedure setid_conta(const a_Value: String);
    procedure setId_rateiopadrao(const a_Value: String);
    procedure setid_meioeletronico(const a_Value: String);
    procedure setId_layoutcobranca(const a_Value: String);
    procedure setid_operadora(const a_Value: String);
    procedure setId_bandeira(const a_Value: String);
    procedure setid_parcelamento(const a_Value: String);
    procedure setValor(const a_Value: Currency);
    procedure setNumeroParcelas(const a_Value: Integer);
    procedure setDataFatura(const a_Value: TDate);
    procedure setTipoOperacao(const a_Value: Integer);
    procedure setAutorizacaoCartao(const a_Value: String);
    procedure setdataautorizacaocartao(const a_Value: TDate);
    procedure setdocumentocartao(const a_Value: String);
    procedure setirretido(const a_Value: Currency);
    procedure setpisretido(const a_Value: Currency);
    procedure setcofinsretido(const a_Value: Currency);
    procedure setcsllretido(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('id_fatura')]
    property id_fatura: String read getid_fatura write setid_fatura;

    [NasajonSerializeAttribute('id_formapagamento')]
    property id_formapagamento: String read getId_formapagamento write setId_formapagamento;

    [NasajonSerializeAttribute('id_conta')]
    property id_conta: String read getid_conta write setid_conta;

    [NasajonSerializeAttribute('id_rateiopadrao')]
    property id_rateiopadrao: String read getId_rateiopadrao write setId_rateiopadrao;

    [NasajonSerializeAttribute('id_meioeletronico')]
    property id_meioeletronico: String read getid_meioeletronico write setid_meioeletronico;

    [NasajonSerializeAttribute('id_layoutcobranca')]
    property id_layoutcobranca: String read getId_layoutcobranca write setId_layoutcobranca;

    [NasajonSerializeAttribute('id_operadora')]
    property id_operadora: String read getid_operadora write setid_operadora;

    [NasajonSerializeAttribute('id_bandeira')]
    property id_bandeira: String read getId_bandeira write setId_bandeira;

    [NasajonSerializeAttribute('id_parcelamento')]
    property id_parcelamento: String read getid_parcelamento write setid_parcelamento;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    [NasajonSerializeAttribute('numeroparcelas')]
    property numeroparcelas: Integer read getNumeroParcelas write setNumeroParcelas;

    [NasajonSerializeAttribute('datafatura')]
    property datafatura: TDate read getDataFatura write setDataFatura;

    [NasajonSerializeAttribute('tipooperacao')]
    property tipooperacao: Integer read getTipoOperacao write setTipoOperacao;

    [NasajonSerializeAttribute('autorizacaocartao')]
    property autorizacaocartao: String read getAutorizacaoCartao write setAutorizacaoCartao;

    [NasajonSerializeAttribute('dataautorizacaocartao')]
    property dataautorizacaocartao: TDate read getdataautorizacaocartao write setdataautorizacaocartao;

    [NasajonSerializeAttribute('documentocartao')]
    property documentocartao: String read getdocumentocartao write setdocumentocartao;

    [NasajonSerializeAttribute('irretido')]
    property irretido: Currency read getirretido write setirretido;

    [NasajonSerializeAttribute('pisretido')]
    property pisretido: Currency read getpisretido write setpisretido;

    [NasajonSerializeAttribute('cofinsretido')]
    property cofinsretido: Currency read getcofinsretido write setcofinsretido;

    [NasajonSerializeAttribute('csllretido')]
    property csllretido: Currency read getcsllretido write setcsllretido;

    

end;

	
implementation

  uses
      api.send;  

function TFormaPagamentoFaturaNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TFormaPagamentoFaturaNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TFormaPagamentoFaturaNovo.getid_fatura: String;
begin
  Result := Self.m_id_fatura;
end;

procedure TFormaPagamentoFaturaNovo.setid_fatura(const a_Value: String);
begin
  Self.m_id_fatura := a_Value;
end;

function TFormaPagamentoFaturaNovo.getId_formapagamento: String;
begin
  Result := Self.m_Id_formapagamento;
end;

procedure TFormaPagamentoFaturaNovo.setId_formapagamento(const a_Value: String);
begin
  Self.m_Id_formapagamento := a_Value;
end;

function TFormaPagamentoFaturaNovo.getid_conta: String;
begin
  Result := Self.m_id_conta;
end;

procedure TFormaPagamentoFaturaNovo.setid_conta(const a_Value: String);
begin
  Self.m_id_conta := a_Value;
end;

function TFormaPagamentoFaturaNovo.getId_rateiopadrao: String;
begin
  Result := Self.m_Id_rateiopadrao;
end;

procedure TFormaPagamentoFaturaNovo.setId_rateiopadrao(const a_Value: String);
begin
  Self.m_Id_rateiopadrao := a_Value;
end;

function TFormaPagamentoFaturaNovo.getid_meioeletronico: String;
begin
  Result := Self.m_id_meioeletronico;
end;

procedure TFormaPagamentoFaturaNovo.setid_meioeletronico(const a_Value: String);
begin
  Self.m_id_meioeletronico := a_Value;
end;

function TFormaPagamentoFaturaNovo.getId_layoutcobranca: String;
begin
  Result := Self.m_Id_layoutcobranca;
end;

procedure TFormaPagamentoFaturaNovo.setId_layoutcobranca(const a_Value: String);
begin
  Self.m_Id_layoutcobranca := a_Value;
end;

function TFormaPagamentoFaturaNovo.getid_operadora: String;
begin
  Result := Self.m_id_operadora;
end;

procedure TFormaPagamentoFaturaNovo.setid_operadora(const a_Value: String);
begin
  Self.m_id_operadora := a_Value;
end;

function TFormaPagamentoFaturaNovo.getId_bandeira: String;
begin
  Result := Self.m_Id_bandeira;
end;

procedure TFormaPagamentoFaturaNovo.setId_bandeira(const a_Value: String);
begin
  Self.m_Id_bandeira := a_Value;
end;

function TFormaPagamentoFaturaNovo.getid_parcelamento: String;
begin
  Result := Self.m_id_parcelamento;
end;

procedure TFormaPagamentoFaturaNovo.setid_parcelamento(const a_Value: String);
begin
  Self.m_id_parcelamento := a_Value;
end;

function TFormaPagamentoFaturaNovo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TFormaPagamentoFaturaNovo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TFormaPagamentoFaturaNovo.getNumeroParcelas: Integer;
begin
  Result := Self.m_NumeroParcelas;
end;

procedure TFormaPagamentoFaturaNovo.setNumeroParcelas(const a_Value: Integer);
begin
  Self.m_NumeroParcelas := a_Value;
end;

function TFormaPagamentoFaturaNovo.getDataFatura: TDate;
begin
  Result := Self.m_DataFatura;
end;

procedure TFormaPagamentoFaturaNovo.setDataFatura(const a_Value: TDate);
begin
  Self.m_DataFatura := a_Value;
end;

function TFormaPagamentoFaturaNovo.getTipoOperacao: Integer;
begin
  Result := Self.m_TipoOperacao;
end;

procedure TFormaPagamentoFaturaNovo.setTipoOperacao(const a_Value: Integer);
begin
  Self.m_TipoOperacao := a_Value;
end;

function TFormaPagamentoFaturaNovo.getAutorizacaoCartao: String;
begin
  Result := Self.m_AutorizacaoCartao;
end;

procedure TFormaPagamentoFaturaNovo.setAutorizacaoCartao(const a_Value: String);
begin
  Self.m_AutorizacaoCartao := a_Value;
end;

function TFormaPagamentoFaturaNovo.getdataautorizacaocartao: TDate;
begin
  Result := Self.m_dataautorizacaocartao;
end;

procedure TFormaPagamentoFaturaNovo.setdataautorizacaocartao(const a_Value: TDate);
begin
  Self.m_dataautorizacaocartao := a_Value;
end;

function TFormaPagamentoFaturaNovo.getdocumentocartao: String;
begin
  Result := Self.m_documentocartao;
end;

procedure TFormaPagamentoFaturaNovo.setdocumentocartao(const a_Value: String);
begin
  Self.m_documentocartao := a_Value;
end;

function TFormaPagamentoFaturaNovo.getirretido: Currency;
begin
  Result := Self.m_irretido;
end;

procedure TFormaPagamentoFaturaNovo.setirretido(const a_Value: Currency);
begin
  Self.m_irretido := a_Value;
end;

function TFormaPagamentoFaturaNovo.getpisretido: Currency;
begin
  Result := Self.m_pisretido;
end;

procedure TFormaPagamentoFaturaNovo.setpisretido(const a_Value: Currency);
begin
  Self.m_pisretido := a_Value;
end;

function TFormaPagamentoFaturaNovo.getcofinsretido: Currency;
begin
  Result := Self.m_cofinsretido;
end;

procedure TFormaPagamentoFaturaNovo.setcofinsretido(const a_Value: Currency);
begin
  Self.m_cofinsretido := a_Value;
end;

function TFormaPagamentoFaturaNovo.getcsllretido: Currency;
begin
  Result := Self.m_csllretido;
end;

procedure TFormaPagamentoFaturaNovo.setcsllretido(const a_Value: Currency);
begin
  Self.m_csllretido := a_Value;
end;

destructor TFormaPagamentoFaturaNovo.Destroy;
begin

end;

function TFormaPagamentoFaturaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFormaPagamentoFaturaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFormaPagamentoFaturaNovo.getNameAPI(): String;
begin
  Result := 'FormaPagamentoFaturaNovo';
end;

function TFormaPagamentoFaturaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFormaPagamentoFaturaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
