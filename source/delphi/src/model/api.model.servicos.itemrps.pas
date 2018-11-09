unit api.model.servicos.ItemRPS;

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

type TItemRPSNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id_RPS: String;
    var m_CodigoServico: String;
    var m_Quantidade: Currency;
    var m_ValorUnitario: Currency;
    var m_Descricao: String;
    var m_BaseISS: Currency;
    var m_ValorISS: Currency;
    var m_BaseIRRf: Currency;
    var m_ValorIRRF: Currency;
    var m_BaseINSS: Currency;
    var m_ValorINSS: Currency;
    var m_BasePIS: Currency;
    var m_ValorPIS: Currency;
    var m_BaseCOFINS: Currency;
    var m_ValorCOFINS: Currency;
    var m_BaseCSLL: Currency;
    var m_ValorCSLL: Currency;
    var m_RetemISS: Boolean;
    var m_RetemIRRF: Boolean;
    var m_RetemINSS: Boolean;
    var m_RetemPIS: Boolean;
    var m_RetemCOFINS: Boolean;
    var m_RetemCSLL: Boolean;
    var m_Contrato_ID: String;
    var m_ItemContrato_ID: String;
    var m_ProcessamentoContrato_ID: String;
    var m_Pessoa_ID: String;
    var m_id_origem: String;
    var m_desconto: Currency;
    var m_Tipo: Integer;
    var m_valor_total: Currency;
    var m_item_faturamento_id: String;
    

    function getId_RPS(): String;
    function getCodigoServico(): String;
    function getQuantidade(): Currency;
    function getValorUnitario(): Currency;
    function getDescricao(): String;
    function getBaseISS(): Currency;
    function getValorISS(): Currency;
    function getBaseIRRf(): Currency;
    function getValorIRRF(): Currency;
    function getBaseINSS(): Currency;
    function getValorINSS(): Currency;
    function getBasePIS(): Currency;
    function getValorPIS(): Currency;
    function getBaseCOFINS(): Currency;
    function getValorCOFINS(): Currency;
    function getBaseCSLL(): Currency;
    function getValorCSLL(): Currency;
    function getRetemISS(): Boolean;
    function getRetemIRRF(): Boolean;
    function getRetemINSS(): Boolean;
    function getRetemPIS(): Boolean;
    function getRetemCOFINS(): Boolean;
    function getRetemCSLL(): Boolean;
    function getContrato_ID(): String;
    function getItemContrato_ID(): String;
    function getProcessamentoContrato_ID(): String;
    function getPessoa_ID(): String;
    function getid_origem(): String;
    function getdesconto(): Currency;
    function getTipo(): Integer;
    function getvalor_total(): Currency;
    function getitem_faturamento_id(): String;
    

    procedure setId_RPS(const a_Value: String);
    procedure setCodigoServico(const a_Value: String);
    procedure setQuantidade(const a_Value: Currency);
    procedure setValorUnitario(const a_Value: Currency);
    procedure setDescricao(const a_Value: String);
    procedure setBaseISS(const a_Value: Currency);
    procedure setValorISS(const a_Value: Currency);
    procedure setBaseIRRf(const a_Value: Currency);
    procedure setValorIRRF(const a_Value: Currency);
    procedure setBaseINSS(const a_Value: Currency);
    procedure setValorINSS(const a_Value: Currency);
    procedure setBasePIS(const a_Value: Currency);
    procedure setValorPIS(const a_Value: Currency);
    procedure setBaseCOFINS(const a_Value: Currency);
    procedure setValorCOFINS(const a_Value: Currency);
    procedure setBaseCSLL(const a_Value: Currency);
    procedure setValorCSLL(const a_Value: Currency);
    procedure setRetemISS(const a_Value: Boolean);
    procedure setRetemIRRF(const a_Value: Boolean);
    procedure setRetemINSS(const a_Value: Boolean);
    procedure setRetemPIS(const a_Value: Boolean);
    procedure setRetemCOFINS(const a_Value: Boolean);
    procedure setRetemCSLL(const a_Value: Boolean);
    procedure setContrato_ID(const a_Value: String);
    procedure setItemContrato_ID(const a_Value: String);
    procedure setProcessamentoContrato_ID(const a_Value: String);
    procedure setPessoa_ID(const a_Value: String);
    procedure setid_origem(const a_Value: String);
    procedure setdesconto(const a_Value: Currency);
    procedure setTipo(const a_Value: Integer);
    procedure setvalor_total(const a_Value: Currency);
    procedure setitem_faturamento_id(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id_rps')]
    property id_rps: String read getId_RPS write setId_RPS;

    [NasajonSerializeAttribute('codigoservico')]
    property codigoservico: String read getCodigoServico write setCodigoServico;

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Currency read getQuantidade write setQuantidade;

    [NasajonSerializeAttribute('valorunitario')]
    property valorunitario: Currency read getValorUnitario write setValorUnitario;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    [NasajonSerializeAttribute('baseiss')]
    property baseiss: Currency read getBaseISS write setBaseISS;

    [NasajonSerializeAttribute('valoriss')]
    property valoriss: Currency read getValorISS write setValorISS;

    [NasajonSerializeAttribute('baseirrf')]
    property baseirrf: Currency read getBaseIRRf write setBaseIRRf;

    [NasajonSerializeAttribute('valorirrf')]
    property valorirrf: Currency read getValorIRRF write setValorIRRF;

    [NasajonSerializeAttribute('baseinss')]
    property baseinss: Currency read getBaseINSS write setBaseINSS;

    [NasajonSerializeAttribute('valorinss')]
    property valorinss: Currency read getValorINSS write setValorINSS;

    [NasajonSerializeAttribute('basepis')]
    property basepis: Currency read getBasePIS write setBasePIS;

    [NasajonSerializeAttribute('valorpis')]
    property valorpis: Currency read getValorPIS write setValorPIS;

    [NasajonSerializeAttribute('basecofins')]
    property basecofins: Currency read getBaseCOFINS write setBaseCOFINS;

    [NasajonSerializeAttribute('valorcofins')]
    property valorcofins: Currency read getValorCOFINS write setValorCOFINS;

    [NasajonSerializeAttribute('basecsll')]
    property basecsll: Currency read getBaseCSLL write setBaseCSLL;

    [NasajonSerializeAttribute('valorcsll')]
    property valorcsll: Currency read getValorCSLL write setValorCSLL;

    [NasajonSerializeAttribute('retemiss')]
    property retemiss: Boolean read getRetemISS write setRetemISS;

    [NasajonSerializeAttribute('retemirrf')]
    property retemirrf: Boolean read getRetemIRRF write setRetemIRRF;

    [NasajonSerializeAttribute('reteminss')]
    property reteminss: Boolean read getRetemINSS write setRetemINSS;

    [NasajonSerializeAttribute('retempis')]
    property retempis: Boolean read getRetemPIS write setRetemPIS;

    [NasajonSerializeAttribute('retemcofins')]
    property retemcofins: Boolean read getRetemCOFINS write setRetemCOFINS;

    [NasajonSerializeAttribute('retemcsll')]
    property retemcsll: Boolean read getRetemCSLL write setRetemCSLL;

    [NasajonSerializeAttribute('contrato_id')]
    property contrato_id: String read getContrato_ID write setContrato_ID;

    [NasajonSerializeAttribute('itemcontrato_id')]
    property itemcontrato_id: String read getItemContrato_ID write setItemContrato_ID;

    [NasajonSerializeAttribute('processamentocontrato_id')]
    property processamentocontrato_id: String read getProcessamentoContrato_ID write setProcessamentoContrato_ID;

    [NasajonSerializeAttribute('pessoa_id')]
    property pessoa_id: String read getPessoa_ID write setPessoa_ID;

    [NasajonSerializeAttribute('id_origem')]
    property id_origem: String read getid_origem write setid_origem;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getdesconto write setdesconto;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('valor_total')]
    property valor_total: Currency read getvalor_total write setvalor_total;

    [NasajonSerializeAttribute('item_faturamento_id')]
    property item_faturamento_id: String read getitem_faturamento_id write setitem_faturamento_id;

    

end;

	
implementation

  uses
      api.send;  

function TItemRPSNovo.getId_RPS: String;
begin
  Result := Self.m_Id_RPS;
end;

procedure TItemRPSNovo.setId_RPS(const a_Value: String);
begin
  Self.m_Id_RPS := a_Value;
end;

function TItemRPSNovo.getCodigoServico: String;
begin
  Result := Self.m_CodigoServico;
end;

procedure TItemRPSNovo.setCodigoServico(const a_Value: String);
begin
  Self.m_CodigoServico := a_Value;
end;

function TItemRPSNovo.getQuantidade: Currency;
begin
  Result := Self.m_Quantidade;
end;

procedure TItemRPSNovo.setQuantidade(const a_Value: Currency);
begin
  Self.m_Quantidade := a_Value;
end;

function TItemRPSNovo.getValorUnitario: Currency;
begin
  Result := Self.m_ValorUnitario;
end;

procedure TItemRPSNovo.setValorUnitario(const a_Value: Currency);
begin
  Self.m_ValorUnitario := a_Value;
end;

function TItemRPSNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TItemRPSNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TItemRPSNovo.getBaseISS: Currency;
begin
  Result := Self.m_BaseISS;
end;

procedure TItemRPSNovo.setBaseISS(const a_Value: Currency);
begin
  Self.m_BaseISS := a_Value;
end;

function TItemRPSNovo.getValorISS: Currency;
begin
  Result := Self.m_ValorISS;
end;

procedure TItemRPSNovo.setValorISS(const a_Value: Currency);
begin
  Self.m_ValorISS := a_Value;
end;

function TItemRPSNovo.getBaseIRRf: Currency;
begin
  Result := Self.m_BaseIRRf;
end;

procedure TItemRPSNovo.setBaseIRRf(const a_Value: Currency);
begin
  Self.m_BaseIRRf := a_Value;
end;

function TItemRPSNovo.getValorIRRF: Currency;
begin
  Result := Self.m_ValorIRRF;
end;

procedure TItemRPSNovo.setValorIRRF(const a_Value: Currency);
begin
  Self.m_ValorIRRF := a_Value;
end;

function TItemRPSNovo.getBaseINSS: Currency;
begin
  Result := Self.m_BaseINSS;
end;

procedure TItemRPSNovo.setBaseINSS(const a_Value: Currency);
begin
  Self.m_BaseINSS := a_Value;
end;

function TItemRPSNovo.getValorINSS: Currency;
begin
  Result := Self.m_ValorINSS;
end;

procedure TItemRPSNovo.setValorINSS(const a_Value: Currency);
begin
  Self.m_ValorINSS := a_Value;
end;

function TItemRPSNovo.getBasePIS: Currency;
begin
  Result := Self.m_BasePIS;
end;

procedure TItemRPSNovo.setBasePIS(const a_Value: Currency);
begin
  Self.m_BasePIS := a_Value;
end;

function TItemRPSNovo.getValorPIS: Currency;
begin
  Result := Self.m_ValorPIS;
end;

procedure TItemRPSNovo.setValorPIS(const a_Value: Currency);
begin
  Self.m_ValorPIS := a_Value;
end;

function TItemRPSNovo.getBaseCOFINS: Currency;
begin
  Result := Self.m_BaseCOFINS;
end;

procedure TItemRPSNovo.setBaseCOFINS(const a_Value: Currency);
begin
  Self.m_BaseCOFINS := a_Value;
end;

function TItemRPSNovo.getValorCOFINS: Currency;
begin
  Result := Self.m_ValorCOFINS;
end;

procedure TItemRPSNovo.setValorCOFINS(const a_Value: Currency);
begin
  Self.m_ValorCOFINS := a_Value;
end;

function TItemRPSNovo.getBaseCSLL: Currency;
begin
  Result := Self.m_BaseCSLL;
end;

procedure TItemRPSNovo.setBaseCSLL(const a_Value: Currency);
begin
  Self.m_BaseCSLL := a_Value;
end;

function TItemRPSNovo.getValorCSLL: Currency;
begin
  Result := Self.m_ValorCSLL;
end;

procedure TItemRPSNovo.setValorCSLL(const a_Value: Currency);
begin
  Self.m_ValorCSLL := a_Value;
end;

function TItemRPSNovo.getRetemISS: Boolean;
begin
  Result := Self.m_RetemISS;
end;

procedure TItemRPSNovo.setRetemISS(const a_Value: Boolean);
begin
  Self.m_RetemISS := a_Value;
end;

function TItemRPSNovo.getRetemIRRF: Boolean;
begin
  Result := Self.m_RetemIRRF;
end;

procedure TItemRPSNovo.setRetemIRRF(const a_Value: Boolean);
begin
  Self.m_RetemIRRF := a_Value;
end;

function TItemRPSNovo.getRetemINSS: Boolean;
begin
  Result := Self.m_RetemINSS;
end;

procedure TItemRPSNovo.setRetemINSS(const a_Value: Boolean);
begin
  Self.m_RetemINSS := a_Value;
end;

function TItemRPSNovo.getRetemPIS: Boolean;
begin
  Result := Self.m_RetemPIS;
end;

procedure TItemRPSNovo.setRetemPIS(const a_Value: Boolean);
begin
  Self.m_RetemPIS := a_Value;
end;

function TItemRPSNovo.getRetemCOFINS: Boolean;
begin
  Result := Self.m_RetemCOFINS;
end;

procedure TItemRPSNovo.setRetemCOFINS(const a_Value: Boolean);
begin
  Self.m_RetemCOFINS := a_Value;
end;

function TItemRPSNovo.getRetemCSLL: Boolean;
begin
  Result := Self.m_RetemCSLL;
end;

procedure TItemRPSNovo.setRetemCSLL(const a_Value: Boolean);
begin
  Self.m_RetemCSLL := a_Value;
end;

function TItemRPSNovo.getContrato_ID: String;
begin
  Result := Self.m_Contrato_ID;
end;

procedure TItemRPSNovo.setContrato_ID(const a_Value: String);
begin
  Self.m_Contrato_ID := a_Value;
end;

function TItemRPSNovo.getItemContrato_ID: String;
begin
  Result := Self.m_ItemContrato_ID;
end;

procedure TItemRPSNovo.setItemContrato_ID(const a_Value: String);
begin
  Self.m_ItemContrato_ID := a_Value;
end;

function TItemRPSNovo.getProcessamentoContrato_ID: String;
begin
  Result := Self.m_ProcessamentoContrato_ID;
end;

procedure TItemRPSNovo.setProcessamentoContrato_ID(const a_Value: String);
begin
  Self.m_ProcessamentoContrato_ID := a_Value;
end;

function TItemRPSNovo.getPessoa_ID: String;
begin
  Result := Self.m_Pessoa_ID;
end;

procedure TItemRPSNovo.setPessoa_ID(const a_Value: String);
begin
  Self.m_Pessoa_ID := a_Value;
end;

function TItemRPSNovo.getid_origem: String;
begin
  Result := Self.m_id_origem;
end;

procedure TItemRPSNovo.setid_origem(const a_Value: String);
begin
  Self.m_id_origem := a_Value;
end;

function TItemRPSNovo.getdesconto: Currency;
begin
  Result := Self.m_desconto;
end;

procedure TItemRPSNovo.setdesconto(const a_Value: Currency);
begin
  Self.m_desconto := a_Value;
end;

function TItemRPSNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TItemRPSNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TItemRPSNovo.getvalor_total: Currency;
begin
  Result := Self.m_valor_total;
end;

procedure TItemRPSNovo.setvalor_total(const a_Value: Currency);
begin
  Self.m_valor_total := a_Value;
end;

function TItemRPSNovo.getitem_faturamento_id: String;
begin
  Result := Self.m_item_faturamento_id;
end;

procedure TItemRPSNovo.setitem_faturamento_id(const a_Value: String);
begin
  Self.m_item_faturamento_id := a_Value;
end;

destructor TItemRPSNovo.Destroy;
begin

end;

function TItemRPSNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemRPSNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemRPSNovo.getNameAPI(): String;
begin
  Result := 'ItemRPSNovo';
end;

function TItemRPSNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemRPSNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
