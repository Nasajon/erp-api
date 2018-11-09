unit api.model.crm.ContratoTecnico;

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

type TContratoTecnicoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Identificador: String;
    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Negocio: String;
    var m_Cliente: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_InicioVigencia: TDate;
    var m_FimVigencia: TDate;
    var m_Ativo: Boolean;
    

    function getIdentificador(): String;
    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getNegocio(): String;
    function getCliente(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getInicioVigencia(): TDate;
    function getFimVigencia(): TDate;
    function getAtivo(): Boolean;
    

    procedure setIdentificador(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setNegocio(const a_Value: String);
    procedure setCliente(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setInicioVigencia(const a_Value: TDate);
    procedure setFimVigencia(const a_Value: TDate);
    procedure setAtivo(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('identificador')]
    property identificador: String read getIdentificador write setIdentificador;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('negocio')]
    property negocio: String read getNegocio write setNegocio;

    [NasajonSerializeAttribute('cliente')]
    property cliente: String read getCliente write setCliente;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('iniciovigencia')]
    property iniciovigencia: TDate read getInicioVigencia write setInicioVigencia;

    [NasajonSerializeAttribute('fimvigencia')]
    property fimvigencia: TDate read getFimVigencia write setFimVigencia;

    [NasajonSerializeAttribute('ativo')]
    property ativo: Boolean read getAtivo write setAtivo;

    

end;

	
implementation

  uses
      api.send;  

function TContratoTecnicoNovo.getIdentificador: String;
begin
  Result := Self.m_Identificador;
end;

procedure TContratoTecnicoNovo.setIdentificador(const a_Value: String);
begin
  Self.m_Identificador := a_Value;
end;

function TContratoTecnicoNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TContratoTecnicoNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TContratoTecnicoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContratoTecnicoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContratoTecnicoNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TContratoTecnicoNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TContratoTecnicoNovo.getNegocio: String;
begin
  Result := Self.m_Negocio;
end;

procedure TContratoTecnicoNovo.setNegocio(const a_Value: String);
begin
  Self.m_Negocio := a_Value;
end;

function TContratoTecnicoNovo.getCliente: String;
begin
  Result := Self.m_Cliente;
end;

procedure TContratoTecnicoNovo.setCliente(const a_Value: String);
begin
  Self.m_Cliente := a_Value;
end;

function TContratoTecnicoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContratoTecnicoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TContratoTecnicoNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TContratoTecnicoNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TContratoTecnicoNovo.getInicioVigencia: TDate;
begin
  Result := Self.m_InicioVigencia;
end;

procedure TContratoTecnicoNovo.setInicioVigencia(const a_Value: TDate);
begin
  Self.m_InicioVigencia := a_Value;
end;

function TContratoTecnicoNovo.getFimVigencia: TDate;
begin
  Result := Self.m_FimVigencia;
end;

procedure TContratoTecnicoNovo.setFimVigencia(const a_Value: TDate);
begin
  Self.m_FimVigencia := a_Value;
end;

function TContratoTecnicoNovo.getAtivo: Boolean;
begin
  Result := Self.m_Ativo;
end;

procedure TContratoTecnicoNovo.setAtivo(const a_Value: Boolean);
begin
  Self.m_Ativo := a_Value;
end;

destructor TContratoTecnicoNovo.Destroy;
begin

end;

function TContratoTecnicoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContratoTecnicoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContratoTecnicoNovo.getNameAPI(): String;
begin
  Result := 'ContratoTecnicoNovo';
end;

function TContratoTecnicoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContratoTecnicoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
