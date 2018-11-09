unit api.model.financas.ItemRateioFinanceiro;

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

type TItemRateioFinanceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ClassificacaoFinanceira: String;
    var m_CentroCusto: String;
    var m_Valor: Currency;
    var m_Projeto: String;
    var m_Discriminacao: String;
    var m_BemPatrimonial: String;
    var m_RATEIOFINANCEIRO: String;
    var m_ItemContrato: String;
    var m_ID_ESTABELECIMENTO_REEMBOLSO: String;
    var m_id_owner: String;
    

    function getClassificacaoFinanceira(): String;
    function getCentroCusto(): String;
    function getValor(): Currency;
    function getProjeto(): String;
    function getDiscriminacao(): String;
    function getBemPatrimonial(): String;
    function getRATEIOFINANCEIRO(): String;
    function getItemContrato(): String;
    function getID_ESTABELECIMENTO_REEMBOLSO(): String;
    function getid_owner(): String;
    

    procedure setClassificacaoFinanceira(const a_Value: String);
    procedure setCentroCusto(const a_Value: String);
    procedure setValor(const a_Value: Currency);
    procedure setProjeto(const a_Value: String);
    procedure setDiscriminacao(const a_Value: String);
    procedure setBemPatrimonial(const a_Value: String);
    procedure setRATEIOFINANCEIRO(const a_Value: String);
    procedure setItemContrato(const a_Value: String);
    procedure setID_ESTABELECIMENTO_REEMBOLSO(const a_Value: String);
    procedure setid_owner(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('classificacaofinanceira')]
    property classificacaofinanceira: String read getClassificacaoFinanceira write setClassificacaoFinanceira;

    [NasajonSerializeAttribute('centrocusto')]
    property centrocusto: String read getCentroCusto write setCentroCusto;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getValor write setValor;

    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getProjeto write setProjeto;

    [NasajonSerializeAttribute('discriminacao')]
    property discriminacao: String read getDiscriminacao write setDiscriminacao;

    [NasajonSerializeAttribute('bempatrimonial')]
    property bempatrimonial: String read getBemPatrimonial write setBemPatrimonial;

    [NasajonSerializeAttribute('rateiofinanceiro')]
    property rateiofinanceiro: String read getRATEIOFINANCEIRO write setRATEIOFINANCEIRO;

    [NasajonSerializeAttribute('itemcontrato')]
    property itemcontrato: String read getItemContrato write setItemContrato;

    [NasajonSerializeAttribute('id_estabelecimento_reembolso')]
    property id_estabelecimento_reembolso: String read getID_ESTABELECIMENTO_REEMBOLSO write setID_ESTABELECIMENTO_REEMBOLSO;

    [NasajonSerializeAttribute('id_owner')]
    property id_owner: String read getid_owner write setid_owner;

    

end;

	
implementation

  uses
      api.send;  

function TItemRateioFinanceiro.getClassificacaoFinanceira: String;
begin
  Result := Self.m_ClassificacaoFinanceira;
end;

procedure TItemRateioFinanceiro.setClassificacaoFinanceira(const a_Value: String);
begin
  Self.m_ClassificacaoFinanceira := a_Value;
end;

function TItemRateioFinanceiro.getCentroCusto: String;
begin
  Result := Self.m_CentroCusto;
end;

procedure TItemRateioFinanceiro.setCentroCusto(const a_Value: String);
begin
  Self.m_CentroCusto := a_Value;
end;

function TItemRateioFinanceiro.getValor: Currency;
begin
  Result := Self.m_Valor;
end;

procedure TItemRateioFinanceiro.setValor(const a_Value: Currency);
begin
  Self.m_Valor := a_Value;
end;

function TItemRateioFinanceiro.getProjeto: String;
begin
  Result := Self.m_Projeto;
end;

procedure TItemRateioFinanceiro.setProjeto(const a_Value: String);
begin
  Self.m_Projeto := a_Value;
end;

function TItemRateioFinanceiro.getDiscriminacao: String;
begin
  Result := Self.m_Discriminacao;
end;

procedure TItemRateioFinanceiro.setDiscriminacao(const a_Value: String);
begin
  Self.m_Discriminacao := a_Value;
end;

function TItemRateioFinanceiro.getBemPatrimonial: String;
begin
  Result := Self.m_BemPatrimonial;
end;

procedure TItemRateioFinanceiro.setBemPatrimonial(const a_Value: String);
begin
  Self.m_BemPatrimonial := a_Value;
end;

function TItemRateioFinanceiro.getRATEIOFINANCEIRO: String;
begin
  Result := Self.m_RATEIOFINANCEIRO;
end;

procedure TItemRateioFinanceiro.setRATEIOFINANCEIRO(const a_Value: String);
begin
  Self.m_RATEIOFINANCEIRO := a_Value;
end;

function TItemRateioFinanceiro.getItemContrato: String;
begin
  Result := Self.m_ItemContrato;
end;

procedure TItemRateioFinanceiro.setItemContrato(const a_Value: String);
begin
  Self.m_ItemContrato := a_Value;
end;

function TItemRateioFinanceiro.getID_ESTABELECIMENTO_REEMBOLSO: String;
begin
  Result := Self.m_ID_ESTABELECIMENTO_REEMBOLSO;
end;

procedure TItemRateioFinanceiro.setID_ESTABELECIMENTO_REEMBOLSO(const a_Value: String);
begin
  Self.m_ID_ESTABELECIMENTO_REEMBOLSO := a_Value;
end;

function TItemRateioFinanceiro.getid_owner: String;
begin
  Result := Self.m_id_owner;
end;

procedure TItemRateioFinanceiro.setid_owner(const a_Value: String);
begin
  Self.m_id_owner := a_Value;
end;

destructor TItemRateioFinanceiro.Destroy;
begin

end;

function TItemRateioFinanceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemRateioFinanceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemRateioFinanceiro.getNameAPI(): String;
begin
  Result := 'ItemRateioFinanceiro';
end;

function TItemRateioFinanceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemRateioFinanceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
