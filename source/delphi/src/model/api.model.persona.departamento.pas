unit api.model.persona.Departamento;

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

type TDepartamentoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdDepartamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    

    function getIdDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    

    procedure setIdDepartamento(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('iddepartamento')]
    property iddepartamento: String read getIdDepartamento write setIdDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    

end;

type TDepartamentoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    

    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    

    procedure setDepartamento(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    

end;

type TDepartamentoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    

    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    

    procedure setDepartamento(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TDepartamentoNovo.getIdDepartamento: String;
begin
  Result := Self.m_IdDepartamento;
end;

procedure TDepartamentoNovo.setIdDepartamento(const a_Value: String);
begin
  Self.m_IdDepartamento := a_Value;
end;

function TDepartamentoNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TDepartamentoNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TDepartamentoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDepartamentoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDepartamentoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TDepartamentoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TDepartamentoNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TDepartamentoNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

destructor TDepartamentoNovo.Destroy;
begin

end;

function TDepartamentoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDepartamentoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDepartamentoNovo.getNameAPI(): String;
begin
  Result := 'DepartamentoNovo';
end;

function TDepartamentoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDepartamentoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDepartamentoAlterar.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TDepartamentoAlterar.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TDepartamentoAlterar.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TDepartamentoAlterar.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TDepartamentoAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDepartamentoAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDepartamentoAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TDepartamentoAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TDepartamentoAlterar.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TDepartamentoAlterar.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

destructor TDepartamentoAlterar.Destroy;
begin

end;

function TDepartamentoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDepartamentoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDepartamentoAlterar.getNameAPI(): String;
begin
  Result := 'DepartamentoAlterar';
end;

function TDepartamentoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDepartamentoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDepartamentoExcluir.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TDepartamentoExcluir.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TDepartamentoExcluir.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TDepartamentoExcluir.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TDepartamentoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDepartamentoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TDepartamentoExcluir.Destroy;
begin

end;

function TDepartamentoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDepartamentoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDepartamentoExcluir.getNameAPI(): String;
begin
  Result := 'DepartamentoExcluir';
end;

function TDepartamentoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDepartamentoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
