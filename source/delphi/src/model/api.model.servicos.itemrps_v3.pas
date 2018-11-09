unit api.model.servicos.itemrps_v3;

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

type Titemrps_v3 = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_crud: Integer;
    var m_id: String;
    var m_id_rps: String;
    var m_item_faturamento: String;
    var m_quantidade: Currency;
    var m_valor_unitario: Currency;
    var m_desconto: Currency;
    var m_valor_total: Currency;
    var m_descricao: String;
    var m_retem_iss: Boolean;
    var m_retem_ir: Boolean;
    var m_retem_inss: Boolean;
    var m_retem_pis: Boolean;
    var m_retem_cofins: Boolean;
    var m_retem_csll: Boolean;
    var m_percentual_base_iss: Currency;
    var m_base_iss: Currency;
    var m_valor_iss: Currency;
    var m_base_ir: Currency;
    var m_aliquota_ir: Currency;
    var m_valor_ir: Currency;
    var m_percentual_base_inss: Currency;
    var m_base_inss: Currency;
    var m_aliquota_inss: Currency;
    var m_valor_inss: Currency;
    var m_base_pis: Currency;
    var m_aliquota_pis: Currency;
    var m_valor_pis: Currency;
    var m_base_cofins: Currency;
    var m_aliquota_cofins: Currency;
    var m_valor_cofins: Currency;
    var m_base_csll: Currency;
    var m_aliquota_csll: Currency;
    var m_valor_csll: Currency;
    var m_contrato: String;
    var m_item_contrato: String;
    var m_processamento_cobranca: String;
    var m_titulo: String;
    var m_ordem: Integer;
    var m_id_origem: String;
    

    function getcrud(): Integer;
    function getid(): String;
    function getid_rps(): String;
    function getitem_faturamento(): String;
    function getquantidade(): Currency;
    function getvalor_unitario(): Currency;
    function getdesconto(): Currency;
    function getvalor_total(): Currency;
    function getdescricao(): String;
    function getretem_iss(): Boolean;
    function getretem_ir(): Boolean;
    function getretem_inss(): Boolean;
    function getretem_pis(): Boolean;
    function getretem_cofins(): Boolean;
    function getretem_csll(): Boolean;
    function getpercentual_base_iss(): Currency;
    function getbase_iss(): Currency;
    function getvalor_iss(): Currency;
    function getbase_ir(): Currency;
    function getaliquota_ir(): Currency;
    function getvalor_ir(): Currency;
    function getpercentual_base_inss(): Currency;
    function getbase_inss(): Currency;
    function getaliquota_inss(): Currency;
    function getvalor_inss(): Currency;
    function getbase_pis(): Currency;
    function getaliquota_pis(): Currency;
    function getvalor_pis(): Currency;
    function getbase_cofins(): Currency;
    function getaliquota_cofins(): Currency;
    function getvalor_cofins(): Currency;
    function getbase_csll(): Currency;
    function getaliquota_csll(): Currency;
    function getvalor_csll(): Currency;
    function getcontrato(): String;
    function getitem_contrato(): String;
    function getprocessamento_cobranca(): String;
    function gettitulo(): String;
    function getordem(): Integer;
    function getid_origem(): String;
    

    procedure setcrud(const a_Value: Integer);
    procedure setid(const a_Value: String);
    procedure setid_rps(const a_Value: String);
    procedure setitem_faturamento(const a_Value: String);
    procedure setquantidade(const a_Value: Currency);
    procedure setvalor_unitario(const a_Value: Currency);
    procedure setdesconto(const a_Value: Currency);
    procedure setvalor_total(const a_Value: Currency);
    procedure setdescricao(const a_Value: String);
    procedure setretem_iss(const a_Value: Boolean);
    procedure setretem_ir(const a_Value: Boolean);
    procedure setretem_inss(const a_Value: Boolean);
    procedure setretem_pis(const a_Value: Boolean);
    procedure setretem_cofins(const a_Value: Boolean);
    procedure setretem_csll(const a_Value: Boolean);
    procedure setpercentual_base_iss(const a_Value: Currency);
    procedure setbase_iss(const a_Value: Currency);
    procedure setvalor_iss(const a_Value: Currency);
    procedure setbase_ir(const a_Value: Currency);
    procedure setaliquota_ir(const a_Value: Currency);
    procedure setvalor_ir(const a_Value: Currency);
    procedure setpercentual_base_inss(const a_Value: Currency);
    procedure setbase_inss(const a_Value: Currency);
    procedure setaliquota_inss(const a_Value: Currency);
    procedure setvalor_inss(const a_Value: Currency);
    procedure setbase_pis(const a_Value: Currency);
    procedure setaliquota_pis(const a_Value: Currency);
    procedure setvalor_pis(const a_Value: Currency);
    procedure setbase_cofins(const a_Value: Currency);
    procedure setaliquota_cofins(const a_Value: Currency);
    procedure setvalor_cofins(const a_Value: Currency);
    procedure setbase_csll(const a_Value: Currency);
    procedure setaliquota_csll(const a_Value: Currency);
    procedure setvalor_csll(const a_Value: Currency);
    procedure setcontrato(const a_Value: String);
    procedure setitem_contrato(const a_Value: String);
    procedure setprocessamento_cobranca(const a_Value: String);
    procedure settitulo(const a_Value: String);
    procedure setordem(const a_Value: Integer);
    procedure setid_origem(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Indica a acao a ser realizada no item
///                         0 - NaoFazerNada,
///                         1 - Inserir,
///                         2 - Excluir,
///                         3 - Alterar
    /// </summary>
    [NasajonSerializeAttribute('crud')]
    property crud: Integer read getcrud write setcrud;

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('id_rps')]
    property id_rps: String read getid_rps write setid_rps;

    [NasajonSerializeAttribute('item_faturamento')]
    property item_faturamento: String read getitem_faturamento write setitem_faturamento;

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Currency read getquantidade write setquantidade;

    [NasajonSerializeAttribute('valor_unitario')]
    property valor_unitario: Currency read getvalor_unitario write setvalor_unitario;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getdesconto write setdesconto;

    [NasajonSerializeAttribute('valor_total')]
    property valor_total: Currency read getvalor_total write setvalor_total;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    [NasajonSerializeAttribute('retem_iss')]
    property retem_iss: Boolean read getretem_iss write setretem_iss;

    [NasajonSerializeAttribute('retem_ir')]
    property retem_ir: Boolean read getretem_ir write setretem_ir;

    [NasajonSerializeAttribute('retem_inss')]
    property retem_inss: Boolean read getretem_inss write setretem_inss;

    [NasajonSerializeAttribute('retem_pis')]
    property retem_pis: Boolean read getretem_pis write setretem_pis;

    [NasajonSerializeAttribute('retem_cofins')]
    property retem_cofins: Boolean read getretem_cofins write setretem_cofins;

    [NasajonSerializeAttribute('retem_csll')]
    property retem_csll: Boolean read getretem_csll write setretem_csll;

    [NasajonSerializeAttribute('percentual_base_iss')]
    property percentual_base_iss: Currency read getpercentual_base_iss write setpercentual_base_iss;

    [NasajonSerializeAttribute('base_iss')]
    property base_iss: Currency read getbase_iss write setbase_iss;

    [NasajonSerializeAttribute('valor_iss')]
    property valor_iss: Currency read getvalor_iss write setvalor_iss;

    [NasajonSerializeAttribute('base_ir')]
    property base_ir: Currency read getbase_ir write setbase_ir;

    [NasajonSerializeAttribute('aliquota_ir')]
    property aliquota_ir: Currency read getaliquota_ir write setaliquota_ir;

    [NasajonSerializeAttribute('valor_ir')]
    property valor_ir: Currency read getvalor_ir write setvalor_ir;

    [NasajonSerializeAttribute('percentual_base_inss')]
    property percentual_base_inss: Currency read getpercentual_base_inss write setpercentual_base_inss;

    [NasajonSerializeAttribute('base_inss')]
    property base_inss: Currency read getbase_inss write setbase_inss;

    [NasajonSerializeAttribute('aliquota_inss')]
    property aliquota_inss: Currency read getaliquota_inss write setaliquota_inss;

    [NasajonSerializeAttribute('valor_inss')]
    property valor_inss: Currency read getvalor_inss write setvalor_inss;

    [NasajonSerializeAttribute('base_pis')]
    property base_pis: Currency read getbase_pis write setbase_pis;

    [NasajonSerializeAttribute('aliquota_pis')]
    property aliquota_pis: Currency read getaliquota_pis write setaliquota_pis;

    [NasajonSerializeAttribute('valor_pis')]
    property valor_pis: Currency read getvalor_pis write setvalor_pis;

    [NasajonSerializeAttribute('base_cofins')]
    property base_cofins: Currency read getbase_cofins write setbase_cofins;

    [NasajonSerializeAttribute('aliquota_cofins')]
    property aliquota_cofins: Currency read getaliquota_cofins write setaliquota_cofins;

    [NasajonSerializeAttribute('valor_cofins')]
    property valor_cofins: Currency read getvalor_cofins write setvalor_cofins;

    [NasajonSerializeAttribute('base_csll')]
    property base_csll: Currency read getbase_csll write setbase_csll;

    [NasajonSerializeAttribute('aliquota_csll')]
    property aliquota_csll: Currency read getaliquota_csll write setaliquota_csll;

    [NasajonSerializeAttribute('valor_csll')]
    property valor_csll: Currency read getvalor_csll write setvalor_csll;

    [NasajonSerializeAttribute('contrato')]
    property contrato: String read getcontrato write setcontrato;

    [NasajonSerializeAttribute('item_contrato')]
    property item_contrato: String read getitem_contrato write setitem_contrato;

    [NasajonSerializeAttribute('processamento_cobranca')]
    property processamento_cobranca: String read getprocessamento_cobranca write setprocessamento_cobranca;

    [NasajonSerializeAttribute('titulo')]
    property titulo: String read gettitulo write settitulo;

    [NasajonSerializeAttribute('ordem')]
    property ordem: Integer read getordem write setordem;

    [NasajonSerializeAttribute('id_origem')]
    property id_origem: String read getid_origem write setid_origem;

    

end;

	
implementation

  uses
      api.send;  

function Titemrps_v3.getcrud: Integer;
begin
  Result := Self.m_crud;
end;

procedure Titemrps_v3.setcrud(const a_Value: Integer);
begin
  Self.m_crud := a_Value;
end;

function Titemrps_v3.getid: String;
begin
  Result := Self.m_id;
end;

procedure Titemrps_v3.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function Titemrps_v3.getid_rps: String;
begin
  Result := Self.m_id_rps;
end;

procedure Titemrps_v3.setid_rps(const a_Value: String);
begin
  Self.m_id_rps := a_Value;
end;

function Titemrps_v3.getitem_faturamento: String;
begin
  Result := Self.m_item_faturamento;
end;

procedure Titemrps_v3.setitem_faturamento(const a_Value: String);
begin
  Self.m_item_faturamento := a_Value;
end;

function Titemrps_v3.getquantidade: Currency;
begin
  Result := Self.m_quantidade;
end;

procedure Titemrps_v3.setquantidade(const a_Value: Currency);
begin
  Self.m_quantidade := a_Value;
end;

function Titemrps_v3.getvalor_unitario: Currency;
begin
  Result := Self.m_valor_unitario;
end;

procedure Titemrps_v3.setvalor_unitario(const a_Value: Currency);
begin
  Self.m_valor_unitario := a_Value;
end;

function Titemrps_v3.getdesconto: Currency;
begin
  Result := Self.m_desconto;
end;

procedure Titemrps_v3.setdesconto(const a_Value: Currency);
begin
  Self.m_desconto := a_Value;
end;

function Titemrps_v3.getvalor_total: Currency;
begin
  Result := Self.m_valor_total;
end;

procedure Titemrps_v3.setvalor_total(const a_Value: Currency);
begin
  Self.m_valor_total := a_Value;
end;

function Titemrps_v3.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure Titemrps_v3.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function Titemrps_v3.getretem_iss: Boolean;
begin
  Result := Self.m_retem_iss;
end;

procedure Titemrps_v3.setretem_iss(const a_Value: Boolean);
begin
  Self.m_retem_iss := a_Value;
end;

function Titemrps_v3.getretem_ir: Boolean;
begin
  Result := Self.m_retem_ir;
end;

procedure Titemrps_v3.setretem_ir(const a_Value: Boolean);
begin
  Self.m_retem_ir := a_Value;
end;

function Titemrps_v3.getretem_inss: Boolean;
begin
  Result := Self.m_retem_inss;
end;

procedure Titemrps_v3.setretem_inss(const a_Value: Boolean);
begin
  Self.m_retem_inss := a_Value;
end;

function Titemrps_v3.getretem_pis: Boolean;
begin
  Result := Self.m_retem_pis;
end;

procedure Titemrps_v3.setretem_pis(const a_Value: Boolean);
begin
  Self.m_retem_pis := a_Value;
end;

function Titemrps_v3.getretem_cofins: Boolean;
begin
  Result := Self.m_retem_cofins;
end;

procedure Titemrps_v3.setretem_cofins(const a_Value: Boolean);
begin
  Self.m_retem_cofins := a_Value;
end;

function Titemrps_v3.getretem_csll: Boolean;
begin
  Result := Self.m_retem_csll;
end;

procedure Titemrps_v3.setretem_csll(const a_Value: Boolean);
begin
  Self.m_retem_csll := a_Value;
end;

function Titemrps_v3.getpercentual_base_iss: Currency;
begin
  Result := Self.m_percentual_base_iss;
end;

procedure Titemrps_v3.setpercentual_base_iss(const a_Value: Currency);
begin
  Self.m_percentual_base_iss := a_Value;
end;

function Titemrps_v3.getbase_iss: Currency;
begin
  Result := Self.m_base_iss;
end;

procedure Titemrps_v3.setbase_iss(const a_Value: Currency);
begin
  Self.m_base_iss := a_Value;
end;

function Titemrps_v3.getvalor_iss: Currency;
begin
  Result := Self.m_valor_iss;
end;

procedure Titemrps_v3.setvalor_iss(const a_Value: Currency);
begin
  Self.m_valor_iss := a_Value;
end;

function Titemrps_v3.getbase_ir: Currency;
begin
  Result := Self.m_base_ir;
end;

procedure Titemrps_v3.setbase_ir(const a_Value: Currency);
begin
  Self.m_base_ir := a_Value;
end;

function Titemrps_v3.getaliquota_ir: Currency;
begin
  Result := Self.m_aliquota_ir;
end;

procedure Titemrps_v3.setaliquota_ir(const a_Value: Currency);
begin
  Self.m_aliquota_ir := a_Value;
end;

function Titemrps_v3.getvalor_ir: Currency;
begin
  Result := Self.m_valor_ir;
end;

procedure Titemrps_v3.setvalor_ir(const a_Value: Currency);
begin
  Self.m_valor_ir := a_Value;
end;

function Titemrps_v3.getpercentual_base_inss: Currency;
begin
  Result := Self.m_percentual_base_inss;
end;

procedure Titemrps_v3.setpercentual_base_inss(const a_Value: Currency);
begin
  Self.m_percentual_base_inss := a_Value;
end;

function Titemrps_v3.getbase_inss: Currency;
begin
  Result := Self.m_base_inss;
end;

procedure Titemrps_v3.setbase_inss(const a_Value: Currency);
begin
  Self.m_base_inss := a_Value;
end;

function Titemrps_v3.getaliquota_inss: Currency;
begin
  Result := Self.m_aliquota_inss;
end;

procedure Titemrps_v3.setaliquota_inss(const a_Value: Currency);
begin
  Self.m_aliquota_inss := a_Value;
end;

function Titemrps_v3.getvalor_inss: Currency;
begin
  Result := Self.m_valor_inss;
end;

procedure Titemrps_v3.setvalor_inss(const a_Value: Currency);
begin
  Self.m_valor_inss := a_Value;
end;

function Titemrps_v3.getbase_pis: Currency;
begin
  Result := Self.m_base_pis;
end;

procedure Titemrps_v3.setbase_pis(const a_Value: Currency);
begin
  Self.m_base_pis := a_Value;
end;

function Titemrps_v3.getaliquota_pis: Currency;
begin
  Result := Self.m_aliquota_pis;
end;

procedure Titemrps_v3.setaliquota_pis(const a_Value: Currency);
begin
  Self.m_aliquota_pis := a_Value;
end;

function Titemrps_v3.getvalor_pis: Currency;
begin
  Result := Self.m_valor_pis;
end;

procedure Titemrps_v3.setvalor_pis(const a_Value: Currency);
begin
  Self.m_valor_pis := a_Value;
end;

function Titemrps_v3.getbase_cofins: Currency;
begin
  Result := Self.m_base_cofins;
end;

procedure Titemrps_v3.setbase_cofins(const a_Value: Currency);
begin
  Self.m_base_cofins := a_Value;
end;

function Titemrps_v3.getaliquota_cofins: Currency;
begin
  Result := Self.m_aliquota_cofins;
end;

procedure Titemrps_v3.setaliquota_cofins(const a_Value: Currency);
begin
  Self.m_aliquota_cofins := a_Value;
end;

function Titemrps_v3.getvalor_cofins: Currency;
begin
  Result := Self.m_valor_cofins;
end;

procedure Titemrps_v3.setvalor_cofins(const a_Value: Currency);
begin
  Self.m_valor_cofins := a_Value;
end;

function Titemrps_v3.getbase_csll: Currency;
begin
  Result := Self.m_base_csll;
end;

procedure Titemrps_v3.setbase_csll(const a_Value: Currency);
begin
  Self.m_base_csll := a_Value;
end;

function Titemrps_v3.getaliquota_csll: Currency;
begin
  Result := Self.m_aliquota_csll;
end;

procedure Titemrps_v3.setaliquota_csll(const a_Value: Currency);
begin
  Self.m_aliquota_csll := a_Value;
end;

function Titemrps_v3.getvalor_csll: Currency;
begin
  Result := Self.m_valor_csll;
end;

procedure Titemrps_v3.setvalor_csll(const a_Value: Currency);
begin
  Self.m_valor_csll := a_Value;
end;

function Titemrps_v3.getcontrato: String;
begin
  Result := Self.m_contrato;
end;

procedure Titemrps_v3.setcontrato(const a_Value: String);
begin
  Self.m_contrato := a_Value;
end;

function Titemrps_v3.getitem_contrato: String;
begin
  Result := Self.m_item_contrato;
end;

procedure Titemrps_v3.setitem_contrato(const a_Value: String);
begin
  Self.m_item_contrato := a_Value;
end;

function Titemrps_v3.getprocessamento_cobranca: String;
begin
  Result := Self.m_processamento_cobranca;
end;

procedure Titemrps_v3.setprocessamento_cobranca(const a_Value: String);
begin
  Self.m_processamento_cobranca := a_Value;
end;

function Titemrps_v3.gettitulo: String;
begin
  Result := Self.m_titulo;
end;

procedure Titemrps_v3.settitulo(const a_Value: String);
begin
  Self.m_titulo := a_Value;
end;

function Titemrps_v3.getordem: Integer;
begin
  Result := Self.m_ordem;
end;

procedure Titemrps_v3.setordem(const a_Value: Integer);
begin
  Self.m_ordem := a_Value;
end;

function Titemrps_v3.getid_origem: String;
begin
  Result := Self.m_id_origem;
end;

procedure Titemrps_v3.setid_origem(const a_Value: String);
begin
  Self.m_id_origem := a_Value;
end;

destructor Titemrps_v3.Destroy;
begin

end;

function Titemrps_v3.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Titemrps_v3.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Titemrps_v3.getNameAPI(): String;
begin
  Result := 'itemrps_v3';
end;

function Titemrps_v3.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Titemrps_v3.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
