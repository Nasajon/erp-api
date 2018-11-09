unit api.model.financas.Conta_v2;

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
  , api.model.financas.banco
	

	;

type TConta_v2Novo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Estabelecimento: TEstabelecimento;
    var m_TipoConta: String;
    var m_Banco: TBancoNovo;
    var m_NomeAgencia: String;
    var m_NumeroAgencia: String;
    var m_DvNumeroAgencia: String;
    var m_NumeroConta: String;
    var m_DvNumeroConta: String;
    var m_NomeTitular: String;
    var m_LimiteFechamento: TDate;
    var m_Bloqueada: Boolean;
    var m_ConsideraSaldoNoFluxoCaixa: Boolean;
    

    function getId(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getEstabelecimento(): TEstabelecimento;
    function getTipoConta(): String;
    function getBanco(): TBancoNovo;
    function getNomeAgencia(): String;
    function getNumeroAgencia(): String;
    function getDvNumeroAgencia(): String;
    function getNumeroConta(): String;
    function getDvNumeroConta(): String;
    function getNomeTitular(): String;
    function getLimiteFechamento(): TDate;
    function getBloqueada(): Boolean;
    function getConsideraSaldoNoFluxoCaixa(): Boolean;
    

    procedure setId(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setEstabelecimento(const a_Value: TEstabelecimento);
    procedure setTipoConta(const a_Value: String);
    procedure setBanco(const a_Value: TBancoNovo);
    procedure setNomeAgencia(const a_Value: String);
    procedure setNumeroAgencia(const a_Value: String);
    procedure setDvNumeroAgencia(const a_Value: String);
    procedure setNumeroConta(const a_Value: String);
    procedure setDvNumeroConta(const a_Value: String);
    procedure setNomeTitular(const a_Value: String);
    procedure setLimiteFechamento(const a_Value: TDate);
    procedure setBloqueada(const a_Value: Boolean);
    procedure setConsideraSaldoNoFluxoCaixa(const a_Value: Boolean);
    

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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: TEstabelecimento read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Tipo da Conta(financas.TipoConta).
    /// </summary>
    [NasajonSerializeAttribute('tipoconta')]
    property tipoconta: String read getTipoConta write setTipoConta;

    [NasajonSerializeAttribute('banco')]
    property banco: TBancoNovo read getBanco write setBanco;

    [NasajonSerializeAttribute('nomeagencia')]
    property nomeagencia: String read getNomeAgencia write setNomeAgencia;

    [NasajonSerializeAttribute('numeroagencia')]
    property numeroagencia: String read getNumeroAgencia write setNumeroAgencia;

    [NasajonSerializeAttribute('dvnumeroagencia')]
    property dvnumeroagencia: String read getDvNumeroAgencia write setDvNumeroAgencia;

    [NasajonSerializeAttribute('numeroconta')]
    property numeroconta: String read getNumeroConta write setNumeroConta;

    [NasajonSerializeAttribute('dvnumeroconta')]
    property dvnumeroconta: String read getDvNumeroConta write setDvNumeroConta;

    [NasajonSerializeAttribute('nometitular')]
    property nometitular: String read getNomeTitular write setNomeTitular;

    [NasajonSerializeAttribute('limitefechamento')]
    property limitefechamento: TDate read getLimiteFechamento write setLimiteFechamento;

    [NasajonSerializeAttribute('bloqueada')]
    property bloqueada: Boolean read getBloqueada write setBloqueada;

    [NasajonSerializeAttribute('considerasaldonofluxocaixa')]
    property considerasaldonofluxocaixa: Boolean read getConsideraSaldoNoFluxoCaixa write setConsideraSaldoNoFluxoCaixa;

    

end;

type TConta_v2Alterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Conta: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_Estabelecimento: TEstabelecimento;
    var m_TipoConta: String;
    var m_Banco: TBancoNovo;
    var m_NomeAgencia: String;
    var m_NumeroAgencia: String;
    var m_DvNumeroAgencia: String;
    var m_NumeroConta: String;
    var m_DvNumeroConta: String;
    var m_NomeTitular: String;
    var m_LimiteFechamento: TDate;
    var m_Bloqueada: Boolean;
    var m_ConsideraSaldoNoFluxoCaixa: Boolean;
    

    function getConta(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getEstabelecimento(): TEstabelecimento;
    function getTipoConta(): String;
    function getBanco(): TBancoNovo;
    function getNomeAgencia(): String;
    function getNumeroAgencia(): String;
    function getDvNumeroAgencia(): String;
    function getNumeroConta(): String;
    function getDvNumeroConta(): String;
    function getNomeTitular(): String;
    function getLimiteFechamento(): TDate;
    function getBloqueada(): Boolean;
    function getConsideraSaldoNoFluxoCaixa(): Boolean;
    

    procedure setConta(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setEstabelecimento(const a_Value: TEstabelecimento);
    procedure setTipoConta(const a_Value: String);
    procedure setBanco(const a_Value: TBancoNovo);
    procedure setNomeAgencia(const a_Value: String);
    procedure setNumeroAgencia(const a_Value: String);
    procedure setDvNumeroAgencia(const a_Value: String);
    procedure setNumeroConta(const a_Value: String);
    procedure setDvNumeroConta(const a_Value: String);
    procedure setNomeTitular(const a_Value: String);
    procedure setLimiteFechamento(const a_Value: TDate);
    procedure setBloqueada(const a_Value: Boolean);
    procedure setConsideraSaldoNoFluxoCaixa(const a_Value: Boolean);
    

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

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: TEstabelecimento read getEstabelecimento write setEstabelecimento;

    /// <summary>
/// Tipo da Conta(financas.TipoConta).
    /// </summary>
    [NasajonSerializeAttribute('tipoconta')]
    property tipoconta: String read getTipoConta write setTipoConta;

    [NasajonSerializeAttribute('banco')]
    property banco: TBancoNovo read getBanco write setBanco;

    [NasajonSerializeAttribute('nomeagencia')]
    property nomeagencia: String read getNomeAgencia write setNomeAgencia;

    [NasajonSerializeAttribute('numeroagencia')]
    property numeroagencia: String read getNumeroAgencia write setNumeroAgencia;

    [NasajonSerializeAttribute('dvnumeroagencia')]
    property dvnumeroagencia: String read getDvNumeroAgencia write setDvNumeroAgencia;

    [NasajonSerializeAttribute('numeroconta')]
    property numeroconta: String read getNumeroConta write setNumeroConta;

    [NasajonSerializeAttribute('dvnumeroconta')]
    property dvnumeroconta: String read getDvNumeroConta write setDvNumeroConta;

    [NasajonSerializeAttribute('nometitular')]
    property nometitular: String read getNomeTitular write setNomeTitular;

    [NasajonSerializeAttribute('limitefechamento')]
    property limitefechamento: TDate read getLimiteFechamento write setLimiteFechamento;

    [NasajonSerializeAttribute('bloqueada')]
    property bloqueada: Boolean read getBloqueada write setBloqueada;

    [NasajonSerializeAttribute('considerasaldonofluxocaixa')]
    property considerasaldonofluxocaixa: Boolean read getConsideraSaldoNoFluxoCaixa write setConsideraSaldoNoFluxoCaixa;

    

end;

type TConta_v2Excluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

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

function TConta_v2Novo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TConta_v2Novo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TConta_v2Novo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TConta_v2Novo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TConta_v2Novo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TConta_v2Novo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TConta_v2Novo.getEstabelecimento: TEstabelecimento;
begin
  if not Assigned(Self.m_Estabelecimento)
    then Self.m_Estabelecimento := TEstabelecimento.Create();
  Result := Self.m_Estabelecimento;
end;

procedure TConta_v2Novo.setEstabelecimento(const a_Value: TEstabelecimento);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TConta_v2Novo.getTipoConta: String;
begin
  Result := Self.m_TipoConta;
end;

procedure TConta_v2Novo.setTipoConta(const a_Value: String);
begin
  Self.m_TipoConta := a_Value;
end;

function TConta_v2Novo.getBanco: TBancoNovo;
begin
  if not Assigned(Self.m_Banco)
    then Self.m_Banco := TBancoNovo.Create();
  Result := Self.m_Banco;
end;

procedure TConta_v2Novo.setBanco(const a_Value: TBancoNovo);
begin
  Self.m_Banco := a_Value;
end;

function TConta_v2Novo.getNomeAgencia: String;
begin
  Result := Self.m_NomeAgencia;
end;

procedure TConta_v2Novo.setNomeAgencia(const a_Value: String);
begin
  Self.m_NomeAgencia := a_Value;
end;

function TConta_v2Novo.getNumeroAgencia: String;
begin
  Result := Self.m_NumeroAgencia;
end;

procedure TConta_v2Novo.setNumeroAgencia(const a_Value: String);
begin
  Self.m_NumeroAgencia := a_Value;
end;

function TConta_v2Novo.getDvNumeroAgencia: String;
begin
  Result := Self.m_DvNumeroAgencia;
end;

procedure TConta_v2Novo.setDvNumeroAgencia(const a_Value: String);
begin
  Self.m_DvNumeroAgencia := a_Value;
end;

function TConta_v2Novo.getNumeroConta: String;
begin
  Result := Self.m_NumeroConta;
end;

procedure TConta_v2Novo.setNumeroConta(const a_Value: String);
begin
  Self.m_NumeroConta := a_Value;
end;

function TConta_v2Novo.getDvNumeroConta: String;
begin
  Result := Self.m_DvNumeroConta;
end;

procedure TConta_v2Novo.setDvNumeroConta(const a_Value: String);
begin
  Self.m_DvNumeroConta := a_Value;
end;

function TConta_v2Novo.getNomeTitular: String;
begin
  Result := Self.m_NomeTitular;
end;

procedure TConta_v2Novo.setNomeTitular(const a_Value: String);
begin
  Self.m_NomeTitular := a_Value;
end;

function TConta_v2Novo.getLimiteFechamento: TDate;
begin
  Result := Self.m_LimiteFechamento;
end;

procedure TConta_v2Novo.setLimiteFechamento(const a_Value: TDate);
begin
  Self.m_LimiteFechamento := a_Value;
end;

function TConta_v2Novo.getBloqueada: Boolean;
begin
  Result := Self.m_Bloqueada;
end;

procedure TConta_v2Novo.setBloqueada(const a_Value: Boolean);
begin
  Self.m_Bloqueada := a_Value;
end;

function TConta_v2Novo.getConsideraSaldoNoFluxoCaixa: Boolean;
begin
  Result := Self.m_ConsideraSaldoNoFluxoCaixa;
end;

procedure TConta_v2Novo.setConsideraSaldoNoFluxoCaixa(const a_Value: Boolean);
begin
  Self.m_ConsideraSaldoNoFluxoCaixa := a_Value;
end;

destructor TConta_v2Novo.Destroy;
begin
  Self.Estabelecimento.Free();  Self.Banco.Free();
end;

function TConta_v2Novo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConta_v2Novo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConta_v2Novo.getNameAPI(): String;
begin
  Result := 'Conta_v2Novo';
end;

function TConta_v2Novo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConta_v2Novo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TConta_v2Alterar.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TConta_v2Alterar.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

function TConta_v2Alterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TConta_v2Alterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TConta_v2Alterar.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TConta_v2Alterar.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TConta_v2Alterar.getEstabelecimento: TEstabelecimento;
begin
  if not Assigned(Self.m_Estabelecimento)
    then Self.m_Estabelecimento := TEstabelecimento.Create();
  Result := Self.m_Estabelecimento;
end;

procedure TConta_v2Alterar.setEstabelecimento(const a_Value: TEstabelecimento);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TConta_v2Alterar.getTipoConta: String;
begin
  Result := Self.m_TipoConta;
end;

procedure TConta_v2Alterar.setTipoConta(const a_Value: String);
begin
  Self.m_TipoConta := a_Value;
end;

function TConta_v2Alterar.getBanco: TBancoNovo;
begin
  if not Assigned(Self.m_Banco)
    then Self.m_Banco := TBancoNovo.Create();
  Result := Self.m_Banco;
end;

procedure TConta_v2Alterar.setBanco(const a_Value: TBancoNovo);
begin
  Self.m_Banco := a_Value;
end;

function TConta_v2Alterar.getNomeAgencia: String;
begin
  Result := Self.m_NomeAgencia;
end;

procedure TConta_v2Alterar.setNomeAgencia(const a_Value: String);
begin
  Self.m_NomeAgencia := a_Value;
end;

function TConta_v2Alterar.getNumeroAgencia: String;
begin
  Result := Self.m_NumeroAgencia;
end;

procedure TConta_v2Alterar.setNumeroAgencia(const a_Value: String);
begin
  Self.m_NumeroAgencia := a_Value;
end;

function TConta_v2Alterar.getDvNumeroAgencia: String;
begin
  Result := Self.m_DvNumeroAgencia;
end;

procedure TConta_v2Alterar.setDvNumeroAgencia(const a_Value: String);
begin
  Self.m_DvNumeroAgencia := a_Value;
end;

function TConta_v2Alterar.getNumeroConta: String;
begin
  Result := Self.m_NumeroConta;
end;

procedure TConta_v2Alterar.setNumeroConta(const a_Value: String);
begin
  Self.m_NumeroConta := a_Value;
end;

function TConta_v2Alterar.getDvNumeroConta: String;
begin
  Result := Self.m_DvNumeroConta;
end;

procedure TConta_v2Alterar.setDvNumeroConta(const a_Value: String);
begin
  Self.m_DvNumeroConta := a_Value;
end;

function TConta_v2Alterar.getNomeTitular: String;
begin
  Result := Self.m_NomeTitular;
end;

procedure TConta_v2Alterar.setNomeTitular(const a_Value: String);
begin
  Self.m_NomeTitular := a_Value;
end;

function TConta_v2Alterar.getLimiteFechamento: TDate;
begin
  Result := Self.m_LimiteFechamento;
end;

procedure TConta_v2Alterar.setLimiteFechamento(const a_Value: TDate);
begin
  Self.m_LimiteFechamento := a_Value;
end;

function TConta_v2Alterar.getBloqueada: Boolean;
begin
  Result := Self.m_Bloqueada;
end;

procedure TConta_v2Alterar.setBloqueada(const a_Value: Boolean);
begin
  Self.m_Bloqueada := a_Value;
end;

function TConta_v2Alterar.getConsideraSaldoNoFluxoCaixa: Boolean;
begin
  Result := Self.m_ConsideraSaldoNoFluxoCaixa;
end;

procedure TConta_v2Alterar.setConsideraSaldoNoFluxoCaixa(const a_Value: Boolean);
begin
  Self.m_ConsideraSaldoNoFluxoCaixa := a_Value;
end;

destructor TConta_v2Alterar.Destroy;
begin
  Self.Estabelecimento.Free();  Self.Banco.Free();
end;

function TConta_v2Alterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConta_v2Alterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConta_v2Alterar.getNameAPI(): String;
begin
  Result := 'Conta_v2Alterar';
end;

function TConta_v2Alterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConta_v2Alterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TConta_v2Excluir.getConta: String;
begin
  Result := Self.m_Conta;
end;

procedure TConta_v2Excluir.setConta(const a_Value: String);
begin
  Self.m_Conta := a_Value;
end;

destructor TConta_v2Excluir.Destroy;
begin

end;

function TConta_v2Excluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConta_v2Excluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConta_v2Excluir.getNameAPI(): String;
begin
  Result := 'Conta_v2Excluir';
end;

function TConta_v2Excluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConta_v2Excluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
