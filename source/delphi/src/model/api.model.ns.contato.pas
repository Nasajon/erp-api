unit api.model.ns.Contato;

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

type TContato = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_idPessoa: String;
    var m_nome: String;
    var m_primeiroNome: String;
    var m_sobreNome: String;
    var m_email: String;
    var m_cargo: String;
    var m_sexo: Integer;
    var m_observacao: WideString;
    var m_dataNascimento: TDate;
    var m_idPessoaFisica: String;
    

    function getid(): String;
    function getidPessoa(): String;
    function getnome(): String;
    function getprimeiroNome(): String;
    function getsobreNome(): String;
    function getemail(): String;
    function getcargo(): String;
    function getsexo(): Integer;
    function getobservacao(): WideString;
    function getdataNascimento(): TDate;
    function getidPessoaFisica(): String;
    

    procedure setid(const a_Value: String);
    procedure setidPessoa(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setprimeiroNome(const a_Value: String);
    procedure setsobreNome(const a_Value: String);
    procedure setemail(const a_Value: String);
    procedure setcargo(const a_Value: String);
    procedure setsexo(const a_Value: Integer);
    procedure setobservacao(const a_Value: WideString);
    procedure setdataNascimento(const a_Value: TDate);
    procedure setidPessoaFisica(const a_Value: String);
    

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
    property idpessoa: String read getidPessoa write setidPessoa;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('primeironome')]
    property primeironome: String read getprimeiroNome write setprimeiroNome;

    [NasajonSerializeAttribute('sobrenome')]
    property sobrenome: String read getsobreNome write setsobreNome;

    [NasajonSerializeAttribute('email')]
    property email: String read getemail write setemail;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getcargo write setcargo;

    [NasajonSerializeAttribute('sexo')]
    property sexo: Integer read getsexo write setsexo;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getobservacao write setobservacao;

    [NasajonSerializeAttribute('datanascimento')]
    property datanascimento: TDate read getdataNascimento write setdataNascimento;

    [NasajonSerializeAttribute('idpessoafisica')]
    property idpessoafisica: String read getidPessoaFisica write setidPessoaFisica;

    

end;

type TContatoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_idPessoa: String;
    var m_nome: String;
    var m_primeiroNome: String;
    var m_sobreNome: String;
    var m_email: String;
    var m_cargo: String;
    var m_sexo: Integer;
    var m_observacao: WideString;
    var m_dataNascimento: TDate;
    

    function getid(): String;
    function getidPessoa(): String;
    function getnome(): String;
    function getprimeiroNome(): String;
    function getsobreNome(): String;
    function getemail(): String;
    function getcargo(): String;
    function getsexo(): Integer;
    function getobservacao(): WideString;
    function getdataNascimento(): TDate;
    

    procedure setid(const a_Value: String);
    procedure setidPessoa(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setprimeiroNome(const a_Value: String);
    procedure setsobreNome(const a_Value: String);
    procedure setemail(const a_Value: String);
    procedure setcargo(const a_Value: String);
    procedure setsexo(const a_Value: Integer);
    procedure setobservacao(const a_Value: WideString);
    procedure setdataNascimento(const a_Value: TDate);
    

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
    property idpessoa: String read getidPessoa write setidPessoa;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('primeironome')]
    property primeironome: String read getprimeiroNome write setprimeiroNome;

    [NasajonSerializeAttribute('sobrenome')]
    property sobrenome: String read getsobreNome write setsobreNome;

    [NasajonSerializeAttribute('email')]
    property email: String read getemail write setemail;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getcargo write setcargo;

    [NasajonSerializeAttribute('sexo')]
    property sexo: Integer read getsexo write setsexo;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getobservacao write setobservacao;

    [NasajonSerializeAttribute('datanascimento')]
    property datanascimento: TDate read getdataNascimento write setdataNascimento;

    

end;

type TContatoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_idPessoa: String;
    var m_nome: String;
    var m_primeiroNome: String;
    var m_sobreNome: String;
    var m_email: String;
    var m_cargo: String;
    var m_sexo: Integer;
    var m_observacao: WideString;
    var m_dataNascimento: TDate;
    

    function getid(): String;
    function getidPessoa(): String;
    function getnome(): String;
    function getprimeiroNome(): String;
    function getsobreNome(): String;
    function getemail(): String;
    function getcargo(): String;
    function getsexo(): Integer;
    function getobservacao(): WideString;
    function getdataNascimento(): TDate;
    

    procedure setid(const a_Value: String);
    procedure setidPessoa(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setprimeiroNome(const a_Value: String);
    procedure setsobreNome(const a_Value: String);
    procedure setemail(const a_Value: String);
    procedure setcargo(const a_Value: String);
    procedure setsexo(const a_Value: Integer);
    procedure setobservacao(const a_Value: WideString);
    procedure setdataNascimento(const a_Value: TDate);
    

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
    property idpessoa: String read getidPessoa write setidPessoa;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('primeironome')]
    property primeironome: String read getprimeiroNome write setprimeiroNome;

    [NasajonSerializeAttribute('sobrenome')]
    property sobrenome: String read getsobreNome write setsobreNome;

    [NasajonSerializeAttribute('email')]
    property email: String read getemail write setemail;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getcargo write setcargo;

    [NasajonSerializeAttribute('sexo')]
    property sexo: Integer read getsexo write setsexo;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getobservacao write setobservacao;

    [NasajonSerializeAttribute('datanascimento')]
    property datanascimento: TDate read getdataNascimento write setdataNascimento;

    

end;

type TContatoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    

    function getid(): String;
    

    procedure setid(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    

end;

	
implementation

  uses
      api.send;  

function TContato.getid: String;
begin
  Result := Self.m_id;
end;

procedure TContato.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TContato.getidPessoa: String;
begin
  Result := Self.m_idPessoa;
end;

procedure TContato.setidPessoa(const a_Value: String);
begin
  Self.m_idPessoa := a_Value;
end;

function TContato.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TContato.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TContato.getprimeiroNome: String;
begin
  Result := Self.m_primeiroNome;
end;

procedure TContato.setprimeiroNome(const a_Value: String);
begin
  Self.m_primeiroNome := a_Value;
end;

function TContato.getsobreNome: String;
begin
  Result := Self.m_sobreNome;
end;

procedure TContato.setsobreNome(const a_Value: String);
begin
  Self.m_sobreNome := a_Value;
end;

function TContato.getemail: String;
begin
  Result := Self.m_email;
end;

procedure TContato.setemail(const a_Value: String);
begin
  Self.m_email := a_Value;
end;

function TContato.getcargo: String;
begin
  Result := Self.m_cargo;
end;

procedure TContato.setcargo(const a_Value: String);
begin
  Self.m_cargo := a_Value;
end;

function TContato.getsexo: Integer;
begin
  Result := Self.m_sexo;
end;

procedure TContato.setsexo(const a_Value: Integer);
begin
  Self.m_sexo := a_Value;
end;

function TContato.getobservacao: WideString;
begin
  Result := Self.m_observacao;
end;

procedure TContato.setobservacao(const a_Value: WideString);
begin
  Self.m_observacao := a_Value;
end;

function TContato.getdataNascimento: TDate;
begin
  Result := Self.m_dataNascimento;
end;

procedure TContato.setdataNascimento(const a_Value: TDate);
begin
  Self.m_dataNascimento := a_Value;
end;

function TContato.getidPessoaFisica: String;
begin
  Result := Self.m_idPessoaFisica;
end;

procedure TContato.setidPessoaFisica(const a_Value: String);
begin
  Self.m_idPessoaFisica := a_Value;
end;

destructor TContato.Destroy;
begin

end;

function TContato.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContato.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContato.getNameAPI(): String;
begin
  Result := 'Contato';
end;

function TContato.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContato.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContatoNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TContatoNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TContatoNovo.getidPessoa: String;
begin
  Result := Self.m_idPessoa;
end;

procedure TContatoNovo.setidPessoa(const a_Value: String);
begin
  Self.m_idPessoa := a_Value;
end;

function TContatoNovo.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TContatoNovo.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TContatoNovo.getprimeiroNome: String;
begin
  Result := Self.m_primeiroNome;
end;

procedure TContatoNovo.setprimeiroNome(const a_Value: String);
begin
  Self.m_primeiroNome := a_Value;
end;

function TContatoNovo.getsobreNome: String;
begin
  Result := Self.m_sobreNome;
end;

procedure TContatoNovo.setsobreNome(const a_Value: String);
begin
  Self.m_sobreNome := a_Value;
end;

function TContatoNovo.getemail: String;
begin
  Result := Self.m_email;
end;

procedure TContatoNovo.setemail(const a_Value: String);
begin
  Self.m_email := a_Value;
end;

function TContatoNovo.getcargo: String;
begin
  Result := Self.m_cargo;
end;

procedure TContatoNovo.setcargo(const a_Value: String);
begin
  Self.m_cargo := a_Value;
end;

function TContatoNovo.getsexo: Integer;
begin
  Result := Self.m_sexo;
end;

procedure TContatoNovo.setsexo(const a_Value: Integer);
begin
  Self.m_sexo := a_Value;
end;

function TContatoNovo.getobservacao: WideString;
begin
  Result := Self.m_observacao;
end;

procedure TContatoNovo.setobservacao(const a_Value: WideString);
begin
  Self.m_observacao := a_Value;
end;

function TContatoNovo.getdataNascimento: TDate;
begin
  Result := Self.m_dataNascimento;
end;

procedure TContatoNovo.setdataNascimento(const a_Value: TDate);
begin
  Self.m_dataNascimento := a_Value;
end;

destructor TContatoNovo.Destroy;
begin

end;

function TContatoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContatoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContatoNovo.getNameAPI(): String;
begin
  Result := 'ContatoNovo';
end;

function TContatoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContatoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContatoAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TContatoAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TContatoAlterar.getidPessoa: String;
begin
  Result := Self.m_idPessoa;
end;

procedure TContatoAlterar.setidPessoa(const a_Value: String);
begin
  Self.m_idPessoa := a_Value;
end;

function TContatoAlterar.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TContatoAlterar.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TContatoAlterar.getprimeiroNome: String;
begin
  Result := Self.m_primeiroNome;
end;

procedure TContatoAlterar.setprimeiroNome(const a_Value: String);
begin
  Self.m_primeiroNome := a_Value;
end;

function TContatoAlterar.getsobreNome: String;
begin
  Result := Self.m_sobreNome;
end;

procedure TContatoAlterar.setsobreNome(const a_Value: String);
begin
  Self.m_sobreNome := a_Value;
end;

function TContatoAlterar.getemail: String;
begin
  Result := Self.m_email;
end;

procedure TContatoAlterar.setemail(const a_Value: String);
begin
  Self.m_email := a_Value;
end;

function TContatoAlterar.getcargo: String;
begin
  Result := Self.m_cargo;
end;

procedure TContatoAlterar.setcargo(const a_Value: String);
begin
  Self.m_cargo := a_Value;
end;

function TContatoAlterar.getsexo: Integer;
begin
  Result := Self.m_sexo;
end;

procedure TContatoAlterar.setsexo(const a_Value: Integer);
begin
  Self.m_sexo := a_Value;
end;

function TContatoAlterar.getobservacao: WideString;
begin
  Result := Self.m_observacao;
end;

procedure TContatoAlterar.setobservacao(const a_Value: WideString);
begin
  Self.m_observacao := a_Value;
end;

function TContatoAlterar.getdataNascimento: TDate;
begin
  Result := Self.m_dataNascimento;
end;

procedure TContatoAlterar.setdataNascimento(const a_Value: TDate);
begin
  Self.m_dataNascimento := a_Value;
end;

destructor TContatoAlterar.Destroy;
begin

end;

function TContatoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContatoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContatoAlterar.getNameAPI(): String;
begin
  Result := 'ContatoAlterar';
end;

function TContatoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContatoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContatoExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TContatoExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

destructor TContatoExcluir.Destroy;
begin

end;

function TContatoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContatoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContatoExcluir.getNameAPI(): String;
begin
  Result := 'ContatoExcluir';
end;

function TContatoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContatoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
