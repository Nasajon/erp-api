unit api.model.persona.Jornada;

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

type TJornadaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdJornada: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Entrada: String;
    var m_Saida: String;
    var m_Tipo: Integer;
    var m_DescricaoTipo: String;
    var m_Flexivel: Boolean;
    var m_TipoIntervalo: Integer;
    var m_DuracaoIntervalo: Integer;
    

    function getIdJornada(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getEntrada(): String;
    function getSaida(): String;
    function getTipo(): Integer;
    function getDescricaoTipo(): String;
    function getFlexivel(): Boolean;
    function getTipoIntervalo(): Integer;
    function getDuracaoIntervalo(): Integer;
    

    procedure setIdJornada(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setEntrada(const a_Value: String);
    procedure setSaida(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setDescricaoTipo(const a_Value: String);
    procedure setFlexivel(const a_Value: Boolean);
    procedure setTipoIntervalo(const a_Value: Integer);
    procedure setDuracaoIntervalo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idjornada')]
    property idjornada: String read getIdJornada write setIdJornada;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('entrada')]
    property entrada: String read getEntrada write setEntrada;

    [NasajonSerializeAttribute('saida')]
    property saida: String read getSaida write setSaida;

    /// <summary>
/// Semanal com folga fixa(0) ou Outros(1)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    /// <summary>
/// Informar apenas quando o campo tipo for 0
    /// </summary>
    [NasajonSerializeAttribute('descricaotipo')]
    property descricaotipo: String read getDescricaoTipo write setDescricaoTipo;

    [NasajonSerializeAttribute('flexivel')]
    property flexivel: Boolean read getFlexivel write setFlexivel;

    [NasajonSerializeAttribute('tipointervalo')]
    property tipointervalo: Integer read getTipoIntervalo write setTipoIntervalo;

    [NasajonSerializeAttribute('duracaointervalo')]
    property duracaointervalo: Integer read getDuracaoIntervalo write setDuracaoIntervalo;

    

end;

type TJornadaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Jornada: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Entrada: String;
    var m_Saida: String;
    var m_Tipo: Integer;
    var m_DescricaoTipo: String;
    var m_Flexivel: Boolean;
    var m_TipoIntervalo: Integer;
    var m_DuracaoIntervalo: Integer;
    

    function getJornada(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getEntrada(): String;
    function getSaida(): String;
    function getTipo(): Integer;
    function getDescricaoTipo(): String;
    function getFlexivel(): Boolean;
    function getTipoIntervalo(): Integer;
    function getDuracaoIntervalo(): Integer;
    

    procedure setJornada(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setEntrada(const a_Value: String);
    procedure setSaida(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setDescricaoTipo(const a_Value: String);
    procedure setFlexivel(const a_Value: Boolean);
    procedure setTipoIntervalo(const a_Value: Integer);
    procedure setDuracaoIntervalo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('jornada')]
    property jornada: String read getJornada write setJornada;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('entrada')]
    property entrada: String read getEntrada write setEntrada;

    [NasajonSerializeAttribute('saida')]
    property saida: String read getSaida write setSaida;

    /// <summary>
/// Semanal com folga fixa(0) ou Outros(1)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('descricaotipo')]
    property descricaotipo: String read getDescricaoTipo write setDescricaoTipo;

    [NasajonSerializeAttribute('flexivel')]
    property flexivel: Boolean read getFlexivel write setFlexivel;

    [NasajonSerializeAttribute('tipointervalo')]
    property tipointervalo: Integer read getTipoIntervalo write setTipoIntervalo;

    [NasajonSerializeAttribute('duracaointervalo')]
    property duracaointervalo: Integer read getDuracaoIntervalo write setDuracaoIntervalo;

    

end;

type TJornadaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Jornada: String;
    var m_Empresa: String;
    

    function getJornada(): String;
    function getEmpresa(): String;
    

    procedure setJornada(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('jornada')]
    property jornada: String read getJornada write setJornada;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TJornadaNovo.getIdJornada: String;
begin
  Result := Self.m_IdJornada;
end;

procedure TJornadaNovo.setIdJornada(const a_Value: String);
begin
  Self.m_IdJornada := a_Value;
end;

function TJornadaNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TJornadaNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TJornadaNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TJornadaNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TJornadaNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TJornadaNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TJornadaNovo.getEntrada: String;
begin
  Result := Self.m_Entrada;
end;

procedure TJornadaNovo.setEntrada(const a_Value: String);
begin
  Self.m_Entrada := a_Value;
end;

function TJornadaNovo.getSaida: String;
begin
  Result := Self.m_Saida;
end;

procedure TJornadaNovo.setSaida(const a_Value: String);
begin
  Self.m_Saida := a_Value;
end;

function TJornadaNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TJornadaNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TJornadaNovo.getDescricaoTipo: String;
begin
  Result := Self.m_DescricaoTipo;
end;

procedure TJornadaNovo.setDescricaoTipo(const a_Value: String);
begin
  Self.m_DescricaoTipo := a_Value;
end;

function TJornadaNovo.getFlexivel: Boolean;
begin
  Result := Self.m_Flexivel;
end;

procedure TJornadaNovo.setFlexivel(const a_Value: Boolean);
begin
  Self.m_Flexivel := a_Value;
end;

function TJornadaNovo.getTipoIntervalo: Integer;
begin
  Result := Self.m_TipoIntervalo;
end;

procedure TJornadaNovo.setTipoIntervalo(const a_Value: Integer);
begin
  Self.m_TipoIntervalo := a_Value;
end;

function TJornadaNovo.getDuracaoIntervalo: Integer;
begin
  Result := Self.m_DuracaoIntervalo;
end;

procedure TJornadaNovo.setDuracaoIntervalo(const a_Value: Integer);
begin
  Self.m_DuracaoIntervalo := a_Value;
end;

destructor TJornadaNovo.Destroy;
begin

end;

function TJornadaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TJornadaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TJornadaNovo.getNameAPI(): String;
begin
  Result := 'JornadaNovo';
end;

function TJornadaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TJornadaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TJornadaAlterar.getJornada: String;
begin
  Result := Self.m_Jornada;
end;

procedure TJornadaAlterar.setJornada(const a_Value: String);
begin
  Self.m_Jornada := a_Value;
end;

function TJornadaAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TJornadaAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TJornadaAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TJornadaAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TJornadaAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TJornadaAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TJornadaAlterar.getEntrada: String;
begin
  Result := Self.m_Entrada;
end;

procedure TJornadaAlterar.setEntrada(const a_Value: String);
begin
  Self.m_Entrada := a_Value;
end;

function TJornadaAlterar.getSaida: String;
begin
  Result := Self.m_Saida;
end;

procedure TJornadaAlterar.setSaida(const a_Value: String);
begin
  Self.m_Saida := a_Value;
end;

function TJornadaAlterar.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TJornadaAlterar.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TJornadaAlterar.getDescricaoTipo: String;
begin
  Result := Self.m_DescricaoTipo;
end;

procedure TJornadaAlterar.setDescricaoTipo(const a_Value: String);
begin
  Self.m_DescricaoTipo := a_Value;
end;

function TJornadaAlterar.getFlexivel: Boolean;
begin
  Result := Self.m_Flexivel;
end;

procedure TJornadaAlterar.setFlexivel(const a_Value: Boolean);
begin
  Self.m_Flexivel := a_Value;
end;

function TJornadaAlterar.getTipoIntervalo: Integer;
begin
  Result := Self.m_TipoIntervalo;
end;

procedure TJornadaAlterar.setTipoIntervalo(const a_Value: Integer);
begin
  Self.m_TipoIntervalo := a_Value;
end;

function TJornadaAlterar.getDuracaoIntervalo: Integer;
begin
  Result := Self.m_DuracaoIntervalo;
end;

procedure TJornadaAlterar.setDuracaoIntervalo(const a_Value: Integer);
begin
  Self.m_DuracaoIntervalo := a_Value;
end;

destructor TJornadaAlterar.Destroy;
begin

end;

function TJornadaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TJornadaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TJornadaAlterar.getNameAPI(): String;
begin
  Result := 'JornadaAlterar';
end;

function TJornadaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TJornadaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TJornadaExcluir.getJornada: String;
begin
  Result := Self.m_Jornada;
end;

procedure TJornadaExcluir.setJornada(const a_Value: String);
begin
  Self.m_Jornada := a_Value;
end;

function TJornadaExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TJornadaExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TJornadaExcluir.Destroy;
begin

end;

function TJornadaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TJornadaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TJornadaExcluir.getNameAPI(): String;
begin
  Result := 'JornadaExcluir';
end;

function TJornadaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TJornadaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
