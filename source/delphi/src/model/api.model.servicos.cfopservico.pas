unit api.model.servicos.CFOPServico;

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

type TCFOPServico = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_CFOPServico: String;
    var m_IBGEMunicipio: Integer;
    

    function getCFOPServico(): String;
    function getIBGEMunicipio(): Integer;
    

    procedure setCFOPServico(const a_Value: String);
    procedure setIBGEMunicipio(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cfopservico')]
    property cfopservico: String read getCFOPServico write setCFOPServico;

    [NasajonSerializeAttribute('ibgemunicipio')]
    property ibgemunicipio: Integer read getIBGEMunicipio write setIBGEMunicipio;

    

end;

type TCFOPServicoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_CFOPServico: String;
    var m_Codigo: String;
    var m_IBGEMunicipio: Integer;
    var m_Descricao: String;
    var m_Discriminacao: String;
    var m_RetemPIS: Boolean;
    var m_RetemCOFINS: Boolean;
    var m_RetemCSLL: Boolean;
    var m_RetemIRRF: Boolean;
    var m_IbpTaxa: Currency;
    

    function getCFOPServico(): String;
    function getCodigo(): String;
    function getIBGEMunicipio(): Integer;
    function getDescricao(): String;
    function getDiscriminacao(): String;
    function getRetemPIS(): Boolean;
    function getRetemCOFINS(): Boolean;
    function getRetemCSLL(): Boolean;
    function getRetemIRRF(): Boolean;
    function getIbpTaxa(): Currency;
    

    procedure setCFOPServico(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setIBGEMunicipio(const a_Value: Integer);
    procedure setDescricao(const a_Value: String);
    procedure setDiscriminacao(const a_Value: String);
    procedure setRetemPIS(const a_Value: Boolean);
    procedure setRetemCOFINS(const a_Value: Boolean);
    procedure setRetemCSLL(const a_Value: Boolean);
    procedure setRetemIRRF(const a_Value: Boolean);
    procedure setIbpTaxa(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cfopservico')]
    property cfopservico: String read getCFOPServico write setCFOPServico;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('ibgemunicipio')]
    property ibgemunicipio: Integer read getIBGEMunicipio write setIBGEMunicipio;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('discriminacao')]
    property discriminacao: String read getDiscriminacao write setDiscriminacao;

    [NasajonSerializeAttribute('retempis')]
    property retempis: Boolean read getRetemPIS write setRetemPIS;

    [NasajonSerializeAttribute('retemcofins')]
    property retemcofins: Boolean read getRetemCOFINS write setRetemCOFINS;

    [NasajonSerializeAttribute('retemcsll')]
    property retemcsll: Boolean read getRetemCSLL write setRetemCSLL;

    [NasajonSerializeAttribute('retemirrf')]
    property retemirrf: Boolean read getRetemIRRF write setRetemIRRF;

    [NasajonSerializeAttribute('ibptaxa')]
    property ibptaxa: Currency read getIbpTaxa write setIbpTaxa;

    

end;

type TCFOPServicoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_CFOPServico: String;
    var m_IBGEMunicipio_Anterior: Integer;
    var m_Codigo: String;
    var m_IBGEMunicipio_Novo: Integer;
    var m_Descricao: String;
    var m_Discriminacao: String;
    var m_RetemPIS: Boolean;
    var m_RetemCOFINS: Boolean;
    var m_RetemCSLL: Boolean;
    var m_RetemIRRF: Boolean;
    var m_IbpTaxa: Currency;
    

    function getCFOPServico(): String;
    function getIBGEMunicipio_Anterior(): Integer;
    function getCodigo(): String;
    function getIBGEMunicipio_Novo(): Integer;
    function getDescricao(): String;
    function getDiscriminacao(): String;
    function getRetemPIS(): Boolean;
    function getRetemCOFINS(): Boolean;
    function getRetemCSLL(): Boolean;
    function getRetemIRRF(): Boolean;
    function getIbpTaxa(): Currency;
    

    procedure setCFOPServico(const a_Value: String);
    procedure setIBGEMunicipio_Anterior(const a_Value: Integer);
    procedure setCodigo(const a_Value: String);
    procedure setIBGEMunicipio_Novo(const a_Value: Integer);
    procedure setDescricao(const a_Value: String);
    procedure setDiscriminacao(const a_Value: String);
    procedure setRetemPIS(const a_Value: Boolean);
    procedure setRetemCOFINS(const a_Value: Boolean);
    procedure setRetemCSLL(const a_Value: Boolean);
    procedure setRetemIRRF(const a_Value: Boolean);
    procedure setIbpTaxa(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cfopservico')]
    property cfopservico: String read getCFOPServico write setCFOPServico;

    [NasajonSerializeAttribute('ibgemunicipio_anterior')]
    property ibgemunicipio_anterior: Integer read getIBGEMunicipio_Anterior write setIBGEMunicipio_Anterior;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('ibgemunicipio_novo')]
    property ibgemunicipio_novo: Integer read getIBGEMunicipio_Novo write setIBGEMunicipio_Novo;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('discriminacao')]
    property discriminacao: String read getDiscriminacao write setDiscriminacao;

    [NasajonSerializeAttribute('retempis')]
    property retempis: Boolean read getRetemPIS write setRetemPIS;

    [NasajonSerializeAttribute('retemcofins')]
    property retemcofins: Boolean read getRetemCOFINS write setRetemCOFINS;

    [NasajonSerializeAttribute('retemcsll')]
    property retemcsll: Boolean read getRetemCSLL write setRetemCSLL;

    [NasajonSerializeAttribute('retemirrf')]
    property retemirrf: Boolean read getRetemIRRF write setRetemIRRF;

    [NasajonSerializeAttribute('ibptaxa')]
    property ibptaxa: Currency read getIbpTaxa write setIbpTaxa;

    

end;

type TCFOPServicoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_CFOPServico: String;
    var m_IBGEMunicipio: Integer;
    

    function getCFOPServico(): String;
    function getIBGEMunicipio(): Integer;
    

    procedure setCFOPServico(const a_Value: String);
    procedure setIBGEMunicipio(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('cfopservico')]
    property cfopservico: String read getCFOPServico write setCFOPServico;

    [NasajonSerializeAttribute('ibgemunicipio')]
    property ibgemunicipio: Integer read getIBGEMunicipio write setIBGEMunicipio;

    

end;

	
implementation

  uses
      api.send;  

function TCFOPServico.getCFOPServico: String;
begin
  Result := Self.m_CFOPServico;
end;

procedure TCFOPServico.setCFOPServico(const a_Value: String);
begin
  Self.m_CFOPServico := a_Value;
end;

function TCFOPServico.getIBGEMunicipio: Integer;
begin
  Result := Self.m_IBGEMunicipio;
end;

procedure TCFOPServico.setIBGEMunicipio(const a_Value: Integer);
begin
  Self.m_IBGEMunicipio := a_Value;
end;

destructor TCFOPServico.Destroy;
begin

end;

function TCFOPServico.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCFOPServico.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCFOPServico.getNameAPI(): String;
begin
  Result := 'CFOPServico';
end;

function TCFOPServico.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCFOPServico.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCFOPServicoNovo.getCFOPServico: String;
begin
  Result := Self.m_CFOPServico;
end;

procedure TCFOPServicoNovo.setCFOPServico(const a_Value: String);
begin
  Self.m_CFOPServico := a_Value;
end;

function TCFOPServicoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TCFOPServicoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TCFOPServicoNovo.getIBGEMunicipio: Integer;
begin
  Result := Self.m_IBGEMunicipio;
end;

procedure TCFOPServicoNovo.setIBGEMunicipio(const a_Value: Integer);
begin
  Self.m_IBGEMunicipio := a_Value;
end;

function TCFOPServicoNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TCFOPServicoNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TCFOPServicoNovo.getDiscriminacao: String;
begin
  Result := Self.m_Discriminacao;
end;

procedure TCFOPServicoNovo.setDiscriminacao(const a_Value: String);
begin
  Self.m_Discriminacao := a_Value;
end;

function TCFOPServicoNovo.getRetemPIS: Boolean;
begin
  Result := Self.m_RetemPIS;
end;

procedure TCFOPServicoNovo.setRetemPIS(const a_Value: Boolean);
begin
  Self.m_RetemPIS := a_Value;
end;

function TCFOPServicoNovo.getRetemCOFINS: Boolean;
begin
  Result := Self.m_RetemCOFINS;
end;

procedure TCFOPServicoNovo.setRetemCOFINS(const a_Value: Boolean);
begin
  Self.m_RetemCOFINS := a_Value;
end;

function TCFOPServicoNovo.getRetemCSLL: Boolean;
begin
  Result := Self.m_RetemCSLL;
end;

procedure TCFOPServicoNovo.setRetemCSLL(const a_Value: Boolean);
begin
  Self.m_RetemCSLL := a_Value;
end;

function TCFOPServicoNovo.getRetemIRRF: Boolean;
begin
  Result := Self.m_RetemIRRF;
end;

procedure TCFOPServicoNovo.setRetemIRRF(const a_Value: Boolean);
begin
  Self.m_RetemIRRF := a_Value;
end;

function TCFOPServicoNovo.getIbpTaxa: Currency;
begin
  Result := Self.m_IbpTaxa;
end;

procedure TCFOPServicoNovo.setIbpTaxa(const a_Value: Currency);
begin
  Self.m_IbpTaxa := a_Value;
end;

destructor TCFOPServicoNovo.Destroy;
begin

end;

function TCFOPServicoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCFOPServicoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCFOPServicoNovo.getNameAPI(): String;
begin
  Result := 'CFOPServicoNovo';
end;

function TCFOPServicoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCFOPServicoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCFOPServicoAlterar.getCFOPServico: String;
begin
  Result := Self.m_CFOPServico;
end;

procedure TCFOPServicoAlterar.setCFOPServico(const a_Value: String);
begin
  Self.m_CFOPServico := a_Value;
end;

function TCFOPServicoAlterar.getIBGEMunicipio_Anterior: Integer;
begin
  Result := Self.m_IBGEMunicipio_Anterior;
end;

procedure TCFOPServicoAlterar.setIBGEMunicipio_Anterior(const a_Value: Integer);
begin
  Self.m_IBGEMunicipio_Anterior := a_Value;
end;

function TCFOPServicoAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TCFOPServicoAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TCFOPServicoAlterar.getIBGEMunicipio_Novo: Integer;
begin
  Result := Self.m_IBGEMunicipio_Novo;
end;

procedure TCFOPServicoAlterar.setIBGEMunicipio_Novo(const a_Value: Integer);
begin
  Self.m_IBGEMunicipio_Novo := a_Value;
end;

function TCFOPServicoAlterar.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TCFOPServicoAlterar.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TCFOPServicoAlterar.getDiscriminacao: String;
begin
  Result := Self.m_Discriminacao;
end;

procedure TCFOPServicoAlterar.setDiscriminacao(const a_Value: String);
begin
  Self.m_Discriminacao := a_Value;
end;

function TCFOPServicoAlterar.getRetemPIS: Boolean;
begin
  Result := Self.m_RetemPIS;
end;

procedure TCFOPServicoAlterar.setRetemPIS(const a_Value: Boolean);
begin
  Self.m_RetemPIS := a_Value;
end;

function TCFOPServicoAlterar.getRetemCOFINS: Boolean;
begin
  Result := Self.m_RetemCOFINS;
end;

procedure TCFOPServicoAlterar.setRetemCOFINS(const a_Value: Boolean);
begin
  Self.m_RetemCOFINS := a_Value;
end;

function TCFOPServicoAlterar.getRetemCSLL: Boolean;
begin
  Result := Self.m_RetemCSLL;
end;

procedure TCFOPServicoAlterar.setRetemCSLL(const a_Value: Boolean);
begin
  Self.m_RetemCSLL := a_Value;
end;

function TCFOPServicoAlterar.getRetemIRRF: Boolean;
begin
  Result := Self.m_RetemIRRF;
end;

procedure TCFOPServicoAlterar.setRetemIRRF(const a_Value: Boolean);
begin
  Self.m_RetemIRRF := a_Value;
end;

function TCFOPServicoAlterar.getIbpTaxa: Currency;
begin
  Result := Self.m_IbpTaxa;
end;

procedure TCFOPServicoAlterar.setIbpTaxa(const a_Value: Currency);
begin
  Self.m_IbpTaxa := a_Value;
end;

destructor TCFOPServicoAlterar.Destroy;
begin

end;

function TCFOPServicoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCFOPServicoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCFOPServicoAlterar.getNameAPI(): String;
begin
  Result := 'CFOPServicoAlterar';
end;

function TCFOPServicoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCFOPServicoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TCFOPServicoExcluir.getCFOPServico: String;
begin
  Result := Self.m_CFOPServico;
end;

procedure TCFOPServicoExcluir.setCFOPServico(const a_Value: String);
begin
  Self.m_CFOPServico := a_Value;
end;

function TCFOPServicoExcluir.getIBGEMunicipio: Integer;
begin
  Result := Self.m_IBGEMunicipio;
end;

procedure TCFOPServicoExcluir.setIBGEMunicipio(const a_Value: Integer);
begin
  Self.m_IBGEMunicipio := a_Value;
end;

destructor TCFOPServicoExcluir.Destroy;
begin

end;

function TCFOPServicoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TCFOPServicoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TCFOPServicoExcluir.getNameAPI(): String;
begin
  Result := 'CFOPServicoExcluir';
end;

function TCFOPServicoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TCFOPServicoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
