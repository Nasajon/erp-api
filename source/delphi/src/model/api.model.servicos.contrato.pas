unit api.model.servicos.Contrato;

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
	
  , api.model.servicos.ItemContrato
  , System.Generics.Collections
	

	;

type TContrato = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_TipoContrato: Integer;
    var m_DefinicaoContratante: String;
    var m_DefinicaoBeneficiario: String;
    var m_DataInicial: TDate;
    var m_Administrador: String;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_Fiador: String;
    var m_Conta: String;
    var m_Patrimonio: String;
    var m_QtdDiasDesconto: Integer;
    var m_QtdDiasMulta: Integer;
    var m_QtdDiasJurosDiarios: Integer;
    var m_PercentualComissao: Currency;
    var m_ValorComissao: Currency;
    var m_PercentualRetencaoImposto: Currency;
    var m_ValorRetencaoImposto: Currency;
    var m_EmitirNotaFiscal: Boolean;
    var m_TipoContabilizacao: Integer;
    var m_Autorizado: Integer;
    var m_Cancelado: Boolean;
    var m_DataHoraCancelamento: TDateTime;
    var m_TipoFuncao: Integer;
    var m_Itens: TObjectList<TItemContrato>;
    

    function getId(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getTipoContrato(): Integer;
    function getDefinicaoContratante(): String;
    function getDefinicaoBeneficiario(): String;
    function getDataInicial(): TDate;
    function getAdministrador(): String;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getFiador(): String;
    function getConta(): String;
    function getPatrimonio(): String;
    function getQtdDiasDesconto(): Integer;
    function getQtdDiasMulta(): Integer;
    function getQtdDiasJurosDiarios(): Integer;
    function getPercentualComissao(): Currency;
    function getValorComissao(): Currency;
    function getPercentualRetencaoImposto(): Currency;
    function getValorRetencaoImposto(): Currency;
    function getEmitirNotaFiscal(): Boolean;
    function getTipoContabilizacao(): Integer;
    function getAutorizado(): Integer;
    function getCancelado(): Boolean;
    function getDataHoraCancelamento(): TDateTime;
    function getTipoFuncao(): Integer;
    function getItens(): TObjectList<TItemContrato>;
    

    procedure setId(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setTipoContrato(const a_Value: Integer);
    procedure setDefinicaoContratante(const a_Value: String);
    procedure setDefinicaoBeneficiario(const a_Value: String);
    procedure setDataInicial(const a_Value: TDate);
    procedure setAdministrador(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setFiador(const a_Value: String);
    procedure setConta(const a_Value: String);
    procedure setPatrimonio(const a_Value: String);
    procedure setQtdDiasDesconto(const a_Value: Integer);
    procedure setQtdDiasMulta(const a_Value: Integer);
    procedure setQtdDiasJurosDiarios(const a_Value: Integer);
    procedure setPercentualComissao(const a_Value: Currency);
    procedure setValorComissao(const a_Value: Currency);
    procedure setPercentualRetencaoImposto(const a_Value: Currency);
    procedure setValorRetencaoImposto(const a_Value: Currency);
    procedure setEmitirNotaFiscal(const a_Value: Boolean);
    procedure setTipoContabilizacao(const a_Value: Integer);
    procedure setAutorizado(const a_Value: Integer);
    procedure setCancelado(const a_Value: Boolean);
    procedure setDataHoraCancelamento(const a_Value: TDateTime);
    procedure setTipoFuncao(const a_Value: Integer);
    procedure setItens(const a_Value: TObjectList<TItemContrato>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('tipocontrato')]
    property tipocontrato: Integer read getTipoContrato write setTipoContrato;

    [NasajonSerializeAttribute('definicaocontratante')]
    property definicaocontratante: String read getDefinicaoContratante write setDefinicaoContratante;

    [NasajonSerializeAttribute('definicaobeneficiario')]
    property definicaobeneficiario: String read getDefinicaoBeneficiario write setDefinicaoBeneficiario;

    [NasajonSerializeAttribute('datainicial')]
    property datainicial: TDate read getDataInicial write setDataInicial;

    [NasajonSerializeAttribute('administrador')]
    property administrador: String read getAdministrador write setAdministrador;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('fiador')]
    property fiador: String read getFiador write setFiador;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    [NasajonSerializeAttribute('patrimonio')]
    property patrimonio: String read getPatrimonio write setPatrimonio;

    [NasajonSerializeAttribute('qtddiasdesconto')]
    property qtddiasdesconto: Integer read getQtdDiasDesconto write setQtdDiasDesconto;

    [NasajonSerializeAttribute('qtddiasmulta')]
    property qtddiasmulta: Integer read getQtdDiasMulta write setQtdDiasMulta;

    [NasajonSerializeAttribute('qtddiasjurosdiarios')]
    property qtddiasjurosdiarios: Integer read getQtdDiasJurosDiarios write setQtdDiasJurosDiarios;

    [NasajonSerializeAttribute('percentualcomissao')]
    property percentualcomissao: Currency read getPercentualComissao write setPercentualComissao;

    [NasajonSerializeAttribute('valorcomissao')]
    property valorcomissao: Currency read getValorComissao write setValorComissao;

    [NasajonSerializeAttribute('percentualretencaoimposto')]
    property percentualretencaoimposto: Currency read getPercentualRetencaoImposto write setPercentualRetencaoImposto;

    [NasajonSerializeAttribute('valorretencaoimposto')]
    property valorretencaoimposto: Currency read getValorRetencaoImposto write setValorRetencaoImposto;

    [NasajonSerializeAttribute('emitirnotafiscal')]
    property emitirnotafiscal: Boolean read getEmitirNotaFiscal write setEmitirNotaFiscal;

    [NasajonSerializeAttribute('tipocontabilizacao')]
    property tipocontabilizacao: Integer read getTipoContabilizacao write setTipoContabilizacao;

    [NasajonSerializeAttribute('autorizado')]
    property autorizado: Integer read getAutorizado write setAutorizado;

    [NasajonSerializeAttribute('cancelado')]
    property cancelado: Boolean read getCancelado write setCancelado;

    [NasajonSerializeAttribute('datahoracancelamento')]
    property datahoracancelamento: TDateTime read getDataHoraCancelamento write setDataHoraCancelamento;

    [NasajonSerializeAttribute('tipofuncao')]
    property tipofuncao: Integer read getTipoFuncao write setTipoFuncao;

    [NasajonSerializeAttribute('itens')]
    property itens: TObjectList<TItemContrato> read getItens write setItens;

    

end;

	
implementation

  uses
      api.send;  

function TContrato.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TContrato.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TContrato.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContrato.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TContrato.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TContrato.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TContrato.getTipoContrato: Integer;
begin
  Result := Self.m_TipoContrato;
end;

procedure TContrato.setTipoContrato(const a_Value: Integer);
begin
  Self.m_TipoContrato := a_Value;
end;

function TContrato.getDefinicaoContratante: String;
begin
  Result := Self.m_DefinicaoContratante;
end;

procedure TContrato.setDefinicaoContratante(const a_Value: String);
begin
  Self.m_DefinicaoContratante := a_Value;
end;

function TContrato.getDefinicaoBeneficiario: String;
begin
  Result := Self.m_DefinicaoBeneficiario;
end;

procedure TContrato.setDefinicaoBeneficiario(const a_Value: String);
begin
  Self.m_DefinicaoBeneficiario := a_Value;
end;

function TContrato.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TContrato.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TContrato.getAdministrador: String;
begin
  Result := Self.m_Administrador;
end;

procedure TContrato.setAdministrador(const a_Value: String);
begin
  Self.m_Administrador := a_Value;
end;

function TContrato.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TContrato.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TContrato.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TContrato.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TContrato.getFiador: String;
begin
  Result := Self.m_Fiador;
end;

procedure TContrato.setFiador(const a_Value: String);
begin
  Self.m_Fiador := a_Value;
end;

function TContrato.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TContrato.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TContrato.getPatrimonio: String;
begin
  Result := Self.m_Patrimonio;
end;

procedure TContrato.setPatrimonio(const a_Value: String);
begin
  Self.m_Patrimonio := a_Value;
end;

function TContrato.getQtdDiasDesconto: Integer;
begin
  Result := Self.m_QtdDiasDesconto;
end;

procedure TContrato.setQtdDiasDesconto(const a_Value: Integer);
begin
  Self.m_QtdDiasDesconto := a_Value;
end;

function TContrato.getQtdDiasMulta: Integer;
begin
  Result := Self.m_QtdDiasMulta;
end;

procedure TContrato.setQtdDiasMulta(const a_Value: Integer);
begin
  Self.m_QtdDiasMulta := a_Value;
end;

function TContrato.getQtdDiasJurosDiarios: Integer;
begin
  Result := Self.m_QtdDiasJurosDiarios;
end;

procedure TContrato.setQtdDiasJurosDiarios(const a_Value: Integer);
begin
  Self.m_QtdDiasJurosDiarios := a_Value;
end;

function TContrato.getPercentualComissao: Currency;
begin
  Result := Self.m_PercentualComissao;
end;

procedure TContrato.setPercentualComissao(const a_Value: Currency);
begin
  Self.m_PercentualComissao := a_Value;
end;

function TContrato.getValorComissao: Currency;
begin
  Result := Self.m_ValorComissao;
end;

procedure TContrato.setValorComissao(const a_Value: Currency);
begin
  Self.m_ValorComissao := a_Value;
end;

function TContrato.getPercentualRetencaoImposto: Currency;
begin
  Result := Self.m_PercentualRetencaoImposto;
end;

procedure TContrato.setPercentualRetencaoImposto(const a_Value: Currency);
begin
  Self.m_PercentualRetencaoImposto := a_Value;
end;

function TContrato.getValorRetencaoImposto: Currency;
begin
  Result := Self.m_ValorRetencaoImposto;
end;

procedure TContrato.setValorRetencaoImposto(const a_Value: Currency);
begin
  Self.m_ValorRetencaoImposto := a_Value;
end;

function TContrato.getEmitirNotaFiscal: Boolean;
begin
  Result := Self.m_EmitirNotaFiscal;
end;

procedure TContrato.setEmitirNotaFiscal(const a_Value: Boolean);
begin
  Self.m_EmitirNotaFiscal := a_Value;
end;

function TContrato.getTipoContabilizacao: Integer;
begin
  Result := Self.m_TipoContabilizacao;
end;

procedure TContrato.setTipoContabilizacao(const a_Value: Integer);
begin
  Self.m_TipoContabilizacao := a_Value;
end;

function TContrato.getAutorizado: Integer;
begin
  Result := Self.m_Autorizado;
end;

procedure TContrato.setAutorizado(const a_Value: Integer);
begin
  Self.m_Autorizado := a_Value;
end;

function TContrato.getCancelado: Boolean;
begin
  Result := Self.m_Cancelado;
end;

procedure TContrato.setCancelado(const a_Value: Boolean);
begin
  Self.m_Cancelado := a_Value;
end;

function TContrato.getDataHoraCancelamento: TDateTime;
begin
  Result := Self.m_DataHoraCancelamento;
end;

procedure TContrato.setDataHoraCancelamento(const a_Value: TDateTime);
begin
  Self.m_DataHoraCancelamento := a_Value;
end;

function TContrato.getTipoFuncao: Integer;
begin
  Result := Self.m_TipoFuncao;
end;

procedure TContrato.setTipoFuncao(const a_Value: Integer);
begin
  Self.m_TipoFuncao := a_Value;
end;

function TContrato.getItens: TObjectList<TItemContrato>;
begin
  if not Assigned(Self.m_Itens)
    then Self.m_Itens := TObjectList<TItemContrato>.Create();
  Result := Self.m_Itens;
end;

procedure TContrato.setItens(const a_Value: TObjectList<TItemContrato>);
begin
  Self.m_Itens := a_Value;
end;

destructor TContrato.Destroy;
begin
  Self.Itens.Free();
end;

function TContrato.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContrato.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContrato.getNameAPI(): String;
begin
  Result := 'Contrato';
end;

function TContrato.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContrato.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
