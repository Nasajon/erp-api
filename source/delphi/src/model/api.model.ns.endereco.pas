unit api.model.ns.Endereco;

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

type TEndereco = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_tipoLogradouro: String;
    var m_logradouro: String;
    var m_numero: String;
    var m_complemento: String;
    var m_cep: String;
    var m_bairro: String;
    var m_municipio: String;
    var m_pais: String;
    var m_uf: String;
    var m_tipo: Integer;
    var m_enderecopadrao: Integer;
    var m_referencia: String;
    var m_idpessoa: String;
    

    function getid(): String;
    function gettipoLogradouro(): String;
    function getlogradouro(): String;
    function getnumero(): String;
    function getcomplemento(): String;
    function getcep(): String;
    function getbairro(): String;
    function getmunicipio(): String;
    function getpais(): String;
    function getuf(): String;
    function gettipo(): Integer;
    function getenderecopadrao(): Integer;
    function getreferencia(): String;
    function getidpessoa(): String;
    

    procedure setid(const a_Value: String);
    procedure settipoLogradouro(const a_Value: String);
    procedure setlogradouro(const a_Value: String);
    procedure setnumero(const a_Value: String);
    procedure setcomplemento(const a_Value: String);
    procedure setcep(const a_Value: String);
    procedure setbairro(const a_Value: String);
    procedure setmunicipio(const a_Value: String);
    procedure setpais(const a_Value: String);
    procedure setuf(const a_Value: String);
    procedure settipo(const a_Value: Integer);
    procedure setenderecopadrao(const a_Value: Integer);
    procedure setreferencia(const a_Value: String);
    procedure setidpessoa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('tipologradouro')]
    property tipologradouro: String read gettipoLogradouro write settipoLogradouro;

    [NasajonSerializeAttribute('logradouro')]
    property logradouro: String read getlogradouro write setlogradouro;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getnumero write setnumero;

    [NasajonSerializeAttribute('complemento')]
    property complemento: String read getcomplemento write setcomplemento;

    [NasajonSerializeAttribute('cep')]
    property cep: String read getcep write setcep;

    [NasajonSerializeAttribute('bairro')]
    property bairro: String read getbairro write setbairro;

    /// <summary>
/// Informar o código IBGE ou o nome do Município
    /// </summary>
    [NasajonSerializeAttribute('municipio')]
    property municipio: String read getmunicipio write setmunicipio;

    /// <summary>
/// Informar o código do País ou o nome do País
    /// </summary>
    [NasajonSerializeAttribute('pais')]
    property pais: String read getpais write setpais;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getuf write setuf;

    /// <summary>
/// Informar 0 = Local, 1 = Entrega ou 2 = Cobranca
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    [NasajonSerializeAttribute('enderecopadrao')]
    property enderecopadrao: Integer read getenderecopadrao write setenderecopadrao;

    [NasajonSerializeAttribute('referencia')]
    property referencia: String read getreferencia write setreferencia;

    [NasajonSerializeAttribute('idpessoa')]
    property idpessoa: String read getidpessoa write setidpessoa;

    

end;

type TEnderecoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_idpessoa: String;
    var m_tipo: Integer;
    

    function getid(): String;
    function getidpessoa(): String;
    function gettipo(): Integer;
    

    procedure setid(const a_Value: String);
    procedure setidpessoa(const a_Value: String);
    procedure settipo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('idpessoa')]
    property idpessoa: String read getidpessoa write setidpessoa;

    /// <summary>
/// Informar 0 = Local, 1 = Entrega ou 2 = Cobranca
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    

end;

	
implementation

  uses
      api.send;  

function TEndereco.getid: String;
begin
  Result := Self.m_id;
end;

procedure TEndereco.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TEndereco.gettipoLogradouro: String;
begin
  Result := Self.m_tipoLogradouro;
end;

procedure TEndereco.settipoLogradouro(const a_Value: String);
begin
  Self.m_tipoLogradouro := a_Value;
end;

function TEndereco.getlogradouro: String;
begin
  Result := Self.m_logradouro;
end;

procedure TEndereco.setlogradouro(const a_Value: String);
begin
  Self.m_logradouro := a_Value;
end;

function TEndereco.getnumero: String;
begin
  Result := Self.m_numero;
end;

procedure TEndereco.setnumero(const a_Value: String);
begin
  Self.m_numero := a_Value;
end;

function TEndereco.getcomplemento: String;
begin
  Result := Self.m_complemento;
end;

procedure TEndereco.setcomplemento(const a_Value: String);
begin
  Self.m_complemento := a_Value;
end;

function TEndereco.getcep: String;
begin
  Result := Self.m_cep;
end;

procedure TEndereco.setcep(const a_Value: String);
begin
  Self.m_cep := a_Value;
end;

function TEndereco.getbairro: String;
begin
  Result := Self.m_bairro;
end;

procedure TEndereco.setbairro(const a_Value: String);
begin
  Self.m_bairro := a_Value;
end;

function TEndereco.getmunicipio: String;
begin
  Result := Self.m_municipio;
end;

procedure TEndereco.setmunicipio(const a_Value: String);
begin
  Self.m_municipio := a_Value;
end;

function TEndereco.getpais: String;
begin
  Result := Self.m_pais;
end;

procedure TEndereco.setpais(const a_Value: String);
begin
  Self.m_pais := a_Value;
end;

function TEndereco.getuf: String;
begin
  Result := Self.m_uf;
end;

procedure TEndereco.setuf(const a_Value: String);
begin
  Self.m_uf := a_Value;
end;

function TEndereco.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TEndereco.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TEndereco.getenderecopadrao: Integer;
begin
  Result := Self.m_enderecopadrao;
end;

procedure TEndereco.setenderecopadrao(const a_Value: Integer);
begin
  Self.m_enderecopadrao := a_Value;
end;

function TEndereco.getreferencia: String;
begin
  Result := Self.m_referencia;
end;

procedure TEndereco.setreferencia(const a_Value: String);
begin
  Self.m_referencia := a_Value;
end;

function TEndereco.getidpessoa: String;
begin
  Result := Self.m_idpessoa;
end;

procedure TEndereco.setidpessoa(const a_Value: String);
begin
  Self.m_idpessoa := a_Value;
end;

destructor TEndereco.Destroy;
begin

end;

function TEndereco.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEndereco.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEndereco.getNameAPI(): String;
begin
  Result := 'Endereco';
end;

function TEndereco.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEndereco.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEnderecoExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TEnderecoExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TEnderecoExcluir.getidpessoa: String;
begin
  Result := Self.m_idpessoa;
end;

procedure TEnderecoExcluir.setidpessoa(const a_Value: String);
begin
  Self.m_idpessoa := a_Value;
end;

function TEnderecoExcluir.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TEnderecoExcluir.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

destructor TEnderecoExcluir.Destroy;
begin

end;

function TEnderecoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEnderecoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEnderecoExcluir.getNameAPI(): String;
begin
  Result := 'EnderecoExcluir';
end;

function TEnderecoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEnderecoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
