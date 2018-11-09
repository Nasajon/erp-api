unit api.model.persona.ConcessionariaValeTransporte;

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

type TConcessionariaValeTransporteNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdConcessionaria: String;
    var m_Codigo: String;
    var m_Nome: String;
    

    function getIdConcessionaria(): String;
    function getCodigo(): String;
    function getNome(): String;
    

    procedure setIdConcessionaria(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idconcessionaria')]
    property idconcessionaria: String read getIdConcessionaria write setIdConcessionaria;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    

end;

type TConcessionariaValeTransporteAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Concessionaria: String;
    var m_Codigo: String;
    var m_Nome: String;
    

    function getConcessionaria(): String;
    function getCodigo(): String;
    function getNome(): String;
    

    procedure setConcessionaria(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('concessionaria')]
    property concessionaria: String read getConcessionaria write setConcessionaria;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    

end;

type TConcessionariaValeTransporteExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Concessionaria: String;
    

    function getConcessionaria(): String;
    

    procedure setConcessionaria(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('concessionaria')]
    property concessionaria: String read getConcessionaria write setConcessionaria;

    

end;

	
implementation

  uses
      api.send;  

function TConcessionariaValeTransporteNovo.getIdConcessionaria: String;
begin
  Result := Self.m_IdConcessionaria;
end;

procedure TConcessionariaValeTransporteNovo.setIdConcessionaria(const a_Value: String);
begin
  Self.m_IdConcessionaria := a_Value;
end;

function TConcessionariaValeTransporteNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TConcessionariaValeTransporteNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TConcessionariaValeTransporteNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TConcessionariaValeTransporteNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

destructor TConcessionariaValeTransporteNovo.Destroy;
begin

end;

function TConcessionariaValeTransporteNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConcessionariaValeTransporteNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConcessionariaValeTransporteNovo.getNameAPI(): String;
begin
  Result := 'ConcessionariaValeTransporteNovo';
end;

function TConcessionariaValeTransporteNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConcessionariaValeTransporteNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TConcessionariaValeTransporteAlterar.getConcessionaria: String;
begin
  Result := Self.m_Concessionaria;
end;

procedure TConcessionariaValeTransporteAlterar.setConcessionaria(const a_Value: String);
begin
  Self.m_Concessionaria := a_Value;
end;

function TConcessionariaValeTransporteAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TConcessionariaValeTransporteAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TConcessionariaValeTransporteAlterar.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TConcessionariaValeTransporteAlterar.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

destructor TConcessionariaValeTransporteAlterar.Destroy;
begin

end;

function TConcessionariaValeTransporteAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConcessionariaValeTransporteAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConcessionariaValeTransporteAlterar.getNameAPI(): String;
begin
  Result := 'ConcessionariaValeTransporteAlterar';
end;

function TConcessionariaValeTransporteAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConcessionariaValeTransporteAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TConcessionariaValeTransporteExcluir.getConcessionaria: String;
begin
  Result := Self.m_Concessionaria;
end;

procedure TConcessionariaValeTransporteExcluir.setConcessionaria(const a_Value: String);
begin
  Self.m_Concessionaria := a_Value;
end;

destructor TConcessionariaValeTransporteExcluir.Destroy;
begin

end;

function TConcessionariaValeTransporteExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TConcessionariaValeTransporteExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TConcessionariaValeTransporteExcluir.getNameAPI(): String;
begin
  Result := 'ConcessionariaValeTransporteExcluir';
end;

function TConcessionariaValeTransporteExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TConcessionariaValeTransporteExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
