unit api.model.financas.ItemEmprestimoPrestacao;

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

type TItemEmprestimoPrestacaoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ID: String;
    var m_ID_PrestacaoDeConta: String;
    var m_ID_TituloEmprestimo: String;
    

    function getID(): String;
    function getID_PrestacaoDeConta(): String;
    function getID_TituloEmprestimo(): String;
    

    procedure setID(const a_Value: String);
    procedure setID_PrestacaoDeConta(const a_Value: String);
    procedure setID_TituloEmprestimo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getID write setID;

    [NasajonSerializeAttribute('id_prestacaodeconta')]
    property id_prestacaodeconta: String read getID_PrestacaoDeConta write setID_PrestacaoDeConta;

    [NasajonSerializeAttribute('id_tituloemprestimo')]
    property id_tituloemprestimo: String read getID_TituloEmprestimo write setID_TituloEmprestimo;

    

end;

	
implementation

  uses
      api.send;  

function TItemEmprestimoPrestacaoNovo.getID: String;
begin
  Result := Self.m_ID;
end;

procedure TItemEmprestimoPrestacaoNovo.setID(const a_Value: String);
begin
  Self.m_ID := a_Value;
end;

function TItemEmprestimoPrestacaoNovo.getID_PrestacaoDeConta: String;
begin
  Result := Self.m_ID_PrestacaoDeConta;
end;

procedure TItemEmprestimoPrestacaoNovo.setID_PrestacaoDeConta(const a_Value: String);
begin
  Self.m_ID_PrestacaoDeConta := a_Value;
end;

function TItemEmprestimoPrestacaoNovo.getID_TituloEmprestimo: String;
begin
  Result := Self.m_ID_TituloEmprestimo;
end;

procedure TItemEmprestimoPrestacaoNovo.setID_TituloEmprestimo(const a_Value: String);
begin
  Self.m_ID_TituloEmprestimo := a_Value;
end;

destructor TItemEmprestimoPrestacaoNovo.Destroy;
begin

end;

function TItemEmprestimoPrestacaoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemEmprestimoPrestacaoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemEmprestimoPrestacaoNovo.getNameAPI(): String;
begin
  Result := 'ItemEmprestimoPrestacaoNovo';
end;

function TItemEmprestimoPrestacaoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemEmprestimoPrestacaoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
