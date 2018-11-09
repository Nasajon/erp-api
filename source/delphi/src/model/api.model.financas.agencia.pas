unit api.model.financas.Agencia;

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

type TAgenciaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdAgencia: String;
    var m_Banco: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Numero: String;
    var m_DigitoVerificador: String;
    

    function getIdAgencia(): String;
    function getBanco(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getNumero(): String;
    function getDigitoVerificador(): String;
    

    procedure setIdAgencia(const a_Value: String);
    procedure setBanco(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setDigitoVerificador(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idagencia')]
    property idagencia: String read getIdAgencia write setIdAgencia;

    [NasajonSerializeAttribute('banco')]
    property banco: String read getBanco write setBanco;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('digitoverificador')]
    property digitoverificador: String read getDigitoVerificador write setDigitoVerificador;

    

end;

type TAgenciaAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Agencia: String;
    var m_Banco: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Numero: String;
    var m_DigitoVerificador: String;
    

    function getAgencia(): String;
    function getBanco(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getNumero(): String;
    function getDigitoVerificador(): String;
    

    procedure setAgencia(const a_Value: String);
    procedure setBanco(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setDigitoVerificador(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('agencia')]
    property agencia: String read getAgencia write setAgencia;

    [NasajonSerializeAttribute('banco')]
    property banco: String read getBanco write setBanco;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('digitoverificador')]
    property digitoverificador: String read getDigitoVerificador write setDigitoVerificador;

    

end;

type TAgenciaAlterarDadosEndereco = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Agencia: String;
    var m_Banco: String;
    var m_Logradouro: String;
    var m_Numero: String;
    var m_Complemento: String;
    var m_Bairro: String;
    var m_Cidade: String;
    var m_Estado: String;
    var m_CEP: String;
    var m_Contato: String;
    var m_Telefone: String;
    var m_DDDTelefone: String;
    

    function getAgencia(): String;
    function getBanco(): String;
    function getLogradouro(): String;
    function getNumero(): String;
    function getComplemento(): String;
    function getBairro(): String;
    function getCidade(): String;
    function getEstado(): String;
    function getCEP(): String;
    function getContato(): String;
    function getTelefone(): String;
    function getDDDTelefone(): String;
    

    procedure setAgencia(const a_Value: String);
    procedure setBanco(const a_Value: String);
    procedure setLogradouro(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setComplemento(const a_Value: String);
    procedure setBairro(const a_Value: String);
    procedure setCidade(const a_Value: String);
    procedure setEstado(const a_Value: String);
    procedure setCEP(const a_Value: String);
    procedure setContato(const a_Value: String);
    procedure setTelefone(const a_Value: String);
    procedure setDDDTelefone(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('agencia')]
    property agencia: String read getAgencia write setAgencia;

    [NasajonSerializeAttribute('banco')]
    property banco: String read getBanco write setBanco;

    [NasajonSerializeAttribute('logradouro')]
    property logradouro: String read getLogradouro write setLogradouro;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('complemento')]
    property complemento: String read getComplemento write setComplemento;

    [NasajonSerializeAttribute('bairro')]
    property bairro: String read getBairro write setBairro;

    [NasajonSerializeAttribute('cidade')]
    property cidade: String read getCidade write setCidade;

    [NasajonSerializeAttribute('estado')]
    property estado: String read getEstado write setEstado;

    [NasajonSerializeAttribute('cep')]
    property cep: String read getCEP write setCEP;

    [NasajonSerializeAttribute('contato')]
    property contato: String read getContato write setContato;

    [NasajonSerializeAttribute('telefone')]
    property telefone: String read getTelefone write setTelefone;

    [NasajonSerializeAttribute('dddtelefone')]
    property dddtelefone: String read getDDDTelefone write setDDDTelefone;

    

end;

type TAgenciaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Agencia: String;
    var m_Banco: String;
    

    function getAgencia(): String;
    function getBanco(): String;
    

    procedure setAgencia(const a_Value: String);
    procedure setBanco(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('agencia')]
    property agencia: String read getAgencia write setAgencia;

    [NasajonSerializeAttribute('banco')]
    property banco: String read getBanco write setBanco;

    

end;

	
implementation

  uses
      api.send;  

function TAgenciaNovo.getIdAgencia: String;
begin
  Result := Self.m_IdAgencia;
end;

procedure TAgenciaNovo.setIdAgencia(const a_Value: String);
begin
  Self.m_IdAgencia := a_Value;
end;

function TAgenciaNovo.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TAgenciaNovo.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

function TAgenciaNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TAgenciaNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TAgenciaNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TAgenciaNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TAgenciaNovo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TAgenciaNovo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TAgenciaNovo.getDigitoVerificador: String;
begin
  Result := Self.m_DigitoVerificador;
end;

procedure TAgenciaNovo.setDigitoVerificador(const a_Value: String);
begin
  Self.m_DigitoVerificador := a_Value;
end;

destructor TAgenciaNovo.Destroy;
begin

end;

function TAgenciaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAgenciaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAgenciaNovo.getNameAPI(): String;
begin
  Result := 'AgenciaNovo';
end;

function TAgenciaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAgenciaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAgenciaAlterarDadosGerais.getAgencia: String;
begin
  Result := Self.m_Agencia;
end;

procedure TAgenciaAlterarDadosGerais.setAgencia(const a_Value: String);
begin
  Self.m_Agencia := a_Value;
end;

function TAgenciaAlterarDadosGerais.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TAgenciaAlterarDadosGerais.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

function TAgenciaAlterarDadosGerais.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TAgenciaAlterarDadosGerais.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TAgenciaAlterarDadosGerais.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TAgenciaAlterarDadosGerais.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TAgenciaAlterarDadosGerais.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TAgenciaAlterarDadosGerais.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TAgenciaAlterarDadosGerais.getDigitoVerificador: String;
begin
  Result := Self.m_DigitoVerificador;
end;

procedure TAgenciaAlterarDadosGerais.setDigitoVerificador(const a_Value: String);
begin
  Self.m_DigitoVerificador := a_Value;
end;

destructor TAgenciaAlterarDadosGerais.Destroy;
begin

end;

function TAgenciaAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAgenciaAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAgenciaAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'AgenciaAlterarDadosGerais';
end;

function TAgenciaAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAgenciaAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAgenciaAlterarDadosEndereco.getAgencia: String;
begin
  Result := Self.m_Agencia;
end;

procedure TAgenciaAlterarDadosEndereco.setAgencia(const a_Value: String);
begin
  Self.m_Agencia := a_Value;
end;

function TAgenciaAlterarDadosEndereco.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TAgenciaAlterarDadosEndereco.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

function TAgenciaAlterarDadosEndereco.getLogradouro: String;
begin
  Result := Self.m_Logradouro;
end;

procedure TAgenciaAlterarDadosEndereco.setLogradouro(const a_Value: String);
begin
  Self.m_Logradouro := a_Value;
end;

function TAgenciaAlterarDadosEndereco.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TAgenciaAlterarDadosEndereco.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TAgenciaAlterarDadosEndereco.getComplemento: String;
begin
  Result := Self.m_Complemento;
end;

procedure TAgenciaAlterarDadosEndereco.setComplemento(const a_Value: String);
begin
  Self.m_Complemento := a_Value;
end;

function TAgenciaAlterarDadosEndereco.getBairro: String;
begin
  Result := Self.m_Bairro;
end;

procedure TAgenciaAlterarDadosEndereco.setBairro(const a_Value: String);
begin
  Self.m_Bairro := a_Value;
end;

function TAgenciaAlterarDadosEndereco.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TAgenciaAlterarDadosEndereco.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TAgenciaAlterarDadosEndereco.getEstado: String;
begin
  Result := Self.m_Estado;
end;

procedure TAgenciaAlterarDadosEndereco.setEstado(const a_Value: String);
begin
  Self.m_Estado := a_Value;
end;

function TAgenciaAlterarDadosEndereco.getCEP: String;
begin
  Result := Self.m_CEP;
end;

procedure TAgenciaAlterarDadosEndereco.setCEP(const a_Value: String);
begin
  Self.m_CEP := a_Value;
end;

function TAgenciaAlterarDadosEndereco.getContato: String;
begin
  Result := Self.m_Contato;
end;

procedure TAgenciaAlterarDadosEndereco.setContato(const a_Value: String);
begin
  Self.m_Contato := a_Value;
end;

function TAgenciaAlterarDadosEndereco.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TAgenciaAlterarDadosEndereco.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

function TAgenciaAlterarDadosEndereco.getDDDTelefone: String;
begin
  Result := Self.m_DDDTelefone;
end;

procedure TAgenciaAlterarDadosEndereco.setDDDTelefone(const a_Value: String);
begin
  Self.m_DDDTelefone := a_Value;
end;

destructor TAgenciaAlterarDadosEndereco.Destroy;
begin

end;

function TAgenciaAlterarDadosEndereco.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAgenciaAlterarDadosEndereco.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAgenciaAlterarDadosEndereco.getNameAPI(): String;
begin
  Result := 'AgenciaAlterarDadosEndereco';
end;

function TAgenciaAlterarDadosEndereco.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAgenciaAlterarDadosEndereco.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TAgenciaExcluir.getAgencia: String;
begin
  Result := Self.m_Agencia;
end;

procedure TAgenciaExcluir.setAgencia(const a_Value: String);
begin
  Self.m_Agencia := a_Value;
end;

function TAgenciaExcluir.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TAgenciaExcluir.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

destructor TAgenciaExcluir.Destroy;
begin

end;

function TAgenciaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TAgenciaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TAgenciaExcluir.getNameAPI(): String;
begin
  Result := 'AgenciaExcluir';
end;

function TAgenciaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TAgenciaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
