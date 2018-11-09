unit api.model.financas.BaixaTituloRenegociado;

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

type TBaixaTituloRenegociadoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdTitulo: String;
    var m_Data: TDate;
    var m_PercentualDesconto: Currency;
    var m_ValorDesconto: Currency;
    var m_PercentualJuros: Currency;
    var m_ValorJuros: Currency;
    var m_PercentualMulta: Currency;
    var m_ValorMulta: Currency;
    var m_ValorAcrescimo: Currency;
    var m_ValorTarifaBancaria: Currency;
    var m_ValorPisRetido: Currency;
    var m_ValorCofinsRetido: Currency;
    var m_ValorCsllRetido: Currency;
    var m_ValorIrrfRetido: Currency;
    var m_ValorInssRetido: Currency;
    var m_ValorissRetido: Currency;
    var m_ValorIrrfRetidoNotaFiscal: Currency;
    var m_ValorInssRetidoNotaFiscal: Currency;
    var m_Valor: Currency;
    var m_Documento: String;
    var m_Historico: WideString;
    var m_Favorecido: String;
    var m_valorvariacaocambialativa: Currency;
    var m_valorvariacaocambialpassiva: Currency;
    var m_OutrasRetencoes: Currency;
    var m_DescricaoOutrasRetencoes: String;
    var m_Origem: Integer;
    

    function getIdTitulo(): String;
    function getData(): TDate;
    function getPercentualDesconto(): Currency;
    function getValorDesconto(): Currency;
    function getPercentualJuros(): Currency;
    function getValorJuros(): Currency;
    function getPercentualMulta(): Currency;
    function getValorMulta(): Currency;
    function getValorAcrescimo(): Currency;
    function getValorTarifaBancaria(): Currency;
    function getValorPisRetido(): Currency;
    function getValorCofinsRetido(): Currency;
    function getValorCsllRetido(): Currency;
    function getValorIrrfRetido(): Currency;
    function getValorInssRetido(): Currency;
    function getValorissRetido(): Currency;
    function getValorIrrfRetidoNotaFiscal(): Currency;
    function getValorInssRetidoNotaFiscal(): Currency;
    function getValor(): Currency;
    function getDocumento(): String;
    function getHistorico(): WideString;
    function getFavorecido(): String;
    function getvalorvariacaocambialativa(): Currency;
    function getvalorvariacaocambialpassiva(): Currency;
    function getOutrasRetencoes(): Currency;
    function getDescricaoOutrasRetencoes(): String;
    function getOrigem(): Integer;
    

    procedure setIdTitulo(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setPercentualDesconto(const a_Value: Currency);
    procedure setValorDesconto(const a_Value: Currency);
    procedure setPercentualJuros(const a_Value: Currency);
    procedure setValorJuros(const a_Value: Currency);
    procedure setPercentualMulta(const a_Value: Currency);
    procedure setValorMulta(const a_Value: Currency);
    procedure setValorAcrescimo(const a_Value: Currency);
    procedure setValorTarifaBancaria(const a_Value: Currency);
    procedure setValorPisRetido(const a_Value: Currency);
    procedure setValorCofinsRetido(const a_Value: Currency);
    procedure setValorCsllRetido(const a_Value: Currency);
    procedure setValorIrrfRetido(const a_Value: Currency);
    procedure setValorInssRetido(const a_Value: Currency);
    procedure setValorissRetido(const a_Value: Currency);
    procedure setValorIrrfRetidoNotaFiscal(const a_Value: Currency);
    procedure setValorInssRetidoNotaFiscal(const a_Value: Currency);
    procedure setValor(const a_Value: Currency);
    procedure setDocumento(const a_Value: String);
    procedure setHistorico(const a_Value: WideString);
    procedure setFavorecido(const a_Value: String);
    procedure setvalorvariacaocambialativa(const a_Value: Currency);
    procedure setvalorvariacaocambialpassiva(const a_Value: Currency);
    procedure setOutrasRetencoes(const a_Value: Currency);
    procedure setDescricaoOutrasRetencoes(const a_Value: String);
    procedure setOrigem(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idtitulo')]
    property idtitulo: String read getIdTitulo write setIdTitulo;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('percentualdesconto')]
    property percentualdesconto: Currency read getPercentualDesconto write setPercentualDesconto;

    [NasajonSerializeAttribute('valordesconto')]
    property valordesconto: Currency read getValorDesconto write setValorDesconto;

    [NasajonSerializeAttribute('percentualjuros')]
    property percentualjuros: Currency read getPercentualJuros write setPercentualJuros;

    [NasajonSerializeAttribute('valorjuros')]
    property valorjuros: Currency read getValorJuros write setValorJuros;

    [NasajonSerializeAttribute('percentualmulta')]
    property percentualmulta: Currency read getPercentualMulta write setPercentualMulta;

    [NasajonSerializeAttribute('valormulta')]
    property valormulta: Currency read getValorMulta write setValorMulta;

    [NasajonSerializeAttribute('valoracrescimo')]
    property valoracrescimo: Currency read getValorAcrescimo write setValorAcrescimo;

    [NasajonSerializeAttribute('valortarifabancaria')]
    property valortarifabancaria: Currency read getValorTarifaBancaria write setValorTarifaBancaria;

    [NasajonSerializeAttribute('valorpisretido')]
    property valorpisretido: Currency read getValorPisRetido write setValorPisRetido;

    [NasajonSerializeAttribute('valorcofinsretido')]
    property valorcofinsretido: Currency read getValorCofinsRetido write setValorCofinsRetido;

    [NasajonSerializeAttribute('valorcsllretido')]
    property valorcsllretido: Currency read getValorCsllRetido write setValorCsllRetido;

    [NasajonSerializeAttribute('valorirrfretido')]
    property valorirrfretido: Currency read getValorIrrfRetido write setValorIrrfRetido;

    [NasajonSerializeAttribute('valorinssretido')]
    property valorinssretido: Currency read getValorInssRetido write setValorInssRetido;

    [NasajonSerializeAttribute('valorissretido')]
    property valorissretido: Currency read getValorissRetido write setValorissRetido;

    [NasajonSerializeAttribute('valorirrfretidonotafiscal')]
    property valorirrfretidonotafiscal: Currency read getValorIrrfRetidoNotaFiscal write setValorIrrfRetidoNotaFiscal;

    [NasajonSerializeAttribute('valorinssretidonotafiscal')]
    property valorinssretidonotafiscal: Currency read getValorInssRetidoNotaFiscal write setValorInssRetidoNotaFiscal;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    [NasajonSerializeAttribute('documento')]
    property documento: String read getDocumento write setDocumento;

    [NasajonSerializeAttribute('historico')]
    property historico: WideString read getHistorico write setHistorico;

    [NasajonSerializeAttribute('favorecido')]
    property favorecido: String read getFavorecido write setFavorecido;

    [NasajonSerializeAttribute('valorvariacaocambialativa')]
    property valorvariacaocambialativa: Currency read getvalorvariacaocambialativa write setvalorvariacaocambialativa;

    [NasajonSerializeAttribute('valorvariacaocambialpassiva')]
    property valorvariacaocambialpassiva: Currency read getvalorvariacaocambialpassiva write setvalorvariacaocambialpassiva;

    [NasajonSerializeAttribute('outrasretencoes')]
    property outrasretencoes: Currency read getOutrasRetencoes write setOutrasRetencoes;

    [NasajonSerializeAttribute('descricaooutrasretencoes')]
    property descricaooutrasretencoes: String read getDescricaoOutrasRetencoes write setDescricaoOutrasRetencoes;

    [NasajonSerializeAttribute('origem')]
    property origem: Integer read getOrigem write setOrigem;

    

end;

type TBaixaTituloRenegociadoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdTitulo: String;
    

    function getIdTitulo(): String;
    

    procedure setIdTitulo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idtitulo')]
    property idtitulo: String read getIdTitulo write setIdTitulo;

    

end;

	
implementation

  uses
      api.send;  

function TBaixaTituloRenegociadoNovo.getIdTitulo: String;
begin
  Result := Self.m_IdTitulo;
end;

procedure TBaixaTituloRenegociadoNovo.setIdTitulo(const a_Value: String);
begin
  Self.m_IdTitulo := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TBaixaTituloRenegociadoNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getPercentualDesconto: Currency;
begin
  Result := Self.m_PercentualDesconto;
end;

procedure TBaixaTituloRenegociadoNovo.setPercentualDesconto(const a_Value: Currency);
begin
  Self.m_PercentualDesconto := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorDesconto: Currency;
begin
  Result := Self.m_ValorDesconto;
end;

procedure TBaixaTituloRenegociadoNovo.setValorDesconto(const a_Value: Currency);
begin
  Self.m_ValorDesconto := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getPercentualJuros: Currency;
begin
  Result := Self.m_PercentualJuros;
end;

procedure TBaixaTituloRenegociadoNovo.setPercentualJuros(const a_Value: Currency);
begin
  Self.m_PercentualJuros := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorJuros: Currency;
begin
  Result := Self.m_ValorJuros;
end;

procedure TBaixaTituloRenegociadoNovo.setValorJuros(const a_Value: Currency);
begin
  Self.m_ValorJuros := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getPercentualMulta: Currency;
begin
  Result := Self.m_PercentualMulta;
end;

procedure TBaixaTituloRenegociadoNovo.setPercentualMulta(const a_Value: Currency);
begin
  Self.m_PercentualMulta := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorMulta: Currency;
begin
  Result := Self.m_ValorMulta;
end;

procedure TBaixaTituloRenegociadoNovo.setValorMulta(const a_Value: Currency);
begin
  Self.m_ValorMulta := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorAcrescimo: Currency;
begin
  Result := Self.m_ValorAcrescimo;
end;

procedure TBaixaTituloRenegociadoNovo.setValorAcrescimo(const a_Value: Currency);
begin
  Self.m_ValorAcrescimo := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorTarifaBancaria: Currency;
begin
  Result := Self.m_ValorTarifaBancaria;
end;

procedure TBaixaTituloRenegociadoNovo.setValorTarifaBancaria(const a_Value: Currency);
begin
  Self.m_ValorTarifaBancaria := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorPisRetido: Currency;
begin
  Result := Self.m_ValorPisRetido;
end;

procedure TBaixaTituloRenegociadoNovo.setValorPisRetido(const a_Value: Currency);
begin
  Self.m_ValorPisRetido := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorCofinsRetido: Currency;
begin
  Result := Self.m_ValorCofinsRetido;
end;

procedure TBaixaTituloRenegociadoNovo.setValorCofinsRetido(const a_Value: Currency);
begin
  Self.m_ValorCofinsRetido := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorCsllRetido: Currency;
begin
  Result := Self.m_ValorCsllRetido;
end;

procedure TBaixaTituloRenegociadoNovo.setValorCsllRetido(const a_Value: Currency);
begin
  Self.m_ValorCsllRetido := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorIrrfRetido: Currency;
begin
  Result := Self.m_ValorIrrfRetido;
end;

procedure TBaixaTituloRenegociadoNovo.setValorIrrfRetido(const a_Value: Currency);
begin
  Self.m_ValorIrrfRetido := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorInssRetido: Currency;
begin
  Result := Self.m_ValorInssRetido;
end;

procedure TBaixaTituloRenegociadoNovo.setValorInssRetido(const a_Value: Currency);
begin
  Self.m_ValorInssRetido := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorissRetido: Currency;
begin
  Result := Self.m_ValorissRetido;
end;

procedure TBaixaTituloRenegociadoNovo.setValorissRetido(const a_Value: Currency);
begin
  Self.m_ValorissRetido := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorIrrfRetidoNotaFiscal: Currency;
begin
  Result := Self.m_ValorIrrfRetidoNotaFiscal;
end;

procedure TBaixaTituloRenegociadoNovo.setValorIrrfRetidoNotaFiscal(const a_Value: Currency);
begin
  Self.m_ValorIrrfRetidoNotaFiscal := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValorInssRetidoNotaFiscal: Currency;
begin
  Result := Self.m_ValorInssRetidoNotaFiscal;
end;

procedure TBaixaTituloRenegociadoNovo.setValorInssRetidoNotaFiscal(const a_Value: Currency);
begin
  Self.m_ValorInssRetidoNotaFiscal := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TBaixaTituloRenegociadoNovo.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getDocumento: String;
begin
  Result := Self.m_Documento;
end;

procedure TBaixaTituloRenegociadoNovo.setDocumento(const a_Value: String);
begin
  Self.m_Documento := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getHistorico: WideString;
begin
  Result := Self.m_Historico;
end;

procedure TBaixaTituloRenegociadoNovo.setHistorico(const a_Value: WideString);
begin
  Self.m_Historico := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getFavorecido: String;
begin
  Result := Self.m_Favorecido;
end;

procedure TBaixaTituloRenegociadoNovo.setFavorecido(const a_Value: String);
begin
  Self.m_Favorecido := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getvalorvariacaocambialativa: Currency;
begin
  Result := Self.m_valorvariacaocambialativa;
end;

procedure TBaixaTituloRenegociadoNovo.setvalorvariacaocambialativa(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialativa := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getvalorvariacaocambialpassiva: Currency;
begin
  Result := Self.m_valorvariacaocambialpassiva;
end;

procedure TBaixaTituloRenegociadoNovo.setvalorvariacaocambialpassiva(const a_Value: Currency);
begin
  Self.m_valorvariacaocambialpassiva := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getOutrasRetencoes: Currency;
begin
  Result := Self.m_OutrasRetencoes;
end;

procedure TBaixaTituloRenegociadoNovo.setOutrasRetencoes(const a_Value: Currency);
begin
  Self.m_OutrasRetencoes := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getDescricaoOutrasRetencoes: String;
begin
  Result := Self.m_DescricaoOutrasRetencoes;
end;

procedure TBaixaTituloRenegociadoNovo.setDescricaoOutrasRetencoes(const a_Value: String);
begin
  Self.m_DescricaoOutrasRetencoes := a_Value;
end;

function TBaixaTituloRenegociadoNovo.getOrigem: Integer;
begin
  Result := Self.m_Origem;
end;

procedure TBaixaTituloRenegociadoNovo.setOrigem(const a_Value: Integer);
begin
  Self.m_Origem := a_Value;
end;

destructor TBaixaTituloRenegociadoNovo.Destroy;
begin

end;

function TBaixaTituloRenegociadoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TBaixaTituloRenegociadoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TBaixaTituloRenegociadoNovo.getNameAPI(): String;
begin
  Result := 'BaixaTituloRenegociadoNovo';
end;

function TBaixaTituloRenegociadoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TBaixaTituloRenegociadoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TBaixaTituloRenegociadoExcluir.getIdTitulo: String;
begin
  Result := Self.m_IdTitulo;
end;

procedure TBaixaTituloRenegociadoExcluir.setIdTitulo(const a_Value: String);
begin
  Self.m_IdTitulo := a_Value;
end;

destructor TBaixaTituloRenegociadoExcluir.Destroy;
begin

end;

function TBaixaTituloRenegociadoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TBaixaTituloRenegociadoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TBaixaTituloRenegociadoExcluir.getNameAPI(): String;
begin
  Result := 'BaixaTituloRenegociadoExcluir';
end;

function TBaixaTituloRenegociadoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TBaixaTituloRenegociadoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
