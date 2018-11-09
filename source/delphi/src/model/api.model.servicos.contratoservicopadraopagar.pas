unit api.model.servicos.ContratoServicoPadraoPagar;

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

type TContratoServicoPadraoPagarNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_DefinicaoContratante: String;
    var m_DefinicaoBeneficiario: String;
    var m_DataInicial: TDate;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_Conta: String;
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
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getConta(): String;
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
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setConta(const a_Value: String);
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
/// Indica o estabelecimento do contrato(contratante).
    /// </summary>
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Indica o fornecedor do contrato(contratado).
    /// </summary>
    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

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

type TContratoServicoPadraoPagarNovo_Importacao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_DefinicaoContratante: String;
    var m_DefinicaoBeneficiario: String;
    var m_DataInicial: TDate;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_Conta: String;
    var m_QtdDiasDesconto: Integer;
    var m_QtdDiasMulta: Integer;
    var m_QtdDiasJurosDiarios: Integer;
    var m_EmitirNotaFiscal: Boolean;
    var m_TipoContabilizacao: Integer;
    var m_Autorizado: Integer;
    var m_Cancelado: Boolean;
    var m_DataHoraCancelamento: TDateTime;
    var m_Itens: TObjectList<TItemContratoPagarNovo_Importacao>;
    

    function getId(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getDefinicaoContratante(): String;
    function getDefinicaoBeneficiario(): String;
    function getDataInicial(): TDate;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getConta(): String;
    function getQtdDiasDesconto(): Integer;
    function getQtdDiasMulta(): Integer;
    function getQtdDiasJurosDiarios(): Integer;
    function getEmitirNotaFiscal(): Boolean;
    function getTipoContabilizacao(): Integer;
    function getAutorizado(): Integer;
    function getCancelado(): Boolean;
    function getDataHoraCancelamento(): TDateTime;
    function getItens(): TObjectList<TItemContratoPagarNovo_Importacao>;
    

    procedure setId(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setDefinicaoContratante(const a_Value: String);
    procedure setDefinicaoBeneficiario(const a_Value: String);
    procedure setDataInicial(const a_Value: TDate);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setConta(const a_Value: String);
    procedure setQtdDiasDesconto(const a_Value: Integer);
    procedure setQtdDiasMulta(const a_Value: Integer);
    procedure setQtdDiasJurosDiarios(const a_Value: Integer);
    procedure setEmitirNotaFiscal(const a_Value: Boolean);
    procedure setTipoContabilizacao(const a_Value: Integer);
    procedure setAutorizado(const a_Value: Integer);
    procedure setCancelado(const a_Value: Boolean);
    procedure setDataHoraCancelamento(const a_Value: TDateTime);
    procedure setItens(const a_Value: TObjectList<TItemContratoPagarNovo_Importacao>);
    

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
/// Indica o estabelecimento do contrato(contratante).
    /// </summary>
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Indica o fornecedor do contrato(contratado).
    /// </summary>
    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

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

    /// <summary>
/// Define se o contrato está autorizado para processamento. Valores: 0-Sim, 1-Não, 2-Parcial.
    /// </summary>
    [NasajonSerializeAttribute('autorizado')]
    property autorizado: Integer read getAutorizado write setAutorizado;

    [NasajonSerializeAttribute('cancelado')]
    property cancelado: Boolean read getCancelado write setCancelado;

    [NasajonSerializeAttribute('datahoracancelamento')]
    property datahoracancelamento: TDateTime read getDataHoraCancelamento write setDataHoraCancelamento;

    [NasajonSerializeAttribute('itens')]
    property itens: TObjectList<TItemContratoPagarNovo_Importacao> read getItens write setItens;

    

end;

type TContratoServicoPadraoPagarExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TContratoServicoPadraoPagarNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TContratoServicoPadraoPagarNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContratoServicoPadraoPagarNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TContratoServicoPadraoPagarNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getDefinicaoContratante: String;
begin
  Result := Self.m_DefinicaoContratante;
end;

procedure TContratoServicoPadraoPagarNovo.setDefinicaoContratante(const a_Value: String);
begin
  Self.m_DefinicaoContratante := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getDefinicaoBeneficiario: String;
begin
  Result := Self.m_DefinicaoBeneficiario;
end;

procedure TContratoServicoPadraoPagarNovo.setDefinicaoBeneficiario(const a_Value: String);
begin
  Self.m_DefinicaoBeneficiario := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TContratoServicoPadraoPagarNovo.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TContratoServicoPadraoPagarNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TContratoServicoPadraoPagarNovo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TContratoServicoPadraoPagarNovo.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getQtdDiasDesconto: Integer;
begin
  Result := Self.m_QtdDiasDesconto;
end;

procedure TContratoServicoPadraoPagarNovo.setQtdDiasDesconto(const a_Value: Integer);
begin
  Self.m_QtdDiasDesconto := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getQtdDiasMulta: Integer;
begin
  Result := Self.m_QtdDiasMulta;
end;

procedure TContratoServicoPadraoPagarNovo.setQtdDiasMulta(const a_Value: Integer);
begin
  Self.m_QtdDiasMulta := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getQtdDiasJurosDiarios: Integer;
begin
  Result := Self.m_QtdDiasJurosDiarios;
end;

procedure TContratoServicoPadraoPagarNovo.setQtdDiasJurosDiarios(const a_Value: Integer);
begin
  Self.m_QtdDiasJurosDiarios := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getEmitirNotaFiscal: Boolean;
begin
  Result := Self.m_EmitirNotaFiscal;
end;

procedure TContratoServicoPadraoPagarNovo.setEmitirNotaFiscal(const a_Value: Boolean);
begin
  Self.m_EmitirNotaFiscal := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getTipoContabilizacao: Integer;
begin
  Result := Self.m_TipoContabilizacao;
end;

procedure TContratoServicoPadraoPagarNovo.setTipoContabilizacao(const a_Value: Integer);
begin
  Self.m_TipoContabilizacao := a_Value;
end;

function TContratoServicoPadraoPagarNovo.getItens: TObjectList<TItemContratoPagarNovo>;
begin
  if not Assigned(Self.m_Itens)
    then Self.m_Itens := TObjectList<TItemContratoPagarNovo>.Create();
  Result := Self.m_Itens;
end;

procedure TContratoServicoPadraoPagarNovo.setItens(const a_Value: TObjectList<TItemContratoPagarNovo>);
begin
  Self.m_Itens := a_Value;
end;

destructor TContratoServicoPadraoPagarNovo.Destroy;
begin
  Self.Itens.Free();
end;

function TContratoServicoPadraoPagarNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContratoServicoPadraoPagarNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContratoServicoPadraoPagarNovo.getNameAPI(): String;
begin
  Result := 'ContratoServicoPadraoPagarNovo';
end;

function TContratoServicoPadraoPagarNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContratoServicoPadraoPagarNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContratoServicoPadraoPagarNovo_Importacao.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getDefinicaoContratante: String;
begin
  Result := Self.m_DefinicaoContratante;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setDefinicaoContratante(const a_Value: String);
begin
  Self.m_DefinicaoContratante := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getDefinicaoBeneficiario: String;
begin
  Result := Self.m_DefinicaoBeneficiario;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setDefinicaoBeneficiario(const a_Value: String);
begin
  Self.m_DefinicaoBeneficiario := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getQtdDiasDesconto: Integer;
begin
  Result := Self.m_QtdDiasDesconto;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setQtdDiasDesconto(const a_Value: Integer);
begin
  Self.m_QtdDiasDesconto := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getQtdDiasMulta: Integer;
begin
  Result := Self.m_QtdDiasMulta;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setQtdDiasMulta(const a_Value: Integer);
begin
  Self.m_QtdDiasMulta := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getQtdDiasJurosDiarios: Integer;
begin
  Result := Self.m_QtdDiasJurosDiarios;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setQtdDiasJurosDiarios(const a_Value: Integer);
begin
  Self.m_QtdDiasJurosDiarios := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getEmitirNotaFiscal: Boolean;
begin
  Result := Self.m_EmitirNotaFiscal;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setEmitirNotaFiscal(const a_Value: Boolean);
begin
  Self.m_EmitirNotaFiscal := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getTipoContabilizacao: Integer;
begin
  Result := Self.m_TipoContabilizacao;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setTipoContabilizacao(const a_Value: Integer);
begin
  Self.m_TipoContabilizacao := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getAutorizado: Integer;
begin
  Result := Self.m_Autorizado;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setAutorizado(const a_Value: Integer);
begin
  Self.m_Autorizado := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getCancelado: Boolean;
begin
  Result := Self.m_Cancelado;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setCancelado(const a_Value: Boolean);
begin
  Self.m_Cancelado := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getDataHoraCancelamento: TDateTime;
begin
  Result := Self.m_DataHoraCancelamento;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setDataHoraCancelamento(const a_Value: TDateTime);
begin
  Self.m_DataHoraCancelamento := a_Value;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getItens: TObjectList<TItemContratoPagarNovo_Importacao>;
begin
  if not Assigned(Self.m_Itens)
    then Self.m_Itens := TObjectList<TItemContratoPagarNovo_Importacao>.Create();
  Result := Self.m_Itens;
end;

procedure TContratoServicoPadraoPagarNovo_Importacao.setItens(const a_Value: TObjectList<TItemContratoPagarNovo_Importacao>);
begin
  Self.m_Itens := a_Value;
end;

destructor TContratoServicoPadraoPagarNovo_Importacao.Destroy;
begin
  Self.Itens.Free();
end;

function TContratoServicoPadraoPagarNovo_Importacao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContratoServicoPadraoPagarNovo_Importacao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContratoServicoPadraoPagarNovo_Importacao.getNameAPI(): String;
begin
  Result := 'ContratoServicoPadraoPagarNovo_Importacao';
end;

function TContratoServicoPadraoPagarNovo_Importacao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContratoServicoPadraoPagarNovo_Importacao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContratoServicoPadraoPagarExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TContratoServicoPadraoPagarExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TContratoServicoPadraoPagarExcluir.Destroy;
begin

end;

function TContratoServicoPadraoPagarExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContratoServicoPadraoPagarExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContratoServicoPadraoPagarExcluir.getNameAPI(): String;
begin
  Result := 'ContratoServicoPadraoPagarExcluir';
end;

function TContratoServicoPadraoPagarExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContratoServicoPadraoPagarExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
