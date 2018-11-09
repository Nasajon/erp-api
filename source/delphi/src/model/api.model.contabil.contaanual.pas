unit api.model.contabil.contaanual;

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

type TcontaanualNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_codigoconta: String;
    var m_codigoreduzido: String;
    var m_ano: Integer;
    var m_nome: String;
    var m_naturezaconta: Integer;
    var m_naturezasaldo: Integer;
    var m_permitecentrodecusto: Integer;
    var m_contamae: String;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getcodigoconta(): String;
    function getcodigoreduzido(): String;
    function getano(): Integer;
    function getnome(): String;
    function getnaturezaconta(): Integer;
    function getnaturezasaldo(): Integer;
    function getpermitecentrodecusto(): Integer;
    function getcontamae(): String;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setcodigoconta(const a_Value: String);
    procedure setcodigoreduzido(const a_Value: String);
    procedure setano(const a_Value: Integer);
    procedure setnome(const a_Value: String);
    procedure setnaturezaconta(const a_Value: Integer);
    procedure setnaturezasaldo(const a_Value: Integer);
    procedure setpermitecentrodecusto(const a_Value: Integer);
    procedure setcontamae(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getempresa write setempresa;

    [NasajonSerializeAttribute('codigoconta')]
    property codigoconta: String read getcodigoconta write setcodigoconta;

    [NasajonSerializeAttribute('codigoreduzido')]
    property codigoreduzido: String read getcodigoreduzido write setcodigoreduzido;

    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('naturezaconta')]
    property naturezaconta: Integer read getnaturezaconta write setnaturezaconta;

    [NasajonSerializeAttribute('naturezasaldo')]
    property naturezasaldo: Integer read getnaturezasaldo write setnaturezasaldo;

    [NasajonSerializeAttribute('permitecentrodecusto')]
    property permitecentrodecusto: Integer read getpermitecentrodecusto write setpermitecentrodecusto;

    [NasajonSerializeAttribute('contamae')]
    property contamae: String read getcontamae write setcontamae;

    

end;

type TcontaanualAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_conta: String;
    var m_ano: Integer;
    var m_codigoreduzido: String;
    var m_nome: String;
    var m_naturezaconta: Integer;
    var m_naturezasaldo: Integer;
    var m_permitecentrodecusto: Integer;
    

    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getconta(): String;
    function getano(): Integer;
    function getcodigoreduzido(): String;
    function getnome(): String;
    function getnaturezaconta(): Integer;
    function getnaturezasaldo(): Integer;
    function getpermitecentrodecusto(): Integer;
    

    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setconta(const a_Value: String);
    procedure setano(const a_Value: Integer);
    procedure setcodigoreduzido(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setnaturezaconta(const a_Value: Integer);
    procedure setnaturezasaldo(const a_Value: Integer);
    procedure setpermitecentrodecusto(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getempresa write setempresa;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getconta write setconta;

    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    [NasajonSerializeAttribute('codigoreduzido')]
    property codigoreduzido: String read getcodigoreduzido write setcodigoreduzido;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('naturezaconta')]
    property naturezaconta: Integer read getnaturezaconta write setnaturezaconta;

    [NasajonSerializeAttribute('naturezasaldo')]
    property naturezasaldo: Integer read getnaturezasaldo write setnaturezasaldo;

    [NasajonSerializeAttribute('permitecentrodecusto')]
    property permitecentrodecusto: Integer read getpermitecentrodecusto write setpermitecentrodecusto;

    

end;

type TcontaanualExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_conta: String;
    var m_ano: Integer;
    

    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getconta(): String;
    function getano(): Integer;
    

    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setconta(const a_Value: String);
    procedure setano(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getempresa write setempresa;

    [NasajonSerializeAttribute('conta')]
    property conta: String read getconta write setconta;

    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    

end;

	
implementation

  uses
      api.send;  

function TcontaanualNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TcontaanualNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TcontaanualNovo.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TcontaanualNovo.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TcontaanualNovo.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TcontaanualNovo.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TcontaanualNovo.getcodigoconta: String;
begin
  Result := Self.m_codigoconta;
end;

procedure TcontaanualNovo.setcodigoconta(const a_Value: String);
begin
  Self.m_codigoconta := a_Value;
end;

function TcontaanualNovo.getcodigoreduzido: String;
begin
  Result := Self.m_codigoreduzido;
end;

procedure TcontaanualNovo.setcodigoreduzido(const a_Value: String);
begin
  Self.m_codigoreduzido := a_Value;
end;

function TcontaanualNovo.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TcontaanualNovo.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

function TcontaanualNovo.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TcontaanualNovo.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TcontaanualNovo.getnaturezaconta: Integer;
begin
  Result := Self.m_naturezaconta;
end;

procedure TcontaanualNovo.setnaturezaconta(const a_Value: Integer);
begin
  Self.m_naturezaconta := a_Value;
end;

function TcontaanualNovo.getnaturezasaldo: Integer;
begin
  Result := Self.m_naturezasaldo;
end;

procedure TcontaanualNovo.setnaturezasaldo(const a_Value: Integer);
begin
  Self.m_naturezasaldo := a_Value;
end;

function TcontaanualNovo.getpermitecentrodecusto: Integer;
begin
  Result := Self.m_permitecentrodecusto;
end;

procedure TcontaanualNovo.setpermitecentrodecusto(const a_Value: Integer);
begin
  Self.m_permitecentrodecusto := a_Value;
end;

function TcontaanualNovo.getcontamae: String;
begin
  Result := Self.m_contamae;
end;

procedure TcontaanualNovo.setcontamae(const a_Value: String);
begin
  Self.m_contamae := a_Value;
end;

destructor TcontaanualNovo.Destroy;
begin

end;

function TcontaanualNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TcontaanualNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TcontaanualNovo.getNameAPI(): String;
begin
  Result := 'contaanualNovo';
end;

function TcontaanualNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TcontaanualNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TcontaanualAlterar.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TcontaanualAlterar.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TcontaanualAlterar.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TcontaanualAlterar.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TcontaanualAlterar.getconta: String;
begin
  Result := Self.m_conta;
end;

procedure TcontaanualAlterar.setconta(const a_Value: String);
begin
  Self.m_conta := a_Value;
end;

function TcontaanualAlterar.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TcontaanualAlterar.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

function TcontaanualAlterar.getcodigoreduzido: String;
begin
  Result := Self.m_codigoreduzido;
end;

procedure TcontaanualAlterar.setcodigoreduzido(const a_Value: String);
begin
  Self.m_codigoreduzido := a_Value;
end;

function TcontaanualAlterar.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TcontaanualAlterar.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TcontaanualAlterar.getnaturezaconta: Integer;
begin
  Result := Self.m_naturezaconta;
end;

procedure TcontaanualAlterar.setnaturezaconta(const a_Value: Integer);
begin
  Self.m_naturezaconta := a_Value;
end;

function TcontaanualAlterar.getnaturezasaldo: Integer;
begin
  Result := Self.m_naturezasaldo;
end;

procedure TcontaanualAlterar.setnaturezasaldo(const a_Value: Integer);
begin
  Self.m_naturezasaldo := a_Value;
end;

function TcontaanualAlterar.getpermitecentrodecusto: Integer;
begin
  Result := Self.m_permitecentrodecusto;
end;

procedure TcontaanualAlterar.setpermitecentrodecusto(const a_Value: Integer);
begin
  Self.m_permitecentrodecusto := a_Value;
end;

destructor TcontaanualAlterar.Destroy;
begin

end;

function TcontaanualAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TcontaanualAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TcontaanualAlterar.getNameAPI(): String;
begin
  Result := 'contaanualAlterar';
end;

function TcontaanualAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TcontaanualAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TcontaanualExcluir.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TcontaanualExcluir.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TcontaanualExcluir.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TcontaanualExcluir.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TcontaanualExcluir.getconta: String;
begin
  Result := Self.m_conta;
end;

procedure TcontaanualExcluir.setconta(const a_Value: String);
begin
  Self.m_conta := a_Value;
end;

function TcontaanualExcluir.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TcontaanualExcluir.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

destructor TcontaanualExcluir.Destroy;
begin

end;

function TcontaanualExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TcontaanualExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TcontaanualExcluir.getNameAPI(): String;
begin
  Result := 'contaanualExcluir';
end;

function TcontaanualExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TcontaanualExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
