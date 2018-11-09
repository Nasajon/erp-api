unit api.model.ns.Telefone;

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

type TTelefone = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_idPessoa: String;
    var m_idContato: String;
    var m_ddi: String;
    var m_ddd: String;
    var m_chaveTel: String;
    var m_numero: String;
    var m_ramal: String;
    var m_descricao: WideString;
    var m_tipo: Integer;
    var m_ordemImportancia: Integer;
    var m_idPessoafisica: String;
    

    function getid(): String;
    function getidPessoa(): String;
    function getidContato(): String;
    function getddi(): String;
    function getddd(): String;
    function getchaveTel(): String;
    function getnumero(): String;
    function getramal(): String;
    function getdescricao(): WideString;
    function gettipo(): Integer;
    function getordemImportancia(): Integer;
    function getidPessoafisica(): String;
    

    procedure setid(const a_Value: String);
    procedure setidPessoa(const a_Value: String);
    procedure setidContato(const a_Value: String);
    procedure setddi(const a_Value: String);
    procedure setddd(const a_Value: String);
    procedure setchaveTel(const a_Value: String);
    procedure setnumero(const a_Value: String);
    procedure setramal(const a_Value: String);
    procedure setdescricao(const a_Value: WideString);
    procedure settipo(const a_Value: Integer);
    procedure setordemImportancia(const a_Value: Integer);
    procedure setidPessoafisica(const a_Value: String);
    

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

    [NasajonSerializeAttribute('idcontato')]
    property idcontato: String read getidContato write setidContato;

    [NasajonSerializeAttribute('ddi')]
    property ddi: String read getddi write setddi;

    [NasajonSerializeAttribute('ddd')]
    property ddd: String read getddd write setddd;

    [NasajonSerializeAttribute('chavetel')]
    property chavetel: String read getchaveTel write setchaveTel;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getnumero write setnumero;

    [NasajonSerializeAttribute('ramal')]
    property ramal: String read getramal write setramal;

    [NasajonSerializeAttribute('descricao')]
    property descricao: WideString read getdescricao write setdescricao;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    [NasajonSerializeAttribute('ordemimportancia')]
    property ordemimportancia: Integer read getordemImportancia write setordemImportancia;

    [NasajonSerializeAttribute('idpessoafisica')]
    property idpessoafisica: String read getidPessoafisica write setidPessoafisica;

    

end;

type TTelefoneNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_idPessoa: String;
    var m_idContato: String;
    var m_ddi: String;
    var m_ddd: String;
    var m_chaveTel: String;
    var m_numero: String;
    var m_ramal: String;
    var m_descricao: WideString;
    var m_tipo: Integer;
    var m_ordemImportancia: Integer;
    

    function getid(): String;
    function getidPessoa(): String;
    function getidContato(): String;
    function getddi(): String;
    function getddd(): String;
    function getchaveTel(): String;
    function getnumero(): String;
    function getramal(): String;
    function getdescricao(): WideString;
    function gettipo(): Integer;
    function getordemImportancia(): Integer;
    

    procedure setid(const a_Value: String);
    procedure setidPessoa(const a_Value: String);
    procedure setidContato(const a_Value: String);
    procedure setddi(const a_Value: String);
    procedure setddd(const a_Value: String);
    procedure setchaveTel(const a_Value: String);
    procedure setnumero(const a_Value: String);
    procedure setramal(const a_Value: String);
    procedure setdescricao(const a_Value: WideString);
    procedure settipo(const a_Value: Integer);
    procedure setordemImportancia(const a_Value: Integer);
    

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

    [NasajonSerializeAttribute('idcontato')]
    property idcontato: String read getidContato write setidContato;

    [NasajonSerializeAttribute('ddi')]
    property ddi: String read getddi write setddi;

    [NasajonSerializeAttribute('ddd')]
    property ddd: String read getddd write setddd;

    [NasajonSerializeAttribute('chavetel')]
    property chavetel: String read getchaveTel write setchaveTel;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getnumero write setnumero;

    [NasajonSerializeAttribute('ramal')]
    property ramal: String read getramal write setramal;

    [NasajonSerializeAttribute('descricao')]
    property descricao: WideString read getdescricao write setdescricao;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    [NasajonSerializeAttribute('ordemimportancia')]
    property ordemimportancia: Integer read getordemImportancia write setordemImportancia;

    

end;

type TTelefoneAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_idPessoa: String;
    var m_idContato: String;
    var m_ddi: String;
    var m_ddd: String;
    var m_chaveTel: String;
    var m_numero: String;
    var m_ramal: String;
    var m_descricao: WideString;
    var m_tipo: Integer;
    var m_ordemImportancia: Integer;
    

    function getid(): String;
    function getidPessoa(): String;
    function getidContato(): String;
    function getddi(): String;
    function getddd(): String;
    function getchaveTel(): String;
    function getnumero(): String;
    function getramal(): String;
    function getdescricao(): WideString;
    function gettipo(): Integer;
    function getordemImportancia(): Integer;
    

    procedure setid(const a_Value: String);
    procedure setidPessoa(const a_Value: String);
    procedure setidContato(const a_Value: String);
    procedure setddi(const a_Value: String);
    procedure setddd(const a_Value: String);
    procedure setchaveTel(const a_Value: String);
    procedure setnumero(const a_Value: String);
    procedure setramal(const a_Value: String);
    procedure setdescricao(const a_Value: WideString);
    procedure settipo(const a_Value: Integer);
    procedure setordemImportancia(const a_Value: Integer);
    

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

    [NasajonSerializeAttribute('idcontato')]
    property idcontato: String read getidContato write setidContato;

    [NasajonSerializeAttribute('ddi')]
    property ddi: String read getddi write setddi;

    [NasajonSerializeAttribute('ddd')]
    property ddd: String read getddd write setddd;

    [NasajonSerializeAttribute('chavetel')]
    property chavetel: String read getchaveTel write setchaveTel;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getnumero write setnumero;

    [NasajonSerializeAttribute('ramal')]
    property ramal: String read getramal write setramal;

    [NasajonSerializeAttribute('descricao')]
    property descricao: WideString read getdescricao write setdescricao;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    [NasajonSerializeAttribute('ordemimportancia')]
    property ordemimportancia: Integer read getordemImportancia write setordemImportancia;

    

end;

type TTelefoneExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TTelefone.getid: String;
begin
  Result := Self.m_id;
end;

procedure TTelefone.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TTelefone.getidPessoa: String;
begin
  Result := Self.m_idPessoa;
end;

procedure TTelefone.setidPessoa(const a_Value: String);
begin
  Self.m_idPessoa := a_Value;
end;

function TTelefone.getidContato: String;
begin
  Result := Self.m_idContato;
end;

procedure TTelefone.setidContato(const a_Value: String);
begin
  Self.m_idContato := a_Value;
end;

function TTelefone.getddi: String;
begin
  Result := Self.m_ddi;
end;

procedure TTelefone.setddi(const a_Value: String);
begin
  Self.m_ddi := a_Value;
end;

function TTelefone.getddd: String;
begin
  Result := Self.m_ddd;
end;

procedure TTelefone.setddd(const a_Value: String);
begin
  Self.m_ddd := a_Value;
end;

function TTelefone.getchaveTel: String;
begin
  Result := Self.m_chaveTel;
end;

procedure TTelefone.setchaveTel(const a_Value: String);
begin
  Self.m_chaveTel := a_Value;
end;

function TTelefone.getnumero: String;
begin
  Result := Self.m_numero;
end;

procedure TTelefone.setnumero(const a_Value: String);
begin
  Self.m_numero := a_Value;
end;

function TTelefone.getramal: String;
begin
  Result := Self.m_ramal;
end;

procedure TTelefone.setramal(const a_Value: String);
begin
  Self.m_ramal := a_Value;
end;

function TTelefone.getdescricao: WideString;
begin
  Result := Self.m_descricao;
end;

procedure TTelefone.setdescricao(const a_Value: WideString);
begin
  Self.m_descricao := a_Value;
end;

function TTelefone.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TTelefone.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TTelefone.getordemImportancia: Integer;
begin
  Result := Self.m_ordemImportancia;
end;

procedure TTelefone.setordemImportancia(const a_Value: Integer);
begin
  Self.m_ordemImportancia := a_Value;
end;

function TTelefone.getidPessoafisica: String;
begin
  Result := Self.m_idPessoafisica;
end;

procedure TTelefone.setidPessoafisica(const a_Value: String);
begin
  Self.m_idPessoafisica := a_Value;
end;

destructor TTelefone.Destroy;
begin

end;

function TTelefone.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTelefone.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTelefone.getNameAPI(): String;
begin
  Result := 'Telefone';
end;

function TTelefone.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTelefone.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTelefoneNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TTelefoneNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TTelefoneNovo.getidPessoa: String;
begin
  Result := Self.m_idPessoa;
end;

procedure TTelefoneNovo.setidPessoa(const a_Value: String);
begin
  Self.m_idPessoa := a_Value;
end;

function TTelefoneNovo.getidContato: String;
begin
  Result := Self.m_idContato;
end;

procedure TTelefoneNovo.setidContato(const a_Value: String);
begin
  Self.m_idContato := a_Value;
end;

function TTelefoneNovo.getddi: String;
begin
  Result := Self.m_ddi;
end;

procedure TTelefoneNovo.setddi(const a_Value: String);
begin
  Self.m_ddi := a_Value;
end;

function TTelefoneNovo.getddd: String;
begin
  Result := Self.m_ddd;
end;

procedure TTelefoneNovo.setddd(const a_Value: String);
begin
  Self.m_ddd := a_Value;
end;

function TTelefoneNovo.getchaveTel: String;
begin
  Result := Self.m_chaveTel;
end;

procedure TTelefoneNovo.setchaveTel(const a_Value: String);
begin
  Self.m_chaveTel := a_Value;
end;

function TTelefoneNovo.getnumero: String;
begin
  Result := Self.m_numero;
end;

procedure TTelefoneNovo.setnumero(const a_Value: String);
begin
  Self.m_numero := a_Value;
end;

function TTelefoneNovo.getramal: String;
begin
  Result := Self.m_ramal;
end;

procedure TTelefoneNovo.setramal(const a_Value: String);
begin
  Self.m_ramal := a_Value;
end;

function TTelefoneNovo.getdescricao: WideString;
begin
  Result := Self.m_descricao;
end;

procedure TTelefoneNovo.setdescricao(const a_Value: WideString);
begin
  Self.m_descricao := a_Value;
end;

function TTelefoneNovo.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TTelefoneNovo.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TTelefoneNovo.getordemImportancia: Integer;
begin
  Result := Self.m_ordemImportancia;
end;

procedure TTelefoneNovo.setordemImportancia(const a_Value: Integer);
begin
  Self.m_ordemImportancia := a_Value;
end;

destructor TTelefoneNovo.Destroy;
begin

end;

function TTelefoneNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTelefoneNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTelefoneNovo.getNameAPI(): String;
begin
  Result := 'TelefoneNovo';
end;

function TTelefoneNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTelefoneNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTelefoneAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TTelefoneAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TTelefoneAlterar.getidPessoa: String;
begin
  Result := Self.m_idPessoa;
end;

procedure TTelefoneAlterar.setidPessoa(const a_Value: String);
begin
  Self.m_idPessoa := a_Value;
end;

function TTelefoneAlterar.getidContato: String;
begin
  Result := Self.m_idContato;
end;

procedure TTelefoneAlterar.setidContato(const a_Value: String);
begin
  Self.m_idContato := a_Value;
end;

function TTelefoneAlterar.getddi: String;
begin
  Result := Self.m_ddi;
end;

procedure TTelefoneAlterar.setddi(const a_Value: String);
begin
  Self.m_ddi := a_Value;
end;

function TTelefoneAlterar.getddd: String;
begin
  Result := Self.m_ddd;
end;

procedure TTelefoneAlterar.setddd(const a_Value: String);
begin
  Self.m_ddd := a_Value;
end;

function TTelefoneAlterar.getchaveTel: String;
begin
  Result := Self.m_chaveTel;
end;

procedure TTelefoneAlterar.setchaveTel(const a_Value: String);
begin
  Self.m_chaveTel := a_Value;
end;

function TTelefoneAlterar.getnumero: String;
begin
  Result := Self.m_numero;
end;

procedure TTelefoneAlterar.setnumero(const a_Value: String);
begin
  Self.m_numero := a_Value;
end;

function TTelefoneAlterar.getramal: String;
begin
  Result := Self.m_ramal;
end;

procedure TTelefoneAlterar.setramal(const a_Value: String);
begin
  Self.m_ramal := a_Value;
end;

function TTelefoneAlterar.getdescricao: WideString;
begin
  Result := Self.m_descricao;
end;

procedure TTelefoneAlterar.setdescricao(const a_Value: WideString);
begin
  Self.m_descricao := a_Value;
end;

function TTelefoneAlterar.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TTelefoneAlterar.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TTelefoneAlterar.getordemImportancia: Integer;
begin
  Result := Self.m_ordemImportancia;
end;

procedure TTelefoneAlterar.setordemImportancia(const a_Value: Integer);
begin
  Self.m_ordemImportancia := a_Value;
end;

destructor TTelefoneAlterar.Destroy;
begin

end;

function TTelefoneAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTelefoneAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTelefoneAlterar.getNameAPI(): String;
begin
  Result := 'TelefoneAlterar';
end;

function TTelefoneAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTelefoneAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TTelefoneExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TTelefoneExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

destructor TTelefoneExcluir.Destroy;
begin

end;

function TTelefoneExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TTelefoneExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TTelefoneExcluir.getNameAPI(): String;
begin
  Result := 'TelefoneExcluir';
end;

function TTelefoneExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TTelefoneExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
