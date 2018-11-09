unit api.model.Servicos.Projeto;

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

type TProjetoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Projeto: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_GrupoEmpresarial: String;
    var m_Pessoa: String;
    var m_TipoProjeto: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Observacao: WideString;
    var m_DataCriacao: TDateTime;
    var m_CriadoPor: String;
    var m_Situacao: Integer;
    

    function getProjeto(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getGrupoEmpresarial(): String;
    function getPessoa(): String;
    function getTipoProjeto(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getObservacao(): WideString;
    function getDataCriacao(): TDateTime;
    function getCriadoPor(): String;
    function getSituacao(): Integer;
    

    procedure setProjeto(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setTipoProjeto(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setObservacao(const a_Value: WideString);
    procedure setDataCriacao(const a_Value: TDateTime);
    procedure setCriadoPor(const a_Value: String);
    procedure setSituacao(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getProjeto write setProjeto;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('tipoprojeto')]
    property tipoprojeto: String read getTipoProjeto write setTipoProjeto;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getObservacao write setObservacao;

    [NasajonSerializeAttribute('datacriacao')]
    property datacriacao: TDateTime read getDataCriacao write setDataCriacao;

    [NasajonSerializeAttribute('criadopor')]
    property criadopor: String read getCriadoPor write setCriadoPor;

    [NasajonSerializeAttribute('situacao')]
    property situacao: Integer read getSituacao write setSituacao;

    

end;

type TProjetoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Projeto: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_GrupoEmpresarial: String;
    var m_Pessoa: String;
    var m_TipoProjeto: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Observacao: WideString;
    var m_Situacao: Integer;
    

    function getProjeto(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getGrupoEmpresarial(): String;
    function getPessoa(): String;
    function getTipoProjeto(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getObservacao(): WideString;
    function getSituacao(): Integer;
    

    procedure setProjeto(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setTipoProjeto(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setObservacao(const a_Value: WideString);
    procedure setSituacao(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getProjeto write setProjeto;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('tipoprojeto')]
    property tipoprojeto: String read getTipoProjeto write setTipoProjeto;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getObservacao write setObservacao;

    [NasajonSerializeAttribute('situacao')]
    property situacao: Integer read getSituacao write setSituacao;

    

end;

type TProjetoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Projeto: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_GrupoEmpresarial: String;
    

    function getProjeto(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getGrupoEmpresarial(): String;
    

    procedure setProjeto(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getProjeto write setProjeto;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    

end;

	
implementation

  uses
      api.send;  

function TProjetoNovo.getProjeto: String;
begin
  Result := Self.m_Projeto;
end;

procedure TProjetoNovo.setProjeto(const a_Value: String);
begin
  Self.m_Projeto := a_Value;
end;

function TProjetoNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TProjetoNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TProjetoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TProjetoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TProjetoNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TProjetoNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TProjetoNovo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TProjetoNovo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TProjetoNovo.getTipoProjeto: String;
begin
  Result := Self.m_TipoProjeto;
end;

procedure TProjetoNovo.setTipoProjeto(const a_Value: String);
begin
  Self.m_TipoProjeto := a_Value;
end;

function TProjetoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TProjetoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TProjetoNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TProjetoNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TProjetoNovo.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TProjetoNovo.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

function TProjetoNovo.getDataCriacao: TDateTime;
begin
  Result := Self.m_DataCriacao;
end;

procedure TProjetoNovo.setDataCriacao(const a_Value: TDateTime);
begin
  Self.m_DataCriacao := a_Value;
end;

function TProjetoNovo.getCriadoPor: String;
begin
  Result := Self.m_CriadoPor;
end;

procedure TProjetoNovo.setCriadoPor(const a_Value: String);
begin
  Self.m_CriadoPor := a_Value;
end;

function TProjetoNovo.getSituacao: Integer;
begin
  Result := Self.m_Situacao;
end;

procedure TProjetoNovo.setSituacao(const a_Value: Integer);
begin
  Self.m_Situacao := a_Value;
end;

destructor TProjetoNovo.Destroy;
begin

end;

function TProjetoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProjetoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProjetoNovo.getNameAPI(): String;
begin
  Result := 'ProjetoNovo';
end;

function TProjetoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProjetoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProjetoAlterar.getProjeto: String;
begin
  Result := Self.m_Projeto;
end;

procedure TProjetoAlterar.setProjeto(const a_Value: String);
begin
  Self.m_Projeto := a_Value;
end;

function TProjetoAlterar.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TProjetoAlterar.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TProjetoAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TProjetoAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TProjetoAlterar.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TProjetoAlterar.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TProjetoAlterar.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TProjetoAlterar.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TProjetoAlterar.getTipoProjeto: String;
begin
  Result := Self.m_TipoProjeto;
end;

procedure TProjetoAlterar.setTipoProjeto(const a_Value: String);
begin
  Self.m_TipoProjeto := a_Value;
end;

function TProjetoAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TProjetoAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TProjetoAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TProjetoAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TProjetoAlterar.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TProjetoAlterar.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

function TProjetoAlterar.getSituacao: Integer;
begin
  Result := Self.m_Situacao;
end;

procedure TProjetoAlterar.setSituacao(const a_Value: Integer);
begin
  Self.m_Situacao := a_Value;
end;

destructor TProjetoAlterar.Destroy;
begin

end;

function TProjetoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProjetoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProjetoAlterar.getNameAPI(): String;
begin
  Result := 'ProjetoAlterar';
end;

function TProjetoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProjetoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProjetoExcluir.getProjeto: String;
begin
  Result := Self.m_Projeto;
end;

procedure TProjetoExcluir.setProjeto(const a_Value: String);
begin
  Self.m_Projeto := a_Value;
end;

function TProjetoExcluir.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TProjetoExcluir.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TProjetoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TProjetoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TProjetoExcluir.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TProjetoExcluir.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

destructor TProjetoExcluir.Destroy;
begin

end;

function TProjetoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProjetoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProjetoExcluir.getNameAPI(): String;
begin
  Result := 'ProjetoExcluir';
end;

function TProjetoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProjetoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
