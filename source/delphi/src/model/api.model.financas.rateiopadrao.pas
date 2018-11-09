unit api.model.financas.RateioPadrao;

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
	
  , api.model.ns.grupoempresarial
	

	;

type TRateioPadrao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_RateioPadrao: String;
    var m_Nome: String;
    var m_GrupoEmpresarial: TGrupoEmpresarial;
    

    function getRateioPadrao(): String;
    function getNome(): String;
    function getGrupoEmpresarial(): TGrupoEmpresarial;
    

    procedure setRateioPadrao(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: TGrupoEmpresarial);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Não é requerido pois pode ser utilizada a chave única(nome, grupoempresarial).
    /// </summary>
    [NasajonSerializeAttribute('rateiopadrao')]
    property rateiopadrao: String read getRateioPadrao write setRateioPadrao;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: TGrupoEmpresarial read getGrupoEmpresarial write setGrupoEmpresarial;

    

end;

	
implementation

  uses
      api.send;  

function TRateioPadrao.getRateioPadrao: String;
begin
  Result := Self.m_RateioPadrao;
end;

procedure TRateioPadrao.setRateioPadrao(const a_Value: String);
begin
  Self.m_RateioPadrao := a_Value;
end;

function TRateioPadrao.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TRateioPadrao.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TRateioPadrao.getGrupoEmpresarial: TGrupoEmpresarial;
begin
  if not Assigned(Self.m_GrupoEmpresarial)
    then Self.m_GrupoEmpresarial := TGrupoEmpresarial.Create();
  Result := Self.m_GrupoEmpresarial;
end;

procedure TRateioPadrao.setGrupoEmpresarial(const a_Value: TGrupoEmpresarial);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

destructor TRateioPadrao.Destroy;
begin
  Self.GrupoEmpresarial.Free();
end;

function TRateioPadrao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRateioPadrao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRateioPadrao.getNameAPI(): String;
begin
  Result := 'RateioPadrao';
end;

function TRateioPadrao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRateioPadrao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
