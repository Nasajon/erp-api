unit api.model.financas.FormaPagamentoRenegociacaoTitulos;

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

type TFormaPagamentoRenegociacaoTitulosNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_id_renegociacaotitulos: String;
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
    var m_issretido: Currency;
    var m_inssretido: Currency;
    var m_id_documentorateado: String;
    

    function getId(): String;
    function getid_renegociacaotitulos(): String;
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
    function getissretido(): Currency;
    function getinssretido(): Currency;
    function getid_documentorateado(): String;
    

    procedure setId(const a_Value: String);
    procedure setid_renegociacaotitulos(const a_Value: String);
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
    procedure setissretido(const a_Value: Currency);
    procedure setinssretido(const a_Value: Currency);
    procedure setid_documentorateado(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('id_renegociacaotitulos')]
    property id_renegociacaotitulos: String read getid_renegociacaotitulos write setid_renegociacaotitulos;

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

    [NasajonSerializeAttribute('issretido')]
    property issretido: Currency read getissretido write setissretido;

    [NasajonSerializeAttribute('inssretido')]
    property inssretido: Currency read getinssretido write setinssretido;

    [NasajonSerializeAttribute('id_documentorateado')]
    property id_documentorateado: String read getid_documentorateado write setid_documentorateado;

    

end;

	
implementation

  uses
      api.send;  

function TFormaPagamentoRenegociacaoTitulosNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getid_renegociacaotitulos: String;
begin
  Result := Self.m_id_renegociacaotitulos;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setid_renegociacaotitulos(const a_Value: String);
begin
  Self.m_id_renegociacaotitulos := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getId_formapagamento: String;
begin
  Result := Self.m_Id_formapagamento;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setId_formapagamento(const a_Value: String);
begin
  Self.m_Id_formapagamento := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getid_conta: String;
begin
  Result := Self.m_id_conta;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setid_conta(const a_Value: String);
begin
  Self.m_id_conta := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getId_rateiopadrao: String;
begin
  Result := Self.m_Id_rateiopadrao;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setId_rateiopadrao(const a_Value: String);
begin
  Self.m_Id_rateiopadrao := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getid_meioeletronico: String;
begin
  Result := Self.m_id_meioeletronico;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setid_meioeletronico(const a_Value: String);
begin
  Self.m_id_meioeletronico := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getId_layoutcobranca: String;
begin
  Result := Self.m_Id_layoutcobranca;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setId_layoutcobranca(const a_Value: String);
begin
  Self.m_Id_layoutcobranca := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getid_operadora: String;
begin
  Result := Self.m_id_operadora;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setid_operadora(const a_Value: String);
begin
  Self.m_id_operadora := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getId_bandeira: String;
begin
  Result := Self.m_Id_bandeira;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setId_bandeira(const a_Value: String);
begin
  Self.m_Id_bandeira := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getid_parcelamento: String;
begin
  Result := Self.m_id_parcelamento;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setid_parcelamento(const a_Value: String);
begin
  Self.m_id_parcelamento := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getNumeroParcelas: Integer;
begin
  Result := Self.m_NumeroParcelas;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setNumeroParcelas(const a_Value: Integer);
begin
  Self.m_NumeroParcelas := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getDataFatura: TDate;
begin
  Result := Self.m_DataFatura;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setDataFatura(const a_Value: TDate);
begin
  Self.m_DataFatura := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getTipoOperacao: Integer;
begin
  Result := Self.m_TipoOperacao;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setTipoOperacao(const a_Value: Integer);
begin
  Self.m_TipoOperacao := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getAutorizacaoCartao: String;
begin
  Result := Self.m_AutorizacaoCartao;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setAutorizacaoCartao(const a_Value: String);
begin
  Self.m_AutorizacaoCartao := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getdataautorizacaocartao: TDate;
begin
  Result := Self.m_dataautorizacaocartao;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setdataautorizacaocartao(const a_Value: TDate);
begin
  Self.m_dataautorizacaocartao := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getdocumentocartao: String;
begin
  Result := Self.m_documentocartao;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setdocumentocartao(const a_Value: String);
begin
  Self.m_documentocartao := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getirretido: Currency;
begin
  Result := Self.m_irretido;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setirretido(const a_Value: Currency);
begin
  Self.m_irretido := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getpisretido: Currency;
begin
  Result := Self.m_pisretido;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setpisretido(const a_Value: Currency);
begin
  Self.m_pisretido := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getcofinsretido: Currency;
begin
  Result := Self.m_cofinsretido;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setcofinsretido(const a_Value: Currency);
begin
  Self.m_cofinsretido := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getcsllretido: Currency;
begin
  Result := Self.m_csllretido;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setcsllretido(const a_Value: Currency);
begin
  Self.m_csllretido := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getissretido: Currency;
begin
  Result := Self.m_issretido;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setissretido(const a_Value: Currency);
begin
  Self.m_issretido := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getinssretido: Currency;
begin
  Result := Self.m_inssretido;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setinssretido(const a_Value: Currency);
begin
  Self.m_inssretido := a_Value;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getid_documentorateado: String;
begin
  Result := Self.m_id_documentorateado;
end;

procedure TFormaPagamentoRenegociacaoTitulosNovo.setid_documentorateado(const a_Value: String);
begin
  Self.m_id_documentorateado := a_Value;
end;

destructor TFormaPagamentoRenegociacaoTitulosNovo.Destroy;
begin

end;

function TFormaPagamentoRenegociacaoTitulosNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getNameAPI(): String;
begin
  Result := 'FormaPagamentoRenegociacaoTitulosNovo';
end;

function TFormaPagamentoRenegociacaoTitulosNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFormaPagamentoRenegociacaoTitulosNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
