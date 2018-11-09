unit api.model.financas.ClassificacaoFinanceira;

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

type TClassificacaoFinanceiraNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdClassificacao: String;
    var m_ClassificacaoPai: String;
    var m_GrupoEmpresarial: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_CodigoContabil: String;
    var m_Resumo: String;
    var m_Natureza: Integer;
    var m_Transferencia: Boolean;
    var m_Repasse_Deducao: Boolean;
    var m_Rendimentos: Boolean;
    

    function getIdClassificacao(): String;
    function getClassificacaoPai(): String;
    function getGrupoEmpresarial(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getCodigoContabil(): String;
    function getResumo(): String;
    function getNatureza(): Integer;
    function getTransferencia(): Boolean;
    function getRepasse_Deducao(): Boolean;
    function getRendimentos(): Boolean;
    

    procedure setIdClassificacao(const a_Value: String);
    procedure setClassificacaoPai(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setCodigoContabil(const a_Value: String);
    procedure setResumo(const a_Value: String);
    procedure setNatureza(const a_Value: Integer);
    procedure setTransferencia(const a_Value: Boolean);
    procedure setRepasse_Deducao(const a_Value: Boolean);
    procedure setRendimentos(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idclassificacao')]
    property idclassificacao: String read getIdClassificacao write setIdClassificacao;

    /// <summary>
/// Classificação financeira a qual está nova pertence(sintética).
    /// </summary>
    [NasajonSerializeAttribute('classificacaopai')]
    property classificacaopai: String read getClassificacaoPai write setClassificacaoPai;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('codigocontabil')]
    property codigocontabil: String read getCodigoContabil write setCodigoContabil;

    /// <summary>
/// Descrição de forma resumida.
    /// </summary>
    [NasajonSerializeAttribute('resumo')]
    property resumo: String read getResumo write setResumo;

    /// <summary>
/// Indica a natureza da classificação: 0 - Indefinido, 1 - Receita e 2 - Despesa. Quando não informado será assumido o valor 0.
    /// </summary>
    [NasajonSerializeAttribute('natureza')]
    property natureza: Integer read getNatureza write setNatureza;

    [NasajonSerializeAttribute('transferencia')]
    property transferencia: Boolean read getTransferencia write setTransferencia;

    [NasajonSerializeAttribute('repasse_deducao')]
    property repasse_deducao: Boolean read getRepasse_Deducao write setRepasse_Deducao;

    [NasajonSerializeAttribute('rendimentos')]
    property rendimentos: Boolean read getRendimentos write setRendimentos;

    

end;

type TClassificacaoFinanceiraAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Classificacao: String;
    var m_ClassificacaoPai: String;
    var m_GrupoEmpresarial: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_CodigoContabil: String;
    var m_Resumo: String;
    var m_Situacao: Integer;
    var m_Natureza: Integer;
    var m_Transferencia: Boolean;
    var m_Repasse_Deducao: Boolean;
    var m_Rendimentos: Boolean;
    

    function getClassificacao(): String;
    function getClassificacaoPai(): String;
    function getGrupoEmpresarial(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getCodigoContabil(): String;
    function getResumo(): String;
    function getSituacao(): Integer;
    function getNatureza(): Integer;
    function getTransferencia(): Boolean;
    function getRepasse_Deducao(): Boolean;
    function getRendimentos(): Boolean;
    

    procedure setClassificacao(const a_Value: String);
    procedure setClassificacaoPai(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setCodigoContabil(const a_Value: String);
    procedure setResumo(const a_Value: String);
    procedure setSituacao(const a_Value: Integer);
    procedure setNatureza(const a_Value: Integer);
    procedure setTransferencia(const a_Value: Boolean);
    procedure setRepasse_Deducao(const a_Value: Boolean);
    procedure setRendimentos(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Classificação financeira para alteração.
    /// </summary>
    [NasajonSerializeAttribute('classificacao')]
    property classificacao: String read getClassificacao write setClassificacao;

    /// <summary>
/// Classificação financeira a qual está nova pertence(sintética).
    /// </summary>
    [NasajonSerializeAttribute('classificacaopai')]
    property classificacaopai: String read getClassificacaoPai write setClassificacaoPai;

    /// <summary>
/// Grupo empresarial da classificação a ser alterada.
    /// </summary>
    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('codigocontabil')]
    property codigocontabil: String read getCodigoContabil write setCodigoContabil;

    /// <summary>
/// Descrição de forma resumida.
    /// </summary>
    [NasajonSerializeAttribute('resumo')]
    property resumo: String read getResumo write setResumo;

    /// <summary>
/// Indica a situação da classificação: 0 - Ativa e 1 - Desativada
    /// </summary>
    [NasajonSerializeAttribute('situacao')]
    property situacao: Integer read getSituacao write setSituacao;

    /// <summary>
/// Indica a natureza da classificação: 0 - Indefinido, 1 - Receita e 2 - Despesa.
    /// </summary>
    [NasajonSerializeAttribute('natureza')]
    property natureza: Integer read getNatureza write setNatureza;

    [NasajonSerializeAttribute('transferencia')]
    property transferencia: Boolean read getTransferencia write setTransferencia;

    [NasajonSerializeAttribute('repasse_deducao')]
    property repasse_deducao: Boolean read getRepasse_Deducao write setRepasse_Deducao;

    [NasajonSerializeAttribute('rendimentos')]
    property rendimentos: Boolean read getRendimentos write setRendimentos;

    

end;

type TClassificacaoFinanceiraExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Classificacao: String;
    var m_GrupoEmpresarial: String;
    

    function getClassificacao(): String;
    function getGrupoEmpresarial(): String;
    

    procedure setClassificacao(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('classificacao')]
    property classificacao: String read getClassificacao write setClassificacao;

    /// <summary>
/// Ao passar o código da classificação financeira será necessário passar o grupo empresarial.
    /// </summary>
    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    

end;

	
implementation

  uses
      api.send;  

function TClassificacaoFinanceiraNovo.getIdClassificacao: String;
begin
  Result := Self.m_IdClassificacao;
end;

procedure TClassificacaoFinanceiraNovo.setIdClassificacao(const a_Value: String);
begin
  Self.m_IdClassificacao := a_Value;
end;

function TClassificacaoFinanceiraNovo.getClassificacaoPai: String;
begin
  Result := Self.m_ClassificacaoPai;
end;

procedure TClassificacaoFinanceiraNovo.setClassificacaoPai(const a_Value: String);
begin
  Self.m_ClassificacaoPai := a_Value;
end;

function TClassificacaoFinanceiraNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TClassificacaoFinanceiraNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TClassificacaoFinanceiraNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TClassificacaoFinanceiraNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TClassificacaoFinanceiraNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TClassificacaoFinanceiraNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TClassificacaoFinanceiraNovo.getCodigoContabil: String;
begin
  Result := Self.m_CodigoContabil;
end;

procedure TClassificacaoFinanceiraNovo.setCodigoContabil(const a_Value: String);
begin
  Self.m_CodigoContabil := a_Value;
end;

function TClassificacaoFinanceiraNovo.getResumo: String;
begin
  Result := Self.m_Resumo;
end;

procedure TClassificacaoFinanceiraNovo.setResumo(const a_Value: String);
begin
  Self.m_Resumo := a_Value;
end;

function TClassificacaoFinanceiraNovo.getNatureza: Integer;
begin
  Result := Self.m_Natureza;
end;

procedure TClassificacaoFinanceiraNovo.setNatureza(const a_Value: Integer);
begin
  Self.m_Natureza := a_Value;
end;

function TClassificacaoFinanceiraNovo.getTransferencia: Boolean;
begin
  Result := Self.m_Transferencia;
end;

procedure TClassificacaoFinanceiraNovo.setTransferencia(const a_Value: Boolean);
begin
  Self.m_Transferencia := a_Value;
end;

function TClassificacaoFinanceiraNovo.getRepasse_Deducao: Boolean;
begin
  Result := Self.m_Repasse_Deducao;
end;

procedure TClassificacaoFinanceiraNovo.setRepasse_Deducao(const a_Value: Boolean);
begin
  Self.m_Repasse_Deducao := a_Value;
end;

function TClassificacaoFinanceiraNovo.getRendimentos: Boolean;
begin
  Result := Self.m_Rendimentos;
end;

procedure TClassificacaoFinanceiraNovo.setRendimentos(const a_Value: Boolean);
begin
  Self.m_Rendimentos := a_Value;
end;

destructor TClassificacaoFinanceiraNovo.Destroy;
begin

end;

function TClassificacaoFinanceiraNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TClassificacaoFinanceiraNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TClassificacaoFinanceiraNovo.getNameAPI(): String;
begin
  Result := 'ClassificacaoFinanceiraNovo';
end;

function TClassificacaoFinanceiraNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TClassificacaoFinanceiraNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TClassificacaoFinanceiraAlterar.getClassificacao: String;
begin
  Result := Self.m_Classificacao;
end;

procedure TClassificacaoFinanceiraAlterar.setClassificacao(const a_Value: String);
begin
  Self.m_Classificacao := a_Value;
end;

function TClassificacaoFinanceiraAlterar.getClassificacaoPai: String;
begin
  Result := Self.m_ClassificacaoPai;
end;

procedure TClassificacaoFinanceiraAlterar.setClassificacaoPai(const a_Value: String);
begin
  Self.m_ClassificacaoPai := a_Value;
end;

function TClassificacaoFinanceiraAlterar.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TClassificacaoFinanceiraAlterar.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TClassificacaoFinanceiraAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TClassificacaoFinanceiraAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TClassificacaoFinanceiraAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TClassificacaoFinanceiraAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TClassificacaoFinanceiraAlterar.getCodigoContabil: String;
begin
  Result := Self.m_CodigoContabil;
end;

procedure TClassificacaoFinanceiraAlterar.setCodigoContabil(const a_Value: String);
begin
  Self.m_CodigoContabil := a_Value;
end;

function TClassificacaoFinanceiraAlterar.getResumo: String;
begin
  Result := Self.m_Resumo;
end;

procedure TClassificacaoFinanceiraAlterar.setResumo(const a_Value: String);
begin
  Self.m_Resumo := a_Value;
end;

function TClassificacaoFinanceiraAlterar.getSituacao: Integer;
begin
  Result := Self.m_Situacao;
end;

procedure TClassificacaoFinanceiraAlterar.setSituacao(const a_Value: Integer);
begin
  Self.m_Situacao := a_Value;
end;

function TClassificacaoFinanceiraAlterar.getNatureza: Integer;
begin
  Result := Self.m_Natureza;
end;

procedure TClassificacaoFinanceiraAlterar.setNatureza(const a_Value: Integer);
begin
  Self.m_Natureza := a_Value;
end;

function TClassificacaoFinanceiraAlterar.getTransferencia: Boolean;
begin
  Result := Self.m_Transferencia;
end;

procedure TClassificacaoFinanceiraAlterar.setTransferencia(const a_Value: Boolean);
begin
  Self.m_Transferencia := a_Value;
end;

function TClassificacaoFinanceiraAlterar.getRepasse_Deducao: Boolean;
begin
  Result := Self.m_Repasse_Deducao;
end;

procedure TClassificacaoFinanceiraAlterar.setRepasse_Deducao(const a_Value: Boolean);
begin
  Self.m_Repasse_Deducao := a_Value;
end;

function TClassificacaoFinanceiraAlterar.getRendimentos: Boolean;
begin
  Result := Self.m_Rendimentos;
end;

procedure TClassificacaoFinanceiraAlterar.setRendimentos(const a_Value: Boolean);
begin
  Self.m_Rendimentos := a_Value;
end;

destructor TClassificacaoFinanceiraAlterar.Destroy;
begin

end;

function TClassificacaoFinanceiraAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TClassificacaoFinanceiraAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TClassificacaoFinanceiraAlterar.getNameAPI(): String;
begin
  Result := 'ClassificacaoFinanceiraAlterar';
end;

function TClassificacaoFinanceiraAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TClassificacaoFinanceiraAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TClassificacaoFinanceiraExcluir.getClassificacao: String;
begin
  Result := Self.m_Classificacao;
end;

procedure TClassificacaoFinanceiraExcluir.setClassificacao(const a_Value: String);
begin
  Self.m_Classificacao := a_Value;
end;

function TClassificacaoFinanceiraExcluir.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TClassificacaoFinanceiraExcluir.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

destructor TClassificacaoFinanceiraExcluir.Destroy;
begin

end;

function TClassificacaoFinanceiraExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TClassificacaoFinanceiraExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TClassificacaoFinanceiraExcluir.getNameAPI(): String;
begin
  Result := 'ClassificacaoFinanceiraExcluir';
end;

function TClassificacaoFinanceiraExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TClassificacaoFinanceiraExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
