unit api.model.persona.Instituicao;

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

type TInstituicaoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdInstituicao: String;
    var m_Tipo: Integer;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CNPJ: String;
    

    function getIdInstituicao(): String;
    function getTipo(): Integer;
    function getCodigo(): String;
    function getNome(): String;
    function getCNPJ(): String;
    

    procedure setIdInstituicao(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCNPJ(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idinstituicao')]
    property idinstituicao: String read getIdInstituicao write setIdInstituicao;

    /// <summary>
/// Plano de Saúde(0), Previdência(1), Ensino(2), Estágio(3), Saúde(4)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// [99.999.999/9999-99]. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('cnpj')]
    property cnpj: String read getCNPJ write setCNPJ;

    

end;

type TInstituicaoAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Instituicao: String;
    var m_Tipo: Integer;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CNPJ: String;
    

    function getInstituicao(): String;
    function getTipo(): Integer;
    function getCodigo(): String;
    function getNome(): String;
    function getCNPJ(): String;
    

    procedure setInstituicao(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCNPJ(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('instituicao')]
    property instituicao: String read getInstituicao write setInstituicao;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// [99.999.999/9999-99]. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('cnpj')]
    property cnpj: String read getCNPJ write setCNPJ;

    

end;

type TInstituicaoAlterarInstituicaoPlanoSaude = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Instituicao: String;
    var m_NumeroANS: String;
    

    function getInstituicao(): String;
    function getNumeroANS(): String;
    

    procedure setInstituicao(const a_Value: String);
    procedure setNumeroANS(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('instituicao')]
    property instituicao: String read getInstituicao write setInstituicao;

    /// <summary>
/// Informar o número do registro da instituição na agência nacional de saúde
    /// </summary>
    [NasajonSerializeAttribute('numeroans')]
    property numeroans: String read getNumeroANS write setNumeroANS;

    

end;

type TInstituicaoAlterarInstituicaoSaude = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Instituicao: String;
    var m_NumeroCNES: String;
    

    function getInstituicao(): String;
    function getNumeroCNES(): String;
    

    procedure setInstituicao(const a_Value: String);
    procedure setNumeroCNES(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('instituicao')]
    property instituicao: String read getInstituicao write setInstituicao;

    /// <summary>
/// Informar o número da instituição no cadastro nacional de estabelecimentos de saúde
    /// </summary>
    [NasajonSerializeAttribute('numerocnes')]
    property numerocnes: String read getNumeroCNES write setNumeroCNES;

    

end;

type TInstituicaoAlterarTelefone = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Instituicao: String;
    var m_DDD: String;
    var m_Telefone: String;
    

    function getInstituicao(): String;
    function getDDD(): String;
    function getTelefone(): String;
    

    procedure setInstituicao(const a_Value: String);
    procedure setDDD(const a_Value: String);
    procedure setTelefone(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('instituicao')]
    property instituicao: String read getInstituicao write setInstituicao;

    [NasajonSerializeAttribute('ddd')]
    property ddd: String read getDDD write setDDD;

    [NasajonSerializeAttribute('telefone')]
    property telefone: String read getTelefone write setTelefone;

    

end;

type TInstituicaoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Instituicao: String;
    

    function getInstituicao(): String;
    

    procedure setInstituicao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('instituicao')]
    property instituicao: String read getInstituicao write setInstituicao;

    

end;

	
implementation

  uses
      api.send;  

function TInstituicaoNovo.getIdInstituicao: String;
begin
  Result := Self.m_IdInstituicao;
end;

procedure TInstituicaoNovo.setIdInstituicao(const a_Value: String);
begin
  Self.m_IdInstituicao := a_Value;
end;

function TInstituicaoNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TInstituicaoNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TInstituicaoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TInstituicaoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TInstituicaoNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TInstituicaoNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TInstituicaoNovo.getCNPJ: String;
begin
  Result := Self.m_CNPJ;
end;

procedure TInstituicaoNovo.setCNPJ(const a_Value: String);
begin
  Self.m_CNPJ := a_Value;
end;

destructor TInstituicaoNovo.Destroy;
begin

end;

function TInstituicaoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TInstituicaoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TInstituicaoNovo.getNameAPI(): String;
begin
  Result := 'InstituicaoNovo';
end;

function TInstituicaoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TInstituicaoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TInstituicaoAlterarDadosGerais.getInstituicao: String;
begin
  Result := Self.m_Instituicao;
end;

procedure TInstituicaoAlterarDadosGerais.setInstituicao(const a_Value: String);
begin
  Self.m_Instituicao := a_Value;
end;

function TInstituicaoAlterarDadosGerais.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TInstituicaoAlterarDadosGerais.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TInstituicaoAlterarDadosGerais.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TInstituicaoAlterarDadosGerais.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TInstituicaoAlterarDadosGerais.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TInstituicaoAlterarDadosGerais.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TInstituicaoAlterarDadosGerais.getCNPJ: String;
begin
  Result := Self.m_CNPJ;
end;

procedure TInstituicaoAlterarDadosGerais.setCNPJ(const a_Value: String);
begin
  Self.m_CNPJ := a_Value;
end;

destructor TInstituicaoAlterarDadosGerais.Destroy;
begin

end;

function TInstituicaoAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TInstituicaoAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TInstituicaoAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'InstituicaoAlterarDadosGerais';
end;

function TInstituicaoAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TInstituicaoAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TInstituicaoAlterarInstituicaoPlanoSaude.getInstituicao: String;
begin
  Result := Self.m_Instituicao;
end;

procedure TInstituicaoAlterarInstituicaoPlanoSaude.setInstituicao(const a_Value: String);
begin
  Self.m_Instituicao := a_Value;
end;

function TInstituicaoAlterarInstituicaoPlanoSaude.getNumeroANS: String;
begin
  Result := Self.m_NumeroANS;
end;

procedure TInstituicaoAlterarInstituicaoPlanoSaude.setNumeroANS(const a_Value: String);
begin
  Self.m_NumeroANS := a_Value;
end;

destructor TInstituicaoAlterarInstituicaoPlanoSaude.Destroy;
begin

end;

function TInstituicaoAlterarInstituicaoPlanoSaude.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TInstituicaoAlterarInstituicaoPlanoSaude.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TInstituicaoAlterarInstituicaoPlanoSaude.getNameAPI(): String;
begin
  Result := 'InstituicaoAlterarInstituicaoPlanoSaude';
end;

function TInstituicaoAlterarInstituicaoPlanoSaude.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TInstituicaoAlterarInstituicaoPlanoSaude.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TInstituicaoAlterarInstituicaoSaude.getInstituicao: String;
begin
  Result := Self.m_Instituicao;
end;

procedure TInstituicaoAlterarInstituicaoSaude.setInstituicao(const a_Value: String);
begin
  Self.m_Instituicao := a_Value;
end;

function TInstituicaoAlterarInstituicaoSaude.getNumeroCNES: String;
begin
  Result := Self.m_NumeroCNES;
end;

procedure TInstituicaoAlterarInstituicaoSaude.setNumeroCNES(const a_Value: String);
begin
  Self.m_NumeroCNES := a_Value;
end;

destructor TInstituicaoAlterarInstituicaoSaude.Destroy;
begin

end;

function TInstituicaoAlterarInstituicaoSaude.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TInstituicaoAlterarInstituicaoSaude.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TInstituicaoAlterarInstituicaoSaude.getNameAPI(): String;
begin
  Result := 'InstituicaoAlterarInstituicaoSaude';
end;

function TInstituicaoAlterarInstituicaoSaude.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TInstituicaoAlterarInstituicaoSaude.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TInstituicaoAlterarTelefone.getInstituicao: String;
begin
  Result := Self.m_Instituicao;
end;

procedure TInstituicaoAlterarTelefone.setInstituicao(const a_Value: String);
begin
  Self.m_Instituicao := a_Value;
end;

function TInstituicaoAlterarTelefone.getDDD: String;
begin
  Result := Self.m_DDD;
end;

procedure TInstituicaoAlterarTelefone.setDDD(const a_Value: String);
begin
  Self.m_DDD := a_Value;
end;

function TInstituicaoAlterarTelefone.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TInstituicaoAlterarTelefone.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

destructor TInstituicaoAlterarTelefone.Destroy;
begin

end;

function TInstituicaoAlterarTelefone.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TInstituicaoAlterarTelefone.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TInstituicaoAlterarTelefone.getNameAPI(): String;
begin
  Result := 'InstituicaoAlterarTelefone';
end;

function TInstituicaoAlterarTelefone.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TInstituicaoAlterarTelefone.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TInstituicaoExcluir.getInstituicao: String;
begin
  Result := Self.m_Instituicao;
end;

procedure TInstituicaoExcluir.setInstituicao(const a_Value: String);
begin
  Self.m_Instituicao := a_Value;
end;

destructor TInstituicaoExcluir.Destroy;
begin

end;

function TInstituicaoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TInstituicaoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TInstituicaoExcluir.getNameAPI(): String;
begin
  Result := 'InstituicaoExcluir';
end;

function TInstituicaoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TInstituicaoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
