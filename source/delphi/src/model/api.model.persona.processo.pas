unit api.model.persona.Processo;

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

type TProcessoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdProcesso: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_DataAbertura: TDate;
    var m_Descricao: String;
    var m_CodigoVara: String;
    var m_CodigoMunicipioVara: String;
    var m_Tipo: Integer;
    var m_Autor: Integer;
    var m_Motivo: Integer;
    

    function getIdProcesso(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getDataAbertura(): TDate;
    function getDescricao(): String;
    function getCodigoVara(): String;
    function getCodigoMunicipioVara(): String;
    function getTipo(): Integer;
    function getAutor(): Integer;
    function getMotivo(): Integer;
    

    procedure setIdProcesso(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setDataAbertura(const a_Value: TDate);
    procedure setDescricao(const a_Value: String);
    procedure setCodigoVara(const a_Value: String);
    procedure setCodigoMunicipioVara(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setAutor(const a_Value: Integer);
    procedure setMotivo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idprocesso')]
    property idprocesso: String read getIdProcesso write setIdProcesso;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('dataabertura')]
    property dataabertura: TDate read getDataAbertura write setDataAbertura;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('codigovara')]
    property codigovara: String read getCodigoVara write setCodigoVara;

    /// <summary>
/// Conforme tabela do IBGE
    /// </summary>
    [NasajonSerializeAttribute('codigomunicipiovara')]
    property codigomunicipiovara: String read getCodigoMunicipioVara write setCodigoMunicipioVara;

    /// <summary>
/// Administrativo(1) ou Judicial(2)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    /// <summary>
/// Próprio contribuinte(1) ou Outra entidade(2)
    /// </summary>
    [NasajonSerializeAttribute('autor')]
    property autor: Integer read getAutor write setAutor;

    /// <summary>
/// RAT(0), FAP(1), INSS(2), IRRF(3), FGTS(4), Sindical(5), Demissão(6), Reintegração(7), Admissão(8), Menor Aprendiz(9) ou Terceiros(10)
    /// </summary>
    [NasajonSerializeAttribute('motivo')]
    property motivo: Integer read getMotivo write setMotivo;

    

end;

type TProcessoAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Processo: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_DataAbertura: TDate;
    var m_Descricao: String;
    var m_CodigoMunicipioVara: String;
    var m_CodigoVara: String;
    var m_Tipo: Integer;
    var m_Autor: Integer;
    var m_Motivo: Integer;
    

    function getProcesso(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getDataAbertura(): TDate;
    function getDescricao(): String;
    function getCodigoMunicipioVara(): String;
    function getCodigoVara(): String;
    function getTipo(): Integer;
    function getAutor(): Integer;
    function getMotivo(): Integer;
    

    procedure setProcesso(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setDataAbertura(const a_Value: TDate);
    procedure setDescricao(const a_Value: String);
    procedure setCodigoMunicipioVara(const a_Value: String);
    procedure setCodigoVara(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setAutor(const a_Value: Integer);
    procedure setMotivo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('processo')]
    property processo: String read getProcesso write setProcesso;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('dataabertura')]
    property dataabertura: TDate read getDataAbertura write setDataAbertura;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Conforme tabela do IBGE
    /// </summary>
    [NasajonSerializeAttribute('codigomunicipiovara')]
    property codigomunicipiovara: String read getCodigoMunicipioVara write setCodigoMunicipioVara;

    [NasajonSerializeAttribute('codigovara')]
    property codigovara: String read getCodigoVara write setCodigoVara;

    /// <summary>
/// Administrativo(1) ou Judicial(2)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    /// <summary>
/// Próprio contribuinte(1) ou Outra entidade(2)
    /// </summary>
    [NasajonSerializeAttribute('autor')]
    property autor: Integer read getAutor write setAutor;

    /// <summary>
/// RAT(0), FAP(1), INSS(2), IRRF(3), FGTS(4), Sindical(5), Demissão(6), Reintegração(7), Admissão(8), Menor Aprendiz(9) ou Terceiros(10)
    /// </summary>
    [NasajonSerializeAttribute('motivo')]
    property motivo: Integer read getMotivo write setMotivo;

    

end;

type TProcessoAlterarDadosDecisao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Processo: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_Tipo: Integer;
    var m_Extensao: Integer;
    var m_DepositoIntegral: Boolean;
    

    function getProcesso(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getTipo(): Integer;
    function getExtensao(): Integer;
    function getDepositoIntegral(): Boolean;
    

    procedure setProcesso(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setTipo(const a_Value: Integer);
    procedure setExtensao(const a_Value: Integer);
    procedure setDepositoIntegral(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('processo')]
    property processo: String read getProcesso write setProcesso;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    /// <summary>
/// Definitiva (1), Decisão não transitada em julgado com efeito suspensivo(2), Liminar em mandado de segurança(3), Liminar ou tutela antecipada, em outras espécies de ação judicial(4), Contestação administrativa(5), Outros(9)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    /// <summary>
/// Contribuições Patronais(1) ou Contribuições Patronais + Segurados(2)
    /// </summary>
    [NasajonSerializeAttribute('extensao')]
    property extensao: Integer read getExtensao write setExtensao;

    [NasajonSerializeAttribute('depositointegral')]
    property depositointegral: Boolean read getDepositoIntegral write setDepositoIntegral;

    

end;

type TProcessoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Processo: String;
    var m_Empresa: String;
    

    function getProcesso(): String;
    function getEmpresa(): String;
    

    procedure setProcesso(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('processo')]
    property processo: String read getProcesso write setProcesso;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TProcessoNovo.getIdProcesso: String;
begin
  Result := Self.m_IdProcesso;
end;

procedure TProcessoNovo.setIdProcesso(const a_Value: String);
begin
  Self.m_IdProcesso := a_Value;
end;

function TProcessoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TProcessoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TProcessoNovo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TProcessoNovo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TProcessoNovo.getDataAbertura: TDate;
begin
  Result := Self.m_DataAbertura;
end;

procedure TProcessoNovo.setDataAbertura(const a_Value: TDate);
begin
  Self.m_DataAbertura := a_Value;
end;

function TProcessoNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TProcessoNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TProcessoNovo.getCodigoVara: String;
begin
  Result := Self.m_CodigoVara;
end;

procedure TProcessoNovo.setCodigoVara(const a_Value: String);
begin
  Self.m_CodigoVara := a_Value;
end;

function TProcessoNovo.getCodigoMunicipioVara: String;
begin
  Result := Self.m_CodigoMunicipioVara;
end;

procedure TProcessoNovo.setCodigoMunicipioVara(const a_Value: String);
begin
  Self.m_CodigoMunicipioVara := a_Value;
end;

function TProcessoNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TProcessoNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TProcessoNovo.getAutor: Integer;
begin
  Result := Self.m_Autor;
end;

procedure TProcessoNovo.setAutor(const a_Value: Integer);
begin
  Self.m_Autor := a_Value;
end;

function TProcessoNovo.getMotivo: Integer;
begin
  Result := Self.m_Motivo;
end;

procedure TProcessoNovo.setMotivo(const a_Value: Integer);
begin
  Self.m_Motivo := a_Value;
end;

destructor TProcessoNovo.Destroy;
begin

end;

function TProcessoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProcessoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProcessoNovo.getNameAPI(): String;
begin
  Result := 'ProcessoNovo';
end;

function TProcessoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProcessoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProcessoAlterarDadosGerais.getProcesso: String;
begin
  Result := Self.m_Processo;
end;

procedure TProcessoAlterarDadosGerais.setProcesso(const a_Value: String);
begin
  Self.m_Processo := a_Value;
end;

function TProcessoAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TProcessoAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TProcessoAlterarDadosGerais.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TProcessoAlterarDadosGerais.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TProcessoAlterarDadosGerais.getDataAbertura: TDate;
begin
  Result := Self.m_DataAbertura;
end;

procedure TProcessoAlterarDadosGerais.setDataAbertura(const a_Value: TDate);
begin
  Self.m_DataAbertura := a_Value;
end;

function TProcessoAlterarDadosGerais.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TProcessoAlterarDadosGerais.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TProcessoAlterarDadosGerais.getCodigoMunicipioVara: String;
begin
  Result := Self.m_CodigoMunicipioVara;
end;

procedure TProcessoAlterarDadosGerais.setCodigoMunicipioVara(const a_Value: String);
begin
  Self.m_CodigoMunicipioVara := a_Value;
end;

function TProcessoAlterarDadosGerais.getCodigoVara: String;
begin
  Result := Self.m_CodigoVara;
end;

procedure TProcessoAlterarDadosGerais.setCodigoVara(const a_Value: String);
begin
  Self.m_CodigoVara := a_Value;
end;

function TProcessoAlterarDadosGerais.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TProcessoAlterarDadosGerais.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TProcessoAlterarDadosGerais.getAutor: Integer;
begin
  Result := Self.m_Autor;
end;

procedure TProcessoAlterarDadosGerais.setAutor(const a_Value: Integer);
begin
  Self.m_Autor := a_Value;
end;

function TProcessoAlterarDadosGerais.getMotivo: Integer;
begin
  Result := Self.m_Motivo;
end;

procedure TProcessoAlterarDadosGerais.setMotivo(const a_Value: Integer);
begin
  Self.m_Motivo := a_Value;
end;

destructor TProcessoAlterarDadosGerais.Destroy;
begin

end;

function TProcessoAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProcessoAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProcessoAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'ProcessoAlterarDadosGerais';
end;

function TProcessoAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProcessoAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProcessoAlterarDadosDecisao.getProcesso: String;
begin
  Result := Self.m_Processo;
end;

procedure TProcessoAlterarDadosDecisao.setProcesso(const a_Value: String);
begin
  Self.m_Processo := a_Value;
end;

function TProcessoAlterarDadosDecisao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TProcessoAlterarDadosDecisao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TProcessoAlterarDadosDecisao.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TProcessoAlterarDadosDecisao.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TProcessoAlterarDadosDecisao.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TProcessoAlterarDadosDecisao.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TProcessoAlterarDadosDecisao.getExtensao: Integer;
begin
  Result := Self.m_Extensao;
end;

procedure TProcessoAlterarDadosDecisao.setExtensao(const a_Value: Integer);
begin
  Self.m_Extensao := a_Value;
end;

function TProcessoAlterarDadosDecisao.getDepositoIntegral: Boolean;
begin
  Result := Self.m_DepositoIntegral;
end;

procedure TProcessoAlterarDadosDecisao.setDepositoIntegral(const a_Value: Boolean);
begin
  Self.m_DepositoIntegral := a_Value;
end;

destructor TProcessoAlterarDadosDecisao.Destroy;
begin

end;

function TProcessoAlterarDadosDecisao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProcessoAlterarDadosDecisao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProcessoAlterarDadosDecisao.getNameAPI(): String;
begin
  Result := 'ProcessoAlterarDadosDecisao';
end;

function TProcessoAlterarDadosDecisao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProcessoAlterarDadosDecisao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProcessoExcluir.getProcesso: String;
begin
  Result := Self.m_Processo;
end;

procedure TProcessoExcluir.setProcesso(const a_Value: String);
begin
  Self.m_Processo := a_Value;
end;

function TProcessoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TProcessoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TProcessoExcluir.Destroy;
begin

end;

function TProcessoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProcessoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProcessoExcluir.getNameAPI(): String;
begin
  Result := 'ProcessoExcluir';
end;

function TProcessoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProcessoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
