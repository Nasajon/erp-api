unit api.model.financas.Conta;

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
	
  , api.model.ns.estabelecimento
	

	;

type TContaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_TipoConta: String;
    var m_Estabelecimento: TEstabelecimento;
    

    function getId(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getTipoConta(): String;
    function getEstabelecimento(): TEstabelecimento;
    

    procedure setId(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setTipoConta(const a_Value: String);
    procedure setEstabelecimento(const a_Value: TEstabelecimento);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Tipo da Conta(financas.TipoConta).
    /// </summary>
    [NasajonSerializeAttribute('tipoconta')]
    property tipoconta: String read getTipoConta write setTipoConta;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: TEstabelecimento read getEstabelecimento write setEstabelecimento;

    

end;

type TContaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Conta: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_TipoConta: String;
    var m_Estabelecimento: TEstabelecimento;
    

    function getConta(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getTipoConta(): String;
    function getEstabelecimento(): TEstabelecimento;
    

    procedure setConta(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setTipoConta(const a_Value: String);
    procedure setEstabelecimento(const a_Value: TEstabelecimento);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Conta para alteração.
    /// </summary>
    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Tipo da Conta(financas.TipoConta).
    /// </summary>
    [NasajonSerializeAttribute('tipoconta')]
    property tipoconta: String read getTipoConta write setTipoConta;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: TEstabelecimento read getEstabelecimento write setEstabelecimento;

    

end;

type TContaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Conta: String;
    

    function getConta(): String;
    

    procedure setConta(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('conta')]
    property conta: String read getConta write setConta;

    

end;

	
implementation

  uses
      api.send;  

function TContaNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TContaNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TContaNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContaNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TContaNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TContaNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TContaNovo.getTipoConta: String;
begin
  Result := Self.m_TipoConta;
end;

procedure TContaNovo.setTipoConta(const a_Value: String);
begin
  Self.m_TipoConta := a_Value;
end;

function TContaNovo.getEstabelecimento: TEstabelecimento;
begin
  if not Assigned(Self.m_Estabelecimento)
    then Self.m_Estabelecimento := TEstabelecimento.Create();
  Result := Self.m_Estabelecimento;
end;

procedure TContaNovo.setEstabelecimento(const a_Value: TEstabelecimento);
begin
  Self.m_Estabelecimento := a_Value;
end;

destructor TContaNovo.Destroy;
begin
  Self.Estabelecimento.Free();
end;

function TContaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContaNovo.getNameAPI(): String;
begin
  Result := 'ContaNovo';
end;

function TContaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContaAlterar.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TContaAlterar.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TContaAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContaAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TContaAlterar.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TContaAlterar.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TContaAlterar.getTipoConta: String;
begin
  Result := Self.m_TipoConta;
end;

procedure TContaAlterar.setTipoConta(const a_Value: String);
begin
  Self.m_TipoConta := a_Value;
end;

function TContaAlterar.getEstabelecimento: TEstabelecimento;
begin
  if not Assigned(Self.m_Estabelecimento)
    then Self.m_Estabelecimento := TEstabelecimento.Create();
  Result := Self.m_Estabelecimento;
end;

procedure TContaAlterar.setEstabelecimento(const a_Value: TEstabelecimento);
begin
  Self.m_Estabelecimento := a_Value;
end;

destructor TContaAlterar.Destroy;
begin
  Self.Estabelecimento.Free();
end;

function TContaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContaAlterar.getNameAPI(): String;
begin
  Result := 'ContaAlterar';
end;

function TContaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContaExcluir.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TContaExcluir.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

destructor TContaExcluir.Destroy;
begin

end;

function TContaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContaExcluir.getNameAPI(): String;
begin
  Result := 'ContaExcluir';
end;

function TContaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
