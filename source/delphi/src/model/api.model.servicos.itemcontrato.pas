unit api.model.servicos.ItemContrato;

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
	
  , api.model.servicos.ValorVariavelItemContrato
  , System.Generics.Collections
  , api.model.financas.ItemRateioFinanceiro
	

	;

type TItemContrato = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_IdContrato: String;
    var m_Servico: String;
    var m_ValorVariavel: Boolean;
    var m_ValoresVariaveis: TObjectList<TValorVariavelItemContrato>;
    var m_Codigo: String;
    var m_Observacao: WideString;
    var m_Valor: Currency;
    var m_RateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
    var m_Quantidade: Integer;
    var m_Instancia: String;
    var m_CodigoInstancia: String;
    var m_NomeInstancia: String;
    var m_TipoInstancia: String;
    var m_DescontosNoPedido: Currency;
    var m_UnidadeNatureza: Integer;
    var m_UnidadeIntervaloNatureza: Integer;
    var m_QuantidadeIntervaloNatureza: Integer;
    var m_TipoVencimento: Integer;
    var m_DiaVencimento: Integer;
    var m_AdicaoMesesVencimento: Integer;
    var m_QtdDiasParaInicio: Integer;
    var m_QtdDiasParaFim: Integer;
    var m_QtdMesesParaReajuste: Integer;
    var m_PercentualDesconto: Currency;
    var m_PercentualMulta: Currency;
    var m_PercentualJurosDiarios: Currency;
    var m_TipoCobranca: Integer;
    var m_Indice: String;
    var m_ConsiderarDataInicio: Boolean;
    var m_DataCobranca: TDate;
    var m_DataReajuste: TDate;
    var m_Autorizado: Boolean;
    var m_Cancelado: Boolean;
    var m_DataHoraCancelamento: TDateTime;
    

    function getId(): String;
    function getIdContrato(): String;
    function getServico(): String;
    function getValorVariavel(): Boolean;
    function getValoresVariaveis(): TObjectList<TValorVariavelItemContrato>;
    function getCodigo(): String;
    function getObservacao(): WideString;
    function getValor(): Currency;
    function getRateioFinanceiro(): TObjectList<TItemRateioFinanceiro>;
    function getQuantidade(): Integer;
    function getInstancia(): String;
    function getCodigoInstancia(): String;
    function getNomeInstancia(): String;
    function getTipoInstancia(): String;
    function getDescontosNoPedido(): Currency;
    function getUnidadeNatureza(): Integer;
    function getUnidadeIntervaloNatureza(): Integer;
    function getQuantidadeIntervaloNatureza(): Integer;
    function getTipoVencimento(): Integer;
    function getDiaVencimento(): Integer;
    function getAdicaoMesesVencimento(): Integer;
    function getQtdDiasParaInicio(): Integer;
    function getQtdDiasParaFim(): Integer;
    function getQtdMesesParaReajuste(): Integer;
    function getPercentualDesconto(): Currency;
    function getPercentualMulta(): Currency;
    function getPercentualJurosDiarios(): Currency;
    function getTipoCobranca(): Integer;
    function getIndice(): String;
    function getConsiderarDataInicio(): Boolean;
    function getDataCobranca(): TDate;
    function getDataReajuste(): TDate;
    function getAutorizado(): Boolean;
    function getCancelado(): Boolean;
    function getDataHoraCancelamento(): TDateTime;
    

    procedure setId(const a_Value: String);
    procedure setIdContrato(const a_Value: String);
    procedure setServico(const a_Value: String);
    procedure setValorVariavel(const a_Value: Boolean);
    procedure setValoresVariaveis(const a_Value: TObjectList<TValorVariavelItemContrato>);
    procedure setCodigo(const a_Value: String);
    procedure setObservacao(const a_Value: WideString);
    procedure setValor(const a_Value: Currency);
    procedure setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setQuantidade(const a_Value: Integer);
    procedure setInstancia(const a_Value: String);
    procedure setCodigoInstancia(const a_Value: String);
    procedure setNomeInstancia(const a_Value: String);
    procedure setTipoInstancia(const a_Value: String);
    procedure setDescontosNoPedido(const a_Value: Currency);
    procedure setUnidadeNatureza(const a_Value: Integer);
    procedure setUnidadeIntervaloNatureza(const a_Value: Integer);
    procedure setQuantidadeIntervaloNatureza(const a_Value: Integer);
    procedure setTipoVencimento(const a_Value: Integer);
    procedure setDiaVencimento(const a_Value: Integer);
    procedure setAdicaoMesesVencimento(const a_Value: Integer);
    procedure setQtdDiasParaInicio(const a_Value: Integer);
    procedure setQtdDiasParaFim(const a_Value: Integer);
    procedure setQtdMesesParaReajuste(const a_Value: Integer);
    procedure setPercentualDesconto(const a_Value: Currency);
    procedure setPercentualMulta(const a_Value: Currency);
    procedure setPercentualJurosDiarios(const a_Value: Currency);
    procedure setTipoCobranca(const a_Value: Integer);
    procedure setIndice(const a_Value: String);
    procedure setConsiderarDataInicio(const a_Value: Boolean);
    procedure setDataCobranca(const a_Value: TDate);
    procedure setDataReajuste(const a_Value: TDate);
    procedure setAutorizado(const a_Value: Boolean);
    procedure setCancelado(const a_Value: Boolean);
    procedure setDataHoraCancelamento(const a_Value: TDateTime);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('idcontrato')]
    property idcontrato: String read getIdContrato write setIdContrato;

    [NasajonSerializeAttribute('servico')]
    property servico: String read getServico write setServico;

    [NasajonSerializeAttribute('valorvariavel')]
    property valorvariavel: Boolean read getValorVariavel write setValorVariavel;

    [NasajonSerializeAttribute('valoresvariaveis')]
    property valoresvariaveis: TObjectList<TValorVariavelItemContrato> read getValoresVariaveis write setValoresVariaveis;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getObservacao write setObservacao;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: TObjectList<TItemRateioFinanceiro> read getRateioFinanceiro write setRateioFinanceiro;

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Integer read getQuantidade write setQuantidade;

    [NasajonSerializeAttribute('instancia')]
    property instancia: String read getInstancia write setInstancia;

    [NasajonSerializeAttribute('codigoinstancia')]
    property codigoinstancia: String read getCodigoInstancia write setCodigoInstancia;

    [NasajonSerializeAttribute('nomeinstancia')]
    property nomeinstancia: String read getNomeInstancia write setNomeInstancia;

    [NasajonSerializeAttribute('tipoinstancia')]
    property tipoinstancia: String read getTipoInstancia write setTipoInstancia;

    [NasajonSerializeAttribute('descontosnopedido')]
    property descontosnopedido: Currency read getDescontosNoPedido write setDescontosNoPedido;

    [NasajonSerializeAttribute('unidadenatureza')]
    property unidadenatureza: Integer read getUnidadeNatureza write setUnidadeNatureza;

    [NasajonSerializeAttribute('unidadeintervalonatureza')]
    property unidadeintervalonatureza: Integer read getUnidadeIntervaloNatureza write setUnidadeIntervaloNatureza;

    [NasajonSerializeAttribute('quantidadeintervalonatureza')]
    property quantidadeintervalonatureza: Integer read getQuantidadeIntervaloNatureza write setQuantidadeIntervaloNatureza;

    [NasajonSerializeAttribute('tipovencimento')]
    property tipovencimento: Integer read getTipoVencimento write setTipoVencimento;

    [NasajonSerializeAttribute('diavencimento')]
    property diavencimento: Integer read getDiaVencimento write setDiaVencimento;

    [NasajonSerializeAttribute('adicaomesesvencimento')]
    property adicaomesesvencimento: Integer read getAdicaoMesesVencimento write setAdicaoMesesVencimento;

    [NasajonSerializeAttribute('qtddiasparainicio')]
    property qtddiasparainicio: Integer read getQtdDiasParaInicio write setQtdDiasParaInicio;

    [NasajonSerializeAttribute('qtddiasparafim')]
    property qtddiasparafim: Integer read getQtdDiasParaFim write setQtdDiasParaFim;

    [NasajonSerializeAttribute('qtdmesesparareajuste')]
    property qtdmesesparareajuste: Integer read getQtdMesesParaReajuste write setQtdMesesParaReajuste;

    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    [NasajonSerializeAttribute('percentualmulta')]
    property percentualmulta: Currency read getPercentualMulta write setPercentualMulta;

    [NasajonSerializeAttribute('percentualjurosdiarios')]
    property percentualjurosdiarios: Currency read getPercentualJurosDiarios write setPercentualJurosDiarios;

    [NasajonSerializeAttribute('tipocobranca')]
    property tipocobranca: Integer read getTipoCobranca write setTipoCobranca;

    [NasajonSerializeAttribute('indice')]
    property indice: String read getIndice write setIndice;

    [NasajonSerializeAttribute('considerardatainicio')]
    property considerardatainicio: Boolean read getConsiderarDataInicio write setConsiderarDataInicio;

    [NasajonSerializeAttribute('datacobranca')]
    property datacobranca: TDate read getDataCobranca write setDataCobranca;

    [NasajonSerializeAttribute('datareajuste')]
    property datareajuste: TDate read getDataReajuste write setDataReajuste;

    [NasajonSerializeAttribute('autorizado')]
    property autorizado: Boolean read getAutorizado write setAutorizado;

    [NasajonSerializeAttribute('cancelado')]
    property cancelado: Boolean read getCancelado write setCancelado;

    [NasajonSerializeAttribute('datahoracancelamento')]
    property datahoracancelamento: TDateTime read getDataHoraCancelamento write setDataHoraCancelamento;

    

end;

	
implementation

  uses
      api.send;  

function TItemContrato.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TItemContrato.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TItemContrato.getIdContrato: String;
begin
  Result := Self.m_IdContrato;
end;

procedure TItemContrato.setIdContrato(const a_Value: String);
begin
  Self.m_IdContrato := a_Value;
end;

function TItemContrato.getServico: String;
begin
  Result := Self.m_Servico;
end;

procedure TItemContrato.setServico(const a_Value: String);
begin
  Self.m_Servico := a_Value;
end;

function TItemContrato.getValorVariavel: Boolean;
begin
  Result := Self.m_ValorVariavel;
end;

procedure TItemContrato.setValorVariavel(const a_Value: Boolean);
begin
  Self.m_ValorVariavel := a_Value;
end;

function TItemContrato.getValoresVariaveis: TObjectList<TValorVariavelItemContrato>;
begin
  if not Assigned(Self.m_ValoresVariaveis)
    then Self.m_ValoresVariaveis := TObjectList<TValorVariavelItemContrato>.Create();
  Result := Self.m_ValoresVariaveis;
end;

procedure TItemContrato.setValoresVariaveis(const a_Value: TObjectList<TValorVariavelItemContrato>);
begin
  Self.m_ValoresVariaveis := a_Value;
end;

function TItemContrato.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TItemContrato.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TItemContrato.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TItemContrato.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

function TItemContrato.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TItemContrato.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TItemContrato.getRateioFinanceiro: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_RateioFinanceiro)
    then Self.m_RateioFinanceiro := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_RateioFinanceiro;
end;

procedure TItemContrato.setRateioFinanceiro(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_RateioFinanceiro := a_Value;
end;

function TItemContrato.getQuantidade: Integer;
begin
  Result := Self.m_Quantidade;
end;

procedure TItemContrato.setQuantidade(const a_Value: Integer);
begin
  Self.m_Quantidade := a_Value;
end;

function TItemContrato.getInstancia: String;
begin
  Result := Self.m_Instancia;
end;

procedure TItemContrato.setInstancia(const a_Value: String);
begin
  Self.m_Instancia := a_Value;
end;

function TItemContrato.getCodigoInstancia: String;
begin
  Result := Self.m_CodigoInstancia;
end;

procedure TItemContrato.setCodigoInstancia(const a_Value: String);
begin
  Self.m_CodigoInstancia := a_Value;
end;

function TItemContrato.getNomeInstancia: String;
begin
  Result := Self.m_NomeInstancia;
end;

procedure TItemContrato.setNomeInstancia(const a_Value: String);
begin
  Self.m_NomeInstancia := a_Value;
end;

function TItemContrato.getTipoInstancia: String;
begin
  Result := Self.m_TipoInstancia;
end;

procedure TItemContrato.setTipoInstancia(const a_Value: String);
begin
  Self.m_TipoInstancia := a_Value;
end;

function TItemContrato.getDescontosNoPedido: Currency;
begin
  Result := Self.m_DescontosNoPedido;
end;

procedure TItemContrato.setDescontosNoPedido(const a_Value: Currency);
begin
  Self.m_DescontosNoPedido := a_Value;
end;

function TItemContrato.getUnidadeNatureza: Integer;
begin
  Result := Self.m_UnidadeNatureza;
end;

procedure TItemContrato.setUnidadeNatureza(const a_Value: Integer);
begin
  Self.m_UnidadeNatureza := a_Value;
end;

function TItemContrato.getUnidadeIntervaloNatureza: Integer;
begin
  Result := Self.m_UnidadeIntervaloNatureza;
end;

procedure TItemContrato.setUnidadeIntervaloNatureza(const a_Value: Integer);
begin
  Self.m_UnidadeIntervaloNatureza := a_Value;
end;

function TItemContrato.getQuantidadeIntervaloNatureza: Integer;
begin
  Result := Self.m_QuantidadeIntervaloNatureza;
end;

procedure TItemContrato.setQuantidadeIntervaloNatureza(const a_Value: Integer);
begin
  Self.m_QuantidadeIntervaloNatureza := a_Value;
end;

function TItemContrato.getTipoVencimento: Integer;
begin
  Result := Self.m_TipoVencimento;
end;

procedure TItemContrato.setTipoVencimento(const a_Value: Integer);
begin
  Self.m_TipoVencimento := a_Value;
end;

function TItemContrato.getDiaVencimento: Integer;
begin
  Result := Self.m_DiaVencimento;
end;

procedure TItemContrato.setDiaVencimento(const a_Value: Integer);
begin
  Self.m_DiaVencimento := a_Value;
end;

function TItemContrato.getAdicaoMesesVencimento: Integer;
begin
  Result := Self.m_AdicaoMesesVencimento;
end;

procedure TItemContrato.setAdicaoMesesVencimento(const a_Value: Integer);
begin
  Self.m_AdicaoMesesVencimento := a_Value;
end;

function TItemContrato.getQtdDiasParaInicio: Integer;
begin
  Result := Self.m_QtdDiasParaInicio;
end;

procedure TItemContrato.setQtdDiasParaInicio(const a_Value: Integer);
begin
  Self.m_QtdDiasParaInicio := a_Value;
end;

function TItemContrato.getQtdDiasParaFim: Integer;
begin
  Result := Self.m_QtdDiasParaFim;
end;

procedure TItemContrato.setQtdDiasParaFim(const a_Value: Integer);
begin
  Self.m_QtdDiasParaFim := a_Value;
end;

function TItemContrato.getQtdMesesParaReajuste: Integer;
begin
  Result := Self.m_QtdMesesParaReajuste;
end;

procedure TItemContrato.setQtdMesesParaReajuste(const a_Value: Integer);
begin
  Self.m_QtdMesesParaReajuste := a_Value;
end;

function TItemContrato.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TItemContrato.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TItemContrato.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TItemContrato.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TItemContrato.getPercentualJurosDiarios: Currency;
begin
  Result := Self.m_PercentualJurosDiarios;
end;

procedure TItemContrato.setPercentualJurosDiarios(const a_Value: Currency);
begin
  Self.m_PercentualJurosDiarios := a_Value;
end;

function TItemContrato.getTipoCobranca: Integer;
begin
  Result := Self.m_TipoCobranca;
end;

procedure TItemContrato.setTipoCobranca(const a_Value: Integer);
begin
  Self.m_TipoCobranca := a_Value;
end;

function TItemContrato.getIndice: String;
begin
  Result := Self.m_Indice;
end;

procedure TItemContrato.setIndice(const a_Value: String);
begin
  Self.m_Indice := a_Value;
end;

function TItemContrato.getConsiderarDataInicio: Boolean;
begin
  Result := Self.m_ConsiderarDataInicio;
end;

procedure TItemContrato.setConsiderarDataInicio(const a_Value: Boolean);
begin
  Self.m_ConsiderarDataInicio := a_Value;
end;

function TItemContrato.getDataCobranca: TDate;
begin
  Result := Self.m_DataCobranca;
end;

procedure TItemContrato.setDataCobranca(const a_Value: TDate);
begin
  Self.m_DataCobranca := a_Value;
end;

function TItemContrato.getDataReajuste: TDate;
begin
  Result := Self.m_DataReajuste;
end;

procedure TItemContrato.setDataReajuste(const a_Value: TDate);
begin
  Self.m_DataReajuste := a_Value;
end;

function TItemContrato.getAutorizado: Boolean;
begin
  Result := Self.m_Autorizado;
end;

procedure TItemContrato.setAutorizado(const a_Value: Boolean);
begin
  Self.m_Autorizado := a_Value;
end;

function TItemContrato.getCancelado: Boolean;
begin
  Result := Self.m_Cancelado;
end;

procedure TItemContrato.setCancelado(const a_Value: Boolean);
begin
  Self.m_Cancelado := a_Value;
end;

function TItemContrato.getDataHoraCancelamento: TDateTime;
begin
  Result := Self.m_DataHoraCancelamento;
end;

procedure TItemContrato.setDataHoraCancelamento(const a_Value: TDateTime);
begin
  Self.m_DataHoraCancelamento := a_Value;
end;

destructor TItemContrato.Destroy;
begin
  Self.ValoresVariaveis.Free();  Self.RateioFinanceiro.Free();
end;

function TItemContrato.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemContrato.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemContrato.getNameAPI(): String;
begin
  Result := 'ItemContrato';
end;

function TItemContrato.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemContrato.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
