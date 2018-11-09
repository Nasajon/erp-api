unit api.model.persona.ProfissionalSaude;

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

type TProfissionalSaudeNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdProfissional: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Conselho: Integer;
    var m_NumeroConselho: String;
    var m_UFConselho: String;
    var m_NIT: String;
    var m_TipoRegistro: String;
    var m_Categoria: Integer;
    var m_DDDTelefone: String;
    var m_Telefone: String;
    

    function getIdProfissional(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getConselho(): Integer;
    function getNumeroConselho(): String;
    function getUFConselho(): String;
    function getNIT(): String;
    function getTipoRegistro(): String;
    function getCategoria(): Integer;
    function getDDDTelefone(): String;
    function getTelefone(): String;
    

    procedure setIdProfissional(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setConselho(const a_Value: Integer);
    procedure setNumeroConselho(const a_Value: String);
    procedure setUFConselho(const a_Value: String);
    procedure setNIT(const a_Value: String);
    procedure setTipoRegistro(const a_Value: String);
    procedure setCategoria(const a_Value: Integer);
    procedure setDDDTelefone(const a_Value: String);
    procedure setTelefone(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idprofissional')]
    property idprofissional: String read getIdProfissional write setIdProfissional;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Medicina(0), Odontologia(1) ou Enfermagem(2)
    /// </summary>
    [NasajonSerializeAttribute('conselho')]
    property conselho: Integer read getConselho write setConselho;

    [NasajonSerializeAttribute('numeroconselho')]
    property numeroconselho: String read getNumeroConselho write setNumeroConselho;

    [NasajonSerializeAttribute('ufconselho')]
    property ufconselho: String read getUFConselho write setUFConselho;

    /// <summary>
/// Número de inscrição do trabalhador
    /// </summary>
    [NasajonSerializeAttribute('nit')]
    property nit: String read getNIT write setNIT;

    /// <summary>
/// Definitivo(D) ou Provisório(P)
    /// </summary>
    [NasajonSerializeAttribute('tiporegistro')]
    property tiporegistro: String read getTipoRegistro write setTipoRegistro;

    /// <summary>
/// Geral(0), Ambientalista(1) ou Químico(2)
    /// </summary>
    [NasajonSerializeAttribute('categoria')]
    property categoria: Integer read getCategoria write setCategoria;

    [NasajonSerializeAttribute('dddtelefone')]
    property dddtelefone: String read getDDDTelefone write setDDDTelefone;

    [NasajonSerializeAttribute('telefone')]
    property telefone: String read getTelefone write setTelefone;

    

end;

type TProfissionalSaudeAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Profissional: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Conselho: Integer;
    var m_NumeroConselho: String;
    var m_UFConselho: String;
    var m_NIT: String;
    var m_TipoRegistro: String;
    var m_Categoria: Integer;
    var m_DDDTelefone: String;
    var m_Telefone: String;
    

    function getProfissional(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getConselho(): Integer;
    function getNumeroConselho(): String;
    function getUFConselho(): String;
    function getNIT(): String;
    function getTipoRegistro(): String;
    function getCategoria(): Integer;
    function getDDDTelefone(): String;
    function getTelefone(): String;
    

    procedure setProfissional(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setConselho(const a_Value: Integer);
    procedure setNumeroConselho(const a_Value: String);
    procedure setUFConselho(const a_Value: String);
    procedure setNIT(const a_Value: String);
    procedure setTipoRegistro(const a_Value: String);
    procedure setCategoria(const a_Value: Integer);
    procedure setDDDTelefone(const a_Value: String);
    procedure setTelefone(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('profissional')]
    property profissional: String read getProfissional write setProfissional;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Medicina(0), Odontologia(1) ou Enfermagem(2)
    /// </summary>
    [NasajonSerializeAttribute('conselho')]
    property conselho: Integer read getConselho write setConselho;

    [NasajonSerializeAttribute('numeroconselho')]
    property numeroconselho: String read getNumeroConselho write setNumeroConselho;

    [NasajonSerializeAttribute('ufconselho')]
    property ufconselho: String read getUFConselho write setUFConselho;

    /// <summary>
/// Número de inscrição do trabalhador
    /// </summary>
    [NasajonSerializeAttribute('nit')]
    property nit: String read getNIT write setNIT;

    /// <summary>
/// Definitivo(D) ou Provisório(P)
    /// </summary>
    [NasajonSerializeAttribute('tiporegistro')]
    property tiporegistro: String read getTipoRegistro write setTipoRegistro;

    /// <summary>
/// Geral(0), Ambientalista(1) ou Químico(2)
    /// </summary>
    [NasajonSerializeAttribute('categoria')]
    property categoria: Integer read getCategoria write setCategoria;

    [NasajonSerializeAttribute('dddtelefone')]
    property dddtelefone: String read getDDDTelefone write setDDDTelefone;

    [NasajonSerializeAttribute('telefone')]
    property telefone: String read getTelefone write setTelefone;

    

end;

type TProfissionalSaudeExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Profissional: String;
    

    function getProfissional(): String;
    

    procedure setProfissional(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('profissional')]
    property profissional: String read getProfissional write setProfissional;

    

end;

	
implementation

  uses
      api.send;  

function TProfissionalSaudeNovo.getIdProfissional: String;
begin
  Result := Self.m_IdProfissional;
end;

procedure TProfissionalSaudeNovo.setIdProfissional(const a_Value: String);
begin
  Self.m_IdProfissional := a_Value;
end;

function TProfissionalSaudeNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TProfissionalSaudeNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TProfissionalSaudeNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TProfissionalSaudeNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TProfissionalSaudeNovo.getConselho: Integer;
begin
  Result := Self.m_Conselho;
end;

procedure TProfissionalSaudeNovo.setConselho(const a_Value: Integer);
begin
  Self.m_Conselho := a_Value;
end;

function TProfissionalSaudeNovo.getNumeroConselho: String;
begin
  Result := Self.m_NumeroConselho;
end;

procedure TProfissionalSaudeNovo.setNumeroConselho(const a_Value: String);
begin
  Self.m_NumeroConselho := a_Value;
end;

function TProfissionalSaudeNovo.getUFConselho: String;
begin
  Result := Self.m_UFConselho;
end;

procedure TProfissionalSaudeNovo.setUFConselho(const a_Value: String);
begin
  Self.m_UFConselho := a_Value;
end;

function TProfissionalSaudeNovo.getNIT: String;
begin
  Result := Self.m_NIT;
end;

procedure TProfissionalSaudeNovo.setNIT(const a_Value: String);
begin
  Self.m_NIT := a_Value;
end;

function TProfissionalSaudeNovo.getTipoRegistro: String;
begin
  Result := Self.m_TipoRegistro;
end;

procedure TProfissionalSaudeNovo.setTipoRegistro(const a_Value: String);
begin
  Self.m_TipoRegistro := a_Value;
end;

function TProfissionalSaudeNovo.getCategoria: Integer;
begin
  Result := Self.m_Categoria;
end;

procedure TProfissionalSaudeNovo.setCategoria(const a_Value: Integer);
begin
  Self.m_Categoria := a_Value;
end;

function TProfissionalSaudeNovo.getDDDTelefone: String;
begin
  Result := Self.m_DDDTelefone;
end;

procedure TProfissionalSaudeNovo.setDDDTelefone(const a_Value: String);
begin
  Self.m_DDDTelefone := a_Value;
end;

function TProfissionalSaudeNovo.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TProfissionalSaudeNovo.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

destructor TProfissionalSaudeNovo.Destroy;
begin

end;

function TProfissionalSaudeNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProfissionalSaudeNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProfissionalSaudeNovo.getNameAPI(): String;
begin
  Result := 'ProfissionalSaudeNovo';
end;

function TProfissionalSaudeNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProfissionalSaudeNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProfissionalSaudeAlterar.getProfissional: String;
begin
  Result := Self.m_Profissional;
end;

procedure TProfissionalSaudeAlterar.setProfissional(const a_Value: String);
begin
  Self.m_Profissional := a_Value;
end;

function TProfissionalSaudeAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TProfissionalSaudeAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TProfissionalSaudeAlterar.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TProfissionalSaudeAlterar.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TProfissionalSaudeAlterar.getConselho: Integer;
begin
  Result := Self.m_Conselho;
end;

procedure TProfissionalSaudeAlterar.setConselho(const a_Value: Integer);
begin
  Self.m_Conselho := a_Value;
end;

function TProfissionalSaudeAlterar.getNumeroConselho: String;
begin
  Result := Self.m_NumeroConselho;
end;

procedure TProfissionalSaudeAlterar.setNumeroConselho(const a_Value: String);
begin
  Self.m_NumeroConselho := a_Value;
end;

function TProfissionalSaudeAlterar.getUFConselho: String;
begin
  Result := Self.m_UFConselho;
end;

procedure TProfissionalSaudeAlterar.setUFConselho(const a_Value: String);
begin
  Self.m_UFConselho := a_Value;
end;

function TProfissionalSaudeAlterar.getNIT: String;
begin
  Result := Self.m_NIT;
end;

procedure TProfissionalSaudeAlterar.setNIT(const a_Value: String);
begin
  Self.m_NIT := a_Value;
end;

function TProfissionalSaudeAlterar.getTipoRegistro: String;
begin
  Result := Self.m_TipoRegistro;
end;

procedure TProfissionalSaudeAlterar.setTipoRegistro(const a_Value: String);
begin
  Self.m_TipoRegistro := a_Value;
end;

function TProfissionalSaudeAlterar.getCategoria: Integer;
begin
  Result := Self.m_Categoria;
end;

procedure TProfissionalSaudeAlterar.setCategoria(const a_Value: Integer);
begin
  Self.m_Categoria := a_Value;
end;

function TProfissionalSaudeAlterar.getDDDTelefone: String;
begin
  Result := Self.m_DDDTelefone;
end;

procedure TProfissionalSaudeAlterar.setDDDTelefone(const a_Value: String);
begin
  Self.m_DDDTelefone := a_Value;
end;

function TProfissionalSaudeAlterar.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TProfissionalSaudeAlterar.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

destructor TProfissionalSaudeAlterar.Destroy;
begin

end;

function TProfissionalSaudeAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProfissionalSaudeAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProfissionalSaudeAlterar.getNameAPI(): String;
begin
  Result := 'ProfissionalSaudeAlterar';
end;

function TProfissionalSaudeAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProfissionalSaudeAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProfissionalSaudeExcluir.getProfissional: String;
begin
  Result := Self.m_Profissional;
end;

procedure TProfissionalSaudeExcluir.setProfissional(const a_Value: String);
begin
  Self.m_Profissional := a_Value;
end;

destructor TProfissionalSaudeExcluir.Destroy;
begin

end;

function TProfissionalSaudeExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProfissionalSaudeExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProfissionalSaudeExcluir.getNameAPI(): String;
begin
  Result := 'ProfissionalSaudeExcluir';
end;

function TProfissionalSaudeExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProfissionalSaudeExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
