unit api.model.ns.PagamentoSemParcela;

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

type TPagamentoSemParcela = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Pagamento: String;
    var m_Id_formapagamento: String;
    var m_id_DocumentoFiscal: String;
    var m_id_conta: String;
    var m_Id_rateiopadrao: String;
    var m_id_meioeletronico: String;
    var m_Id_layoutcobranca: String;
    var m_id_operadora: String;
    var m_Id_bandeira: String;
    var m_id_parcelamento: String;
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
    var m_id_owner: String;
    

    function getPagamento(): String;
    function getId_formapagamento(): String;
    function getid_DocumentoFiscal(): String;
    function getid_conta(): String;
    function getId_rateiopadrao(): String;
    function getid_meioeletronico(): String;
    function getId_layoutcobranca(): String;
    function getid_operadora(): String;
    function getId_bandeira(): String;
    function getid_parcelamento(): String;
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
    function getid_owner(): String;
    

    procedure setPagamento(const a_Value: String);
    procedure setId_formapagamento(const a_Value: String);
    procedure setid_DocumentoFiscal(const a_Value: String);
    procedure setid_conta(const a_Value: String);
    procedure setId_rateiopadrao(const a_Value: String);
    procedure setid_meioeletronico(const a_Value: String);
    procedure setId_layoutcobranca(const a_Value: String);
    procedure setid_operadora(const a_Value: String);
    procedure setId_bandeira(const a_Value: String);
    procedure setid_parcelamento(const a_Value: String);
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
    procedure setid_owner(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('pagamento')]
    property pagamento: String read getPagamento write setPagamento;

    [NasajonSerializeAttribute('id_formapagamento')]
    property id_formapagamento: String read getId_formapagamento write setId_formapagamento;

    [NasajonSerializeAttribute('id_documentofiscal')]
    property id_documentofiscal: String read getid_DocumentoFiscal write setid_DocumentoFiscal;

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
/// 	                  0 - Pagamento derivado de Documento Fiscal;
/// 	                  1 - Pagamento derivado de Fatura
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('id_owner')]
    property id_owner: String read getid_owner write setid_owner;

    

end;

	
implementation

  uses
      api.send;  

function TPagamentoSemParcela.getPagamento: String;
begin
  Result := Self.m_Pagamento;
end;

procedure TPagamentoSemParcela.setPagamento(const a_Value: String);
begin
  Self.m_Pagamento := a_Value;
end;

function TPagamentoSemParcela.getId_formapagamento: String;
begin
  Result := Self.m_Id_formapagamento;
end;

procedure TPagamentoSemParcela.setId_formapagamento(const a_Value: String);
begin
  Self.m_Id_formapagamento := a_Value;
end;

function TPagamentoSemParcela.getid_DocumentoFiscal: String;
begin
  Result := Self.m_id_DocumentoFiscal;
end;

procedure TPagamentoSemParcela.setid_DocumentoFiscal(const a_Value: String);
begin
  Self.m_id_DocumentoFiscal := a_Value;
end;

function TPagamentoSemParcela.getid_conta: String;
begin
  Result := Self.m_id_conta;
end;

procedure TPagamentoSemParcela.setid_conta(const a_Value: String);
begin
  Self.m_id_conta := a_Value;
end;

function TPagamentoSemParcela.getId_rateiopadrao: String;
begin
  Result := Self.m_Id_rateiopadrao;
end;

procedure TPagamentoSemParcela.setId_rateiopadrao(const a_Value: String);
begin
  Self.m_Id_rateiopadrao := a_Value;
end;

function TPagamentoSemParcela.getid_meioeletronico: String;
begin
  Result := Self.m_id_meioeletronico;
end;

procedure TPagamentoSemParcela.setid_meioeletronico(const a_Value: String);
begin
  Self.m_id_meioeletronico := a_Value;
end;

function TPagamentoSemParcela.getId_layoutcobranca: String;
begin
  Result := Self.m_Id_layoutcobranca;
end;

procedure TPagamentoSemParcela.setId_layoutcobranca(const a_Value: String);
begin
  Self.m_Id_layoutcobranca := a_Value;
end;

function TPagamentoSemParcela.getid_operadora: String;
begin
  Result := Self.m_id_operadora;
end;

procedure TPagamentoSemParcela.setid_operadora(const a_Value: String);
begin
  Self.m_id_operadora := a_Value;
end;

function TPagamentoSemParcela.getId_bandeira: String;
begin
  Result := Self.m_Id_bandeira;
end;

procedure TPagamentoSemParcela.setId_bandeira(const a_Value: String);
begin
  Self.m_Id_bandeira := a_Value;
end;

function TPagamentoSemParcela.getid_parcelamento: String;
begin
  Result := Self.m_id_parcelamento;
end;

procedure TPagamentoSemParcela.setid_parcelamento(const a_Value: String);
begin
  Self.m_id_parcelamento := a_Value;
end;

function TPagamentoSemParcela.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TPagamentoSemParcela.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TPagamentoSemParcela.getNomeFormaPagamento: String;
begin
  Result := Self.m_NomeFormaPagamento;
end;

procedure TPagamentoSemParcela.setNomeFormaPagamento(const a_Value: String);
begin
  Self.m_NomeFormaPagamento := a_Value;
end;

function TPagamentoSemParcela.getNomeMeioEletronicoCartao: String;
begin
  Result := Self.m_NomeMeioEletronicoCartao;
end;

procedure TPagamentoSemParcela.setNomeMeioEletronicoCartao(const a_Value: String);
begin
  Self.m_NomeMeioEletronicoCartao := a_Value;
end;

function TPagamentoSemParcela.getNomeBandeiraCartao: String;
begin
  Result := Self.m_NomeBandeiraCartao;
end;

procedure TPagamentoSemParcela.setNomeBandeiraCartao(const a_Value: String);
begin
  Self.m_NomeBandeiraCartao := a_Value;
end;

function TPagamentoSemParcela.getNomeOperadoraCartao: String;
begin
  Result := Self.m_NomeOperadoraCartao;
end;

procedure TPagamentoSemParcela.setNomeOperadoraCartao(const a_Value: String);
begin
  Self.m_NomeOperadoraCartao := a_Value;
end;

function TPagamentoSemParcela.getNomeConta: String;
begin
  Result := Self.m_NomeConta;
end;

procedure TPagamentoSemParcela.setNomeConta(const a_Value: String);
begin
  Self.m_NomeConta := a_Value;
end;

function TPagamentoSemParcela.getNumeroParcelas: Integer;
begin
  Result := Self.m_NumeroParcelas;
end;

procedure TPagamentoSemParcela.setNumeroParcelas(const a_Value: Integer);
begin
  Self.m_NumeroParcelas := a_Value;
end;

function TPagamentoSemParcela.getDataFatura: TDate;
begin
  Result := Self.m_DataFatura;
end;

procedure TPagamentoSemParcela.setDataFatura(const a_Value: TDate);
begin
  Self.m_DataFatura := a_Value;
end;

function TPagamentoSemParcela.getTipoOperacao: Integer;
begin
  Result := Self.m_TipoOperacao;
end;

procedure TPagamentoSemParcela.setTipoOperacao(const a_Value: Integer);
begin
  Self.m_TipoOperacao := a_Value;
end;

function TPagamentoSemParcela.getAutorizacaoCartao: String;
begin
  Result := Self.m_AutorizacaoCartao;
end;

procedure TPagamentoSemParcela.setAutorizacaoCartao(const a_Value: String);
begin
  Self.m_AutorizacaoCartao := a_Value;
end;

function TPagamentoSemParcela.getDataAutorizacaoCartao: TDate;
begin
  Result := Self.m_DataAutorizacaoCartao;
end;

procedure TPagamentoSemParcela.setDataAutorizacaoCartao(const a_Value: TDate);
begin
  Self.m_DataAutorizacaoCartao := a_Value;
end;

function TPagamentoSemParcela.getDocumentoCartao: String;
begin
  Result := Self.m_DocumentoCartao;
end;

procedure TPagamentoSemParcela.setDocumentoCartao(const a_Value: String);
begin
  Self.m_DocumentoCartao := a_Value;
end;

function TPagamentoSemParcela.getIrRetido: Currency;
begin
  Result := Self.m_IrRetido;
end;

procedure TPagamentoSemParcela.setIrRetido(const a_Value: Currency);
begin
  Self.m_IrRetido := a_Value;
end;

function TPagamentoSemParcela.getPisRetido: Currency;
begin
  Result := Self.m_PisRetido;
end;

procedure TPagamentoSemParcela.setPisRetido(const a_Value: Currency);
begin
  Self.m_PisRetido := a_Value;
end;

function TPagamentoSemParcela.getCofinsRetido: Currency;
begin
  Result := Self.m_CofinsRetido;
end;

procedure TPagamentoSemParcela.setCofinsRetido(const a_Value: Currency);
begin
  Self.m_CofinsRetido := a_Value;
end;

function TPagamentoSemParcela.getCsllRetido: Currency;
begin
  Result := Self.m_CsllRetido;
end;

procedure TPagamentoSemParcela.setCsllRetido(const a_Value: Currency);
begin
  Self.m_CsllRetido := a_Value;
end;

function TPagamentoSemParcela.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TPagamentoSemParcela.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TPagamentoSemParcela.getid_owner: String;
begin
  Result := Self.m_id_owner;
end;

procedure TPagamentoSemParcela.setid_owner(const a_Value: String);
begin
  Self.m_id_owner := a_Value;
end;

destructor TPagamentoSemParcela.Destroy;
begin

end;

function TPagamentoSemParcela.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPagamentoSemParcela.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPagamentoSemParcela.getNameAPI(): String;
begin
  Result := 'PagamentoSemParcela';
end;

function TPagamentoSemParcela.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPagamentoSemParcela.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
