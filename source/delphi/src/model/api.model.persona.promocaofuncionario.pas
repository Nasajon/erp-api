unit api.model.persona.PromocaoFuncionario;

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

type TPromocaoFuncionarioNova = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_idfuncionario: String;
    var m_idcargonovo: String;
    var m_idnivelnovo: String;
    var m_idfuncaonova: String;
    var m_idcargoanterior: String;
    var m_idnivelanterior: String;
    var m_idfuncaoanteriora: String;
    

    function getidfuncionario(): String;
    function getidcargonovo(): String;
    function getidnivelnovo(): String;
    function getidfuncaonova(): String;
    function getidcargoanterior(): String;
    function getidnivelanterior(): String;
    function getidfuncaoanteriora(): String;
    

    procedure setidfuncionario(const a_Value: String);
    procedure setidcargonovo(const a_Value: String);
    procedure setidnivelnovo(const a_Value: String);
    procedure setidfuncaonova(const a_Value: String);
    procedure setidcargoanterior(const a_Value: String);
    procedure setidnivelanterior(const a_Value: String);
    procedure setidfuncaoanteriora(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idfuncionario')]
    property idfuncionario: String read getidfuncionario write setidfuncionario;

    [NasajonSerializeAttribute('idcargonovo')]
    property idcargonovo: String read getidcargonovo write setidcargonovo;

    [NasajonSerializeAttribute('idnivelnovo')]
    property idnivelnovo: String read getidnivelnovo write setidnivelnovo;

    [NasajonSerializeAttribute('idfuncaonova')]
    property idfuncaonova: String read getidfuncaonova write setidfuncaonova;

    [NasajonSerializeAttribute('idcargoanterior')]
    property idcargoanterior: String read getidcargoanterior write setidcargoanterior;

    [NasajonSerializeAttribute('idnivelanterior')]
    property idnivelanterior: String read getidnivelanterior write setidnivelanterior;

    [NasajonSerializeAttribute('idfuncaoanteriora')]
    property idfuncaoanteriora: String read getidfuncaoanteriora write setidfuncaoanteriora;

    

end;

	
implementation

  uses
      api.send;  

function TPromocaoFuncionarioNova.getidfuncionario: String;
begin
  Result := Self.m_idfuncionario;
end;

procedure TPromocaoFuncionarioNova.setidfuncionario(const a_Value: String);
begin
  Self.m_idfuncionario := a_Value;
end;

function TPromocaoFuncionarioNova.getidcargonovo: String;
begin
  Result := Self.m_idcargonovo;
end;

procedure TPromocaoFuncionarioNova.setidcargonovo(const a_Value: String);
begin
  Self.m_idcargonovo := a_Value;
end;

function TPromocaoFuncionarioNova.getidnivelnovo: String;
begin
  Result := Self.m_idnivelnovo;
end;

procedure TPromocaoFuncionarioNova.setidnivelnovo(const a_Value: String);
begin
  Self.m_idnivelnovo := a_Value;
end;

function TPromocaoFuncionarioNova.getidfuncaonova: String;
begin
  Result := Self.m_idfuncaonova;
end;

procedure TPromocaoFuncionarioNova.setidfuncaonova(const a_Value: String);
begin
  Self.m_idfuncaonova := a_Value;
end;

function TPromocaoFuncionarioNova.getidcargoanterior: String;
begin
  Result := Self.m_idcargoanterior;
end;

procedure TPromocaoFuncionarioNova.setidcargoanterior(const a_Value: String);
begin
  Self.m_idcargoanterior := a_Value;
end;

function TPromocaoFuncionarioNova.getidnivelanterior: String;
begin
  Result := Self.m_idnivelanterior;
end;

procedure TPromocaoFuncionarioNova.setidnivelanterior(const a_Value: String);
begin
  Self.m_idnivelanterior := a_Value;
end;

function TPromocaoFuncionarioNova.getidfuncaoanteriora: String;
begin
  Result := Self.m_idfuncaoanteriora;
end;

procedure TPromocaoFuncionarioNova.setidfuncaoanteriora(const a_Value: String);
begin
  Self.m_idfuncaoanteriora := a_Value;
end;

destructor TPromocaoFuncionarioNova.Destroy;
begin

end;

function TPromocaoFuncionarioNova.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPromocaoFuncionarioNova.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPromocaoFuncionarioNova.getNameAPI(): String;
begin
  Result := 'PromocaoFuncionarioNova';
end;

function TPromocaoFuncionarioNova.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPromocaoFuncionarioNova.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
