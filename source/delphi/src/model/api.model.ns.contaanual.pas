unit api.model.ns.ContaAnual;

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

type TContaAnualNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_codigoconta: String;
    var m_codigoreduzido: String;
    var m_ano: String;
    var m_nome: String;
    var m_naturezaconta: String;
    var m_naturezasaldo: String;
    var m_permitecentrodecusto: String;
    var m_contamae: String;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getcodigoconta(): String;
    function getcodigoreduzido(): String;
    function getano(): String;
    function getnome(): String;
    function getnaturezaconta(): String;
    function getnaturezasaldo(): String;
    function getpermitecentrodecusto(): String;
    function getcontamae(): String;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setcodigoconta(const a_Value: String);
    procedure setcodigoreduzido(const a_Value: String);
    procedure setano(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setnaturezaconta(const a_Value: String);
    procedure setnaturezasaldo(const a_Value: String);
    procedure setpermitecentrodecusto(const a_Value: String);
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
    property ano: String read getano write setano;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('naturezaconta')]
    property naturezaconta: String read getnaturezaconta write setnaturezaconta;

    [NasajonSerializeAttribute('naturezasaldo')]
    property naturezasaldo: String read getnaturezasaldo write setnaturezasaldo;

    [NasajonSerializeAttribute('permitecentrodecusto')]
    property permitecentrodecusto: String read getpermitecentrodecusto write setpermitecentrodecusto;

    [NasajonSerializeAttribute('contamae')]
    property contamae: String read getcontamae write setcontamae;

    

end;

type TContaAnualAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_conta: String;
    var m_codigoconta: String;
    var m_codigoreduzido: String;
    var m_ano: String;
    var m_nome: String;
    var m_naturezaconta: String;
    var m_naturezasaldo: String;
    var m_permitecentrodecusto: String;
    var m_contamae: String;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getconta(): String;
    function getcodigoconta(): String;
    function getcodigoreduzido(): String;
    function getano(): String;
    function getnome(): String;
    function getnaturezaconta(): String;
    function getnaturezasaldo(): String;
    function getpermitecentrodecusto(): String;
    function getcontamae(): String;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setconta(const a_Value: String);
    procedure setcodigoconta(const a_Value: String);
    procedure setcodigoreduzido(const a_Value: String);
    procedure setano(const a_Value: String);
    procedure setnome(const a_Value: String);
    procedure setnaturezaconta(const a_Value: String);
    procedure setnaturezasaldo(const a_Value: String);
    procedure setpermitecentrodecusto(const a_Value: String);
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

    [NasajonSerializeAttribute('conta')]
    property conta: String read getconta write setconta;

    [NasajonSerializeAttribute('codigoconta')]
    property codigoconta: String read getcodigoconta write setcodigoconta;

    [NasajonSerializeAttribute('codigoreduzido')]
    property codigoreduzido: String read getcodigoreduzido write setcodigoreduzido;

    [NasajonSerializeAttribute('ano')]
    property ano: String read getano write setano;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getnome write setnome;

    [NasajonSerializeAttribute('naturezaconta')]
    property naturezaconta: String read getnaturezaconta write setnaturezaconta;

    [NasajonSerializeAttribute('naturezasaldo')]
    property naturezasaldo: String read getnaturezasaldo write setnaturezasaldo;

    [NasajonSerializeAttribute('permitecentrodecusto')]
    property permitecentrodecusto: String read getpermitecentrodecusto write setpermitecentrodecusto;

    [NasajonSerializeAttribute('contamae')]
    property contamae: String read getcontamae write setcontamae;

    

end;

type TContaAnualExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_conta: String;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getconta(): String;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setconta(const a_Value: String);
    

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

    [NasajonSerializeAttribute('conta')]
    property conta: String read getconta write setconta;

    

end;

	
implementation

  uses
      api.send;  

function TContaAnualNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TContaAnualNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TContaAnualNovo.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TContaAnualNovo.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TContaAnualNovo.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TContaAnualNovo.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TContaAnualNovo.getcodigoconta: String;
begin
  Result := Self.m_codigoconta;
end;

procedure TContaAnualNovo.setcodigoconta(const a_Value: String);
begin
  Self.m_codigoconta := a_Value;
end;

function TContaAnualNovo.getcodigoreduzido: String;
begin
  Result := Self.m_codigoreduzido;
end;

procedure TContaAnualNovo.setcodigoreduzido(const a_Value: String);
begin
  Self.m_codigoreduzido := a_Value;
end;

function TContaAnualNovo.getano: String;
begin
  Result := Self.m_ano;
end;

procedure TContaAnualNovo.setano(const a_Value: String);
begin
  Self.m_ano := a_Value;
end;

function TContaAnualNovo.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TContaAnualNovo.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TContaAnualNovo.getnaturezaconta: String;
begin
  Result := Self.m_naturezaconta;
end;

procedure TContaAnualNovo.setnaturezaconta(const a_Value: String);
begin
  Self.m_naturezaconta := a_Value;
end;

function TContaAnualNovo.getnaturezasaldo: String;
begin
  Result := Self.m_naturezasaldo;
end;

procedure TContaAnualNovo.setnaturezasaldo(const a_Value: String);
begin
  Self.m_naturezasaldo := a_Value;
end;

function TContaAnualNovo.getpermitecentrodecusto: String;
begin
  Result := Self.m_permitecentrodecusto;
end;

procedure TContaAnualNovo.setpermitecentrodecusto(const a_Value: String);
begin
  Self.m_permitecentrodecusto := a_Value;
end;

function TContaAnualNovo.getcontamae: String;
begin
  Result := Self.m_contamae;
end;

procedure TContaAnualNovo.setcontamae(const a_Value: String);
begin
  Self.m_contamae := a_Value;
end;

destructor TContaAnualNovo.Destroy;
begin

end;

function TContaAnualNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContaAnualNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContaAnualNovo.getNameAPI(): String;
begin
  Result := 'ContaAnualNovo';
end;

function TContaAnualNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContaAnualNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContaAnualAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TContaAnualAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TContaAnualAlterar.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TContaAnualAlterar.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TContaAnualAlterar.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TContaAnualAlterar.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TContaAnualAlterar.getconta: String;
begin
  Result := Self.m_conta;
end;

procedure TContaAnualAlterar.setconta(const a_Value: String);
begin
  Self.m_conta := a_Value;
end;

function TContaAnualAlterar.getcodigoconta: String;
begin
  Result := Self.m_codigoconta;
end;

procedure TContaAnualAlterar.setcodigoconta(const a_Value: String);
begin
  Self.m_codigoconta := a_Value;
end;

function TContaAnualAlterar.getcodigoreduzido: String;
begin
  Result := Self.m_codigoreduzido;
end;

procedure TContaAnualAlterar.setcodigoreduzido(const a_Value: String);
begin
  Self.m_codigoreduzido := a_Value;
end;

function TContaAnualAlterar.getano: String;
begin
  Result := Self.m_ano;
end;

procedure TContaAnualAlterar.setano(const a_Value: String);
begin
  Self.m_ano := a_Value;
end;

function TContaAnualAlterar.getnome: String;
begin
  Result := Self.m_nome;
end;

procedure TContaAnualAlterar.setnome(const a_Value: String);
begin
  Self.m_nome := a_Value;
end;

function TContaAnualAlterar.getnaturezaconta: String;
begin
  Result := Self.m_naturezaconta;
end;

procedure TContaAnualAlterar.setnaturezaconta(const a_Value: String);
begin
  Self.m_naturezaconta := a_Value;
end;

function TContaAnualAlterar.getnaturezasaldo: String;
begin
  Result := Self.m_naturezasaldo;
end;

procedure TContaAnualAlterar.setnaturezasaldo(const a_Value: String);
begin
  Self.m_naturezasaldo := a_Value;
end;

function TContaAnualAlterar.getpermitecentrodecusto: String;
begin
  Result := Self.m_permitecentrodecusto;
end;

procedure TContaAnualAlterar.setpermitecentrodecusto(const a_Value: String);
begin
  Self.m_permitecentrodecusto := a_Value;
end;

function TContaAnualAlterar.getcontamae: String;
begin
  Result := Self.m_contamae;
end;

procedure TContaAnualAlterar.setcontamae(const a_Value: String);
begin
  Self.m_contamae := a_Value;
end;

destructor TContaAnualAlterar.Destroy;
begin

end;

function TContaAnualAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContaAnualAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContaAnualAlterar.getNameAPI(): String;
begin
  Result := 'ContaAnualAlterar';
end;

function TContaAnualAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContaAnualAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContaAnualExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TContaAnualExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TContaAnualExcluir.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TContaAnualExcluir.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TContaAnualExcluir.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TContaAnualExcluir.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TContaAnualExcluir.getconta: String;
begin
  Result := Self.m_conta;
end;

procedure TContaAnualExcluir.setconta(const a_Value: String);
begin
  Self.m_conta := a_Value;
end;

destructor TContaAnualExcluir.Destroy;
begin

end;

function TContaAnualExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContaAnualExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContaAnualExcluir.getNameAPI(): String;
begin
  Result := 'ContaAnualExcluir';
end;

function TContaAnualExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContaAnualExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
