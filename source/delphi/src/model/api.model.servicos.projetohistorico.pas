unit api.model.Servicos.ProjetoHistorico;

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

type TProjetoHistoricoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ProjetoHistorico: String;
    var m_Projeto: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_GrupoEmpresarial: String;
    var m_Data: TDateTime;
    var m_Usuario: String;
    var m_Historico: WideString;
    

    function getProjetoHistorico(): String;
    function getProjeto(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getGrupoEmpresarial(): String;
    function getData(): TDateTime;
    function getUsuario(): String;
    function getHistorico(): WideString;
    

    procedure setProjetoHistorico(const a_Value: String);
    procedure setProjeto(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setData(const a_Value: TDateTime);
    procedure setUsuario(const a_Value: String);
    procedure setHistorico(const a_Value: WideString);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('projetohistorico')]
    property projetohistorico: String read getProjetoHistorico write setProjetoHistorico;

    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getProjeto write setProjeto;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    [NasajonSerializeAttribute('data')]
    property data: TDateTime read getData write setData;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('historico')]
    property historico: WideString read getHistorico write setHistorico;

    

end;

	
implementation

  uses
      api.send;  

function TProjetoHistoricoNovo.getProjetoHistorico: String;
begin
  Result := Self.m_ProjetoHistorico;
end;

procedure TProjetoHistoricoNovo.setProjetoHistorico(const a_Value: String);
begin
  Self.m_ProjetoHistorico := a_Value;
end;

function TProjetoHistoricoNovo.getProjeto: String;
begin
  Result := Self.m_Projeto;
end;

procedure TProjetoHistoricoNovo.setProjeto(const a_Value: String);
begin
  Self.m_Projeto := a_Value;
end;

function TProjetoHistoricoNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TProjetoHistoricoNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TProjetoHistoricoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TProjetoHistoricoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TProjetoHistoricoNovo.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TProjetoHistoricoNovo.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TProjetoHistoricoNovo.getData: TDateTime;
begin
  Result := Self.m_Data;
end;

procedure TProjetoHistoricoNovo.setData(const a_Value: TDateTime);
begin
  Self.m_Data := a_Value;
end;

function TProjetoHistoricoNovo.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TProjetoHistoricoNovo.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TProjetoHistoricoNovo.getHistorico: WideString;
begin
  Result := Self.m_Historico;
end;

procedure TProjetoHistoricoNovo.setHistorico(const a_Value: WideString);
begin
  Self.m_Historico := a_Value;
end;

destructor TProjetoHistoricoNovo.Destroy;
begin

end;

function TProjetoHistoricoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProjetoHistoricoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProjetoHistoricoNovo.getNameAPI(): String;
begin
  Result := 'ProjetoHistoricoNovo';
end;

function TProjetoHistoricoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProjetoHistoricoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
