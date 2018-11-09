unit api.model.estoque.Operacao;

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

type TOperacaoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idoperacao: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_sinal: Integer;
    var m_afetacustodosprodutos: Boolean;
    var m_grupoodeoperacao: String;
    var m_usatabeladepreco: Boolean;
    var m_associardocumento: Boolean;
    var m_associarproduto: Boolean;
    var m_finalidade: Integer;
    var m_ativa: Boolean;
    

    function getidoperacao(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getsinal(): Integer;
    function getafetacustodosprodutos(): Boolean;
    function getgrupoodeoperacao(): String;
    function getusatabeladepreco(): Boolean;
    function getassociardocumento(): Boolean;
    function getassociarproduto(): Boolean;
    function getfinalidade(): Integer;
    function getativa(): Boolean;
    

    procedure setidoperacao(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setsinal(const a_Value: Integer);
    procedure setafetacustodosprodutos(const a_Value: Boolean);
    procedure setgrupoodeoperacao(const a_Value: String);
    procedure setusatabeladepreco(const a_Value: Boolean);
    procedure setassociardocumento(const a_Value: Boolean);
    procedure setassociarproduto(const a_Value: Boolean);
    procedure setfinalidade(const a_Value: Integer);
    procedure setativa(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idoperacao')]
    property idoperacao: String read getidoperacao write setidoperacao;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('sinal')]
    property sinal: Integer read getsinal write setsinal;

    [NasajonSerializeAttribute('afetacustodosprodutos')]
    property afetacustodosprodutos: Boolean read getafetacustodosprodutos write setafetacustodosprodutos;

    [NasajonSerializeAttribute('grupoodeoperacao')]
    property grupoodeoperacao: String read getgrupoodeoperacao write setgrupoodeoperacao;

    [NasajonSerializeAttribute('usatabeladepreco')]
    property usatabeladepreco: Boolean read getusatabeladepreco write setusatabeladepreco;

    [NasajonSerializeAttribute('associardocumento')]
    property associardocumento: Boolean read getassociardocumento write setassociardocumento;

    [NasajonSerializeAttribute('associarproduto')]
    property associarproduto: Boolean read getassociarproduto write setassociarproduto;

    [NasajonSerializeAttribute('finalidade')]
    property finalidade: Integer read getfinalidade write setfinalidade;

    [NasajonSerializeAttribute('ativa')]
    property ativa: Boolean read getativa write setativa;

    

end;

type TOperacaoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idoperacao: String;
    var m_codigo: String;
    var m_descricao: String;
    var m_sinal: Integer;
    var m_afetacustodosprodutos: Boolean;
    var m_grupoodeoperacao: String;
    var m_usatabeladepreco: Boolean;
    var m_associardocumento: Boolean;
    var m_associarproduto: Boolean;
    var m_finalidade: Integer;
    var m_ativa: Boolean;
    

    function getidoperacao(): String;
    function getcodigo(): String;
    function getdescricao(): String;
    function getsinal(): Integer;
    function getafetacustodosprodutos(): Boolean;
    function getgrupoodeoperacao(): String;
    function getusatabeladepreco(): Boolean;
    function getassociardocumento(): Boolean;
    function getassociarproduto(): Boolean;
    function getfinalidade(): Integer;
    function getativa(): Boolean;
    

    procedure setidoperacao(const a_Value: String);
    procedure setcodigo(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setsinal(const a_Value: Integer);
    procedure setafetacustodosprodutos(const a_Value: Boolean);
    procedure setgrupoodeoperacao(const a_Value: String);
    procedure setusatabeladepreco(const a_Value: Boolean);
    procedure setassociardocumento(const a_Value: Boolean);
    procedure setassociarproduto(const a_Value: Boolean);
    procedure setfinalidade(const a_Value: Integer);
    procedure setativa(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idoperacao')]
    property idoperacao: String read getidoperacao write setidoperacao;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getcodigo write setcodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('sinal')]
    property sinal: Integer read getsinal write setsinal;

    [NasajonSerializeAttribute('afetacustodosprodutos')]
    property afetacustodosprodutos: Boolean read getafetacustodosprodutos write setafetacustodosprodutos;

    [NasajonSerializeAttribute('grupoodeoperacao')]
    property grupoodeoperacao: String read getgrupoodeoperacao write setgrupoodeoperacao;

    [NasajonSerializeAttribute('usatabeladepreco')]
    property usatabeladepreco: Boolean read getusatabeladepreco write setusatabeladepreco;

    [NasajonSerializeAttribute('associardocumento')]
    property associardocumento: Boolean read getassociardocumento write setassociardocumento;

    [NasajonSerializeAttribute('associarproduto')]
    property associarproduto: Boolean read getassociarproduto write setassociarproduto;

    [NasajonSerializeAttribute('finalidade')]
    property finalidade: Integer read getfinalidade write setfinalidade;

    [NasajonSerializeAttribute('ativa')]
    property ativa: Boolean read getativa write setativa;

    

end;

type TOperacaoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idoperacao: String;
    

    function getidoperacao(): String;
    

    procedure setidoperacao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idoperacao')]
    property idoperacao: String read getidoperacao write setidoperacao;

    

end;

	
implementation

  uses
      api.send;  

function TOperacaoNovo.getidoperacao: String;
begin
  Result := Self.m_idoperacao;
end;

procedure TOperacaoNovo.setidoperacao(const a_Value: String);
begin
  Self.m_idoperacao := a_Value;
end;

function TOperacaoNovo.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TOperacaoNovo.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TOperacaoNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TOperacaoNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TOperacaoNovo.getsinal: Integer;
begin
  Result := Self.m_sinal;
end;

procedure TOperacaoNovo.setsinal(const a_Value: Integer);
begin
  Self.m_sinal := a_Value;
end;

function TOperacaoNovo.getafetacustodosprodutos: Boolean;
begin
  Result := Self.m_afetacustodosprodutos;
end;

procedure TOperacaoNovo.setafetacustodosprodutos(const a_Value: Boolean);
begin
  Self.m_afetacustodosprodutos := a_Value;
end;

function TOperacaoNovo.getgrupoodeoperacao: String;
begin
  Result := Self.m_grupoodeoperacao;
end;

procedure TOperacaoNovo.setgrupoodeoperacao(const a_Value: String);
begin
  Self.m_grupoodeoperacao := a_Value;
end;

function TOperacaoNovo.getusatabeladepreco: Boolean;
begin
  Result := Self.m_usatabeladepreco;
end;

procedure TOperacaoNovo.setusatabeladepreco(const a_Value: Boolean);
begin
  Self.m_usatabeladepreco := a_Value;
end;

function TOperacaoNovo.getassociardocumento: Boolean;
begin
  Result := Self.m_associardocumento;
end;

procedure TOperacaoNovo.setassociardocumento(const a_Value: Boolean);
begin
  Self.m_associardocumento := a_Value;
end;

function TOperacaoNovo.getassociarproduto: Boolean;
begin
  Result := Self.m_associarproduto;
end;

procedure TOperacaoNovo.setassociarproduto(const a_Value: Boolean);
begin
  Self.m_associarproduto := a_Value;
end;

function TOperacaoNovo.getfinalidade: Integer;
begin
  Result := Self.m_finalidade;
end;

procedure TOperacaoNovo.setfinalidade(const a_Value: Integer);
begin
  Self.m_finalidade := a_Value;
end;

function TOperacaoNovo.getativa: Boolean;
begin
  Result := Self.m_ativa;
end;

procedure TOperacaoNovo.setativa(const a_Value: Boolean);
begin
  Self.m_ativa := a_Value;
end;

destructor TOperacaoNovo.Destroy;
begin

end;

function TOperacaoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TOperacaoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TOperacaoNovo.getNameAPI(): String;
begin
  Result := 'OperacaoNovo';
end;

function TOperacaoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TOperacaoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TOperacaoAlterar.getidoperacao: String;
begin
  Result := Self.m_idoperacao;
end;

procedure TOperacaoAlterar.setidoperacao(const a_Value: String);
begin
  Self.m_idoperacao := a_Value;
end;

function TOperacaoAlterar.getcodigo: String;
begin
  Result := Self.m_codigo;
end;

procedure TOperacaoAlterar.setcodigo(const a_Value: String);
begin
  Self.m_codigo := a_Value;
end;

function TOperacaoAlterar.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TOperacaoAlterar.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TOperacaoAlterar.getsinal: Integer;
begin
  Result := Self.m_sinal;
end;

procedure TOperacaoAlterar.setsinal(const a_Value: Integer);
begin
  Self.m_sinal := a_Value;
end;

function TOperacaoAlterar.getafetacustodosprodutos: Boolean;
begin
  Result := Self.m_afetacustodosprodutos;
end;

procedure TOperacaoAlterar.setafetacustodosprodutos(const a_Value: Boolean);
begin
  Self.m_afetacustodosprodutos := a_Value;
end;

function TOperacaoAlterar.getgrupoodeoperacao: String;
begin
  Result := Self.m_grupoodeoperacao;
end;

procedure TOperacaoAlterar.setgrupoodeoperacao(const a_Value: String);
begin
  Self.m_grupoodeoperacao := a_Value;
end;

function TOperacaoAlterar.getusatabeladepreco: Boolean;
begin
  Result := Self.m_usatabeladepreco;
end;

procedure TOperacaoAlterar.setusatabeladepreco(const a_Value: Boolean);
begin
  Self.m_usatabeladepreco := a_Value;
end;

function TOperacaoAlterar.getassociardocumento: Boolean;
begin
  Result := Self.m_associardocumento;
end;

procedure TOperacaoAlterar.setassociardocumento(const a_Value: Boolean);
begin
  Self.m_associardocumento := a_Value;
end;

function TOperacaoAlterar.getassociarproduto: Boolean;
begin
  Result := Self.m_associarproduto;
end;

procedure TOperacaoAlterar.setassociarproduto(const a_Value: Boolean);
begin
  Self.m_associarproduto := a_Value;
end;

function TOperacaoAlterar.getfinalidade: Integer;
begin
  Result := Self.m_finalidade;
end;

procedure TOperacaoAlterar.setfinalidade(const a_Value: Integer);
begin
  Self.m_finalidade := a_Value;
end;

function TOperacaoAlterar.getativa: Boolean;
begin
  Result := Self.m_ativa;
end;

procedure TOperacaoAlterar.setativa(const a_Value: Boolean);
begin
  Self.m_ativa := a_Value;
end;

destructor TOperacaoAlterar.Destroy;
begin

end;

function TOperacaoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TOperacaoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TOperacaoAlterar.getNameAPI(): String;
begin
  Result := 'OperacaoAlterar';
end;

function TOperacaoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TOperacaoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TOperacaoExcluir.getidoperacao: String;
begin
  Result := Self.m_idoperacao;
end;

procedure TOperacaoExcluir.setidoperacao(const a_Value: String);
begin
  Self.m_idoperacao := a_Value;
end;

destructor TOperacaoExcluir.Destroy;
begin

end;

function TOperacaoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TOperacaoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TOperacaoExcluir.getNameAPI(): String;
begin
  Result := 'OperacaoExcluir';
end;

function TOperacaoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TOperacaoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
