unit api.model.persona.IntervaloJornada;

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

type TIntervaloJornadaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdIntervalo: String;
    var m_Jornada: String;
    var m_Empresa: String;
    var m_HorarioInicio: String;
    var m_HorarioFim: String;
    

    function getIdIntervalo(): String;
    function getJornada(): String;
    function getEmpresa(): String;
    function getHorarioInicio(): String;
    function getHorarioFim(): String;
    

    procedure setIdIntervalo(const a_Value: String);
    procedure setJornada(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setHorarioInicio(const a_Value: String);
    procedure setHorarioFim(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idintervalo')]
    property idintervalo: String read getIdIntervalo write setIdIntervalo;

    [NasajonSerializeAttribute('jornada')]
    property jornada: String read getJornada write setJornada;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('horarioinicio')]
    property horarioinicio: String read getHorarioInicio write setHorarioInicio;

    [NasajonSerializeAttribute('horariofim')]
    property horariofim: String read getHorarioFim write setHorarioFim;

    

end;

type TIntervaloJornadaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdIntervalo: String;
    var m_Jornada: String;
    var m_Empresa: String;
    var m_HorarioInicio: String;
    var m_HorarioFim: String;
    var m_HorarioInicioNovo: String;
    var m_HorarioFimNovo: String;
    

    function getIdIntervalo(): String;
    function getJornada(): String;
    function getEmpresa(): String;
    function getHorarioInicio(): String;
    function getHorarioFim(): String;
    function getHorarioInicioNovo(): String;
    function getHorarioFimNovo(): String;
    

    procedure setIdIntervalo(const a_Value: String);
    procedure setJornada(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setHorarioInicio(const a_Value: String);
    procedure setHorarioFim(const a_Value: String);
    procedure setHorarioInicioNovo(const a_Value: String);
    procedure setHorarioFimNovo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idintervalo')]
    property idintervalo: String read getIdIntervalo write setIdIntervalo;

    [NasajonSerializeAttribute('jornada')]
    property jornada: String read getJornada write setJornada;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('horarioinicio')]
    property horarioinicio: String read getHorarioInicio write setHorarioInicio;

    [NasajonSerializeAttribute('horariofim')]
    property horariofim: String read getHorarioFim write setHorarioFim;

    [NasajonSerializeAttribute('horarioinicionovo')]
    property horarioinicionovo: String read getHorarioInicioNovo write setHorarioInicioNovo;

    [NasajonSerializeAttribute('horariofimnovo')]
    property horariofimnovo: String read getHorarioFimNovo write setHorarioFimNovo;

    

end;

type TIntervaloJornadaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdIntervalo: String;
    var m_Jornada: String;
    var m_Empresa: String;
    var m_HorarioInicio: String;
    

    function getIdIntervalo(): String;
    function getJornada(): String;
    function getEmpresa(): String;
    function getHorarioInicio(): String;
    

    procedure setIdIntervalo(const a_Value: String);
    procedure setJornada(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setHorarioInicio(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idintervalo')]
    property idintervalo: String read getIdIntervalo write setIdIntervalo;

    [NasajonSerializeAttribute('jornada')]
    property jornada: String read getJornada write setJornada;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('horarioinicio')]
    property horarioinicio: String read getHorarioInicio write setHorarioInicio;

    

end;

	
implementation

  uses
      api.send;  

function TIntervaloJornadaNovo.getIdIntervalo: String;
begin
  Result := Self.m_IdIntervalo;
end;

procedure TIntervaloJornadaNovo.setIdIntervalo(const a_Value: String);
begin
  Self.m_IdIntervalo := a_Value;
end;

function TIntervaloJornadaNovo.getJornada: String;
begin
  Result := Self.m_Jornada;
end;

procedure TIntervaloJornadaNovo.setJornada(const a_Value: String);
begin
  Self.m_Jornada := a_Value;
end;

function TIntervaloJornadaNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TIntervaloJornadaNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TIntervaloJornadaNovo.getHorarioInicio: String;
begin
  Result := Self.m_HorarioInicio;
end;

procedure TIntervaloJornadaNovo.setHorarioInicio(const a_Value: String);
begin
  Self.m_HorarioInicio := a_Value;
end;

function TIntervaloJornadaNovo.getHorarioFim: String;
begin
  Result := Self.m_HorarioFim;
end;

procedure TIntervaloJornadaNovo.setHorarioFim(const a_Value: String);
begin
  Self.m_HorarioFim := a_Value;
end;

destructor TIntervaloJornadaNovo.Destroy;
begin

end;

function TIntervaloJornadaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TIntervaloJornadaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TIntervaloJornadaNovo.getNameAPI(): String;
begin
  Result := 'IntervaloJornadaNovo';
end;

function TIntervaloJornadaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TIntervaloJornadaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TIntervaloJornadaAlterar.getIdIntervalo: String;
begin
  Result := Self.m_IdIntervalo;
end;

procedure TIntervaloJornadaAlterar.setIdIntervalo(const a_Value: String);
begin
  Self.m_IdIntervalo := a_Value;
end;

function TIntervaloJornadaAlterar.getJornada: String;
begin
  Result := Self.m_Jornada;
end;

procedure TIntervaloJornadaAlterar.setJornada(const a_Value: String);
begin
  Self.m_Jornada := a_Value;
end;

function TIntervaloJornadaAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TIntervaloJornadaAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TIntervaloJornadaAlterar.getHorarioInicio: String;
begin
  Result := Self.m_HorarioInicio;
end;

procedure TIntervaloJornadaAlterar.setHorarioInicio(const a_Value: String);
begin
  Self.m_HorarioInicio := a_Value;
end;

function TIntervaloJornadaAlterar.getHorarioFim: String;
begin
  Result := Self.m_HorarioFim;
end;

procedure TIntervaloJornadaAlterar.setHorarioFim(const a_Value: String);
begin
  Self.m_HorarioFim := a_Value;
end;

function TIntervaloJornadaAlterar.getHorarioInicioNovo: String;
begin
  Result := Self.m_HorarioInicioNovo;
end;

procedure TIntervaloJornadaAlterar.setHorarioInicioNovo(const a_Value: String);
begin
  Self.m_HorarioInicioNovo := a_Value;
end;

function TIntervaloJornadaAlterar.getHorarioFimNovo: String;
begin
  Result := Self.m_HorarioFimNovo;
end;

procedure TIntervaloJornadaAlterar.setHorarioFimNovo(const a_Value: String);
begin
  Self.m_HorarioFimNovo := a_Value;
end;

destructor TIntervaloJornadaAlterar.Destroy;
begin

end;

function TIntervaloJornadaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TIntervaloJornadaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TIntervaloJornadaAlterar.getNameAPI(): String;
begin
  Result := 'IntervaloJornadaAlterar';
end;

function TIntervaloJornadaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TIntervaloJornadaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TIntervaloJornadaExcluir.getIdIntervalo: String;
begin
  Result := Self.m_IdIntervalo;
end;

procedure TIntervaloJornadaExcluir.setIdIntervalo(const a_Value: String);
begin
  Self.m_IdIntervalo := a_Value;
end;

function TIntervaloJornadaExcluir.getJornada: String;
begin
  Result := Self.m_Jornada;
end;

procedure TIntervaloJornadaExcluir.setJornada(const a_Value: String);
begin
  Self.m_Jornada := a_Value;
end;

function TIntervaloJornadaExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TIntervaloJornadaExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TIntervaloJornadaExcluir.getHorarioInicio: String;
begin
  Result := Self.m_HorarioInicio;
end;

procedure TIntervaloJornadaExcluir.setHorarioInicio(const a_Value: String);
begin
  Self.m_HorarioInicio := a_Value;
end;

destructor TIntervaloJornadaExcluir.Destroy;
begin

end;

function TIntervaloJornadaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TIntervaloJornadaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TIntervaloJornadaExcluir.getNameAPI(): String;
begin
  Result := 'IntervaloJornadaExcluir';
end;

function TIntervaloJornadaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TIntervaloJornadaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
