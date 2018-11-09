unit api.model.servicos.ContratoLocacaoImovelPagar;

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
	
  , api.model.servicos.ItemContratoPagar
  , System.Generics.Collections
	

	;

type TContratoLocacaoImovelPagarNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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
    var m_EmitirNotaFiscal: Boolean;
    var m_TipoContabilizacao: Integer;
    var m_Itens: TObjectList<TItemContratoPagarNovo>;
    

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
    function getEmitirNotaFiscal(): Boolean;
    function getTipoContabilizacao(): Integer;
    function getItens(): TObjectList<TItemContratoPagarNovo>;
    

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
    procedure setEmitirNotaFiscal(const a_Value: Boolean);
    procedure setTipoContabilizacao(const a_Value: Integer);
    procedure setItens(const a_Value: TObjectList<TItemContratoPagarNovo>);
    

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
/// Indica o estabelecimento do contrato(contratante).
    /// </summary>
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Indica o fornecedor do contrato(contratado).
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
/// Define se ao processar o contrato será gerado um registro de NFS-e.
    /// </summary>
    [NasajonSerializeAttribute('emitirnotafiscal')]
    property emitirnotafiscal: Boolean read getEmitirNotaFiscal write setEmitirNotaFiscal;

    /// <summary>
/// Utiliza na contabilização de títulos a pagar gerado por contratos. 0-Não Contabiliza/1-Contabiliza Provisão e Baixas/2-Contabiliza somente baixas.
    /// </summary>
    [NasajonSerializeAttribute('tipocontabilizacao')]
    property tipocontabilizacao: Integer read getTipoContabilizacao write setTipoContabilizacao;

    [NasajonSerializeAttribute('itens')]
    property itens: TObjectList<TItemContratoPagarNovo> read getItens write setItens;

    

end;

type TContratoLocacaoImovelPagarExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    

    function getId(): String;
    

    procedure setId(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    

end;

	
implementation

  uses
      api.send;  

function TContratoLocacaoImovelPagarNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TContratoLocacaoImovelPagarNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContratoLocacaoImovelPagarNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TContratoLocacaoImovelPagarNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getDefinicaoContratante: String;
begin
  Result := Self.m_DefinicaoContratante;
end;

procedure TContratoLocacaoImovelPagarNovo.setDefinicaoContratante(const a_Value: String);
begin
  Self.m_DefinicaoContratante := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getDefinicaoBeneficiario: String;
begin
  Result := Self.m_DefinicaoBeneficiario;
end;

procedure TContratoLocacaoImovelPagarNovo.setDefinicaoBeneficiario(const a_Value: String);
begin
  Self.m_DefinicaoBeneficiario := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TContratoLocacaoImovelPagarNovo.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getAdministrador: String;
begin
  Result := Self.m_Administrador;
end;

procedure TContratoLocacaoImovelPagarNovo.setAdministrador(const a_Value: String);
begin
  Self.m_Administrador := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TContratoLocacaoImovelPagarNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TContratoLocacaoImovelPagarNovo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getFiador: String;
begin
  Result := Self.m_Fiador;
end;

procedure TContratoLocacaoImovelPagarNovo.setFiador(const a_Value: String);
begin
  Self.m_Fiador := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TContratoLocacaoImovelPagarNovo.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getPatrimonio: String;
begin
  Result := Self.m_Patrimonio;
end;

procedure TContratoLocacaoImovelPagarNovo.setPatrimonio(const a_Value: String);
begin
  Self.m_Patrimonio := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getQtdDiasDesconto: Integer;
begin
  Result := Self.m_QtdDiasDesconto;
end;

procedure TContratoLocacaoImovelPagarNovo.setQtdDiasDesconto(const a_Value: Integer);
begin
  Self.m_QtdDiasDesconto := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getQtdDiasMulta: Integer;
begin
  Result := Self.m_QtdDiasMulta;
end;

procedure TContratoLocacaoImovelPagarNovo.setQtdDiasMulta(const a_Value: Integer);
begin
  Self.m_QtdDiasMulta := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getQtdDiasJurosDiarios: Integer;
begin
  Result := Self.m_QtdDiasJurosDiarios;
end;

procedure TContratoLocacaoImovelPagarNovo.setQtdDiasJurosDiarios(const a_Value: Integer);
begin
  Self.m_QtdDiasJurosDiarios := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getEmitirNotaFiscal: Boolean;
begin
  Result := Self.m_EmitirNotaFiscal;
end;

procedure TContratoLocacaoImovelPagarNovo.setEmitirNotaFiscal(const a_Value: Boolean);
begin
  Self.m_EmitirNotaFiscal := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getTipoContabilizacao: Integer;
begin
  Result := Self.m_TipoContabilizacao;
end;

procedure TContratoLocacaoImovelPagarNovo.setTipoContabilizacao(const a_Value: Integer);
begin
  Self.m_TipoContabilizacao := a_Value;
end;

function TContratoLocacaoImovelPagarNovo.getItens: TObjectList<TItemContratoPagarNovo>;
begin
  if not Assigned(Self.m_Itens)
    then Self.m_Itens := TObjectList<TItemContratoPagarNovo>.Create();
  Result := Self.m_Itens;
end;

procedure TContratoLocacaoImovelPagarNovo.setItens(const a_Value: TObjectList<TItemContratoPagarNovo>);
begin
  Self.m_Itens := a_Value;
end;

destructor TContratoLocacaoImovelPagarNovo.Destroy;
begin
  Self.Itens.Free();
end;

function TContratoLocacaoImovelPagarNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContratoLocacaoImovelPagarNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContratoLocacaoImovelPagarNovo.getNameAPI(): String;
begin
  Result := 'ContratoLocacaoImovelPagarNovo';
end;

function TContratoLocacaoImovelPagarNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContratoLocacaoImovelPagarNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContratoLocacaoImovelPagarExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TContratoLocacaoImovelPagarExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TContratoLocacaoImovelPagarExcluir.Destroy;
begin

end;

function TContratoLocacaoImovelPagarExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContratoLocacaoImovelPagarExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContratoLocacaoImovelPagarExcluir.getNameAPI(): String;
begin
  Result := 'ContratoLocacaoImovelPagarExcluir';
end;

function TContratoLocacaoImovelPagarExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContratoLocacaoImovelPagarExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
