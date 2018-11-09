unit api.model.crm.ContratoTecnicoItem;

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

type TContratoTecnicoItemNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Identificador: String;
    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_ContratoTecnico: String;
    var m_ContratoFinanceiro: String;
    var m_ObjetoServico: String;
    

    function getIdentificador(): String;
    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getContratoTecnico(): String;
    function getContratoFinanceiro(): String;
    function getObjetoServico(): String;
    

    procedure setIdentificador(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setContratoTecnico(const a_Value: String);
    procedure setContratoFinanceiro(const a_Value: String);
    procedure setObjetoServico(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('identificador')]
    property identificador: String read getIdentificador write setIdentificador;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('contratotecnico')]
    property contratotecnico: String read getContratoTecnico write setContratoTecnico;

    [NasajonSerializeAttribute('contratofinanceiro')]
    property contratofinanceiro: String read getContratoFinanceiro write setContratoFinanceiro;

    [NasajonSerializeAttribute('objetoservico')]
    property objetoservico: String read getObjetoServico write setObjetoServico;

    

end;

	
implementation

  uses
      api.send;  

function TContratoTecnicoItemNovo.getIdentificador: String;
begin
  Result := Self.m_Identificador;
end;

procedure TContratoTecnicoItemNovo.setIdentificador(const a_Value: String);
begin
  Self.m_Identificador := a_Value;
end;

function TContratoTecnicoItemNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TContratoTecnicoItemNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TContratoTecnicoItemNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContratoTecnicoItemNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContratoTecnicoItemNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TContratoTecnicoItemNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TContratoTecnicoItemNovo.getContratoTecnico: String;
begin
  Result := Self.m_ContratoTecnico;
end;

procedure TContratoTecnicoItemNovo.setContratoTecnico(const a_Value: String);
begin
  Self.m_ContratoTecnico := a_Value;
end;

function TContratoTecnicoItemNovo.getContratoFinanceiro: String;
begin
  Result := Self.m_ContratoFinanceiro;
end;

procedure TContratoTecnicoItemNovo.setContratoFinanceiro(const a_Value: String);
begin
  Self.m_ContratoFinanceiro := a_Value;
end;

function TContratoTecnicoItemNovo.getObjetoServico: String;
begin
  Result := Self.m_ObjetoServico;
end;

procedure TContratoTecnicoItemNovo.setObjetoServico(const a_Value: String);
begin
  Self.m_ObjetoServico := a_Value;
end;

destructor TContratoTecnicoItemNovo.Destroy;
begin

end;

function TContratoTecnicoItemNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContratoTecnicoItemNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContratoTecnicoItemNovo.getNameAPI(): String;
begin
  Result := 'ContratoTecnicoItemNovo';
end;

function TContratoTecnicoItemNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContratoTecnicoItemNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
