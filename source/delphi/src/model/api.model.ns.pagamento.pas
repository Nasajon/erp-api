unit api.model.ns.Pagamento;

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
	
  , api.model.ns.documentofiscalns
  , api.model.financas.rateiopadrao
  , api.model.financas.layoutcobranca
  , api.model.ns.parcela
  , System.Generics.Collections
	

	;

type TPagamento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Pagamento: String;
    var m_FormaPagamento: String;
    var m_DocumentoFiscal: TDocumentoFiscalns;
    var m_Conta: String;
    var m_RateioPadrao: TRateioPadrao;
    var m_MeioEletronicoCartao: String;
    var m_LayoutCobranca: TLayoutCobranca;
    var m_OperadoraCartao: String;
    var m_BandeiraCartao: String;
    var m_Parcelamento: String;
    var m_Valor: Currency;
    var m_NomeFormaPagamento: String;
    var m_NomeMeioEletronicoCartao: String;
    var m_NomeBandeiraCartao: String;
    var m_NomeOperadoraCartao: String;
    var m_NomeConta: String;
    var m_NumeroParcelas: Integer;
    var m_DataFatura: TDate;
    var m_TipoOperacao: Integer;
    var m_AutorizacaoCartao: String;
    var m_DataAutorizacaoCartao: TDate;
    var m_DocumentoCartao: String;
    var m_IrRetido: Currency;
    var m_PisRetido: Currency;
    var m_CofinsRetido: Currency;
    var m_CsllRetido: Currency;
    var m_Tipo: Integer;
    var m_Parcelas: TObjectList<TParcela>;
    

    function getPagamento(): String;
    function getFormaPagamento(): String;
    function getDocumentoFiscal(): TDocumentoFiscalns;
    function getConta(): String;
    function getRateioPadrao(): TRateioPadrao;
    function getMeioEletronicoCartao(): String;
    function getLayoutCobranca(): TLayoutCobranca;
    function getOperadoraCartao(): String;
    function getBandeiraCartao(): String;
    function getParcelamento(): String;
    function getValor(): Currency;
    function getNomeFormaPagamento(): String;
    function getNomeMeioEletronicoCartao(): String;
    function getNomeBandeiraCartao(): String;
    function getNomeOperadoraCartao(): String;
    function getNomeConta(): String;
    function getNumeroParcelas(): Integer;
    function getDataFatura(): TDate;
    function getTipoOperacao(): Integer;
    function getAutorizacaoCartao(): String;
    function getDataAutorizacaoCartao(): TDate;
    function getDocumentoCartao(): String;
    function getIrRetido(): Currency;
    function getPisRetido(): Currency;
    function getCofinsRetido(): Currency;
    function getCsllRetido(): Currency;
    function getTipo(): Integer;
    function getParcelas(): TObjectList<TParcela>;
    

    procedure setPagamento(const a_Value: String);
    procedure setFormaPagamento(const a_Value: String);
    procedure setDocumentoFiscal(const a_Value: TDocumentoFiscalns);
    procedure setConta(const a_Value: String);
    procedure setRateioPadrao(const a_Value: TRateioPadrao);
    procedure setMeioEletronicoCartao(const a_Value: String);
    procedure setLayoutCobranca(const a_Value: TLayoutCobranca);
    procedure setOperadoraCartao(const a_Value: String);
    procedure setBandeiraCartao(const a_Value: String);
    procedure setParcelamento(const a_Value: String);
    procedure setValor(const a_Value: Currency);
    procedure setNomeFormaPagamento(const a_Value: String);
    procedure setNomeMeioEletronicoCartao(const a_Value: String);
    procedure setNomeBandeiraCartao(const a_Value: String);
    procedure setNomeOperadoraCartao(const a_Value: String);
    procedure setNomeConta(const a_Value: String);
    procedure setNumeroParcelas(const a_Value: Integer);
    procedure setDataFatura(const a_Value: TDate);
    procedure setTipoOperacao(const a_Value: Integer);
    procedure setAutorizacaoCartao(const a_Value: String);
    procedure setDataAutorizacaoCartao(const a_Value: TDate);
    procedure setDocumentoCartao(const a_Value: String);
    procedure setIrRetido(const a_Value: Currency);
    procedure setPisRetido(const a_Value: Currency);
    procedure setCofinsRetido(const a_Value: Currency);
    procedure setCsllRetido(const a_Value: Currency);
    procedure setTipo(const a_Value: Integer);
    procedure setParcelas(const a_Value: TObjectList<TParcela>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('pagamento')]
    property pagamento: String read getPagamento write setPagamento;

    [NasajonSerializeAttribute('formapagamento')]
    property formapagamento: String read getFormaPagamento write setFormaPagamento;

    [NasajonSerializeAttribute('documentofiscal')]
    property documentofiscal: TDocumentoFiscalns read getDocumentoFiscal write setDocumentoFiscal;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    [NasajonSerializeAttribute('rateiopadrao')]
    property rateiopadrao: TRateioPadrao read getRateioPadrao write setRateioPadrao;

    [NasajonSerializeAttribute('meioeletronicocartao')]
    property meioeletronicocartao: String read getMeioEletronicoCartao write setMeioEletronicoCartao;

    [NasajonSerializeAttribute('layoutcobranca')]
    property layoutcobranca: TLayoutCobranca read getLayoutCobranca write setLayoutCobranca;

    [NasajonSerializeAttribute('operadoracartao')]
    property operadoracartao: String read getOperadoraCartao write setOperadoraCartao;

    [NasajonSerializeAttribute('bandeiracartao')]
    property bandeiracartao: String read getBandeiraCartao write setBandeiraCartao;

    [NasajonSerializeAttribute('parcelamento')]
    property parcelamento: String read getParcelamento write setParcelamento;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    [NasajonSerializeAttribute('nomeformapagamento')]
    property nomeformapagamento: String read getNomeFormaPagamento write setNomeFormaPagamento;

    [NasajonSerializeAttribute('nomemeioeletronicocartao')]
    property nomemeioeletronicocartao: String read getNomeMeioEletronicoCartao write setNomeMeioEletronicoCartao;

    [NasajonSerializeAttribute('nomebandeiracartao')]
    property nomebandeiracartao: String read getNomeBandeiraCartao write setNomeBandeiraCartao;

    [NasajonSerializeAttribute('nomeoperadoracartao')]
    property nomeoperadoracartao: String read getNomeOperadoraCartao write setNomeOperadoraCartao;

    [NasajonSerializeAttribute('nomeconta')]
    property nomeconta: String read getNomeConta write setNomeConta;

    [NasajonSerializeAttribute('numeroparcelas')]
    property numeroparcelas: Integer read getNumeroParcelas write setNumeroParcelas;

    [NasajonSerializeAttribute('datafatura')]
    property datafatura: TDate read getDataFatura write setDataFatura;

    [NasajonSerializeAttribute('tipooperacao')]
    property tipooperacao: Integer read getTipoOperacao write setTipoOperacao;

    [NasajonSerializeAttribute('autorizacaocartao')]
    property autorizacaocartao: String read getAutorizacaoCartao write setAutorizacaoCartao;

    [NasajonSerializeAttribute('dataautorizacaocartao')]
    property dataautorizacaocartao: TDate read getDataAutorizacaoCartao write setDataAutorizacaoCartao;

    [NasajonSerializeAttribute('documentocartao')]
    property documentocartao: String read getDocumentoCartao write setDocumentoCartao;

    [NasajonSerializeAttribute('irretido')]
    property irretido: Currency read getIrRetido write setIrRetido;

    [NasajonSerializeAttribute('pisretido')]
    property pisretido: Currency read getPisRetido write setPisRetido;

    [NasajonSerializeAttribute('cofinsretido')]
    property cofinsretido: Currency read getCofinsRetido write setCofinsRetido;

    [NasajonSerializeAttribute('csllretido')]
    property csllretido: Currency read getCsllRetido write setCsllRetido;

    /// <summary>
/// Informe: 
/// 	        	            0 - Pagamento derivado de Documento Fiscal;
/// 	        	            1 - Pagamento derivado de Fatura
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('parcelas')]
    property parcelas: TObjectList<TParcela> read getParcelas write setParcelas;

    

end;

	
implementation

  uses
      api.send;  

function TPagamento.getPagamento: String;
begin
  Result := Self.m_Pagamento;
end;

procedure TPagamento.setPagamento(const a_Value: String);
begin
  Self.m_Pagamento := a_Value;
end;

function TPagamento.getFormaPagamento: String;
begin
  Result := Self.m_FormaPagamento;
end;

procedure TPagamento.setFormaPagamento(const a_Value: String);
begin
  Self.m_FormaPagamento := a_Value;
end;

function TPagamento.getDocumentoFiscal: TDocumentoFiscalns;
begin
  if not Assigned(Self.m_DocumentoFiscal)
    then Self.m_DocumentoFiscal := TDocumentoFiscalns.Create();
  Result := Self.m_DocumentoFiscal;
end;

procedure TPagamento.setDocumentoFiscal(const a_Value: TDocumentoFiscalns);
begin
  Self.m_DocumentoFiscal := a_Value;
end;

function TPagamento.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TPagamento.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TPagamento.getRateioPadrao: TRateioPadrao;
begin
  if not Assigned(Self.m_RateioPadrao)
    then Self.m_RateioPadrao := TRateioPadrao.Create();
  Result := Self.m_RateioPadrao;
end;

procedure TPagamento.setRateioPadrao(const a_Value: TRateioPadrao);
begin
  Self.m_RateioPadrao := a_Value;
end;

function TPagamento.getMeioEletronicoCartao: String;
begin
  Result := Self.m_MeioEletronicoCartao;
end;

procedure TPagamento.setMeioEletronicoCartao(const a_Value: String);
begin
  Self.m_MeioEletronicoCartao := a_Value;
end;

function TPagamento.getLayoutCobranca: TLayoutCobranca;
begin
  if not Assigned(Self.m_LayoutCobranca)
    then Self.m_LayoutCobranca := TLayoutCobranca.Create();
  Result := Self.m_LayoutCobranca;
end;

procedure TPagamento.setLayoutCobranca(const a_Value: TLayoutCobranca);
begin
  Self.m_LayoutCobranca := a_Value;
end;

function TPagamento.getOperadoraCartao: String;
begin
  Result := Self.m_OperadoraCartao;
end;

procedure TPagamento.setOperadoraCartao(const a_Value: String);
begin
  Self.m_OperadoraCartao := a_Value;
end;

function TPagamento.getBandeiraCartao: String;
begin
  Result := Self.m_BandeiraCartao;
end;

procedure TPagamento.setBandeiraCartao(const a_Value: String);
begin
  Self.m_BandeiraCartao := a_Value;
end;

function TPagamento.getParcelamento: String;
begin
  Result := Self.m_Parcelamento;
end;

procedure TPagamento.setParcelamento(const a_Value: String);
begin
  Self.m_Parcelamento := a_Value;
end;

function TPagamento.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TPagamento.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TPagamento.getNomeFormaPagamento: String;
begin
  Result := Self.m_NomeFormaPagamento;
end;

procedure TPagamento.setNomeFormaPagamento(const a_Value: String);
begin
  Self.m_NomeFormaPagamento := a_Value;
end;

function TPagamento.getNomeMeioEletronicoCartao: String;
begin
  Result := Self.m_NomeMeioEletronicoCartao;
end;

procedure TPagamento.setNomeMeioEletronicoCartao(const a_Value: String);
begin
  Self.m_NomeMeioEletronicoCartao := a_Value;
end;

function TPagamento.getNomeBandeiraCartao: String;
begin
  Result := Self.m_NomeBandeiraCartao;
end;

procedure TPagamento.setNomeBandeiraCartao(const a_Value: String);
begin
  Self.m_NomeBandeiraCartao := a_Value;
end;

function TPagamento.getNomeOperadoraCartao: String;
begin
  Result := Self.m_NomeOperadoraCartao;
end;

procedure TPagamento.setNomeOperadoraCartao(const a_Value: String);
begin
  Self.m_NomeOperadoraCartao := a_Value;
end;

function TPagamento.getNomeConta: String;
begin
  Result := Self.m_NomeConta;
end;

procedure TPagamento.setNomeConta(const a_Value: String);
begin
  Self.m_NomeConta := a_Value;
end;

function TPagamento.getNumeroParcelas: Integer;
begin
  Result := Self.m_NumeroParcelas;
end;

procedure TPagamento.setNumeroParcelas(const a_Value: Integer);
begin
  Self.m_NumeroParcelas := a_Value;
end;

function TPagamento.getDataFatura: TDate;
begin
  Result := Self.m_DataFatura;
end;

procedure TPagamento.setDataFatura(const a_Value: TDate);
begin
  Self.m_DataFatura := a_Value;
end;

function TPagamento.getTipoOperacao: Integer;
begin
  Result := Self.m_TipoOperacao;
end;

procedure TPagamento.setTipoOperacao(const a_Value: Integer);
begin
  Self.m_TipoOperacao := a_Value;
end;

function TPagamento.getAutorizacaoCartao: String;
begin
  Result := Self.m_AutorizacaoCartao;
end;

procedure TPagamento.setAutorizacaoCartao(const a_Value: String);
begin
  Self.m_AutorizacaoCartao := a_Value;
end;

function TPagamento.getDataAutorizacaoCartao: TDate;
begin
  Result := Self.m_DataAutorizacaoCartao;
end;

procedure TPagamento.setDataAutorizacaoCartao(const a_Value: TDate);
begin
  Self.m_DataAutorizacaoCartao := a_Value;
end;

function TPagamento.getDocumentoCartao: String;
begin
  Result := Self.m_DocumentoCartao;
end;

procedure TPagamento.setDocumentoCartao(const a_Value: String);
begin
  Self.m_DocumentoCartao := a_Value;
end;

function TPagamento.getIrRetido: Currency;
begin
  Result := Self.m_IrRetido;
end;

procedure TPagamento.setIrRetido(const a_Value: Currency);
begin
  Self.m_IrRetido := a_Value;
end;

function TPagamento.getPisRetido: Currency;
begin
  Result := Self.m_PisRetido;
end;

procedure TPagamento.setPisRetido(const a_Value: Currency);
begin
  Self.m_PisRetido := a_Value;
end;

function TPagamento.getCofinsRetido: Currency;
begin
  Result := Self.m_CofinsRetido;
end;

procedure TPagamento.setCofinsRetido(const a_Value: Currency);
begin
  Self.m_CofinsRetido := a_Value;
end;

function TPagamento.getCsllRetido: Currency;
begin
  Result := Self.m_CsllRetido;
end;

procedure TPagamento.setCsllRetido(const a_Value: Currency);
begin
  Self.m_CsllRetido := a_Value;
end;

function TPagamento.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TPagamento.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TPagamento.getParcelas: TObjectList<TParcela>;
begin
  if not Assigned(Self.m_Parcelas)
    then Self.m_Parcelas := TObjectList<TParcela>.Create();
  Result := Self.m_Parcelas;
end;

procedure TPagamento.setParcelas(const a_Value: TObjectList<TParcela>);
begin
  Self.m_Parcelas := a_Value;
end;

destructor TPagamento.Destroy;
begin
  Self.DocumentoFiscal.Free();  Self.RateioPadrao.Free();  Self.LayoutCobranca.Free();  Self.Parcelas.Free();
end;

function TPagamento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPagamento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPagamento.getNameAPI(): String;
begin
  Result := 'Pagamento';
end;

function TPagamento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPagamento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
