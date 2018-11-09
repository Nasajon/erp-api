unit api.model.estoque.AcordosFornecimentoProdutos;

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

type TAcordosFornecimentoProdutosNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Identificador: String;
    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_ContratoTecnico: String;
    var m_Cliente: String;
    var m_Modelo_LocalDeUso: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_InicioVigencia: TDate;
    var m_FimVigencia: TDate;
    var m_Ativo: Boolean;
    

    function getIdentificador(): String;
    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getContratoTecnico(): String;
    function getCliente(): String;
    function getModelo_LocalDeUso(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getInicioVigencia(): TDate;
    function getFimVigencia(): TDate;
    function getAtivo(): Boolean;
    

    procedure setIdentificador(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setContratoTecnico(const a_Value: String);
    procedure setCliente(const a_Value: String);
    procedure setModelo_LocalDeUso(const a_Value: String);
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

    [NasajonSerializeAttribute('contratotecnico')]
    property contratotecnico: String read getContratoTecnico write setContratoTecnico;

    [NasajonSerializeAttribute('cliente')]
    property cliente: String read getCliente write setCliente;

    [NasajonSerializeAttribute('modelo_localdeuso')]
    property modelo_localdeuso: String read getModelo_LocalDeUso write setModelo_LocalDeUso;

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

function TAcordosFornecimentoProdutosNovo.getIdentificador: String;
begin
  Result := Self.m_Identificador;
end;

procedure TAcordosFornecimentoProdutosNovo.setIdentificador(const a_Value: String);
begin
  Self.m_Identificador := a_Value;
end;

function TAcordosFornecimentoProdutosNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TAcordosFornecimentoProdutosNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TAcordosFornecimentoProdutosNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TAcordosFornecimentoProdutosNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TAcordosFornecimentoProdutosNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TAcordosFornecimentoProdutosNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TAcordosFornecimentoProdutosNovo.getContratoTecnico: String;
begin
  Result := Self.m_ContratoTecnico;
end;

procedure TAcordosFornecimentoProdutosNovo.setContratoTecnico(const a_Value: String);
begin
  Self.m_ContratoTecnico := a_Value;
end;

function TAcordosFornecimentoProdutosNovo.getCliente: String;
begin
  Result := Self.m_Cliente;
end;

procedure TAcordosFornecimentoProdutosNovo.setCliente(const a_Value: String);
begin
  Self.m_Cliente := a_Value;
end;

function TAcordosFornecimentoProdutosNovo.getModelo_LocalDeUso: String;
begin
  Result := Self.m_Modelo_LocalDeUso;
end;

procedure TAcordosFornecimentoProdutosNovo.setModelo_LocalDeUso(const a_Value: String);
begin
  Self.m_Modelo_LocalDeUso := a_Value;
end;

function TAcordosFornecimentoProdutosNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TAcordosFornecimentoProdutosNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TAcordosFornecimentoProdutosNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TAcordosFornecimentoProdutosNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TAcordosFornecimentoProdutosNovo.getInicioVigencia: TDate;
begin
  Result := Self.m_InicioVigencia;
end;

procedure TAcordosFornecimentoProdutosNovo.setInicioVigencia(const a_Value: TDate);
begin
  Self.m_InicioVigencia := a_Value;
end;

function TAcordosFornecimentoProdutosNovo.getFimVigencia: TDate;
begin
  Result := Self.m_FimVigencia;
end;

procedure TAcordosFornecimentoProdutosNovo.setFimVigencia(const a_Value: TDate);
begin
  Self.m_FimVigencia := a_Value;
end;

function TAcordosFornecimentoProdutosNovo.getAtivo: Boolean;
begin
  Result := Self.m_Ativo;
end;

procedure TAcordosFornecimentoProdutosNovo.setAtivo(const a_Value: Boolean);
begin
  Self.m_Ativo := a_Value;
end;

destructor TAcordosFornecimentoProdutosNovo.Destroy;
begin

end;

function TAcordosFornecimentoProdutosNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAcordosFornecimentoProdutosNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAcordosFornecimentoProdutosNovo.getNameAPI(): String;
begin
  Result := 'AcordosFornecimentoProdutosNovo';
end;

function TAcordosFornecimentoProdutosNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAcordosFornecimentoProdutosNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
