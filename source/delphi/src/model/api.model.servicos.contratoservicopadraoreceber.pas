unit api.model.servicos.ContratoServicoPadraoReceber;

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
  , api.model.servicos.ItemContratoReceber
	

	;

type TContratoServicoPadraoReceberNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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
    var m_Itens: TObjectList<TItemContratoReceberNovo>;
    

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
    function getItens(): TObjectList<TItemContratoReceberNovo>;
    

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
/// Indica o estabelecimento do contrato(contratada).
    /// </summary>
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Indica o cliente do contrato(contratante).
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

    [NasajonSerializeAttribute('itens')]
    property itens: TObjectList<TItemContratoReceberNovo> read getItens write setItens;

    

end;

type TContratoServicoPadraoReceberNovo_Importacao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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
    var m_Autorizado: Integer;
    var m_Cancelado: Boolean;
    var m_DataHoraCancelamento: TDateTime;
    var m_Itens: TObjectList<TItemContratoReceberNovo_Importacao>;
    

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
    function getAutorizado(): Integer;
    function getCancelado(): Boolean;
    function getDataHoraCancelamento(): TDateTime;
    function getItens(): TObjectList<TItemContratoReceberNovo_Importacao>;
    

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
    procedure setAutorizado(const a_Value: Integer);
    procedure setCancelado(const a_Value: Boolean);
    procedure setDataHoraCancelamento(const a_Value: TDateTime);
    procedure setItens(const a_Value: TObjectList<TItemContratoReceberNovo_Importacao>);
    

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
/// Indica o estabelecimento do contrato(contratada).
    /// </summary>
    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Indica o cliente do contrato(contratante).
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
/// Define se o contrato está autorizado para processamento. Valores: 0-Sim, 1-Não, 2-Parcial.
    /// </summary>
    [NasajonSerializeAttribute('autorizado')]
    property autorizado: Integer read getAutorizado write setAutorizado;

    [NasajonSerializeAttribute('cancelado')]
    property cancelado: Boolean read getCancelado write setCancelado;

    [NasajonSerializeAttribute('datahoracancelamento')]
    property datahoracancelamento: TDateTime read getDataHoraCancelamento write setDataHoraCancelamento;

    [NasajonSerializeAttribute('itens')]
    property itens: TObjectList<TItemContratoReceberNovo_Importacao> read getItens write setItens;

    

end;

type TContratoServicoPadraoReceberExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TContratoServicoPadraoReceberNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TContratoServicoPadraoReceberNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContratoServicoPadraoReceberNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TContratoServicoPadraoReceberNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getDefinicaoContratante: String;
begin
  Result := Self.m_DefinicaoContratante;
end;

procedure TContratoServicoPadraoReceberNovo.setDefinicaoContratante(const a_Value: String);
begin
  Self.m_DefinicaoContratante := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getDefinicaoBeneficiario: String;
begin
  Result := Self.m_DefinicaoBeneficiario;
end;

procedure TContratoServicoPadraoReceberNovo.setDefinicaoBeneficiario(const a_Value: String);
begin
  Self.m_DefinicaoBeneficiario := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TContratoServicoPadraoReceberNovo.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TContratoServicoPadraoReceberNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TContratoServicoPadraoReceberNovo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TContratoServicoPadraoReceberNovo.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getQtdDiasDesconto: Integer;
begin
  Result := Self.m_QtdDiasDesconto;
end;

procedure TContratoServicoPadraoReceberNovo.setQtdDiasDesconto(const a_Value: Integer);
begin
  Self.m_QtdDiasDesconto := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getQtdDiasMulta: Integer;
begin
  Result := Self.m_QtdDiasMulta;
end;

procedure TContratoServicoPadraoReceberNovo.setQtdDiasMulta(const a_Value: Integer);
begin
  Self.m_QtdDiasMulta := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getQtdDiasJurosDiarios: Integer;
begin
  Result := Self.m_QtdDiasJurosDiarios;
end;

procedure TContratoServicoPadraoReceberNovo.setQtdDiasJurosDiarios(const a_Value: Integer);
begin
  Self.m_QtdDiasJurosDiarios := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getEmitirNotaFiscal: Boolean;
begin
  Result := Self.m_EmitirNotaFiscal;
end;

procedure TContratoServicoPadraoReceberNovo.setEmitirNotaFiscal(const a_Value: Boolean);
begin
  Self.m_EmitirNotaFiscal := a_Value;
end;

function TContratoServicoPadraoReceberNovo.getItens: TObjectList<TItemContratoReceberNovo>;
begin
  if not Assigned(Self.m_Itens)
    then Self.m_Itens := TObjectList<TItemContratoReceberNovo>.Create();
  Result := Self.m_Itens;
end;

procedure TContratoServicoPadraoReceberNovo.setItens(const a_Value: TObjectList<TItemContratoReceberNovo>);
begin
  Self.m_Itens := a_Value;
end;

destructor TContratoServicoPadraoReceberNovo.Destroy;
begin
  Self.Itens.Free();
end;

function TContratoServicoPadraoReceberNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContratoServicoPadraoReceberNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContratoServicoPadraoReceberNovo.getNameAPI(): String;
begin
  Result := 'ContratoServicoPadraoReceberNovo';
end;

function TContratoServicoPadraoReceberNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContratoServicoPadraoReceberNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContratoServicoPadraoReceberNovo_Importacao.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getDefinicaoContratante: String;
begin
  Result := Self.m_DefinicaoContratante;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setDefinicaoContratante(const a_Value: String);
begin
  Self.m_DefinicaoContratante := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getDefinicaoBeneficiario: String;
begin
  Result := Self.m_DefinicaoBeneficiario;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setDefinicaoBeneficiario(const a_Value: String);
begin
  Self.m_DefinicaoBeneficiario := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getDataInicial: TDate;
begin
  Result := Self.m_DataInicial;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setDataInicial(const a_Value: TDate);
begin
  Self.m_DataInicial := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getQtdDiasDesconto: Integer;
begin
  Result := Self.m_QtdDiasDesconto;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setQtdDiasDesconto(const a_Value: Integer);
begin
  Self.m_QtdDiasDesconto := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getQtdDiasMulta: Integer;
begin
  Result := Self.m_QtdDiasMulta;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setQtdDiasMulta(const a_Value: Integer);
begin
  Self.m_QtdDiasMulta := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getQtdDiasJurosDiarios: Integer;
begin
  Result := Self.m_QtdDiasJurosDiarios;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setQtdDiasJurosDiarios(const a_Value: Integer);
begin
  Self.m_QtdDiasJurosDiarios := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getEmitirNotaFiscal: Boolean;
begin
  Result := Self.m_EmitirNotaFiscal;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setEmitirNotaFiscal(const a_Value: Boolean);
begin
  Self.m_EmitirNotaFiscal := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getAutorizado: Integer;
begin
  Result := Self.m_Autorizado;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setAutorizado(const a_Value: Integer);
begin
  Self.m_Autorizado := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getCancelado: Boolean;
begin
  Result := Self.m_Cancelado;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setCancelado(const a_Value: Boolean);
begin
  Self.m_Cancelado := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getDataHoraCancelamento: TDateTime;
begin
  Result := Self.m_DataHoraCancelamento;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setDataHoraCancelamento(const a_Value: TDateTime);
begin
  Self.m_DataHoraCancelamento := a_Value;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getItens: TObjectList<TItemContratoReceberNovo_Importacao>;
begin
  if not Assigned(Self.m_Itens)
    then Self.m_Itens := TObjectList<TItemContratoReceberNovo_Importacao>.Create();
  Result := Self.m_Itens;
end;

procedure TContratoServicoPadraoReceberNovo_Importacao.setItens(const a_Value: TObjectList<TItemContratoReceberNovo_Importacao>);
begin
  Self.m_Itens := a_Value;
end;

destructor TContratoServicoPadraoReceberNovo_Importacao.Destroy;
begin
  Self.Itens.Free();
end;

function TContratoServicoPadraoReceberNovo_Importacao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContratoServicoPadraoReceberNovo_Importacao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContratoServicoPadraoReceberNovo_Importacao.getNameAPI(): String;
begin
  Result := 'ContratoServicoPadraoReceberNovo_Importacao';
end;

function TContratoServicoPadraoReceberNovo_Importacao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContratoServicoPadraoReceberNovo_Importacao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContratoServicoPadraoReceberExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TContratoServicoPadraoReceberExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TContratoServicoPadraoReceberExcluir.Destroy;
begin

end;

function TContratoServicoPadraoReceberExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContratoServicoPadraoReceberExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContratoServicoPadraoReceberExcluir.getNameAPI(): String;
begin
  Result := 'ContratoServicoPadraoReceberExcluir';
end;

function TContratoServicoPadraoReceberExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContratoServicoPadraoReceberExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
