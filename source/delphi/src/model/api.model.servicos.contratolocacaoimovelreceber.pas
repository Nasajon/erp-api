unit api.model.servicos.ContratoLocacaoImovelReceber;

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
	
  , api.model.servicos.ItemContratoReceber
  , System.Generics.Collections
	

	;

type TContratoLocacaoImovelReceberNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Codigo: String;
    var m_Descricao: String;
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
    var m_Itens: TObjectList<TItemContratoReceberNovo>;
    

    function getId(): String;
    function getCodigo(): String;
    function getDescricao(): String;
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
    function getItens(): TObjectList<TItemContratoReceberNovo>;
    

    procedure setId(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
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
    procedure setItens(const a_Value: TObjectList<TItemContratoReceberNovo>);
    

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

    /// <summary>
/// Indica o nome do label ao informar a parte contratante.
    /// </summary>
    [NasajonSerializeAttribute('definicaocontratante')]
    property definicaocontratante: String read getDefinicaoContratante write setDefinicaoContratante;

    /// <summary>
/// Indica o nome do label ao informar a parte contratada.
    /// </summary>
    [NasajonSerializeAttribute('definicaobeneficiario')]
    property definicaobeneficiario: String read getDefinicaoBeneficiario write setDefinicaoBeneficiario;

    [NasajonSerializeAttribute('datainicial')]
    property datainicial: TDate read getDataInicial write setDataInicial;

    /// <summary>
/// Indica o administrador legal do contrato. Utilizado na geração do DIMOB.
    /// </summary>
    [NasajonSerializeAttribute('administrador')]
    property administrador: String read getAdministrador write setAdministrador;

    /// <summary>
/// Indica o estabelecimento do contrato.(contratada).
    /// </summary>
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Indica o cliente do contrato(contratante).
    /// </summary>
    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('fiador')]
    property fiador: String read getFiador write setFiador;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    /// <summary>
/// Indica o imóvel usado no contrato de locação.
    /// </summary>
    [NasajonSerializeAttribute('patrimonio')]
    property patrimonio: String read getPatrimonio write setPatrimonio;

    /// <summary>
/// Dias para cálculo de desconto no título com referência no vencimento.
    /// </summary>
    [NasajonSerializeAttribute('qtddiasdesconto')]
    property qtddiasdesconto: Integer read getQtdDiasDesconto write setQtdDiasDesconto;

    /// <summary>
/// Dias para cálculo de multa no título com referência no vencimento.
    /// </summary>
    [NasajonSerializeAttribute('qtddiasmulta')]
    property qtddiasmulta: Integer read getQtdDiasMulta write setQtdDiasMulta;

    /// <summary>
/// Dias para cálculo de juros no título com referência no vencimento.
    /// </summary>
    [NasajonSerializeAttribute('qtddiasjurosdiarios')]
    property qtddiasjurosdiarios: Integer read getQtdDiasJurosDiarios write setQtdDiasJurosDiarios;

    /// <summary>
/// Campo utilizado na geração do arquivo DIMOB
    /// </summary>
    [NasajonSerializeAttribute('percentualcomissao')]
    property percentualcomissao: Currency read getPercentualComissao write setPercentualComissao;

    /// <summary>
/// Campo utilizado na geração do arquivo DIMOB
    /// </summary>
    [NasajonSerializeAttribute('valorcomissao')]
    property valorcomissao: Currency read getValorComissao write setValorComissao;

    /// <summary>
/// Campo utilizado na geração do arquivo DIMOB
    /// </summary>
    [NasajonSerializeAttribute('percentualretencaoimposto')]
    property percentualretencaoimposto: Currency read getPercentualRetencaoImposto write setPercentualRetencaoImposto;

    /// <summary>
/// Campo utilizado na geração do arquivo DIMOB
    /// </summary>
    [NasajonSerializeAttribute('valorretencaoimposto')]
    property valorretencaoimposto: Currency read getValorRetencaoImposto write setValorRetencaoImposto;

    /// <summary>
/// Define se ao processar o contrato será gerado um registro de NFS-e.
    /// </summary>
    [NasajonSerializeAttribute('emitirnotafiscal')]
    property emitirnotafiscal: Boolean read getEmitirNotaFiscal write setEmitirNotaFiscal;

    [NasajonSerializeAttribute('itens')]
    property itens: TObjectList<TItemContratoReceberNovo> read getItens write setItens;

    

end;

type TContratoLocacaoImovelReceberExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    

    function getid(): String;
    

    procedure setid(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    

end;

	
implementation

  uses
      api.send;  

function TContratoLocacaoImovelReceberNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TContratoLocacaoImovelReceberNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContratoLocacaoImovelReceberNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TContratoLocacaoImovelReceberNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getDefinicaoContratante: String;
begin
  Result := Self.m_DefinicaoContratante;
end;

procedure TContratoLocacaoImovelReceberNovo.setDefinicaoContratante(const a_Value: String);
begin
  Self.m_DefinicaoContratante := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getDefinicaoBeneficiario: String;
begin
  Result := Self.m_DefinicaoBeneficiario;
end;

procedure TContratoLocacaoImovelReceberNovo.setDefinicaoBeneficiario(const a_Value: String);
begin
  Self.m_DefinicaoBeneficiario := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TContratoLocacaoImovelReceberNovo.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getAdministrador: String;
begin
  Result := Self.m_Administrador;
end;

procedure TContratoLocacaoImovelReceberNovo.setAdministrador(const a_Value: String);
begin
  Self.m_Administrador := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TContratoLocacaoImovelReceberNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TContratoLocacaoImovelReceberNovo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getFiador: String;
begin
  Result := Self.m_Fiador;
end;

procedure TContratoLocacaoImovelReceberNovo.setFiador(const a_Value: String);
begin
  Self.m_Fiador := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TContratoLocacaoImovelReceberNovo.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getPatrimonio: String;
begin
  Result := Self.m_Patrimonio;
end;

procedure TContratoLocacaoImovelReceberNovo.setPatrimonio(const a_Value: String);
begin
  Self.m_Patrimonio := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getQtdDiasDesconto: Integer;
begin
  Result := Self.m_QtdDiasDesconto;
end;

procedure TContratoLocacaoImovelReceberNovo.setQtdDiasDesconto(const a_Value: Integer);
begin
  Self.m_QtdDiasDesconto := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getQtdDiasMulta: Integer;
begin
  Result := Self.m_QtdDiasMulta;
end;

procedure TContratoLocacaoImovelReceberNovo.setQtdDiasMulta(const a_Value: Integer);
begin
  Self.m_QtdDiasMulta := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getQtdDiasJurosDiarios: Integer;
begin
  Result := Self.m_QtdDiasJurosDiarios;
end;

procedure TContratoLocacaoImovelReceberNovo.setQtdDiasJurosDiarios(const a_Value: Integer);
begin
  Self.m_QtdDiasJurosDiarios := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getPercentualComissao: Currency;
begin
  Result := Self.m_PercentualComissao;
end;

procedure TContratoLocacaoImovelReceberNovo.setPercentualComissao(const a_Value: Currency);
begin
  Self.m_PercentualComissao := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getValorComissao: Currency;
begin
  Result := Self.m_ValorComissao;
end;

procedure TContratoLocacaoImovelReceberNovo.setValorComissao(const a_Value: Currency);
begin
  Self.m_ValorComissao := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getPercentualRetencaoImposto: Currency;
begin
  Result := Self.m_PercentualRetencaoImposto;
end;

procedure TContratoLocacaoImovelReceberNovo.setPercentualRetencaoImposto(const a_Value: Currency);
begin
  Self.m_PercentualRetencaoImposto := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getValorRetencaoImposto: Currency;
begin
  Result := Self.m_ValorRetencaoImposto;
end;

procedure TContratoLocacaoImovelReceberNovo.setValorRetencaoImposto(const a_Value: Currency);
begin
  Self.m_ValorRetencaoImposto := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getEmitirNotaFiscal: Boolean;
begin
  Result := Self.m_EmitirNotaFiscal;
end;

procedure TContratoLocacaoImovelReceberNovo.setEmitirNotaFiscal(const a_Value: Boolean);
begin
  Self.m_EmitirNotaFiscal := a_Value;
end;

function TContratoLocacaoImovelReceberNovo.getItens: TObjectList<TItemContratoReceberNovo>;
begin
  if not Assigned(Self.m_Itens)
    then Self.m_Itens := TObjectList<TItemContratoReceberNovo>.Create();
  Result := Self.m_Itens;
end;

procedure TContratoLocacaoImovelReceberNovo.setItens(const a_Value: TObjectList<TItemContratoReceberNovo>);
begin
  Self.m_Itens := a_Value;
end;

destructor TContratoLocacaoImovelReceberNovo.Destroy;
begin
  Self.Itens.Free();
end;

function TContratoLocacaoImovelReceberNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContratoLocacaoImovelReceberNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContratoLocacaoImovelReceberNovo.getNameAPI(): String;
begin
  Result := 'ContratoLocacaoImovelReceberNovo';
end;

function TContratoLocacaoImovelReceberNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContratoLocacaoImovelReceberNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContratoLocacaoImovelReceberExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TContratoLocacaoImovelReceberExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

destructor TContratoLocacaoImovelReceberExcluir.Destroy;
begin

end;

function TContratoLocacaoImovelReceberExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContratoLocacaoImovelReceberExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContratoLocacaoImovelReceberExcluir.getNameAPI(): String;
begin
  Result := 'ContratoLocacaoImovelReceberExcluir';
end;

function TContratoLocacaoImovelReceberExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContratoLocacaoImovelReceberExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
