unit api.model.ns.EntidadeCompartilhadora;

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

type TEntidadeCompartilhadora = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_EntidadeCompartilhadora: String;
    var m_Empresa: String;
    var m_Tipo: Integer;
    

    function getEntidadeCompartilhadora(): String;
    function getEmpresa(): String;
    function getTipo(): Integer;
    

    procedure setEntidadeCompartilhadora(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('entidadecompartilhadora')]
    property entidadecompartilhadora: String read getEntidadeCompartilhadora write setEntidadeCompartilhadora;

    /// <summary>
/// Este campo passa a ser requirido internamente caso o tipo igual a 2-Estabelecimento
    /// </summary>
    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Define o tipo de entidade compartilhadora:
/// 				   			0 - Grupo Empresarial
/// 				   			1 - Empresa
/// 				   			2 - Estabelecimento
/// 				   			3 - Conjunto
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    

end;

	
implementation

  uses
      api.send;  

function TEntidadeCompartilhadora.getEntidadeCompartilhadora: String;
begin
  Result := Self.m_EntidadeCompartilhadora;
end;

procedure TEntidadeCompartilhadora.setEntidadeCompartilhadora(const a_Value: String);
begin
  Self.m_EntidadeCompartilhadora := a_Value;
end;

function TEntidadeCompartilhadora.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEntidadeCompartilhadora.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEntidadeCompartilhadora.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TEntidadeCompartilhadora.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

destructor TEntidadeCompartilhadora.Destroy;
begin

end;

function TEntidadeCompartilhadora.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEntidadeCompartilhadora.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEntidadeCompartilhadora.getNameAPI(): String;
begin
  Result := 'EntidadeCompartilhadora';
end;

function TEntidadeCompartilhadora.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEntidadeCompartilhadora.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
