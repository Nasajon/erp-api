unit api.model.scritta.ItemLancamentoFiscal;

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

type TItemLancamentoFiscalNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_iditem: String;
    var m_idlancamentofiscal: String;
    var m_descricao: String;
    var m_ordem: Integer;
    var m_ano: Integer;
    var m_incentivo: Boolean;
    var m_ignorasoma: Boolean;
    var m_semmovimento: Boolean;
    var m_valor: Currency;
    var m_quantidade: Currency;
    var m_unidade: String;
    var m_desconto: Currency;
    var m_descontonaotributado: Currency;
    var m_valorcontabil: Currency;
    var m_situacaotributariaipi: Integer;
    var m_tipoipi: Integer;
    var m_aliquotaipi: Currency;
    var m_baseipi: Currency;
    var m_valoripi: Currency;
    var m_baseipinaotributada: Currency;
    var m_reducaoipi: Currency;
    var m_valorreducaoipi: Currency;
    var m_valorabatimentoipi: Currency;
    var m_situacaotributariaicms: Integer;
    var m_situacaosimplesnacional: Integer;
    var m_aliquotaicms: Currency;
    var m_baseicms: Currency;
    var m_valoricms: Currency;
    var m_baseicmsnaotributada: Currency;
    var m_valoricmsnaotributada: Currency;
    var m_reducaoicms: Currency;
    var m_valorreducaoicms: Currency;
    var m_valorabatimentoicms: Currency;
    var m_valordificms: Currency;
    var m_valorantecipacaoicms: Currency;
    var m_valorciap: Currency;
    var m_basesubstituicaotributaria: Currency;
    var m_valorsubstituicaotributariapropria: Currency;
    var m_valorsubstituicaotributariaterceiro: Currency;
    var m_valorsubstituicaotributarianaoretida: Currency;
    var m_valorstcomp: Currency;
    var m_situacaotributariapis: String;
    var m_aliquotapis: Currency;
    var m_valorpis: Currency;
    var m_situacaotributariacofins: String;
    var m_aliquotacofins: Currency;
    var m_valorcofins: Currency;
    var m_fichaconteudoimportacao: String;
    var m_aliquotaicmsfcp: Currency;
    var m_aliquotaicmspartint: Currency;
    var m_aliquotaicmspartdest: Currency;
    var m_valoricmsfcp: Currency;
    var m_valoricmspartdest: Currency;
    var m_valoricmspartorigem: Currency;
    

    function getid(): String;
    function getiditem(): String;
    function getidlancamentofiscal(): String;
    function getdescricao(): String;
    function getordem(): Integer;
    function getano(): Integer;
    function getincentivo(): Boolean;
    function getignorasoma(): Boolean;
    function getsemmovimento(): Boolean;
    function getvalor(): Currency;
    function getquantidade(): Currency;
    function getunidade(): String;
    function getdesconto(): Currency;
    function getdescontonaotributado(): Currency;
    function getvalorcontabil(): Currency;
    function getsituacaotributariaipi(): Integer;
    function gettipoipi(): Integer;
    function getaliquotaipi(): Currency;
    function getbaseipi(): Currency;
    function getvaloripi(): Currency;
    function getbaseipinaotributada(): Currency;
    function getreducaoipi(): Currency;
    function getvalorreducaoipi(): Currency;
    function getvalorabatimentoipi(): Currency;
    function getsituacaotributariaicms(): Integer;
    function getsituacaosimplesnacional(): Integer;
    function getaliquotaicms(): Currency;
    function getbaseicms(): Currency;
    function getvaloricms(): Currency;
    function getbaseicmsnaotributada(): Currency;
    function getvaloricmsnaotributada(): Currency;
    function getreducaoicms(): Currency;
    function getvalorreducaoicms(): Currency;
    function getvalorabatimentoicms(): Currency;
    function getvalordificms(): Currency;
    function getvalorantecipacaoicms(): Currency;
    function getvalorciap(): Currency;
    function getbasesubstituicaotributaria(): Currency;
    function getvalorsubstituicaotributariapropria(): Currency;
    function getvalorsubstituicaotributariaterceiro(): Currency;
    function getvalorsubstituicaotributarianaoretida(): Currency;
    function getvalorstcomp(): Currency;
    function getsituacaotributariapis(): String;
    function getaliquotapis(): Currency;
    function getvalorpis(): Currency;
    function getsituacaotributariacofins(): String;
    function getaliquotacofins(): Currency;
    function getvalorcofins(): Currency;
    function getfichaconteudoimportacao(): String;
    function getaliquotaicmsfcp(): Currency;
    function getaliquotaicmspartint(): Currency;
    function getaliquotaicmspartdest(): Currency;
    function getvaloricmsfcp(): Currency;
    function getvaloricmspartdest(): Currency;
    function getvaloricmspartorigem(): Currency;
    

    procedure setid(const a_Value: String);
    procedure setiditem(const a_Value: String);
    procedure setidlancamentofiscal(const a_Value: String);
    procedure setdescricao(const a_Value: String);
    procedure setordem(const a_Value: Integer);
    procedure setano(const a_Value: Integer);
    procedure setincentivo(const a_Value: Boolean);
    procedure setignorasoma(const a_Value: Boolean);
    procedure setsemmovimento(const a_Value: Boolean);
    procedure setvalor(const a_Value: Currency);
    procedure setquantidade(const a_Value: Currency);
    procedure setunidade(const a_Value: String);
    procedure setdesconto(const a_Value: Currency);
    procedure setdescontonaotributado(const a_Value: Currency);
    procedure setvalorcontabil(const a_Value: Currency);
    procedure setsituacaotributariaipi(const a_Value: Integer);
    procedure settipoipi(const a_Value: Integer);
    procedure setaliquotaipi(const a_Value: Currency);
    procedure setbaseipi(const a_Value: Currency);
    procedure setvaloripi(const a_Value: Currency);
    procedure setbaseipinaotributada(const a_Value: Currency);
    procedure setreducaoipi(const a_Value: Currency);
    procedure setvalorreducaoipi(const a_Value: Currency);
    procedure setvalorabatimentoipi(const a_Value: Currency);
    procedure setsituacaotributariaicms(const a_Value: Integer);
    procedure setsituacaosimplesnacional(const a_Value: Integer);
    procedure setaliquotaicms(const a_Value: Currency);
    procedure setbaseicms(const a_Value: Currency);
    procedure setvaloricms(const a_Value: Currency);
    procedure setbaseicmsnaotributada(const a_Value: Currency);
    procedure setvaloricmsnaotributada(const a_Value: Currency);
    procedure setreducaoicms(const a_Value: Currency);
    procedure setvalorreducaoicms(const a_Value: Currency);
    procedure setvalorabatimentoicms(const a_Value: Currency);
    procedure setvalordificms(const a_Value: Currency);
    procedure setvalorantecipacaoicms(const a_Value: Currency);
    procedure setvalorciap(const a_Value: Currency);
    procedure setbasesubstituicaotributaria(const a_Value: Currency);
    procedure setvalorsubstituicaotributariapropria(const a_Value: Currency);
    procedure setvalorsubstituicaotributariaterceiro(const a_Value: Currency);
    procedure setvalorsubstituicaotributarianaoretida(const a_Value: Currency);
    procedure setvalorstcomp(const a_Value: Currency);
    procedure setsituacaotributariapis(const a_Value: String);
    procedure setaliquotapis(const a_Value: Currency);
    procedure setvalorpis(const a_Value: Currency);
    procedure setsituacaotributariacofins(const a_Value: String);
    procedure setaliquotacofins(const a_Value: Currency);
    procedure setvalorcofins(const a_Value: Currency);
    procedure setfichaconteudoimportacao(const a_Value: String);
    procedure setaliquotaicmsfcp(const a_Value: Currency);
    procedure setaliquotaicmspartint(const a_Value: Currency);
    procedure setaliquotaicmspartdest(const a_Value: Currency);
    procedure setvaloricmsfcp(const a_Value: Currency);
    procedure setvaloricmspartdest(const a_Value: Currency);
    procedure setvaloricmspartorigem(const a_Value: Currency);
    

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
/// id do item na tabela de itens
    /// </summary>
    [NasajonSerializeAttribute('iditem')]
    property iditem: String read getiditem write setiditem;

    /// <summary>
/// id do lançamento fiscal
    /// </summary>
    [NasajonSerializeAttribute('idlancamentofiscal')]
    property idlancamentofiscal: String read getidlancamentofiscal write setidlancamentofiscal;

    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getdescricao write setdescricao;

    /// <summary>
/// ordem de inclusao do item no documento
    /// </summary>
    [NasajonSerializeAttribute('ordem')]
    property ordem: Integer read getordem write setordem;

    /// <summary>
/// Ano do lancamento
    /// </summary>
    [NasajonSerializeAttribute('ano')]
    property ano: Integer read getano write setano;

    [NasajonSerializeAttribute('incentivo')]
    property incentivo: Boolean read getincentivo write setincentivo;

    [NasajonSerializeAttribute('ignorasoma')]
    property ignorasoma: Boolean read getignorasoma write setignorasoma;

    [NasajonSerializeAttribute('semmovimento')]
    property semmovimento: Boolean read getsemmovimento write setsemmovimento;

    [NasajonSerializeAttribute('valor')]
    property valor: Currency read getvalor write setvalor;

    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Currency read getquantidade write setquantidade;

    [NasajonSerializeAttribute('unidade')]
    property unidade: String read getunidade write setunidade;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getdesconto write setdesconto;

    [NasajonSerializeAttribute('descontonaotributado')]
    property descontonaotributado: Currency read getdescontonaotributado write setdescontonaotributado;

    [NasajonSerializeAttribute('valorcontabil')]
    property valorcontabil: Currency read getvalorcontabil write setvalorcontabil;

    [NasajonSerializeAttribute('situacaotributariaipi')]
    property situacaotributariaipi: Integer read getsituacaotributariaipi write setsituacaotributariaipi;

    [NasajonSerializeAttribute('tipoipi')]
    property tipoipi: Integer read gettipoipi write settipoipi;

    [NasajonSerializeAttribute('aliquotaipi')]
    property aliquotaipi: Currency read getaliquotaipi write setaliquotaipi;

    [NasajonSerializeAttribute('baseipi')]
    property baseipi: Currency read getbaseipi write setbaseipi;

    [NasajonSerializeAttribute('valoripi')]
    property valoripi: Currency read getvaloripi write setvaloripi;

    [NasajonSerializeAttribute('baseipinaotributada')]
    property baseipinaotributada: Currency read getbaseipinaotributada write setbaseipinaotributada;

    [NasajonSerializeAttribute('reducaoipi')]
    property reducaoipi: Currency read getreducaoipi write setreducaoipi;

    [NasajonSerializeAttribute('valorreducaoipi')]
    property valorreducaoipi: Currency read getvalorreducaoipi write setvalorreducaoipi;

    [NasajonSerializeAttribute('valorabatimentoipi')]
    property valorabatimentoipi: Currency read getvalorabatimentoipi write setvalorabatimentoipi;

    [NasajonSerializeAttribute('situacaotributariaicms')]
    property situacaotributariaicms: Integer read getsituacaotributariaicms write setsituacaotributariaicms;

    /// <summary>
/// Caso empresa do simples nacional, informa cst do documento
    /// </summary>
    [NasajonSerializeAttribute('situacaosimplesnacional')]
    property situacaosimplesnacional: Integer read getsituacaosimplesnacional write setsituacaosimplesnacional;

    [NasajonSerializeAttribute('aliquotaicms')]
    property aliquotaicms: Currency read getaliquotaicms write setaliquotaicms;

    [NasajonSerializeAttribute('baseicms')]
    property baseicms: Currency read getbaseicms write setbaseicms;

    [NasajonSerializeAttribute('valoricms')]
    property valoricms: Currency read getvaloricms write setvaloricms;

    [NasajonSerializeAttribute('baseicmsnaotributada')]
    property baseicmsnaotributada: Currency read getbaseicmsnaotributada write setbaseicmsnaotributada;

    [NasajonSerializeAttribute('valoricmsnaotributada')]
    property valoricmsnaotributada: Currency read getvaloricmsnaotributada write setvaloricmsnaotributada;

    [NasajonSerializeAttribute('reducaoicms')]
    property reducaoicms: Currency read getreducaoicms write setreducaoicms;

    [NasajonSerializeAttribute('valorreducaoicms')]
    property valorreducaoicms: Currency read getvalorreducaoicms write setvalorreducaoicms;

    [NasajonSerializeAttribute('valorabatimentoicms')]
    property valorabatimentoicms: Currency read getvalorabatimentoicms write setvalorabatimentoicms;

    /// <summary>
/// Valor de diferencial de alíquota de icms
    /// </summary>
    [NasajonSerializeAttribute('valordificms')]
    property valordificms: Currency read getvalordificms write setvalordificms;

    /// <summary>
/// Valor de antecipação de icms
    /// </summary>
    [NasajonSerializeAttribute('valorantecipacaoicms')]
    property valorantecipacaoicms: Currency read getvalorantecipacaoicms write setvalorantecipacaoicms;

    [NasajonSerializeAttribute('valorciap')]
    property valorciap: Currency read getvalorciap write setvalorciap;

    [NasajonSerializeAttribute('basesubstituicaotributaria')]
    property basesubstituicaotributaria: Currency read getbasesubstituicaotributaria write setbasesubstituicaotributaria;

    [NasajonSerializeAttribute('valorsubstituicaotributariapropria')]
    property valorsubstituicaotributariapropria: Currency read getvalorsubstituicaotributariapropria write setvalorsubstituicaotributariapropria;

    [NasajonSerializeAttribute('valorsubstituicaotributariaterceiro')]
    property valorsubstituicaotributariaterceiro: Currency read getvalorsubstituicaotributariaterceiro write setvalorsubstituicaotributariaterceiro;

    [NasajonSerializeAttribute('valorsubstituicaotributarianaoretida')]
    property valorsubstituicaotributarianaoretida: Currency read getvalorsubstituicaotributarianaoretida write setvalorsubstituicaotributarianaoretida;

    /// <summary>
/// Valor de subst. das informações complementares para operações com combustíveis 
    /// </summary>
    [NasajonSerializeAttribute('valorstcomp')]
    property valorstcomp: Currency read getvalorstcomp write setvalorstcomp;

    [NasajonSerializeAttribute('situacaotributariapis')]
    property situacaotributariapis: String read getsituacaotributariapis write setsituacaotributariapis;

    [NasajonSerializeAttribute('aliquotapis')]
    property aliquotapis: Currency read getaliquotapis write setaliquotapis;

    [NasajonSerializeAttribute('valorpis')]
    property valorpis: Currency read getvalorpis write setvalorpis;

    [NasajonSerializeAttribute('situacaotributariacofins')]
    property situacaotributariacofins: String read getsituacaotributariacofins write setsituacaotributariacofins;

    [NasajonSerializeAttribute('aliquotacofins')]
    property aliquotacofins: Currency read getaliquotacofins write setaliquotacofins;

    [NasajonSerializeAttribute('valorcofins')]
    property valorcofins: Currency read getvalorcofins write setvalorcofins;

    [NasajonSerializeAttribute('fichaconteudoimportacao')]
    property fichaconteudoimportacao: String read getfichaconteudoimportacao write setfichaconteudoimportacao;

    [NasajonSerializeAttribute('aliquotaicmsfcp')]
    property aliquotaicmsfcp: Currency read getaliquotaicmsfcp write setaliquotaicmsfcp;

    [NasajonSerializeAttribute('aliquotaicmspartint')]
    property aliquotaicmspartint: Currency read getaliquotaicmspartint write setaliquotaicmspartint;

    [NasajonSerializeAttribute('aliquotaicmspartdest')]
    property aliquotaicmspartdest: Currency read getaliquotaicmspartdest write setaliquotaicmspartdest;

    [NasajonSerializeAttribute('valoricmsfcp')]
    property valoricmsfcp: Currency read getvaloricmsfcp write setvaloricmsfcp;

    [NasajonSerializeAttribute('valoricmspartdest')]
    property valoricmspartdest: Currency read getvaloricmspartdest write setvaloricmspartdest;

    [NasajonSerializeAttribute('valoricmspartorigem')]
    property valoricmspartorigem: Currency read getvaloricmspartorigem write setvaloricmspartorigem;

    

end;

	
implementation

  uses
      api.send;  

function TItemLancamentoFiscalNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TItemLancamentoFiscalNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TItemLancamentoFiscalNovo.getiditem: String;
begin
  Result := Self.m_iditem;
end;

procedure TItemLancamentoFiscalNovo.setiditem(const a_Value: String);
begin
  Self.m_iditem := a_Value;
end;

function TItemLancamentoFiscalNovo.getidlancamentofiscal: String;
begin
  Result := Self.m_idlancamentofiscal;
end;

procedure TItemLancamentoFiscalNovo.setidlancamentofiscal(const a_Value: String);
begin
  Self.m_idlancamentofiscal := a_Value;
end;

function TItemLancamentoFiscalNovo.getdescricao: String;
begin
  Result := Self.m_descricao;
end;

procedure TItemLancamentoFiscalNovo.setdescricao(const a_Value: String);
begin
  Self.m_descricao := a_Value;
end;

function TItemLancamentoFiscalNovo.getordem: Integer;
begin
  Result := Self.m_ordem;
end;

procedure TItemLancamentoFiscalNovo.setordem(const a_Value: Integer);
begin
  Self.m_ordem := a_Value;
end;

function TItemLancamentoFiscalNovo.getano: Integer;
begin
  Result := Self.m_ano;
end;

procedure TItemLancamentoFiscalNovo.setano(const a_Value: Integer);
begin
  Self.m_ano := a_Value;
end;

function TItemLancamentoFiscalNovo.getincentivo: Boolean;
begin
  Result := Self.m_incentivo;
end;

procedure TItemLancamentoFiscalNovo.setincentivo(const a_Value: Boolean);
begin
  Self.m_incentivo := a_Value;
end;

function TItemLancamentoFiscalNovo.getignorasoma: Boolean;
begin
  Result := Self.m_ignorasoma;
end;

procedure TItemLancamentoFiscalNovo.setignorasoma(const a_Value: Boolean);
begin
  Self.m_ignorasoma := a_Value;
end;

function TItemLancamentoFiscalNovo.getsemmovimento: Boolean;
begin
  Result := Self.m_semmovimento;
end;

procedure TItemLancamentoFiscalNovo.setsemmovimento(const a_Value: Boolean);
begin
  Self.m_semmovimento := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalor: Currency;
begin
  Result := Self.m_valor;
end;

procedure TItemLancamentoFiscalNovo.setvalor(const a_Value: Currency);
begin
  Self.m_valor := a_Value;
end;

function TItemLancamentoFiscalNovo.getquantidade: Currency;
begin
  Result := Self.m_quantidade;
end;

procedure TItemLancamentoFiscalNovo.setquantidade(const a_Value: Currency);
begin
  Self.m_quantidade := a_Value;
end;

function TItemLancamentoFiscalNovo.getunidade: String;
begin
  Result := Self.m_unidade;
end;

procedure TItemLancamentoFiscalNovo.setunidade(const a_Value: String);
begin
  Self.m_unidade := a_Value;
end;

function TItemLancamentoFiscalNovo.getdesconto: Currency;
begin
  Result := Self.m_desconto;
end;

procedure TItemLancamentoFiscalNovo.setdesconto(const a_Value: Currency);
begin
  Self.m_desconto := a_Value;
end;

function TItemLancamentoFiscalNovo.getdescontonaotributado: Currency;
begin
  Result := Self.m_descontonaotributado;
end;

procedure TItemLancamentoFiscalNovo.setdescontonaotributado(const a_Value: Currency);
begin
  Self.m_descontonaotributado := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorcontabil: Currency;
begin
  Result := Self.m_valorcontabil;
end;

procedure TItemLancamentoFiscalNovo.setvalorcontabil(const a_Value: Currency);
begin
  Self.m_valorcontabil := a_Value;
end;

function TItemLancamentoFiscalNovo.getsituacaotributariaipi: Integer;
begin
  Result := Self.m_situacaotributariaipi;
end;

procedure TItemLancamentoFiscalNovo.setsituacaotributariaipi(const a_Value: Integer);
begin
  Self.m_situacaotributariaipi := a_Value;
end;

function TItemLancamentoFiscalNovo.gettipoipi: Integer;
begin
  Result := Self.m_tipoipi;
end;

procedure TItemLancamentoFiscalNovo.settipoipi(const a_Value: Integer);
begin
  Self.m_tipoipi := a_Value;
end;

function TItemLancamentoFiscalNovo.getaliquotaipi: Currency;
begin
  Result := Self.m_aliquotaipi;
end;

procedure TItemLancamentoFiscalNovo.setaliquotaipi(const a_Value: Currency);
begin
  Self.m_aliquotaipi := a_Value;
end;

function TItemLancamentoFiscalNovo.getbaseipi: Currency;
begin
  Result := Self.m_baseipi;
end;

procedure TItemLancamentoFiscalNovo.setbaseipi(const a_Value: Currency);
begin
  Self.m_baseipi := a_Value;
end;

function TItemLancamentoFiscalNovo.getvaloripi: Currency;
begin
  Result := Self.m_valoripi;
end;

procedure TItemLancamentoFiscalNovo.setvaloripi(const a_Value: Currency);
begin
  Self.m_valoripi := a_Value;
end;

function TItemLancamentoFiscalNovo.getbaseipinaotributada: Currency;
begin
  Result := Self.m_baseipinaotributada;
end;

procedure TItemLancamentoFiscalNovo.setbaseipinaotributada(const a_Value: Currency);
begin
  Self.m_baseipinaotributada := a_Value;
end;

function TItemLancamentoFiscalNovo.getreducaoipi: Currency;
begin
  Result := Self.m_reducaoipi;
end;

procedure TItemLancamentoFiscalNovo.setreducaoipi(const a_Value: Currency);
begin
  Self.m_reducaoipi := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorreducaoipi: Currency;
begin
  Result := Self.m_valorreducaoipi;
end;

procedure TItemLancamentoFiscalNovo.setvalorreducaoipi(const a_Value: Currency);
begin
  Self.m_valorreducaoipi := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorabatimentoipi: Currency;
begin
  Result := Self.m_valorabatimentoipi;
end;

procedure TItemLancamentoFiscalNovo.setvalorabatimentoipi(const a_Value: Currency);
begin
  Self.m_valorabatimentoipi := a_Value;
end;

function TItemLancamentoFiscalNovo.getsituacaotributariaicms: Integer;
begin
  Result := Self.m_situacaotributariaicms;
end;

procedure TItemLancamentoFiscalNovo.setsituacaotributariaicms(const a_Value: Integer);
begin
  Self.m_situacaotributariaicms := a_Value;
end;

function TItemLancamentoFiscalNovo.getsituacaosimplesnacional: Integer;
begin
  Result := Self.m_situacaosimplesnacional;
end;

procedure TItemLancamentoFiscalNovo.setsituacaosimplesnacional(const a_Value: Integer);
begin
  Self.m_situacaosimplesnacional := a_Value;
end;

function TItemLancamentoFiscalNovo.getaliquotaicms: Currency;
begin
  Result := Self.m_aliquotaicms;
end;

procedure TItemLancamentoFiscalNovo.setaliquotaicms(const a_Value: Currency);
begin
  Self.m_aliquotaicms := a_Value;
end;

function TItemLancamentoFiscalNovo.getbaseicms: Currency;
begin
  Result := Self.m_baseicms;
end;

procedure TItemLancamentoFiscalNovo.setbaseicms(const a_Value: Currency);
begin
  Self.m_baseicms := a_Value;
end;

function TItemLancamentoFiscalNovo.getvaloricms: Currency;
begin
  Result := Self.m_valoricms;
end;

procedure TItemLancamentoFiscalNovo.setvaloricms(const a_Value: Currency);
begin
  Self.m_valoricms := a_Value;
end;

function TItemLancamentoFiscalNovo.getbaseicmsnaotributada: Currency;
begin
  Result := Self.m_baseicmsnaotributada;
end;

procedure TItemLancamentoFiscalNovo.setbaseicmsnaotributada(const a_Value: Currency);
begin
  Self.m_baseicmsnaotributada := a_Value;
end;

function TItemLancamentoFiscalNovo.getvaloricmsnaotributada: Currency;
begin
  Result := Self.m_valoricmsnaotributada;
end;

procedure TItemLancamentoFiscalNovo.setvaloricmsnaotributada(const a_Value: Currency);
begin
  Self.m_valoricmsnaotributada := a_Value;
end;

function TItemLancamentoFiscalNovo.getreducaoicms: Currency;
begin
  Result := Self.m_reducaoicms;
end;

procedure TItemLancamentoFiscalNovo.setreducaoicms(const a_Value: Currency);
begin
  Self.m_reducaoicms := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorreducaoicms: Currency;
begin
  Result := Self.m_valorreducaoicms;
end;

procedure TItemLancamentoFiscalNovo.setvalorreducaoicms(const a_Value: Currency);
begin
  Self.m_valorreducaoicms := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorabatimentoicms: Currency;
begin
  Result := Self.m_valorabatimentoicms;
end;

procedure TItemLancamentoFiscalNovo.setvalorabatimentoicms(const a_Value: Currency);
begin
  Self.m_valorabatimentoicms := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalordificms: Currency;
begin
  Result := Self.m_valordificms;
end;

procedure TItemLancamentoFiscalNovo.setvalordificms(const a_Value: Currency);
begin
  Self.m_valordificms := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorantecipacaoicms: Currency;
begin
  Result := Self.m_valorantecipacaoicms;
end;

procedure TItemLancamentoFiscalNovo.setvalorantecipacaoicms(const a_Value: Currency);
begin
  Self.m_valorantecipacaoicms := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorciap: Currency;
begin
  Result := Self.m_valorciap;
end;

procedure TItemLancamentoFiscalNovo.setvalorciap(const a_Value: Currency);
begin
  Self.m_valorciap := a_Value;
end;

function TItemLancamentoFiscalNovo.getbasesubstituicaotributaria: Currency;
begin
  Result := Self.m_basesubstituicaotributaria;
end;

procedure TItemLancamentoFiscalNovo.setbasesubstituicaotributaria(const a_Value: Currency);
begin
  Self.m_basesubstituicaotributaria := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorsubstituicaotributariapropria: Currency;
begin
  Result := Self.m_valorsubstituicaotributariapropria;
end;

procedure TItemLancamentoFiscalNovo.setvalorsubstituicaotributariapropria(const a_Value: Currency);
begin
  Self.m_valorsubstituicaotributariapropria := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorsubstituicaotributariaterceiro: Currency;
begin
  Result := Self.m_valorsubstituicaotributariaterceiro;
end;

procedure TItemLancamentoFiscalNovo.setvalorsubstituicaotributariaterceiro(const a_Value: Currency);
begin
  Self.m_valorsubstituicaotributariaterceiro := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorsubstituicaotributarianaoretida: Currency;
begin
  Result := Self.m_valorsubstituicaotributarianaoretida;
end;

procedure TItemLancamentoFiscalNovo.setvalorsubstituicaotributarianaoretida(const a_Value: Currency);
begin
  Self.m_valorsubstituicaotributarianaoretida := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorstcomp: Currency;
begin
  Result := Self.m_valorstcomp;
end;

procedure TItemLancamentoFiscalNovo.setvalorstcomp(const a_Value: Currency);
begin
  Self.m_valorstcomp := a_Value;
end;

function TItemLancamentoFiscalNovo.getsituacaotributariapis: String;
begin
  Result := Self.m_situacaotributariapis;
end;

procedure TItemLancamentoFiscalNovo.setsituacaotributariapis(const a_Value: String);
begin
  Self.m_situacaotributariapis := a_Value;
end;

function TItemLancamentoFiscalNovo.getaliquotapis: Currency;
begin
  Result := Self.m_aliquotapis;
end;

procedure TItemLancamentoFiscalNovo.setaliquotapis(const a_Value: Currency);
begin
  Self.m_aliquotapis := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorpis: Currency;
begin
  Result := Self.m_valorpis;
end;

procedure TItemLancamentoFiscalNovo.setvalorpis(const a_Value: Currency);
begin
  Self.m_valorpis := a_Value;
end;

function TItemLancamentoFiscalNovo.getsituacaotributariacofins: String;
begin
  Result := Self.m_situacaotributariacofins;
end;

procedure TItemLancamentoFiscalNovo.setsituacaotributariacofins(const a_Value: String);
begin
  Self.m_situacaotributariacofins := a_Value;
end;

function TItemLancamentoFiscalNovo.getaliquotacofins: Currency;
begin
  Result := Self.m_aliquotacofins;
end;

procedure TItemLancamentoFiscalNovo.setaliquotacofins(const a_Value: Currency);
begin
  Self.m_aliquotacofins := a_Value;
end;

function TItemLancamentoFiscalNovo.getvalorcofins: Currency;
begin
  Result := Self.m_valorcofins;
end;

procedure TItemLancamentoFiscalNovo.setvalorcofins(const a_Value: Currency);
begin
  Self.m_valorcofins := a_Value;
end;

function TItemLancamentoFiscalNovo.getfichaconteudoimportacao: String;
begin
  Result := Self.m_fichaconteudoimportacao;
end;

procedure TItemLancamentoFiscalNovo.setfichaconteudoimportacao(const a_Value: String);
begin
  Self.m_fichaconteudoimportacao := a_Value;
end;

function TItemLancamentoFiscalNovo.getaliquotaicmsfcp: Currency;
begin
  Result := Self.m_aliquotaicmsfcp;
end;

procedure TItemLancamentoFiscalNovo.setaliquotaicmsfcp(const a_Value: Currency);
begin
  Self.m_aliquotaicmsfcp := a_Value;
end;

function TItemLancamentoFiscalNovo.getaliquotaicmspartint: Currency;
begin
  Result := Self.m_aliquotaicmspartint;
end;

procedure TItemLancamentoFiscalNovo.setaliquotaicmspartint(const a_Value: Currency);
begin
  Self.m_aliquotaicmspartint := a_Value;
end;

function TItemLancamentoFiscalNovo.getaliquotaicmspartdest: Currency;
begin
  Result := Self.m_aliquotaicmspartdest;
end;

procedure TItemLancamentoFiscalNovo.setaliquotaicmspartdest(const a_Value: Currency);
begin
  Self.m_aliquotaicmspartdest := a_Value;
end;

function TItemLancamentoFiscalNovo.getvaloricmsfcp: Currency;
begin
  Result := Self.m_valoricmsfcp;
end;

procedure TItemLancamentoFiscalNovo.setvaloricmsfcp(const a_Value: Currency);
begin
  Self.m_valoricmsfcp := a_Value;
end;

function TItemLancamentoFiscalNovo.getvaloricmspartdest: Currency;
begin
  Result := Self.m_valoricmspartdest;
end;

procedure TItemLancamentoFiscalNovo.setvaloricmspartdest(const a_Value: Currency);
begin
  Self.m_valoricmspartdest := a_Value;
end;

function TItemLancamentoFiscalNovo.getvaloricmspartorigem: Currency;
begin
  Result := Self.m_valoricmspartorigem;
end;

procedure TItemLancamentoFiscalNovo.setvaloricmspartorigem(const a_Value: Currency);
begin
  Self.m_valoricmspartorigem := a_Value;
end;

destructor TItemLancamentoFiscalNovo.Destroy;
begin

end;

function TItemLancamentoFiscalNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TItemLancamentoFiscalNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TItemLancamentoFiscalNovo.getNameAPI(): String;
begin
  Result := 'ItemLancamentoFiscalNovo';
end;

function TItemLancamentoFiscalNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TItemLancamentoFiscalNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
