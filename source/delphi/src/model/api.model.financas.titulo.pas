unit api.model.financas.Titulo;

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
	
  , api.model.financas.ItemRateioFinanceiro
  , System.Generics.Collections
  , api.model.financas.InformacaoCartao
  , api.model.financas.VendedorTitulo
	

	;

type TTitulo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_Conta: String;
    var m_LayoutCobranca: String;
    var m_LayoutPagamento: String;
    var m_Numero: String;
    var m_Emissao: TDate;
    var m_Vencimento: TDate;
    var m_PrevisaoVencimento: TDate;
    var m_Parcela: Integer;
    var m_TotalParcelas: Integer;
    var m_Observacao: String;
    var m_Anotacoes: WideString;
    var m_ValorTitulo: Currency;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    var m_AliquotaIr: Currency;
    var m_ValorIrRetido: Currency;
    var m_AliquotaCofins: Currency;
    var m_ValorCofinsRetido: Currency;
    var m_AliquotaPis: Currency;
    var m_ValorPisRetido: Currency;
    var m_AliquotaCsll: Currency;
    var m_ValorCsllRetido: Currency;
    var m_ValorInssRetido: Currency;
    var m_AliquotaIss: Currency;
    var m_ValorIssRetido: Currency;
    var m_DataLimiteDesconto: TDate;
    var m_PercentualDesconto: Currency;
    var m_DataInicioMulta: TDate;
    var m_PercentualMulta: Currency;
    var m_PercentualJurosDiario: Currency;
    var m_TaxaBancaria: Currency;
    var m_NossoNumero: String;
    var m_LinhaDigitavel: String;
    var m_CodigoBarras: String;
    var m_InformacaoCartao: TInformacaoCartao;
    var m_NumeroVezesCartao: Integer;
    var m_ValorTarifaCartao: Currency;
    var m_AutorizacaoCartao: String;
    var m_DocumentoCartao: String;
    var m_NumeroParcelaCartao: Integer;
    var m_ValorParcelaCartao: Currency;
    var m_NumeroNota: String;
    var m_ModeloDocumentoFiscal: Integer;
    var m_SerieDocumentoFiscal: String;
    var m_SubserieDocumentoFiscal: String;
    var m_ServicoBancario: String;
    var m_FinalidadePagamento: String;
    var m_TipoContaPagamento: String;
    var m_DataAgendamento: TDate;
    var m_Vendedores: TObjectList<TVendedorTitulo>;
    var m_DataProvisoria: Boolean;
    var m_ValorProvisorio: Boolean;
    var m_TipoOrigem: Integer;
    var m_Contrato: String;
    var m_DataAutorizacaoCartao: TDate;
    var m_FormaPagamento: String;
    var m_Fatura: String;
    var m_id_renegociacao_gerada: String;
    var m_id_renegociacao_geradora: String;
    var m_valorvariacaocambialativa: Currency;
    var m_valorvariacaocambialpassiva: Currency;
    var m_TipoCredito: Integer;
    var m_CreditoIdentificado: Integer;
    var m_OutrasRetencoes: Currency;
    var m_DescricaoOutrasRetencoes: String;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getConta(): String;
    function getLayoutCobranca(): String;
    function getLayoutPagamento(): String;
    function getNumero(): String;
    function getEmissao(): TDate;
    function getVencimento(): TDate;
    function getPrevisaoVencimento(): TDate;
    function getParcela(): Integer;
    function getTotalParcelas(): Integer;
    function getObservacao(): String;
    function getAnotacoes(): WideString;
    function getValorTitulo(): Currency;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    function getAliquotaIr(): Currency;
    function getValorIrRetido(): Currency;
    function getAliquotaCofins(): Currency;
    function getValorCofinsRetido(): Currency;
    function getAliquotaPis(): Currency;
    function getValorPisRetido(): Currency;
    function getAliquotaCsll(): Currency;
    function getValorCsllRetido(): Currency;
    function getValorInssRetido(): Currency;
    function getAliquotaIss(): Currency;
    function getValorIssRetido(): Currency;
    function getDataLimiteDesconto(): TDate;
    function getPercentualDesconto(): Currency;
    function getDataInicioMulta(): TDate;
    function getPercentualMulta(): Currency;
    function getPercentualJurosDiario(): Currency;
    function getTaxaBancaria(): Currency;
    function getNossoNumero(): String;
    function getLinhaDigitavel(): String;
    function getCodigoBarras(): String;
    function getInformacaoCartao(): TInformacaoCartao;
    function getNumeroVezesCartao(): Integer;
    function getValorTarifaCartao(): Currency;
    function getAutorizacaoCartao(): String;
    function getDocumentoCartao(): String;
    function getNumeroParcelaCartao(): Integer;
    function getValorParcelaCartao(): Currency;
    function getNumeroNota(): String;
    function getModeloDocumentoFiscal(): Integer;
    function getSerieDocumentoFiscal(): String;
    function getSubserieDocumentoFiscal(): String;
    function getServicoBancario(): String;
    function getFinalidadePagamento(): String;
    function getTipoContaPagamento(): String;
    function getDataAgendamento(): TDate;
    function getVendedores(): TObjectList<TVendedorTitulo>;
    function getDataProvisoria(): Boolean;
    function getValorProvisorio(): Boolean;
    function getTipoOrigem(): Integer;
    function getContrato(): String;
    function getDataAutorizacaoCartao(): TDate;
    function getFormaPagamento(): String;
    function getFatura(): String;
    function getid_renegociacao_gerada(): String;
    function getid_renegociacao_geradora(): String;
    function getvalorvariacaocambialativa(): Currency;
    function getvalorvariacaocambialpassiva(): Currency;
    function getTipoCredito(): Integer;
    function getCreditoIdentificado(): Integer;
    function getOutrasRetencoes(): Currency;
    function getDescricaoOutrasRetencoes(): String;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setConta(const a_Value: String);
    procedure setLayoutCobranca(const a_Value: String);
    procedure setLayoutPagamento(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setEmissao(const a_Value: TDate);
    procedure setVencimento(const a_Value: TDate);
    procedure setPrevisaoVencimento(const a_Value: TDate);
    procedure setParcela(const a_Value: Integer);
    procedure setTotalParcelas(const a_Value: Integer);
    procedure setObservacao(const a_Value: String);
    procedure setAnotacoes(const a_Value: WideString);
    procedure setValorTitulo(const a_Value: Currency);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setAliquotaIr(const a_Value: Currency);
    procedure setValorIrRetido(const a_Value: Currency);
    procedure setAliquotaCofins(const a_Value: Currency);
    procedure setValorCofinsRetido(const a_Value: Currency);
    procedure setAliquotaPis(const a_Value: Currency);
    procedure setValorPisRetido(const a_Value: Currency);
    procedure setAliquotaCsll(const a_Value: Currency);
    procedure setValorCsllRetido(const a_Value: Currency);
    procedure setValorInssRetido(const a_Value: Currency);
    procedure setAliquotaIss(const a_Value: Currency);
    procedure setValorIssRetido(const a_Value: Currency);
    procedure setDataLimiteDesconto(const a_Value: TDate);
    procedure setPercentualDesconto(const a_Value: Currency);
    procedure setDataInicioMulta(const a_Value: TDate);
    procedure setPercentualMulta(const a_Value: Currency);
    procedure setPercentualJurosDiario(const a_Value: Currency);
    procedure setTaxaBancaria(const a_Value: Currency);
    procedure setNossoNumero(const a_Value: String);
    procedure setLinhaDigitavel(const a_Value: String);
    procedure setCodigoBarras(const a_Value: String);
    procedure setInformacaoCartao(const a_Value: TInformacaoCartao);
    procedure setNumeroVezesCartao(const a_Value: Integer);
    procedure setValorTarifaCartao(const a_Value: Currency);
    procedure setAutorizacaoCartao(const a_Value: String);
    procedure setDocumentoCartao(const a_Value: String);
    procedure setNumeroParcelaCartao(const a_Value: Integer);
    procedure setValorParcelaCartao(const a_Value: Currency);
    procedure setNumeroNota(const a_Value: String);
    procedure setModeloDocumentoFiscal(const a_Value: Integer);
    procedure setSerieDocumentoFiscal(const a_Value: String);
    procedure setSubserieDocumentoFiscal(const a_Value: String);
    procedure setServicoBancario(const a_Value: String);
    procedure setFinalidadePagamento(const a_Value: String);
    procedure setTipoContaPagamento(const a_Value: String);
    procedure setDataAgendamento(const a_Value: TDate);
    procedure setVendedores(const a_Value: TObjectList<TVendedorTitulo>);
    procedure setDataProvisoria(const a_Value: Boolean);
    procedure setValorProvisorio(const a_Value: Boolean);
    procedure setTipoOrigem(const a_Value: Integer);
    procedure setContrato(const a_Value: String);
    procedure setDataAutorizacaoCartao(const a_Value: TDate);
    procedure setFormaPagamento(const a_Value: String);
    procedure setFatura(const a_Value: String);
    procedure setid_renegociacao_gerada(const a_Value: String);
    procedure setid_renegociacao_geradora(const a_Value: String);
    procedure setvalorvariacaocambialativa(const a_Value: Currency);
    procedure setvalorvariacaocambialpassiva(const a_Value: Currency);
    procedure setTipoCredito(const a_Value: Integer);
    procedure setCreditoIdentificado(const a_Value: Integer);
    procedure setOutrasRetencoes(const a_Value: Currency);
    procedure setDescricaoOutrasRetencoes(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    [NasajonSerializeAttribute('layoutcobranca')]
    property layoutcobranca: String read getLayoutCobranca write setLayoutCobranca;

    [NasajonSerializeAttribute('layoutpagamento')]
    property layoutpagamento: String read getLayoutPagamento write setLayoutPagamento;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getEmissao write setEmissao;

    [NasajonSerializeAttribute('vencimento')]
    property vencimento: TDate read getVencimento write setVencimento;

    [NasajonSerializeAttribute('previsaovencimento')]
    property previsaovencimento: TDate read getPrevisaoVencimento write setPrevisaoVencimento;

    [NasajonSerializeAttribute('parcela')]
    property parcela: Integer read getParcela write setParcela;

    [NasajonSerializeAttribute('totalparcelas')]
    property totalparcelas: Integer read getTotalParcelas write setTotalParcelas;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

    [NasajonSerializeAttribute('anotacoes')]
    property anotacoes: WideString read getAnotacoes write setAnotacoes;

    [NasajonSerializeAttribute('valortitulo')]
    property valortitulo: Currency read getValorTitulo write setValorTitulo;

    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    [NasajonSerializeAttribute('aliquotair')]
    property aliquotair: Currency read getAliquotaIr write setAliquotaIr;

    [NasajonSerializeAttribute('valorirretido')]
    property valorirretido: Currency read getValorIrRetido write setValorIrRetido;

    [NasajonSerializeAttribute('aliquotacofins')]
    property aliquotacofins: Currency read getAliquotaCofins write setAliquotaCofins;

    [NasajonSerializeAttribute('valorcofinsretido')]
    property valorcofinsretido: Currency read getValorCofinsRetido write setValorCofinsRetido;

    [NasajonSerializeAttribute('aliquotapis')]
    property aliquotapis: Currency read getAliquotaPis write setAliquotaPis;

    [NasajonSerializeAttribute('valorpisretido')]
    property valorpisretido: Currency read getValorPisRetido write setValorPisRetido;

    [NasajonSerializeAttribute('aliquotacsll')]
    property aliquotacsll: Currency read getAliquotaCsll write setAliquotaCsll;

    [NasajonSerializeAttribute('valorcsllretido')]
    property valorcsllretido: Currency read getValorCsllRetido write setValorCsllRetido;

    [NasajonSerializeAttribute('valorinssretido')]
    property valorinssretido: Currency read getValorInssRetido write setValorInssRetido;

    [NasajonSerializeAttribute('aliquotaiss')]
    property aliquotaiss: Currency read getAliquotaIss write setAliquotaIss;

    [NasajonSerializeAttribute('valorissretido')]
    property valorissretido: Currency read getValorIssRetido write setValorIssRetido;

    [NasajonSerializeAttribute('datalimitedesconto')]
    property datalimitedesconto: TDate read getDataLimiteDesconto write setDataLimiteDesconto;

    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    [NasajonSerializeAttribute('datainiciomulta')]
    property datainiciomulta: TDate read getDataInicioMulta write setDataInicioMulta;

    [NasajonSerializeAttribute('percentualmulta')]
    property percentualmulta: Currency read getPercentualMulta write setPercentualMulta;

    [NasajonSerializeAttribute('percentualjurosdiario')]
    property percentualjurosdiario: Currency read getPercentualJurosDiario write setPercentualJurosDiario;

    [NasajonSerializeAttribute('taxabancaria')]
    property taxabancaria: Currency read getTaxaBancaria write setTaxaBancaria;

    [NasajonSerializeAttribute('nossonumero')]
    property nossonumero: String read getNossoNumero write setNossoNumero;

    [NasajonSerializeAttribute('linhadigitavel')]
    property linhadigitavel: String read getLinhaDigitavel write setLinhaDigitavel;

    [NasajonSerializeAttribute('codigobarras')]
    property codigobarras: String read getCodigoBarras write setCodigoBarras;

    [NasajonSerializeAttribute('informacaocartao')]
    property informacaocartao: TInformacaoCartao read getInformacaoCartao write setInformacaoCartao;

    [NasajonSerializeAttribute('numerovezescartao')]
    property numerovezescartao: Integer read getNumeroVezesCartao write setNumeroVezesCartao;

    [NasajonSerializeAttribute('valortarifacartao')]
    property valortarifacartao: Currency read getValorTarifaCartao write setValorTarifaCartao;

    [NasajonSerializeAttribute('autorizacaocartao')]
    property autorizacaocartao: String read getAutorizacaoCartao write setAutorizacaoCartao;

    [NasajonSerializeAttribute('documentocartao')]
    property documentocartao: String read getDocumentoCartao write setDocumentoCartao;

    [NasajonSerializeAttribute('numeroparcelacartao')]
    property numeroparcelacartao: Integer read getNumeroParcelaCartao write setNumeroParcelaCartao;

    [NasajonSerializeAttribute('valorparcelacartao')]
    property valorparcelacartao: Currency read getValorParcelaCartao write setValorParcelaCartao;

    [NasajonSerializeAttribute('numeronota')]
    property numeronota: String read getNumeroNota write setNumeroNota;

    [NasajonSerializeAttribute('modelodocumentofiscal')]
    property modelodocumentofiscal: Integer read getModeloDocumentoFiscal write setModeloDocumentoFiscal;

    [NasajonSerializeAttribute('seriedocumentofiscal')]
    property seriedocumentofiscal: String read getSerieDocumentoFiscal write setSerieDocumentoFiscal;

    [NasajonSerializeAttribute('subseriedocumentofiscal')]
    property subseriedocumentofiscal: String read getSubserieDocumentoFiscal write setSubserieDocumentoFiscal;

    [NasajonSerializeAttribute('servicobancario')]
    property servicobancario: String read getServicoBancario write setServicoBancario;

    [NasajonSerializeAttribute('finalidadepagamento')]
    property finalidadepagamento: String read getFinalidadePagamento write setFinalidadePagamento;

    [NasajonSerializeAttribute('tipocontapagamento')]
    property tipocontapagamento: String read getTipoContaPagamento write setTipoContaPagamento;

    [NasajonSerializeAttribute('dataagendamento')]
    property dataagendamento: TDate read getDataAgendamento write setDataAgendamento;

    [NasajonSerializeAttribute('vendedores')]
    property vendedores: TObjectList<TVendedorTitulo> read getVendedores write setVendedores;

    [NasajonSerializeAttribute('dataprovisoria')]
    property dataprovisoria: Boolean read getDataProvisoria write setDataProvisoria;

    [NasajonSerializeAttribute('valorprovisorio')]
    property valorprovisorio: Boolean read getValorProvisorio write setValorProvisorio;

    /// <summary>
/// Indica a origem do titulo. Quando não informado, assumirá 0 - Manutenção
/// 				                             23 - Previsão
    /// </summary>
    [NasajonSerializeAttribute('tipoorigem')]
    property tipoorigem: Integer read getTipoOrigem write setTipoOrigem;

    [NasajonSerializeAttribute('contrato')]
    property contrato: String read getContrato write setContrato;

    [NasajonSerializeAttribute('dataautorizacaocartao')]
    property dataautorizacaocartao: TDate read getDataAutorizacaoCartao write setDataAutorizacaoCartao;

    [NasajonSerializeAttribute('formapagamento')]
    property formapagamento: String read getFormaPagamento write setFormaPagamento;

    [NasajonSerializeAttribute('fatura')]
    property fatura: String read getFatura write setFatura;

    [NasajonSerializeAttribute('id_renegociacao_gerada')]
    property id_renegociacao_gerada: String read getid_renegociacao_gerada write setid_renegociacao_gerada;

    [NasajonSerializeAttribute('id_renegociacao_geradora')]
    property id_renegociacao_geradora: String read getid_renegociacao_geradora write setid_renegociacao_geradora;

    [NasajonSerializeAttribute('valorvariacaocambialativa')]
    property valorvariacaocambialativa: Currency read getvalorvariacaocambialativa write setvalorvariacaocambialativa;

    [NasajonSerializeAttribute('valorvariacaocambialpassiva')]
    property valorvariacaocambialpassiva: Currency read getvalorvariacaocambialpassiva write setvalorvariacaocambialpassiva;

    [NasajonSerializeAttribute('tipocredito')]
    property tipocredito: Integer read getTipoCredito write setTipoCredito;

    [NasajonSerializeAttribute('creditoidentificado')]
    property creditoidentificado: Integer read getCreditoIdentificado write setCreditoIdentificado;

    [NasajonSerializeAttribute('outrasretencoes')]
    property outrasretencoes: Currency read getOutrasRetencoes write setOutrasRetencoes;

    [NasajonSerializeAttribute('descricaooutrasretencoes')]
    property descricaooutrasretencoes: String read getDescricaoOutrasRetencoes write setDescricaoOutrasRetencoes;

    

end;

	
implementation

  uses
      api.send;  

function TTitulo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TTitulo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TTitulo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TTitulo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TTitulo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TTitulo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TTitulo.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TTitulo.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TTitulo.getLayoutCobranca: String;
begin
  Result := Self.m_LayoutCobranca;
end;

procedure TTitulo.setLayoutCobranca(const a_Value: String);
begin
  Self.m_LayoutCobranca := a_Value;
end;

function TTitulo.getLayoutPagamento: String;
begin
  Result := Self.m_LayoutPagamento;
end;

procedure TTitulo.setLayoutPagamento(const a_Value: String);
begin
  Self.m_LayoutPagamento := a_Value;
end;

function TTitulo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TTitulo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TTitulo.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TTitulo.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TTitulo.getVencimento: TDate;
begin
  Result := Self.m_Vencimento;
end;

procedure TTitulo.setVencimento(const a_Value: TDate);
begin
  Self.m_Vencimento := a_Value;
end;

function TTitulo.getPrevisaoVencimento: TDate;
begin
  Result := Self.m_PrevisaoVencimento;
end;

procedure TTitulo.setPrevisaoVencimento(const a_Value: TDate);
begin
  Self.m_PrevisaoVencimento := a_Value;
end;

function TTitulo.getParcela: Integer;
begin
  Result := Self.m_Parcela;
end;

procedure TTitulo.setParcela(const a_Value: Integer);
begin
  Self.m_Parcela := a_Value;
end;

function TTitulo.getTotalParcelas: Integer;
begin
  Result := Self.m_TotalParcelas;
end;

procedure TTitulo.setTotalParcelas(const a_Value: Integer);
begin
  Self.m_TotalParcelas := a_Value;
end;

function TTitulo.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TTitulo.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TTitulo.getAnotacoes: WideString;
begin
  Result := Self.m_Anotacoes;
end;

procedure TTitulo.setAnotacoes(const a_Value: WideString);
begin
  Self.m_Anotacoes := a_Value;
end;

function TTitulo.getValorTitulo: Currency;
begin
  Result := Self.m_ValorTitulo;
end;

procedure TTitulo.setValorTitulo(const a_Value: Currency);
begin
  Self.m_ValorTitulo := a_Value;
end;

function TTitulo.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TTitulo.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TTitulo.getAliquotaIr: Currency;
begin
  Result := Self.m_AliquotaIr;
end;

procedure TTitulo.setAliquotaIr(const a_Value: Currency);
begin
  Self.m_AliquotaIr := a_Value;
end;

function TTitulo.getValorIrRetido: Currency;
begin
  Result := Self.m_ValorIrRetido;
end;

procedure TTitulo.setValorIrRetido(const a_Value: Currency);
begin
  Self.m_ValorIrRetido := a_Value;
end;

function TTitulo.getAliquotaCofins: Currency;
begin
  Result := Self.m_AliquotaCofins;
end;

procedure TTitulo.setAliquotaCofins(const a_Value: Currency);
begin
  Self.m_AliquotaCofins := a_Value;
end;

function TTitulo.getValorCofinsRetido: Currency;
begin
  Result := Self.m_ValorCofinsRetido;
end;

procedure TTitulo.setValorCofinsRetido(const a_Value: Currency);
begin
  Self.m_ValorCofinsRetido := a_Value;
end;

function TTitulo.getAliquotaPis: Currency;
begin
  Result := Self.m_AliquotaPis;
end;

procedure TTitulo.setAliquotaPis(const a_Value: Currency);
begin
  Self.m_AliquotaPis := a_Value;
end;

function TTitulo.getValorPisRetido: Currency;
begin
  Result := Self.m_ValorPisRetido;
end;

procedure TTitulo.setValorPisRetido(const a_Value: Currency);
begin
  Self.m_ValorPisRetido := a_Value;
end;

function TTitulo.getAliquotaCsll: Currency;
begin
  Result := Self.m_AliquotaCsll;
end;

procedure TTitulo.setAliquotaCsll(const a_Value: Currency);
begin
  Self.m_AliquotaCsll := a_Value;
end;

function TTitulo.getValorCsllRetido: Currency;
begin
  Result := Self.m_ValorCsllRetido;
end;

procedure TTitulo.setValorCsllRetido(const a_Value: Currency);
begin
  Self.m_ValorCsllRetido := a_Value;
end;

function TTitulo.getValorInssRetido: Currency;
begin
  Result := Self.m_ValorInssRetido;
end;

procedure TTitulo.setValorInssRetido(const a_Value: Currency);
begin
  Self.m_ValorInssRetido := a_Value;
end;

function TTitulo.getAliquotaIss: Currency;
begin
  Result := Self.m_AliquotaIss;
end;

procedure TTitulo.setAliquotaIss(const a_Value: Currency);
begin
  Self.m_AliquotaIss := a_Value;
end;

function TTitulo.getValorIssRetido: Currency;
begin
  Result := Self.m_ValorIssRetido;
end;

procedure TTitulo.setValorIssRetido(const a_Value: Currency);
begin
  Self.m_ValorIssRetido := a_Value;
end;

function TTitulo.getDataLimiteDesconto: TDate;
begin
  Result := Self.m_DataLimiteDesconto;
end;

procedure TTitulo.setDataLimiteDesconto(const a_Value: TDate);
begin
  Self.m_DataLimiteDesconto := a_Value;
end;

function TTitulo.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TTitulo.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TTitulo.getDataInicioMulta: TDate;
begin
  Result := Self.m_DataInicioMulta;
end;

procedure TTitulo.setDataInicioMulta(const a_Value: TDate);
begin
  Self.m_DataInicioMulta := a_Value;
end;

function TTitulo.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TTitulo.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TTitulo.getPercentualJurosDiario: Currency;
begin
  Result := Self.m_PercentualJurosDiario;
end;

procedure TTitulo.setPercentualJurosDiario(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiario := a_Value;
end;

function TTitulo.getTaxaBancaria: Currency;
begin
  Result := Self.m_TaxaBancaria;
end;

procedure TTitulo.setTaxaBancaria(const a_Value: Currency);
begin
  Self.m_TaxaBancaria := a_Value;
end;

function TTitulo.getNossoNumero: String;
begin
  Result := Self.m_NossoNumero;
end;

procedure TTitulo.setNossoNumero(const a_Value: String);
begin
  Self.m_NossoNumero := a_Value;
end;

function TTitulo.getLinhaDigitavel: String;
begin
  Result := Self.m_LinhaDigitavel;
end;

procedure TTitulo.setLinhaDigitavel(const a_Value: String);
begin
  Self.m_LinhaDigitavel := a_Value;
end;

function TTitulo.getCodigoBarras: String;
begin
  Result := Self.m_CodigoBarras;
end;

procedure TTitulo.setCodigoBarras(const a_Value: String);
begin
  Self.m_CodigoBarras := a_Value;
end;

function TTitulo.getInformacaoCartao: TInformacaoCartao;
begin
  if not Assigned(Self.m_InformacaoCartao)
    then Self.m_InformacaoCartao := TInformacaoCartao.Create();
  Result := Self.m_InformacaoCartao;
end;

procedure TTitulo.setInformacaoCartao(const a_Value: TInformacaoCartao);
begin
  Self.m_InformacaoCartao := a_Value;
end;

function TTitulo.getNumeroVezesCartao: Integer;
begin
  Result := Self.m_NumeroVezesCartao;
end;

procedure TTitulo.setNumeroVezesCartao(const a_Value: Integer);
begin
  Self.m_NumeroVezesCartao := a_Value;
end;

function TTitulo.getValorTarifaCartao: Currency;
begin
  Result := Self.m_ValorTarifaCartao;
end;

procedure TTitulo.setValorTarifaCartao(const a_Value: Currency);
begin
  Self.m_ValorTarifaCartao := a_Value;
end;

function TTitulo.getAutorizacaoCartao: String;
begin
  Result := Self.m_AutorizacaoCartao;
end;

procedure TTitulo.setAutorizacaoCartao(const a_Value: String);
begin
  Self.m_AutorizacaoCartao := a_Value;
end;

function TTitulo.getDocumentoCartao: String;
begin
  Result := Self.m_DocumentoCartao;
end;

procedure TTitulo.setDocumentoCartao(const a_Value: String);
begin
  Self.m_DocumentoCartao := a_Value;
end;

function TTitulo.getNumeroParcelaCartao: Integer;
begin
  Result := Self.m_NumeroParcelaCartao;
end;

procedure TTitulo.setNumeroParcelaCartao(const a_Value: Integer);
begin
  Self.m_NumeroParcelaCartao := a_Value;
end;

function TTitulo.getValorParcelaCartao: Currency;
begin
  Result := Self.m_ValorParcelaCartao;
end;

procedure TTitulo.setValorParcelaCartao(const a_Value: Currency);
begin
  Self.m_ValorParcelaCartao := a_Value;
end;

function TTitulo.getNumeroNota: String;
begin
  Result := Self.m_NumeroNota;
end;

procedure TTitulo.setNumeroNota(const a_Value: String);
begin
  Self.m_NumeroNota := a_Value;
end;

function TTitulo.getModeloDocumentoFiscal: Integer;
begin
  Result := Self.m_ModeloDocumentoFiscal;
end;

procedure TTitulo.setModeloDocumentoFiscal(const a_Value: Integer);
begin
  Self.m_ModeloDocumentoFiscal := a_Value;
end;

function TTitulo.getSerieDocumentoFiscal: String;
begin
  Result := Self.m_SerieDocumentoFiscal;
end;

procedure TTitulo.setSerieDocumentoFiscal(const a_Value: String);
begin
  Self.m_SerieDocumentoFiscal := a_Value;
end;

function TTitulo.getSubserieDocumentoFiscal: String;
begin
  Result := Self.m_SubserieDocumentoFiscal;
end;

procedure TTitulo.setSubserieDocumentoFiscal(const a_Value: String);
begin
  Self.m_SubserieDocumentoFiscal := a_Value;
end;

function TTitulo.getServicoBancario: String;
begin
  Result := Self.m_ServicoBancario;
end;

procedure TTitulo.setServicoBancario(const a_Value: String);
begin
  Self.m_ServicoBancario := a_Value;
end;

function TTitulo.getFinalidadePagamento: String;
begin
  Result := Self.m_FinalidadePagamento;
end;

procedure TTitulo.setFinalidadePagamento(const a_Value: String);
begin
  Self.m_FinalidadePagamento := a_Value;
end;

function TTitulo.getTipoContaPagamento: String;
begin
  Result := Self.m_TipoContaPagamento;
end;

procedure TTitulo.setTipoContaPagamento(const a_Value: String);
begin
  Self.m_TipoContaPagamento := a_Value;
end;

function TTitulo.getDataAgendamento: TDate;
begin
  Result := Self.m_DataAgendamento;
end;

procedure TTitulo.setDataAgendamento(const a_Value: TDate);
begin
  Self.m_DataAgendamento := a_Value;
end;

function TTitulo.getVendedores: TObjectList<TVendedorTitulo>;
begin
  if not Assigned(Self.m_Vendedores)
    then Self.m_Vendedores := TObjectList<TVendedorTitulo>.Create();
  Result := Self.m_Vendedores;
end;

procedure TTitulo.setVendedores(const a_Value: TObjectList<TVendedorTitulo>);
begin
  Self.m_Vendedores := a_Value;
end;

function TTitulo.getDataProvisoria: Boolean;
begin
  Result := Self.m_DataProvisoria;
end;

procedure TTitulo.setDataProvisoria(const a_Value: Boolean);
begin
  Self.m_DataProvisoria := a_Value;
end;

function TTitulo.getValorProvisorio: Boolean;
begin
  Result := Self.m_ValorProvisorio;
end;

procedure TTitulo.setValorProvisorio(const a_Value: Boolean);
begin
  Self.m_ValorProvisorio := a_Value;
end;

function TTitulo.getTipoOrigem: Integer;
begin
  Result := Self.m_TipoOrigem;
end;

procedure TTitulo.setTipoOrigem(const a_Value: Integer);
begin
  Self.m_TipoOrigem := a_Value;
end;

function TTitulo.getContrato: String;
begin
  Result := Self.m_Contrato;
end;

procedure TTitulo.setContrato(const a_Value: String);
begin
  Self.m_Contrato := a_Value;
end;

function TTitulo.getDataAutorizacaoCartao: TDate;
begin
  Result := Self.m_DataAutorizacaoCartao;
end;

procedure TTitulo.setDataAutorizacaoCartao(const a_Value: TDate);
begin
  Self.m_DataAutorizacaoCartao := a_Value;
end;

function TTitulo.getFormaPagamento: String;
begin
  Result := Self.m_FormaPagamento;
end;

procedure TTitulo.setFormaPagamento(const a_Value: String);
begin
  Self.m_FormaPagamento := a_Value;
end;

function TTitulo.getFatura: String;
begin
  Result := Self.m_Fatura;
end;

procedure TTitulo.setFatura(const a_Value: String);
begin
  Self.m_Fatura := a_Value;
end;

function TTitulo.getid_renegociacao_gerada: String;
begin
  Result := Self.m_id_renegociacao_gerada;
end;

procedure TTitulo.setid_renegociacao_gerada(const a_Value: String);
begin
  Self.m_id_renegociacao_gerada := a_Value;
end;

function TTitulo.getid_renegociacao_geradora: String;
begin
  Result := Self.m_id_renegociacao_geradora;
end;

procedure TTitulo.setid_renegociacao_geradora(const a_Value: String);
begin
  Self.m_id_renegociacao_geradora := a_Value;
end;

function TTitulo.getvalorvariacaocambialativa: Currency;
begin
  Result := Self.m_valorvariacaocambialativa;
end;

procedure TTitulo.setvalorvariacaocambialativa(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialativa := a_Value;
end;

function TTitulo.getvalorvariacaocambialpassiva: Currency;
begin
  Result := Self.m_valorvariacaocambialpassiva;
end;

procedure TTitulo.setvalorvariacaocambialpassiva(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialpassiva := a_Value;
end;

function TTitulo.getTipoCredito: Integer;
begin
  Result := Self.m_TipoCredito;
end;

procedure TTitulo.setTipoCredito(const a_Value: Integer);
begin
  Self.m_TipoCredito := a_Value;
end;

function TTitulo.getCreditoIdentificado: Integer;
begin
  Result := Self.m_CreditoIdentificado;
end;

procedure TTitulo.setCreditoIdentificado(const a_Value: Integer);
begin
  Self.m_CreditoIdentificado := a_Value;
end;

function TTitulo.getOutrasRetencoes: Currency;
begin
  Result := Self.m_OutrasRetencoes;
end;

procedure TTitulo.setOutrasRetencoes(const a_Value: Currency);
begin
  Self.m_OutrasRetencoes := a_Value;
end;

function TTitulo.getDescricaoOutrasRetencoes: String;
begin
  Result := Self.m_DescricaoOutrasRetencoes;
end;

procedure TTitulo.setDescricaoOutrasRetencoes(const a_Value: String);
begin
  Self.m_DescricaoOutrasRetencoes := a_Value;
end;

destructor TTitulo.Destroy;
begin
  Self.RateioFinanceiro.Free();  Self.InformacaoCartao.Free();  Self.Vendedores.Free();
end;

function TTitulo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTitulo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTitulo.getNameAPI(): String;
begin
  Result := 'Titulo';
end;

function TTitulo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTitulo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
