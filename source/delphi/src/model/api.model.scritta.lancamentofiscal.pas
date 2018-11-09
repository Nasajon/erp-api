unit api.model.scritta.LancamentoFiscal;

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
	
  , api.model.scritta.itemlancamentofiscal
  , System.Generics.Collections
	

	;

type TLancamentoFiscalNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_iddocumentofiscal: String;
    var m_idpessoa: String;
    var m_idestabelecimento: String;
    var m_ano: Integer;
    var m_tipo: Integer;
    var m_datalancamento: TDate;
    var m_modelo: String;
    var m_serie: String;
    var m_subserie: String;
    var m_numero: String;
    var m_aliquotaicms: Currency;
    var m_origem: Integer;
    var m_cfop: String;
    var m_emissao: TDate;
    var m_cancelado: Boolean;
    var m_orgaopublico: Boolean;
    var m_retemiss: Boolean;
    var m_retemir: Boolean;
    var m_reteminss: Boolean;
    var m_ipipresumido: Boolean;
    var m_dataretencaoiss: TDate;
    var m_crt: Integer;
    var m_situacaosped: Integer;
    var m_tipoicms: Integer;
    var m_tipoipi: Integer;
    var m_tipoiss: Integer;
    var m_observacao: String;
    var m_codigomunicipio: String;
    var m_declaracaoimportacao: String;
    var m_valorcontabil: Currency;
    var m_baseicms: Currency;
    var m_valoricms: Currency;
    var m_isentaicms: Currency;
    var m_outrasicms: Currency;
    var m_baseicmsdiferencial: Currency;
    var m_icmsnaocreditado: Currency;
    var m_baseicmsreducao: Currency;
    var m_valoricmsdiferencial: Currency;
    var m_valoricmsantecipacao: Currency;
    var m_valoricmsadicional: Currency;
    var m_basesubstituicaotributaria: Currency;
    var m_valorstPropria: Currency;
    var m_valorstterceiro: Currency;
    var m_valorstnaoretida: Currency;
    var m_baseipi: Currency;
    var m_valoripi: Currency;
    var m_valoripiisento: Currency;
    var m_valoripioutras: Currency;
    var m_valoripinaocreditado: Currency;
    var m_baseiss: Currency;
    var m_valoriss: Currency;
    var m_valorissisento: Currency;
    var m_valorissoutras: Currency;
    var m_valorissoutromunicipio: Currency;
    var m_valormateriais: Currency;
    var m_valorsubempreitada: Currency;
    var m_valoroutrasdeducoes: Currency;
    var m_valorcide: Currency;
    var m_valordescontos: Currency;
    var m_valordescontosnaotributavel: Currency;
    var m_valorfrete: Currency;
    var m_valorseguro: Currency;
    var m_outrasdespesas: Currency;
    var m_baseir: Currency;
    var m_basecsll: Currency;
    var m_basepis: Currency;
    var m_basecofins: Currency;
    var m_valorinssretido: Currency;
    var m_valorirretido: Currency;
    var m_valorcsllretido: Currency;
    var m_valorpisretido: Currency;
    var m_valorcofinsretido: Currency;
    var m_deducaoir: Currency;
    var m_deducaocsll: Currency;
    var m_deducaopis: Currency;
    var m_deducaocofins: Currency;
    var m_valoricmsfcp: Currency;
    var m_valoricmspartdest: Currency;
    var m_valoricmspartorigem: Currency;
    var m_itenslancamentofiscal: TObjectList<TItemLancamentoFiscalNovo>;
    

    function getid(): String;
    function getiddocumentofiscal(): String;
    function getidpessoa(): String;
    function getidestabelecimento(): String;
    function getano(): Integer;
    function gettipo(): Integer;
    function getdatalancamento(): TDate;
    function getmodelo(): String;
    function getserie(): String;
    function getsubserie(): String;
    function getnumero(): String;
    function getaliquotaicms(): Currency;
    function getorigem(): Integer;
    function getcfop(): String;
    function getemissao(): TDate;
    function getcancelado(): Boolean;
    function getorgaopublico(): Boolean;
    function getretemiss(): Boolean;
    function getretemir(): Boolean;
    function getreteminss(): Boolean;
    function getipipresumido(): Boolean;
    function getdataretencaoiss(): TDate;
    function getcrt(): Integer;
    function getsituacaosped(): Integer;
    function gettipoicms(): Integer;
    function gettipoipi(): Integer;
    function gettipoiss(): Integer;
    function getobservacao(): String;
    function getcodigomunicipio(): String;
    function getdeclaracaoimportacao(): String;
    function getvalorcontabil(): Currency;
    function getbaseicms(): Currency;
    function getvaloricms(): Currency;
    function getisentaicms(): Currency;
    function getoutrasicms(): Currency;
    function getbaseicmsdiferencial(): Currency;
    function geticmsnaocreditado(): Currency;
    function getbaseicmsreducao(): Currency;
    function getvaloricmsdiferencial(): Currency;
    function getvaloricmsantecipacao(): Currency;
    function getvaloricmsadicional(): Currency;
    function getbasesubstituicaotributaria(): Currency;
    function getvalorstPropria(): Currency;
    function getvalorstterceiro(): Currency;
    function getvalorstnaoretida(): Currency;
    function getbaseipi(): Currency;
    function getvaloripi(): Currency;
    function getvaloripiisento(): Currency;
    function getvaloripioutras(): Currency;
    function getvaloripinaocreditado(): Currency;
    function getbaseiss(): Currency;
    function getvaloriss(): Currency;
    function getvalorissisento(): Currency;
    function getvalorissoutras(): Currency;
    function getvalorissoutromunicipio(): Currency;
    function getvalormateriais(): Currency;
    function getvalorsubempreitada(): Currency;
    function getvaloroutrasdeducoes(): Currency;
    function getvalorcide(): Currency;
    function getvalordescontos(): Currency;
    function getvalordescontosnaotributavel(): Currency;
    function getvalorfrete(): Currency;
    function getvalorseguro(): Currency;
    function getoutrasdespesas(): Currency;
    function getbaseir(): Currency;
    function getbasecsll(): Currency;
    function getbasepis(): Currency;
    function getbasecofins(): Currency;
    function getvalorinssretido(): Currency;
    function getvalorirretido(): Currency;
    function getvalorcsllretido(): Currency;
    function getvalorpisretido(): Currency;
    function getvalorcofinsretido(): Currency;
    function getdeducaoir(): Currency;
    function getdeducaocsll(): Currency;
    function getdeducaopis(): Currency;
    function getdeducaocofins(): Currency;
    function getvaloricmsfcp(): Currency;
    function getvaloricmspartdest(): Currency;
    function getvaloricmspartorigem(): Currency;
    function getitenslancamentofiscal(): TObjectList<TItemLancamentoFiscalNovo>;
    

    procedure setid(const a_Value: String);
    procedure setiddocumentofiscal(const a_Value: String);
    procedure setidpessoa(const a_Value: String);
    procedure setidestabelecimento(const a_Value: String);
    procedure setano(const a_Value: Integer);
    procedure settipo(const a_Value: Integer);
    procedure setdatalancamento(const a_Value: TDate);
    procedure setmodelo(const a_Value: String);
    procedure setserie(const a_Value: String);
    procedure setsubserie(const a_Value: String);
    procedure setnumero(const a_Value: String);
    procedure setaliquotaicms(const a_Value: Currency);
    procedure setorigem(const a_Value: Integer);
    procedure setcfop(const a_Value: String);
    procedure setemissao(const a_Value: TDate);
    procedure setcancelado(const a_Value: Boolean);
    procedure setorgaopublico(const a_Value: Boolean);
    procedure setretemiss(const a_Value: Boolean);
    procedure setretemir(const a_Value: Boolean);
    procedure setreteminss(const a_Value: Boolean);
    procedure setipipresumido(const a_Value: Boolean);
    procedure setdataretencaoiss(const a_Value: TDate);
    procedure setcrt(const a_Value: Integer);
    procedure setsituacaosped(const a_Value: Integer);
    procedure settipoicms(const a_Value: Integer);
    procedure settipoipi(const a_Value: Integer);
    procedure settipoiss(const a_Value: Integer);
    procedure setobservacao(const a_Value: String);
    procedure setcodigomunicipio(const a_Value: String);
    procedure setdeclaracaoimportacao(const a_Value: String);
    procedure setvalorcontabil(const a_Value: Currency);
    procedure setbaseicms(const a_Value: Currency);
    procedure setvaloricms(const a_Value: Currency);
    procedure setisentaicms(const a_Value: Currency);
    procedure setoutrasicms(const a_Value: Currency);
    procedure setbaseicmsdiferencial(const a_Value: Currency);
    procedure seticmsnaocreditado(const a_Value: Currency);
    procedure setbaseicmsreducao(const a_Value: Currency);
    procedure setvaloricmsdiferencial(const a_Value: Currency);
    procedure setvaloricmsantecipacao(const a_Value: Currency);
    procedure setvaloricmsadicional(const a_Value: Currency);
    procedure setbasesubstituicaotributaria(const a_Value: Currency);
    procedure setvalorstPropria(const a_Value: Currency);
    procedure setvalorstterceiro(const a_Value: Currency);
    procedure setvalorstnaoretida(const a_Value: Currency);
    procedure setbaseipi(const a_Value: Currency);
    procedure setvaloripi(const a_Value: Currency);
    procedure setvaloripiisento(const a_Value: Currency);
    procedure setvaloripioutras(const a_Value: Currency);
    procedure setvaloripinaocreditado(const a_Value: Currency);
    procedure setbaseiss(const a_Value: Currency);
    procedure setvaloriss(const a_Value: Currency);
    procedure setvalorissisento(const a_Value: Currency);
    procedure setvalorissoutras(const a_Value: Currency);
    procedure setvalorissoutromunicipio(const a_Value: Currency);
    procedure setvalormateriais(const a_Value: Currency);
    procedure setvalorsubempreitada(const a_Value: Currency);
    procedure setvaloroutrasdeducoes(const a_Value: Currency);
    procedure setvalorcide(const a_Value: Currency);
    procedure setvalordescontos(const a_Value: Currency);
    procedure setvalordescontosnaotributavel(const a_Value: Currency);
    procedure setvalorfrete(const a_Value: Currency);
    procedure setvalorseguro(const a_Value: Currency);
    procedure setoutrasdespesas(const a_Value: Currency);
    procedure setbaseir(const a_Value: Currency);
    procedure setbasecsll(const a_Value: Currency);
    procedure setbasepis(const a_Value: Currency);
    procedure setbasecofins(const a_Value: Currency);
    procedure setvalorinssretido(const a_Value: Currency);
    procedure setvalorirretido(const a_Value: Currency);
    procedure setvalorcsllretido(const a_Value: Currency);
    procedure setvalorpisretido(const a_Value: Currency);
    procedure setvalorcofinsretido(const a_Value: Currency);
    procedure setdeducaoir(const a_Value: Currency);
    procedure setdeducaocsll(const a_Value: Currency);
    procedure setdeducaopis(const a_Value: Currency);
    procedure setdeducaocofins(const a_Value: Currency);
    procedure setvaloricmsfcp(const a_Value: Currency);
    procedure setvaloricmspartdest(const a_Value: Currency);
    procedure setvaloricmspartorigem(const a_Value: Currency);
    procedure setitenslancamentofiscal(const a_Value: TObjectList<TItemLancamentoFiscalNovo>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    /// <summary>
/// id do documento fiscal associado
    /// </summary>
    [NasajonSerializeAttribute('iddocumentofiscal')]
    property iddocumentofiscal: String read getiddocumentofiscal write setiddocumentofiscal;

    /// <summary>
/// id do participante(cliente, fornecedor) 
    /// </summary>
    [NasajonSerializeAttribute('idpessoa')]
    property idpessoa: String read getidpessoa write setidpessoa;

    /// <summary>
/// id do estabelecimento ao qual o lançamento fiscal pertence
    /// </summary>
    [NasajonSerializeAttribute('idestabelecimento')]
    property idestabelecimento: String read getidestabelecimento write setidestabelecimento;

    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    /// <summary>
/// Indica se é entrada(1) ou saída(0)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read gettipo write settipo;

    [NasajonSerializeAttribute('datalancamento')]
    property datalancamento: TDate read getdatalancamento write setdatalancamento;

    /// <summary>
/// Modelo do documento fiscal
    /// </summary>
    [NasajonSerializeAttribute('modelo')]
    property modelo: String read getmodelo write setmodelo;

    /// <summary>
/// Série do documento fiscal
    /// </summary>
    [NasajonSerializeAttribute('serie')]
    property serie: String read getserie write setserie;

    [NasajonSerializeAttribute('subserie')]
    property subserie: String read getsubserie write setsubserie;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getnumero write setnumero;

    [NasajonSerializeAttribute('aliquotaicms')]
    property aliquotaicms: Currency read getaliquotaicms write setaliquotaicms;

    [NasajonSerializeAttribute('origem')]
    property origem: Integer read getorigem write setorigem;

    [NasajonSerializeAttribute('cfop')]
    property cfop: String read getcfop write setcfop;

    /// <summary>
/// Data de emissão do documento
    /// </summary>
    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getemissao write setemissao;

    /// <summary>
/// Lançamento fiscal cancelado?
    /// </summary>
    [NasajonSerializeAttribute('cancelado')]
    property cancelado: Boolean read getcancelado write setcancelado;

    /// <summary>
/// Cliente/fornecedor é um orgão público?
    /// </summary>
    [NasajonSerializeAttribute('orgaopublico')]
    property orgaopublico: Boolean read getorgaopublico write setorgaopublico;

    [NasajonSerializeAttribute('retemiss')]
    property retemiss: Boolean read getretemiss write setretemiss;

    [NasajonSerializeAttribute('retemir')]
    property retemir: Boolean read getretemir write setretemir;

    [NasajonSerializeAttribute('reteminss')]
    property reteminss: Boolean read getreteminss write setreteminss;

    /// <summary>
/// Ipi presumido(certas compras realizadas por indústrias)
    /// </summary>
    [NasajonSerializeAttribute('ipipresumido')]
    property ipipresumido: Boolean read getipipresumido write setipipresumido;

    [NasajonSerializeAttribute('dataretencaoiss')]
    property dataretencaoiss: TDate read getdataretencaoiss write setdataretencaoiss;

    [NasajonSerializeAttribute('crt')]
    property crt: Integer read getcrt write setcrt;

    /// <summary>
/// 00 Documento regular
/// 																	01 Documento regular extemporâneo
/// 																	02 Documento cancelado
/// 																	03 Documento cancelado extemporâneo
/// 																	04 NFe denegada
/// 																	05 NFe inutilizada
/// 																	06 Documento Fiscal Complementar
/// 																	07 Documento Fiscal Complementar extemporâneo
/// 																	08 Documento Fiscal emitido com base em Regime Especial ou Norma Específica
/// 																	30 Lançamento Alterado
/// 																	31 Lançamento Inconcistente
    /// </summary>
    [NasajonSerializeAttribute('situacaosped')]
    property situacaosped: Integer read getsituacaosped write setsituacaosped;

    [NasajonSerializeAttribute('tipoicms')]
    property tipoicms: Integer read gettipoicms write settipoicms;

    [NasajonSerializeAttribute('tipoipi')]
    property tipoipi: Integer read gettipoipi write settipoipi;

    [NasajonSerializeAttribute('tipoiss')]
    property tipoiss: Integer read gettipoiss write settipoiss;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getobservacao write setobservacao;

    [NasajonSerializeAttribute('codigomunicipio')]
    property codigomunicipio: String read getcodigomunicipio write setcodigomunicipio;

    [NasajonSerializeAttribute('declaracaoimportacao')]
    property declaracaoimportacao: String read getdeclaracaoimportacao write setdeclaracaoimportacao;

    [NasajonSerializeAttribute('valorcontabil')]
    property valorcontabil: Currency read getvalorcontabil write setvalorcontabil;

    [NasajonSerializeAttribute('baseicms')]
    property baseicms: Currency read getbaseicms write setbaseicms;

    [NasajonSerializeAttribute('valoricms')]
    property valoricms: Currency read getvaloricms write setvaloricms;

    /// <summary>
/// Valor da base de icms isento
    /// </summary>
    [NasajonSerializeAttribute('isentaicms')]
    property isentaicms: Currency read getisentaicms write setisentaicms;

    [NasajonSerializeAttribute('outrasicms')]
    property outrasicms: Currency read getoutrasicms write setoutrasicms;

    /// <summary>
/// Base de icms do diferencial de alíquotas
    /// </summary>
    [NasajonSerializeAttribute('baseicmsdiferencial')]
    property baseicmsdiferencial: Currency read getbaseicmsdiferencial write setbaseicmsdiferencial;

    [NasajonSerializeAttribute('icmsnaocreditado')]
    property icmsnaocreditado: Currency read geticmsnaocreditado write seticmsnaocreditado;

    [NasajonSerializeAttribute('baseicmsreducao')]
    property baseicmsreducao: Currency read getbaseicmsreducao write setbaseicmsreducao;

    /// <summary>
/// valor de icms do diferencial de alíquotas
    /// </summary>
    [NasajonSerializeAttribute('valoricmsdiferencial')]
    property valoricmsdiferencial: Currency read getvaloricmsdiferencial write setvaloricmsdiferencial;

    /// <summary>
/// Valor de antecipação de icms
    /// </summary>
    [NasajonSerializeAttribute('valoricmsantecipacao')]
    property valoricmsantecipacao: Currency read getvaloricmsantecipacao write setvaloricmsantecipacao;

    [NasajonSerializeAttribute('valoricmsadicional')]
    property valoricmsadicional: Currency read getvaloricmsadicional write setvaloricmsadicional;

    [NasajonSerializeAttribute('basesubstituicaotributaria')]
    property basesubstituicaotributaria: Currency read getbasesubstituicaotributaria write setbasesubstituicaotributaria;

    /// <summary>
/// valor da substituicao tributária própria
    /// </summary>
    [NasajonSerializeAttribute('valorstpropria')]
    property valorstpropria: Currency read getvalorstPropria write setvalorstPropria;

    /// <summary>
/// valor da substituicao tributária de terceiro
    /// </summary>
    [NasajonSerializeAttribute('valorstterceiro')]
    property valorstterceiro: Currency read getvalorstterceiro write setvalorstterceiro;

    [NasajonSerializeAttribute('valorstnaoretida')]
    property valorstnaoretida: Currency read getvalorstnaoretida write setvalorstnaoretida;

    [NasajonSerializeAttribute('baseipi')]
    property baseipi: Currency read getbaseipi write setbaseipi;

    [NasajonSerializeAttribute('valoripi')]
    property valoripi: Currency read getvaloripi write setvaloripi;

    [NasajonSerializeAttribute('valoripiisento')]
    property valoripiisento: Currency read getvaloripiisento write setvaloripiisento;

    /// <summary>
/// Valor de ipi sem crédito/débito e que não é isento
    /// </summary>
    [NasajonSerializeAttribute('valoripioutras')]
    property valoripioutras: Currency read getvaloripioutras write setvaloripioutras;

    [NasajonSerializeAttribute('valoripinaocreditado')]
    property valoripinaocreditado: Currency read getvaloripinaocreditado write setvaloripinaocreditado;

    [NasajonSerializeAttribute('baseiss')]
    property baseiss: Currency read getbaseiss write setbaseiss;

    [NasajonSerializeAttribute('valoriss')]
    property valoriss: Currency read getvaloriss write setvaloriss;

    [NasajonSerializeAttribute('valorissisento')]
    property valorissisento: Currency read getvalorissisento write setvalorissisento;

    [NasajonSerializeAttribute('valorissoutras')]
    property valorissoutras: Currency read getvalorissoutras write setvalorissoutras;

    /// <summary>
/// valor de iss devido a outro município
    /// </summary>
    [NasajonSerializeAttribute('valorissoutromunicipio')]
    property valorissoutromunicipio: Currency read getvalorissoutromunicipio write setvalorissoutromunicipio;

    /// <summary>
/// valor de icms referente a materiais
    /// </summary>
    [NasajonSerializeAttribute('valormateriais')]
    property valormateriais: Currency read getvalormateriais write setvalormateriais;

    /// <summary>
/// valor de icms referente a sub empreitada
    /// </summary>
    [NasajonSerializeAttribute('valorsubempreitada')]
    property valorsubempreitada: Currency read getvalorsubempreitada write setvalorsubempreitada;

    [NasajonSerializeAttribute('valoroutrasdeducoes')]
    property valoroutrasdeducoes: Currency read getvaloroutrasdeducoes write setvaloroutrasdeducoes;

    /// <summary>
/// valor imposto sobre combustíveis
    /// </summary>
    [NasajonSerializeAttribute('valorcide')]
    property valorcide: Currency read getvalorcide write setvalorcide;

    [NasajonSerializeAttribute('valordescontos')]
    property valordescontos: Currency read getvalordescontos write setvalordescontos;

    [NasajonSerializeAttribute('valordescontosnaotributavel')]
    property valordescontosnaotributavel: Currency read getvalordescontosnaotributavel write setvalordescontosnaotributavel;

    [NasajonSerializeAttribute('valorfrete')]
    property valorfrete: Currency read getvalorfrete write setvalorfrete;

    [NasajonSerializeAttribute('valorseguro')]
    property valorseguro: Currency read getvalorseguro write setvalorseguro;

    [NasajonSerializeAttribute('outrasdespesas')]
    property outrasdespesas: Currency read getoutrasdespesas write setoutrasdespesas;

    [NasajonSerializeAttribute('baseir')]
    property baseir: Currency read getbaseir write setbaseir;

    [NasajonSerializeAttribute('basecsll')]
    property basecsll: Currency read getbasecsll write setbasecsll;

    [NasajonSerializeAttribute('basepis')]
    property basepis: Currency read getbasepis write setbasepis;

    [NasajonSerializeAttribute('basecofins')]
    property basecofins: Currency read getbasecofins write setbasecofins;

    [NasajonSerializeAttribute('valorinssretido')]
    property valorinssretido: Currency read getvalorinssretido write setvalorinssretido;

    [NasajonSerializeAttribute('valorirretido')]
    property valorirretido: Currency read getvalorirretido write setvalorirretido;

    [NasajonSerializeAttribute('valorcsllretido')]
    property valorcsllretido: Currency read getvalorcsllretido write setvalorcsllretido;

    [NasajonSerializeAttribute('valorpisretido')]
    property valorpisretido: Currency read getvalorpisretido write setvalorpisretido;

    [NasajonSerializeAttribute('valorcofinsretido')]
    property valorcofinsretido: Currency read getvalorcofinsretido write setvalorcofinsretido;

    [NasajonSerializeAttribute('deducaoir')]
    property deducaoir: Currency read getdeducaoir write setdeducaoir;

    [NasajonSerializeAttribute('deducaocsll')]
    property deducaocsll: Currency read getdeducaocsll write setdeducaocsll;

    [NasajonSerializeAttribute('deducaopis')]
    property deducaopis: Currency read getdeducaopis write setdeducaopis;

    [NasajonSerializeAttribute('deducaocofins')]
    property deducaocofins: Currency read getdeducaocofins write setdeducaocofins;

    [NasajonSerializeAttribute('valoricmsfcp')]
    property valoricmsfcp: Currency read getvaloricmsfcp write setvaloricmsfcp;

    [NasajonSerializeAttribute('valoricmspartdest')]
    property valoricmspartdest: Currency read getvaloricmspartdest write setvaloricmspartdest;

    [NasajonSerializeAttribute('valoricmspartorigem')]
    property valoricmspartorigem: Currency read getvaloricmspartorigem write setvaloricmspartorigem;

    /// <summary>
/// Lista dos itens do lançamento fiscal
    /// </summary>
    [NasajonSerializeAttribute('itenslancamentofiscal')]
    property itenslancamentofiscal: TObjectList<TItemLancamentoFiscalNovo> read getitenslancamentofiscal write setitenslancamentofiscal;

    

end;

type TLancamentoFiscalCancelar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    

    function getid(): String;
    

    procedure setid(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    

end;

	
implementation

  uses
      api.send;  

function TLancamentoFiscalNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TLancamentoFiscalNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TLancamentoFiscalNovo.getiddocumentofiscal: String;
begin
  Result := Self.m_iddocumentofiscal;
end;

procedure TLancamentoFiscalNovo.setiddocumentofiscal(const a_Value: String);
begin
  Self.m_iddocumentofiscal := a_Value;
end;

function TLancamentoFiscalNovo.getidpessoa: String;
begin
  Result := Self.m_idpessoa;
end;

procedure TLancamentoFiscalNovo.setidpessoa(const a_Value: String);
begin
  Self.m_idpessoa := a_Value;
end;

function TLancamentoFiscalNovo.getidestabelecimento: String;
begin
  Result := Self.m_idestabelecimento;
end;

procedure TLancamentoFiscalNovo.setidestabelecimento(const a_Value: String);
begin
  Self.m_idestabelecimento := a_Value;
end;

function TLancamentoFiscalNovo.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TLancamentoFiscalNovo.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

function TLancamentoFiscalNovo.gettipo: Integer;
begin
  Result := Self.m_tipo;
end;

procedure TLancamentoFiscalNovo.settipo(const a_Value: Integer);
begin
  Self.m_tipo := a_Value;
end;

function TLancamentoFiscalNovo.getdatalancamento: TDate;
begin
  Result := Self.m_datalancamento;
end;

procedure TLancamentoFiscalNovo.setdatalancamento(const a_Value: TDate);
begin
  Self.m_datalancamento := a_Value;
end;

function TLancamentoFiscalNovo.getmodelo: String;
begin
  Result := Self.m_modelo;
end;

procedure TLancamentoFiscalNovo.setmodelo(const a_Value: String);
begin
  Self.m_modelo := a_Value;
end;

function TLancamentoFiscalNovo.getserie: String;
begin
  Result := Self.m_serie;
end;

procedure TLancamentoFiscalNovo.setserie(const a_Value: String);
begin
  Self.m_serie := a_Value;
end;

function TLancamentoFiscalNovo.getsubserie: String;
begin
  Result := Self.m_subserie;
end;

procedure TLancamentoFiscalNovo.setsubserie(const a_Value: String);
begin
  Self.m_subserie := a_Value;
end;

function TLancamentoFiscalNovo.getnumero: String;
begin
  Result := Self.m_numero;
end;

procedure TLancamentoFiscalNovo.setnumero(const a_Value: String);
begin
  Self.m_numero := a_Value;
end;

function TLancamentoFiscalNovo.getaliquotaicms: Currency;
begin
  Result := Self.m_aliquotaicms;
end;

procedure TLancamentoFiscalNovo.setaliquotaicms(const a_Value: Currency);
begin
  Self.m_aliquotaicms := a_Value;
end;

function TLancamentoFiscalNovo.getorigem: Integer;
begin
  Result := Self.m_origem;
end;

procedure TLancamentoFiscalNovo.setorigem(const a_Value: Integer);
begin
  Self.m_origem := a_Value;
end;

function TLancamentoFiscalNovo.getcfop: String;
begin
  Result := Self.m_cfop;
end;

procedure TLancamentoFiscalNovo.setcfop(const a_Value: String);
begin
  Self.m_cfop := a_Value;
end;

function TLancamentoFiscalNovo.getemissao: TDate;
begin
  Result := Self.m_emissao;
end;

procedure TLancamentoFiscalNovo.setemissao(const a_Value: TDate);
begin
  Self.m_emissao := a_Value;
end;

function TLancamentoFiscalNovo.getcancelado: Boolean;
begin
  Result := Self.m_cancelado;
end;

procedure TLancamentoFiscalNovo.setcancelado(const a_Value: Boolean);
begin
  Self.m_cancelado := a_Value;
end;

function TLancamentoFiscalNovo.getorgaopublico: Boolean;
begin
  Result := Self.m_orgaopublico;
end;

procedure TLancamentoFiscalNovo.setorgaopublico(const a_Value: Boolean);
begin
  Self.m_orgaopublico := a_Value;
end;

function TLancamentoFiscalNovo.getretemiss: Boolean;
begin
  Result := Self.m_retemiss;
end;

procedure TLancamentoFiscalNovo.setretemiss(const a_Value: Boolean);
begin
  Self.m_retemiss := a_Value;
end;

function TLancamentoFiscalNovo.getretemir: Boolean;
begin
  Result := Self.m_retemir;
end;

procedure TLancamentoFiscalNovo.setretemir(const a_Value: Boolean);
begin
  Self.m_retemir := a_Value;
end;

function TLancamentoFiscalNovo.getreteminss: Boolean;
begin
  Result := Self.m_reteminss;
end;

procedure TLancamentoFiscalNovo.setreteminss(const a_Value: Boolean);
begin
  Self.m_reteminss := a_Value;
end;

function TLancamentoFiscalNovo.getipipresumido: Boolean;
begin
  Result := Self.m_ipipresumido;
end;

procedure TLancamentoFiscalNovo.setipipresumido(const a_Value: Boolean);
begin
  Self.m_ipipresumido := a_Value;
end;

function TLancamentoFiscalNovo.getdataretencaoiss: TDate;
begin
  Result := Self.m_dataretencaoiss;
end;

procedure TLancamentoFiscalNovo.setdataretencaoiss(const a_Value: TDate);
begin
  Self.m_dataretencaoiss := a_Value;
end;

function TLancamentoFiscalNovo.getcrt: Integer;
begin
  Result := Self.m_crt;
end;

procedure TLancamentoFiscalNovo.setcrt(const a_Value: Integer);
begin
  Self.m_crt := a_Value;
end;

function TLancamentoFiscalNovo.getsituacaosped: Integer;
begin
  Result := Self.m_situacaosped;
end;

procedure TLancamentoFiscalNovo.setsituacaosped(const a_Value: Integer);
begin
  Self.m_situacaosped := a_Value;
end;

function TLancamentoFiscalNovo.gettipoicms: Integer;
begin
  Result := Self.m_tipoicms;
end;

procedure TLancamentoFiscalNovo.settipoicms(const a_Value: Integer);
begin
  Self.m_tipoicms := a_Value;
end;

function TLancamentoFiscalNovo.gettipoipi: Integer;
begin
  Result := Self.m_tipoipi;
end;

procedure TLancamentoFiscalNovo.settipoipi(const a_Value: Integer);
begin
  Self.m_tipoipi := a_Value;
end;

function TLancamentoFiscalNovo.gettipoiss: Integer;
begin
  Result := Self.m_tipoiss;
end;

procedure TLancamentoFiscalNovo.settipoiss(const a_Value: Integer);
begin
  Self.m_tipoiss := a_Value;
end;

function TLancamentoFiscalNovo.getobservacao: String;
begin
  Result := Self.m_observacao;
end;

procedure TLancamentoFiscalNovo.setobservacao(const a_Value: String);
begin
  Self.m_observacao := a_Value;
end;

function TLancamentoFiscalNovo.getcodigomunicipio: String;
begin
  Result := Self.m_codigomunicipio;
end;

procedure TLancamentoFiscalNovo.setcodigomunicipio(const a_Value: String);
begin
  Self.m_codigomunicipio := a_Value;
end;

function TLancamentoFiscalNovo.getdeclaracaoimportacao: String;
begin
  Result := Self.m_declaracaoimportacao;
end;

procedure TLancamentoFiscalNovo.setdeclaracaoimportacao(const a_Value: String);
begin
  Self.m_declaracaoimportacao := a_Value;
end;

function TLancamentoFiscalNovo.getvalorcontabil: Currency;
begin
  Result := Self.m_valorcontabil;
end;

procedure TLancamentoFiscalNovo.setvalorcontabil(const a_Value: Currency);
begin
  Self.m_valorcontabil := a_Value;
end;

function TLancamentoFiscalNovo.getbaseicms: Currency;
begin
  Result := Self.m_baseicms;
end;

procedure TLancamentoFiscalNovo.setbaseicms(const a_Value: Currency);
begin
  Self.m_baseicms := a_Value;
end;

function TLancamentoFiscalNovo.getvaloricms: Currency;
begin
  Result := Self.m_valoricms;
end;

procedure TLancamentoFiscalNovo.setvaloricms(const a_Value: Currency);
begin
  Self.m_valoricms := a_Value;
end;

function TLancamentoFiscalNovo.getisentaicms: Currency;
begin
  Result := Self.m_isentaicms;
end;

procedure TLancamentoFiscalNovo.setisentaicms(const a_Value: Currency);
begin
  Self.m_isentaicms := a_Value;
end;

function TLancamentoFiscalNovo.getoutrasicms: Currency;
begin
  Result := Self.m_outrasicms;
end;

procedure TLancamentoFiscalNovo.setoutrasicms(const a_Value: Currency);
begin
  Self.m_outrasicms := a_Value;
end;

function TLancamentoFiscalNovo.getbaseicmsdiferencial: Currency;
begin
  Result := Self.m_baseicmsdiferencial;
end;

procedure TLancamentoFiscalNovo.setbaseicmsdiferencial(const a_Value: Currency);
begin
  Self.m_baseicmsdiferencial := a_Value;
end;

function TLancamentoFiscalNovo.geticmsnaocreditado: Currency;
begin
  Result := Self.m_icmsnaocreditado;
end;

procedure TLancamentoFiscalNovo.seticmsnaocreditado(const a_Value: Currency);
begin
  Self.m_icmsnaocreditado := a_Value;
end;

function TLancamentoFiscalNovo.getbaseicmsreducao: Currency;
begin
  Result := Self.m_baseicmsreducao;
end;

procedure TLancamentoFiscalNovo.setbaseicmsreducao(const a_Value: Currency);
begin
  Self.m_baseicmsreducao := a_Value;
end;

function TLancamentoFiscalNovo.getvaloricmsdiferencial: Currency;
begin
  Result := Self.m_valoricmsdiferencial;
end;

procedure TLancamentoFiscalNovo.setvaloricmsdiferencial(const a_Value: Currency);
begin
  Self.m_valoricmsdiferencial := a_Value;
end;

function TLancamentoFiscalNovo.getvaloricmsantecipacao: Currency;
begin
  Result := Self.m_valoricmsantecipacao;
end;

procedure TLancamentoFiscalNovo.setvaloricmsantecipacao(const a_Value: Currency);
begin
  Self.m_valoricmsantecipacao := a_Value;
end;

function TLancamentoFiscalNovo.getvaloricmsadicional: Currency;
begin
  Result := Self.m_valoricmsadicional;
end;

procedure TLancamentoFiscalNovo.setvaloricmsadicional(const a_Value: Currency);
begin
  Self.m_valoricmsadicional := a_Value;
end;

function TLancamentoFiscalNovo.getbasesubstituicaotributaria: Currency;
begin
  Result := Self.m_basesubstituicaotributaria;
end;

procedure TLancamentoFiscalNovo.setbasesubstituicaotributaria(const a_Value: Currency);
begin
  Self.m_basesubstituicaotributaria := a_Value;
end;

function TLancamentoFiscalNovo.getvalorstPropria: Currency;
begin
  Result := Self.m_valorstPropria;
end;

procedure TLancamentoFiscalNovo.setvalorstPropria(const a_Value: Currency);
begin
  Self.m_valorstPropria := a_Value;
end;

function TLancamentoFiscalNovo.getvalorstterceiro: Currency;
begin
  Result := Self.m_valorstterceiro;
end;

procedure TLancamentoFiscalNovo.setvalorstterceiro(const a_Value: Currency);
begin
  Self.m_valorstterceiro := a_Value;
end;

function TLancamentoFiscalNovo.getvalorstnaoretida: Currency;
begin
  Result := Self.m_valorstnaoretida;
end;

procedure TLancamentoFiscalNovo.setvalorstnaoretida(const a_Value: Currency);
begin
  Self.m_valorstnaoretida := a_Value;
end;

function TLancamentoFiscalNovo.getbaseipi: Currency;
begin
  Result := Self.m_baseipi;
end;

procedure TLancamentoFiscalNovo.setbaseipi(const a_Value: Currency);
begin
  Self.m_baseipi := a_Value;
end;

function TLancamentoFiscalNovo.getvaloripi: Currency;
begin
  Result := Self.m_valoripi;
end;

procedure TLancamentoFiscalNovo.setvaloripi(const a_Value: Currency);
begin
  Self.m_valoripi := a_Value;
end;

function TLancamentoFiscalNovo.getvaloripiisento: Currency;
begin
  Result := Self.m_valoripiisento;
end;

procedure TLancamentoFiscalNovo.setvaloripiisento(const a_Value: Currency);
begin
  Self.m_valoripiisento := a_Value;
end;

function TLancamentoFiscalNovo.getvaloripioutras: Currency;
begin
  Result := Self.m_valoripioutras;
end;

procedure TLancamentoFiscalNovo.setvaloripioutras(const a_Value: Currency);
begin
  Self.m_valoripioutras := a_Value;
end;

function TLancamentoFiscalNovo.getvaloripinaocreditado: Currency;
begin
  Result := Self.m_valoripinaocreditado;
end;

procedure TLancamentoFiscalNovo.setvaloripinaocreditado(const a_Value: Currency);
begin
  Self.m_valoripinaocreditado := a_Value;
end;

function TLancamentoFiscalNovo.getbaseiss: Currency;
begin
  Result := Self.m_baseiss;
end;

procedure TLancamentoFiscalNovo.setbaseiss(const a_Value: Currency);
begin
  Self.m_baseiss := a_Value;
end;

function TLancamentoFiscalNovo.getvaloriss: Currency;
begin
  Result := Self.m_valoriss;
end;

procedure TLancamentoFiscalNovo.setvaloriss(const a_Value: Currency);
begin
  Self.m_valoriss := a_Value;
end;

function TLancamentoFiscalNovo.getvalorissisento: Currency;
begin
  Result := Self.m_valorissisento;
end;

procedure TLancamentoFiscalNovo.setvalorissisento(const a_Value: Currency);
begin
  Self.m_valorissisento := a_Value;
end;

function TLancamentoFiscalNovo.getvalorissoutras: Currency;
begin
  Result := Self.m_valorissoutras;
end;

procedure TLancamentoFiscalNovo.setvalorissoutras(const a_Value: Currency);
begin
  Self.m_valorissoutras := a_Value;
end;

function TLancamentoFiscalNovo.getvalorissoutromunicipio: Currency;
begin
  Result := Self.m_valorissoutromunicipio;
end;

procedure TLancamentoFiscalNovo.setvalorissoutromunicipio(const a_Value: Currency);
begin
  Self.m_valorissoutromunicipio := a_Value;
end;

function TLancamentoFiscalNovo.getvalormateriais: Currency;
begin
  Result := Self.m_valormateriais;
end;

procedure TLancamentoFiscalNovo.setvalormateriais(const a_Value: Currency);
begin
  Self.m_valormateriais := a_Value;
end;

function TLancamentoFiscalNovo.getvalorsubempreitada: Currency;
begin
  Result := Self.m_valorsubempreitada;
end;

procedure TLancamentoFiscalNovo.setvalorsubempreitada(const a_Value: Currency);
begin
  Self.m_valorsubempreitada := a_Value;
end;

function TLancamentoFiscalNovo.getvaloroutrasdeducoes: Currency;
begin
  Result := Self.m_valoroutrasdeducoes;
end;

procedure TLancamentoFiscalNovo.setvaloroutrasdeducoes(const a_Value: Currency);
begin
  Self.m_valoroutrasdeducoes := a_Value;
end;

function TLancamentoFiscalNovo.getvalorcide: Currency;
begin
  Result := Self.m_valorcide;
end;

procedure TLancamentoFiscalNovo.setvalorcide(const a_Value: Currency);
begin
  Self.m_valorcide := a_Value;
end;

function TLancamentoFiscalNovo.getvalordescontos: Currency;
begin
  Result := Self.m_valordescontos;
end;

procedure TLancamentoFiscalNovo.setvalordescontos(const a_Value: Currency);
begin
  Self.m_valordescontos := a_Value;
end;

function TLancamentoFiscalNovo.getvalordescontosnaotributavel: Currency;
begin
  Result := Self.m_valordescontosnaotributavel;
end;

procedure TLancamentoFiscalNovo.setvalordescontosnaotributavel(const a_Value: Currency);
begin
  Self.m_valordescontosnaotributavel := a_Value;
end;

function TLancamentoFiscalNovo.getvalorfrete: Currency;
begin
  Result := Self.m_valorfrete;
end;

procedure TLancamentoFiscalNovo.setvalorfrete(const a_Value: Currency);
begin
  Self.m_valorfrete := a_Value;
end;

function TLancamentoFiscalNovo.getvalorseguro: Currency;
begin
  Result := Self.m_valorseguro;
end;

procedure TLancamentoFiscalNovo.setvalorseguro(const a_Value: Currency);
begin
  Self.m_valorseguro := a_Value;
end;

function TLancamentoFiscalNovo.getoutrasdespesas: Currency;
begin
  Result := Self.m_outrasdespesas;
end;

procedure TLancamentoFiscalNovo.setoutrasdespesas(const a_Value: Currency);
begin
  Self.m_outrasdespesas := a_Value;
end;

function TLancamentoFiscalNovo.getbaseir: Currency;
begin
  Result := Self.m_baseir;
end;

procedure TLancamentoFiscalNovo.setbaseir(const a_Value: Currency);
begin
  Self.m_baseir := a_Value;
end;

function TLancamentoFiscalNovo.getbasecsll: Currency;
begin
  Result := Self.m_basecsll;
end;

procedure TLancamentoFiscalNovo.setbasecsll(const a_Value: Currency);
begin
  Self.m_basecsll := a_Value;
end;

function TLancamentoFiscalNovo.getbasepis: Currency;
begin
  Result := Self.m_basepis;
end;

procedure TLancamentoFiscalNovo.setbasepis(const a_Value: Currency);
begin
  Self.m_basepis := a_Value;
end;

function TLancamentoFiscalNovo.getbasecofins: Currency;
begin
  Result := Self.m_basecofins;
end;

procedure TLancamentoFiscalNovo.setbasecofins(const a_Value: Currency);
begin
  Self.m_basecofins := a_Value;
end;

function TLancamentoFiscalNovo.getvalorinssretido: Currency;
begin
  Result := Self.m_valorinssretido;
end;

procedure TLancamentoFiscalNovo.setvalorinssretido(const a_Value: Currency);
begin
  Self.m_valorinssretido := a_Value;
end;

function TLancamentoFiscalNovo.getvalorirretido: Currency;
begin
  Result := Self.m_valorirretido;
end;

procedure TLancamentoFiscalNovo.setvalorirretido(const a_Value: Currency);
begin
  Self.m_valorirretido := a_Value;
end;

function TLancamentoFiscalNovo.getvalorcsllretido: Currency;
begin
  Result := Self.m_valorcsllretido;
end;

procedure TLancamentoFiscalNovo.setvalorcsllretido(const a_Value: Currency);
begin
  Self.m_valorcsllretido := a_Value;
end;

function TLancamentoFiscalNovo.getvalorpisretido: Currency;
begin
  Result := Self.m_valorpisretido;
end;

procedure TLancamentoFiscalNovo.setvalorpisretido(const a_Value: Currency);
begin
  Self.m_valorpisretido := a_Value;
end;

function TLancamentoFiscalNovo.getvalorcofinsretido: Currency;
begin
  Result := Self.m_valorcofinsretido;
end;

procedure TLancamentoFiscalNovo.setvalorcofinsretido(const a_Value: Currency);
begin
  Self.m_valorcofinsretido := a_Value;
end;

function TLancamentoFiscalNovo.getdeducaoir: Currency;
begin
  Result := Self.m_deducaoir;
end;

procedure TLancamentoFiscalNovo.setdeducaoir(const a_Value: Currency);
begin
  Self.m_deducaoir := a_Value;
end;

function TLancamentoFiscalNovo.getdeducaocsll: Currency;
begin
  Result := Self.m_deducaocsll;
end;

procedure TLancamentoFiscalNovo.setdeducaocsll(const a_Value: Currency);
begin
  Self.m_deducaocsll := a_Value;
end;

function TLancamentoFiscalNovo.getdeducaopis: Currency;
begin
  Result := Self.m_deducaopis;
end;

procedure TLancamentoFiscalNovo.setdeducaopis(const a_Value: Currency);
begin
  Self.m_deducaopis := a_Value;
end;

function TLancamentoFiscalNovo.getdeducaocofins: Currency;
begin
  Result := Self.m_deducaocofins;
end;

procedure TLancamentoFiscalNovo.setdeducaocofins(const a_Value: Currency);
begin
  Self.m_deducaocofins := a_Value;
end;

function TLancamentoFiscalNovo.getvaloricmsfcp: Currency;
begin
  Result := Self.m_valoricmsfcp;
end;

procedure TLancamentoFiscalNovo.setvaloricmsfcp(const a_Value: Currency);
begin
  Self.m_valoricmsfcp := a_Value;
end;

function TLancamentoFiscalNovo.getvaloricmspartdest: Currency;
begin
  Result := Self.m_valoricmspartdest;
end;

procedure TLancamentoFiscalNovo.setvaloricmspartdest(const a_Value: Currency);
begin
  Self.m_valoricmspartdest := a_Value;
end;

function TLancamentoFiscalNovo.getvaloricmspartorigem: Currency;
begin
  Result := Self.m_valoricmspartorigem;
end;

procedure TLancamentoFiscalNovo.setvaloricmspartorigem(const a_Value: Currency);
begin
  Self.m_valoricmspartorigem := a_Value;
end;

function TLancamentoFiscalNovo.getitenslancamentofiscal: TObjectList<TItemLancamentoFiscalNovo>;
begin
  if not Assigned(Self.m_itenslancamentofiscal)
    then Self.m_itenslancamentofiscal := TObjectList<TItemLancamentoFiscalNovo>.Create();
  Result := Self.m_itenslancamentofiscal;
end;

procedure TLancamentoFiscalNovo.setitenslancamentofiscal(const a_Value: TObjectList<TItemLancamentoFiscalNovo>);
begin
  Self.m_itenslancamentofiscal := a_Value;
end;

destructor TLancamentoFiscalNovo.Destroy;
begin
  Self.itenslancamentofiscal.Free();
end;

function TLancamentoFiscalNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLancamentoFiscalNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLancamentoFiscalNovo.getNameAPI(): String;
begin
  Result := 'LancamentoFiscalNovo';
end;

function TLancamentoFiscalNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLancamentoFiscalNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLancamentoFiscalCancelar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TLancamentoFiscalCancelar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

destructor TLancamentoFiscalCancelar.Destroy;
begin

end;

function TLancamentoFiscalCancelar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLancamentoFiscalCancelar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLancamentoFiscalCancelar.getNameAPI(): String;
begin
  Result := 'LancamentoFiscalCancelar';
end;

function TLancamentoFiscalCancelar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLancamentoFiscalCancelar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
