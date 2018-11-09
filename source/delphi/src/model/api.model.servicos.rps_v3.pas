unit api.model.servicos.rps_v3;

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
	
  , api.model.servicos.itemrps_v3
  , System.Generics.Collections
  , api.model.ns.pagamentosemparcela
  , api.model.ns.parcela
  , api.model.financas.ItemRateioFinanceiro
  , api.model.servicos.VendedorRPS
	

	;

type Trps_v3 = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_nota_antecipada: Boolean;
    var m_estabelecimento: String;
    var m_cliente: String;
    var m_serie: String;
    var m_lancamento: TDate;
    var m_origem: Integer;
    var m_tipo_tributacao: Integer;
    var m_regime_especial: Integer;
    var m_incentivo_cultural: Integer;
    var m_beneficio_fiscal: Integer;
    var m_codigo_servico: String;
    var m_codigo_municipio_prestacao: String;
    var m_obra: String;
    var m_discriminacao_servicos: String;
    var m_desconto: Currency;
    var m_outras_deducoes: Currency;
    var m_outras_retencoes: Currency;
    var m_descricao_outras_retencoes: String;
    var m_retem_iss: Boolean;
    var m_retem_ir: Boolean;
    var m_retem_inss: Boolean;
    var m_retem_pis: Boolean;
    var m_retem_cofins: Boolean;
    var m_retem_csll: Boolean;
    var m_aliquota_iss: Currency;
    var m_base_iss: Currency;
    var m_valor_iss: Currency;
    var m_base_ir: Currency;
    var m_valor_ir: Currency;
    var m_base_inss: Currency;
    var m_valor_inss: Currency;
    var m_base_pis: Currency;
    var m_valor_pis: Currency;
    var m_base_cofins: Currency;
    var m_valor_cofins: Currency;
    var m_base_csll: Currency;
    var m_valor_csll: Currency;
    var m_observacao: String;
    var m_observacao_titulo: String;
    var m_conjunto_anexo: String;
    var m_lote_cobranca: String;
    var m_numero_nota_servico_substituicao: String;
    var m_documento_vinculado: String;
    var m_numero_titulo: String;
    var m_usuario: String;
    var m_template_rps: String;
    var m_id_contrato: String;
    var m_id_processamento_cobranca: String;
    var m_xml_docengine: String;
    var m_calcular_imposto: Boolean;
    var m_gerar_financeiro: Boolean;
    var m_itens: TObjectList<titemrps_v3>;
    var m_pagamentos: TObjectList<TPagamentoSemParcela>;
    var m_parcelas: TObjectList<TParcela>;
    var m_rateios: TObjectList<TItemRateioFinanceiro>;
    var m_vendedores: TObjectList<TVendedorRPS>;
    var m_retem_ir_nota: Boolean;
    var m_numeroexterno: string;
    var m_projeto_padrao_id: String;
    var m_reinf_maodeobra: String;
	var m_cnae: String;

    function getid(): String;
    function getnota_antecipada(): Boolean;
    function getestabelecimento(): String;
    function getcliente(): String;
    function getserie(): String;
    function getlancamento(): TDate;
    function getorigem(): Integer;
    function gettipo_tributacao(): Integer;
    function getregime_especial(): Integer;
    function getincentivo_cultural(): Integer;
    function getbeneficio_fiscal(): Integer;
    function getcodigo_servico(): String;
    function getcodigo_municipio_prestacao(): String;
    function getobra(): String;
    function getdiscriminacao_servicos(): String;
    function getdesconto(): Currency;
    function getoutras_deducoes(): Currency;
    function getoutras_retencoes(): Currency;
    function getdescricao_outras_retencoes(): String;
    function getretem_iss(): Boolean;
    function getretem_ir(): Boolean;
    function getretem_inss(): Boolean;
    function getretem_pis(): Boolean;
    function getretem_cofins(): Boolean;
    function getretem_csll(): Boolean;
    function getaliquota_iss(): Currency;
    function getbase_iss(): Currency;
    function getvalor_iss(): Currency;
    function getbase_ir(): Currency;
    function getvalor_ir(): Currency;
    function getbase_inss(): Currency;
    function getvalor_inss(): Currency;
    function getbase_pis(): Currency;
    function getvalor_pis(): Currency;
    function getbase_cofins(): Currency;
    function getvalor_cofins(): Currency;
    function getbase_csll(): Currency;
    function getvalor_csll(): Currency;
    function getobservacao(): String;
    function getobservacao_titulo(): String;
    function getconjunto_anexo(): String;
    function getlote_cobranca(): String;
    function getnumero_nota_servico_substituicao(): String;
    function getdocumento_vinculado(): String;
    function getnumero_titulo(): String;
    function getusuario(): String;
    function gettemplate_rps(): String;
    function getid_contrato(): String;
    function getid_processamento_cobranca(): String;
    function getxml_docengine(): String;
    function getcalcular_imposto(): Boolean;
    function getgerar_financeiro(): Boolean;
    function getitens(): TObjectList<titemrps_v3>;
    function getpagamentos(): TObjectList<TPagamentoSemParcela>;
    function getparcelas(): TObjectList<TParcela>;
    function getrateios(): TObjectList<TItemRateioFinanceiro>;
    function getvendedores(): TObjectList<TVendedorRPS>;
    function getretem_ir_nota(): Boolean;
    function getnumero_externo(): String;
    function get_projeto_padrao_id(): String;
    function get_reinf_maodeobra(): String;
	function get_cnae(): String;

    procedure setid(const a_Value: String);
    procedure setnota_antecipada(const a_Value: Boolean);
    procedure setestabelecimento(const a_Value: String);
    procedure setcliente(const a_Value: String);
    procedure setserie(const a_Value: String);
    procedure setlancamento(const a_Value: TDate);
    procedure setorigem(const a_Value: Integer);
    procedure settipo_tributacao(const a_Value: Integer);
    procedure setregime_especial(const a_Value: Integer);
    procedure setincentivo_cultural(const a_Value: Integer);
    procedure setbeneficio_fiscal(const a_Value: Integer);
    procedure setcodigo_servico(const a_Value: String);
    procedure setcodigo_municipio_prestacao(const a_Value: String);
    procedure setobra(const a_Value: String);
    procedure setdiscriminacao_servicos(const a_Value: String);
    procedure setdesconto(const a_Value: Currency);
    procedure setoutras_deducoes(const a_Value: Currency);
    procedure setoutras_retencoes(const a_Value: Currency);
    procedure setdescricao_outras_retencoes(const a_Value: String);
    procedure setretem_iss(const a_Value: Boolean);
    procedure setretem_ir(const a_Value: Boolean);
    procedure setretem_inss(const a_Value: Boolean);
    procedure setretem_pis(const a_Value: Boolean);
    procedure setretem_cofins(const a_Value: Boolean);
    procedure setretem_csll(const a_Value: Boolean);
    procedure setaliquota_iss(const a_Value: Currency);
    procedure setbase_iss(const a_Value: Currency);
    procedure setvalor_iss(const a_Value: Currency);
    procedure setbase_ir(const a_Value: Currency);
    procedure setvalor_ir(const a_Value: Currency);
    procedure setbase_inss(const a_Value: Currency);
    procedure setvalor_inss(const a_Value: Currency);
    procedure setbase_pis(const a_Value: Currency);
    procedure setvalor_pis(const a_Value: Currency);
    procedure setbase_cofins(const a_Value: Currency);
    procedure setvalor_cofins(const a_Value: Currency);
    procedure setbase_csll(const a_Value: Currency);
    procedure setvalor_csll(const a_Value: Currency);
    procedure setobservacao(const a_Value: String);
    procedure setobservacao_titulo(const a_Value: String);
    procedure setconjunto_anexo(const a_Value: String);
    procedure setlote_cobranca(const a_Value: String);
    procedure setnumero_nota_servico_substituicao(const a_Value: String);
    procedure setdocumento_vinculado(const a_Value: String);
    procedure setnumero_titulo(const a_Value: String);
    procedure setusuario(const a_Value: String);
    procedure settemplate_rps(const a_Value: String);
    procedure setid_contrato(const a_Value: String);
    procedure setid_processamento_cobranca(const a_Value: String);
    procedure setxml_docengine(const a_Value: String);
    procedure setcalcular_imposto(const a_Value: Boolean);
    procedure setgerar_financeiro(const a_Value: Boolean);
    procedure setitens(const a_Value: TObjectList<titemrps_v3>);
    procedure setpagamentos(const a_Value: TObjectList<TPagamentoSemParcela>);
    procedure setparcelas(const a_Value: TObjectList<TParcela>);
    procedure setrateios(const a_Value: TObjectList<TItemRateioFinanceiro>);
    procedure setvendedores(const a_Value: TObjectList<TVendedorRPS>);
    procedure setretem_ir_nota(const a_Value: Boolean);
    procedure setnumero_externo(const a_Value: String);
    procedure set_projeto_padrao_id(const a_Value: String);
    procedure set_reinf_maodeobra(const a_Value: String);
	procedure set_cnae(const a_Value: String);
	
  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('nota_antecipada')]
    property nota_antecipada: Boolean read getnota_antecipada write setnota_antecipada;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    [NasajonSerializeAttribute('cliente')]
    property cliente: String read getcliente write setcliente;

    [NasajonSerializeAttribute('serie')]
    property serie: String read getserie write setserie;

    [NasajonSerializeAttribute('lancamento')]
    property lancamento: TDate read getlancamento write setlancamento;

    /// <summary>
/// Indica a Origem do RPS
///                             00 - Manual
///                             01 - Ordem de Serviço
///                             02 - Contrato
///                             03 - Proposta
///                             04 - Pedido de Servico
///                             05 - Importacao
///                             06 - Faturamento Provisorio
///                             07 - GeradorRPS
    /// </summary>
    [NasajonSerializeAttribute('origem')]
    property origem: Integer read getorigem write setorigem;

    /// <summary>
/// Indica o Tipo de Tributação. Quando não informado assumirá da configuração de RPS.
///                             00 - Nenhum,
///                             01 - Tributação no Município,
///                             02 - Tributação Fora do Município,
///                             03 - Operação Isenta,
///                             04 - Operação Imune,
///                             05 - Operação Suspensa por Decisão Judicial,
///                             06 - Operação Suspensa por Decisão Administrativa
    /// </summary>
    [NasajonSerializeAttribute('tipo_tributacao')]
    property tipo_tributacao: Integer read gettipo_tributacao write settipo_tributacao;

    /// <summary>
/// Indica o Regime Especial. Quando não informado assumirá da configuração de RPS.
///                             00 - Nenhum,
///                             01 - Microempresa Municipal,
///                             02 - Estimativa,
///                             03 - Sociedade de Profissionais,
///                             04 - Cooperativa,
///                             05 - Microempreendedor Individual,
///                             06 - Empresa Júnior
    /// </summary>
    [NasajonSerializeAttribute('regime_especial')]
    property regime_especial: Integer read getregime_especial write setregime_especial;

    /// <summary>
/// Indica se tem Incentivo Cultural. Quando não informado assumirá da configuração de RPS.
///                             0 - Não,
///                             1 - Sim
    /// </summary>
    [NasajonSerializeAttribute('incentivo_cultural')]
    property incentivo_cultural: Integer read getincentivo_cultural write setincentivo_cultural;

    /// <summary>
/// Indica se tem Benifício Fiscal. Quando não informado assumirá da configuração de RPS.
///                             001 - L. 691/84 - Isenção - associações de classe, sindicatos e as respectivas federações e confederações.
///                             002 - L. 691/84 - Isenção - associações culturais, recreativas e desportivas.
///                             003 - L. 691/84 - Isenção - serviços de veiculação de publicidade prestados por táxis autônomos e táxis de cooperativas.
///                             004 - L. 691/84 - Isenção - espetáculos circenses nacionais.
///                             005 - L. 691/84 - Isenção - espetáculos teatrais.
///                             006 - L. 691/84 - Isenção - promoção de concertos, recitais, shows, festividades, exposições, quermesses e similares.
///                             007 - L. 691/84 - Isenção - músicos, artistas e técnicos de espetáculos.
///                             008 - L. 691/84 - Isenção - exibição de filmes cinematográficos por entidades brasileiras sem fins lucrativos.
///                             009 - L. 691/84 - Isenção - reforma, reestruturação ou conserv. de prédios de int. histórico, cultural ou p/ preserv. ambiental.
///                             010 - L. 691/84 - Estudos e projetos / polos industriais - Lei 691/84, art. 12, inciso XX.
///                             011 - L. 4.372/06 - Isenção - Serv. vinc. à construção de terminais portuários na Zona Oeste.
///                             012 - L. 5.133/09 - Isenção - Serviços vinculados à construção de complexos siderúrgicos na Zona Oeste.
///                             013 - L. 5.044/2009 - Isenção - Central de teleatendimento (construção/reforma).
///                             014 - L. 5.065/2009 - Isenção - Empreendim. Habitacionais de interesse social e de arrendamento Resid. - construção / reforma.
///                             015 - Lei 5.128/2009 - Isenção - Operação Urbana Consorciada da Região do Porto do Rio.
///                             016 - L. 5.230/2010 - Isenção - Copa das Confederações 2013 / Copa do Mundo 2014.
///                             017 - L. 5.230/2010 - Isenção - Jogos Olímpicos e Paraolímpicos RIO 2016.
///                             039 - Exportação de serviços para o exterior.
///                             040 - Lei 4.372/2006 - Redução de Aliq. - Serviços Vinculados à operação de terminais portuários na Zona Oeste.
///                             041 - Lei 5.128/2009 - Redução de Aliq. - Operação Urbana Consorciada da Região do Porto do Rio.
///                             080 - Imunidade - Ente Federado.
///                             081 - Imunidade - Autarquia ou Fundação pública.
///                             082 - Imunidade - Templo religioso.
///                             083 - Imunidade - Partido político.
///                             084 - Imunidade - Fundação mantida por partido político.
///                             085 - Imunidade - Entidade sindical de trabalhadores.
///                             086 - Imunidade - Instituição de educação sem fins lucrativos.
///                             087 - CRFB, Art. 150, inc. VI, alínea c.
    /// </summary>
    [NasajonSerializeAttribute('beneficio_fiscal')]
    property beneficio_fiscal: Integer read getbeneficio_fiscal write setbeneficio_fiscal;

    [NasajonSerializeAttribute('codigo_servico')]
    property codigo_servico: String read getcodigo_servico write setcodigo_servico;

    [NasajonSerializeAttribute('codigo_municipio_prestacao')]
    property codigo_municipio_prestacao: String read getcodigo_municipio_prestacao write setcodigo_municipio_prestacao;

    [NasajonSerializeAttribute('obra')]
    property obra: String read getobra write setobra;

    [NasajonSerializeAttribute('discriminacao_servicos')]
    property discriminacao_servicos: String read getdiscriminacao_servicos write setdiscriminacao_servicos;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getdesconto write setdesconto;

    [NasajonSerializeAttribute('outras_deducoes')]
    property outras_deducoes: Currency read getoutras_deducoes write setoutras_deducoes;

    [NasajonSerializeAttribute('outras_retencoes')]
    property outras_retencoes: Currency read getoutras_retencoes write setoutras_retencoes;

    [NasajonSerializeAttribute('descricao_outras_retencoes')]
    property descricao_outras_retencoes: String read getdescricao_outras_retencoes write setdescricao_outras_retencoes;

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

    [NasajonSerializeAttribute('aliquota_iss')]
    property aliquota_iss: Currency read getaliquota_iss write setaliquota_iss;

    [NasajonSerializeAttribute('base_iss')]
    property base_iss: Currency read getbase_iss write setbase_iss;

    [NasajonSerializeAttribute('valor_iss')]
    property valor_iss: Currency read getvalor_iss write setvalor_iss;

    [NasajonSerializeAttribute('base_ir')]
    property base_ir: Currency read getbase_ir write setbase_ir;

    [NasajonSerializeAttribute('valor_ir')]
    property valor_ir: Currency read getvalor_ir write setvalor_ir;

    [NasajonSerializeAttribute('base_inss')]
    property base_inss: Currency read getbase_inss write setbase_inss;

    [NasajonSerializeAttribute('valor_inss')]
    property valor_inss: Currency read getvalor_inss write setvalor_inss;

    [NasajonSerializeAttribute('base_pis')]
    property base_pis: Currency read getbase_pis write setbase_pis;

    [NasajonSerializeAttribute('valor_pis')]
    property valor_pis: Currency read getvalor_pis write setvalor_pis;

    [NasajonSerializeAttribute('base_cofins')]
    property base_cofins: Currency read getbase_cofins write setbase_cofins;

    [NasajonSerializeAttribute('valor_cofins')]
    property valor_cofins: Currency read getvalor_cofins write setvalor_cofins;

    [NasajonSerializeAttribute('base_csll')]
    property base_csll: Currency read getbase_csll write setbase_csll;

    [NasajonSerializeAttribute('valor_csll')]
    property valor_csll: Currency read getvalor_csll write setvalor_csll;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getobservacao write setobservacao;

    [NasajonSerializeAttribute('observacao_titulo')]
    property observacao_titulo: String read getobservacao_titulo write setobservacao_titulo;

    [NasajonSerializeAttribute('conjunto_anexo')]
    property conjunto_anexo: String read getconjunto_anexo write setconjunto_anexo;

    [NasajonSerializeAttribute('lote_cobranca')]
    property lote_cobranca: String read getlote_cobranca write setlote_cobranca;

    /// <summary>
/// Indica o número da nota de serviço que será substituída pelo RPS gerado.
    /// </summary>
    [NasajonSerializeAttribute('numero_nota_servico_substituicao')]
    property numero_nota_servico_substituicao: String read getnumero_nota_servico_substituicao write setnumero_nota_servico_substituicao;

    [NasajonSerializeAttribute('documento_vinculado')]
    property documento_vinculado: String read getdocumento_vinculado write setdocumento_vinculado;

    [NasajonSerializeAttribute('numero_titulo')]
    property numero_titulo: String read getnumero_titulo write setnumero_titulo;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getusuario write setusuario;

    [NasajonSerializeAttribute('template_rps')]
    property template_rps: String read gettemplate_rps write settemplate_rps;

    [NasajonSerializeAttribute('id_contrato')]
    property id_contrato: String read getid_contrato write setid_contrato;

    [NasajonSerializeAttribute('id_processamento_cobranca')]
    property id_processamento_cobranca: String read getid_processamento_cobranca write setid_processamento_cobranca;

    [NasajonSerializeAttribute('xml_docengine')]
    property xml_docengine: String read getxml_docengine write setxml_docengine;

    [NasajonSerializeAttribute('calcular_imposto')]
    property calcular_imposto: Boolean read getcalcular_imposto write setcalcular_imposto;

    [NasajonSerializeAttribute('gerar_financeiro')]
    property gerar_financeiro: Boolean read getgerar_financeiro write setgerar_financeiro;

    /// <summary>
/// Indica a lista de itens do RPS.
    /// </summary>
    [NasajonSerializeAttribute('itens')]
    property itens: TObjectList<titemrps_v3> read getitens write setitens;

    [NasajonSerializeAttribute('pagamentos')]
    property pagamentos: TObjectList<TPagamentoSemParcela> read getpagamentos write setpagamentos;

    [NasajonSerializeAttribute('parcelas')]
    property parcelas: TObjectList<TParcela> read getparcelas write setparcelas;

    /// <summary>
/// Indica a lista de discriminação de valores por classificação financeira e centro de custo.
    /// </summary>
    [NasajonSerializeAttribute('rateios')]
    property rateios: TObjectList<TItemRateioFinanceiro> read getrateios write setrateios;

    /// <summary>
/// Indica a lista de vendedores vinculados ao serviço prestado.
    /// </summary>
    [NasajonSerializeAttribute('vendedores')]
    property vendedores: TObjectList<TVendedorRPS> read getvendedores write setvendedores;

    [NasajonSerializeAttribute('retem_ir_nota')]
    property retem_ir_nota: Boolean read getretem_ir_nota write setretem_ir_nota;

    [NasajonSerializeAttribute('numeroexterno')]
    property numeroexterno: String read getnumero_externo write setnumero_externo;

    [NasajonSerializeAttribute('projeto_padrao_id')]
    property projeto_padrao_id: String read get_projeto_padrao_id write set_projeto_padrao_id;

    [NasajonSerializeAttribute('reinf_maodeobra')]
    property reinf_maodeobra: String read get_reinf_maodeobra write set_reinf_maodeobra;
	
    [NasajonSerializeAttribute('cnae')]
    property cnae: String read get_cnae write set_cnae;	
end;

	
implementation

  uses
      api.send;  

function Trps_v3.getid: String;
begin
  Result := Self.m_id;
end;

procedure Trps_v3.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function Trps_v3.getnota_antecipada: Boolean;
begin
  Result := Self.m_nota_antecipada;
end;

procedure Trps_v3.setnota_antecipada(const a_Value: Boolean);
begin
  Self.m_nota_antecipada := a_Value;
end;

function Trps_v3.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure Trps_v3.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function Trps_v3.getcliente: String;
begin
  Result := Self.m_cliente;
end;

procedure Trps_v3.setcliente(const a_Value: String);
begin
  Self.m_cliente := a_Value;
end;

function Trps_v3.getserie: String;
begin
  Result := Self.m_serie;
end;

procedure Trps_v3.setserie(const a_Value: String);
begin
  Self.m_serie := a_Value;
end;

function Trps_v3.getlancamento: TDate;
begin
  Result := Self.m_lancamento;
end;

procedure Trps_v3.setlancamento(const a_Value: TDate);
begin
  Self.m_lancamento := a_Value;
end;

function Trps_v3.getorigem: Integer;
begin
  Result := Self.m_origem;
end;

procedure Trps_v3.setorigem(const a_Value: Integer);
begin
  Self.m_origem := a_Value;
end;

function Trps_v3.gettipo_tributacao: Integer;
begin
  Result := Self.m_tipo_tributacao;
end;

procedure Trps_v3.settipo_tributacao(const a_Value: Integer);
begin
  Self.m_tipo_tributacao := a_Value;
end;

function Trps_v3.getregime_especial: Integer;
begin
  Result := Self.m_regime_especial;
end;

procedure Trps_v3.setregime_especial(const a_Value: Integer);
begin
  Self.m_regime_especial := a_Value;
end;

function Trps_v3.getincentivo_cultural: Integer;
begin
  Result := Self.m_incentivo_cultural;
end;

procedure Trps_v3.setincentivo_cultural(const a_Value: Integer);
begin
  Self.m_incentivo_cultural := a_Value;
end;

function Trps_v3.getbeneficio_fiscal: Integer;
begin
  Result := Self.m_beneficio_fiscal;
end;

procedure Trps_v3.setbeneficio_fiscal(const a_Value: Integer);
begin
  Self.m_beneficio_fiscal := a_Value;
end;

function Trps_v3.getcodigo_servico: String;
begin
  Result := Self.m_codigo_servico;
end;

procedure Trps_v3.setcodigo_servico(const a_Value: String);
begin
  Self.m_codigo_servico := a_Value;
end;

function Trps_v3.getcodigo_municipio_prestacao: String;
begin
  Result := Self.m_codigo_municipio_prestacao;
end;

procedure Trps_v3.setcodigo_municipio_prestacao(const a_Value: String);
begin
  Self.m_codigo_municipio_prestacao := a_Value;
end;

function Trps_v3.getobra: String;
begin
  Result := Self.m_obra;
end;

procedure Trps_v3.setobra(const a_Value: String);
begin
  Self.m_obra := a_Value;
end;

function Trps_v3.getdiscriminacao_servicos: String;
begin
  Result := Self.m_discriminacao_servicos;
end;

procedure Trps_v3.setdiscriminacao_servicos(const a_Value: String);
begin
  Self.m_discriminacao_servicos := a_Value;
end;

function Trps_v3.getdesconto: Currency;
begin
  Result := Self.m_desconto;
end;

procedure Trps_v3.setdesconto(const a_Value: Currency);
begin
  Self.m_desconto := a_Value;
end;

function Trps_v3.getoutras_deducoes: Currency;
begin
  Result := Self.m_outras_deducoes;
end;

procedure Trps_v3.setoutras_deducoes(const a_Value: Currency);
begin
  Self.m_outras_deducoes := a_Value;
end;

function Trps_v3.getoutras_retencoes: Currency;
begin
  Result := Self.m_outras_retencoes;
end;

procedure Trps_v3.setoutras_retencoes(const a_Value: Currency);
begin
  Self.m_outras_retencoes := a_Value;
end;

function Trps_v3.getdescricao_outras_retencoes: String;
begin
  Result := Self.m_descricao_outras_retencoes;
end;

procedure Trps_v3.setdescricao_outras_retencoes(const a_Value: String);
begin
  Self.m_descricao_outras_retencoes := a_Value;
end;

function Trps_v3.getretem_iss: Boolean;
begin
  Result := Self.m_retem_iss;
end;

procedure Trps_v3.setretem_iss(const a_Value: Boolean);
begin
  Self.m_retem_iss := a_Value;
end;

function Trps_v3.getretem_ir: Boolean;
begin
  Result := Self.m_retem_ir;
end;

procedure Trps_v3.setretem_ir(const a_Value: Boolean);
begin
  Self.m_retem_ir := a_Value;
end;

function Trps_v3.getretem_inss: Boolean;
begin
  Result := Self.m_retem_inss;
end;

procedure Trps_v3.setretem_inss(const a_Value: Boolean);
begin
  Self.m_retem_inss := a_Value;
end;

function Trps_v3.getretem_pis: Boolean;
begin
  Result := Self.m_retem_pis;
end;

procedure Trps_v3.setretem_pis(const a_Value: Boolean);
begin
  Self.m_retem_pis := a_Value;
end;

function Trps_v3.getretem_cofins: Boolean;
begin
  Result := Self.m_retem_cofins;
end;

procedure Trps_v3.setretem_cofins(const a_Value: Boolean);
begin
  Self.m_retem_cofins := a_Value;
end;

function Trps_v3.getretem_csll: Boolean;
begin
  Result := Self.m_retem_csll;
end;

procedure Trps_v3.setretem_csll(const a_Value: Boolean);
begin
  Self.m_retem_csll := a_Value;
end;

function Trps_v3.getaliquota_iss: Currency;
begin
  Result := Self.m_aliquota_iss;
end;

procedure Trps_v3.setaliquota_iss(const a_Value: Currency);
begin
  Self.m_aliquota_iss := a_Value;
end;

function Trps_v3.getbase_iss: Currency;
begin
  Result := Self.m_base_iss;
end;

procedure Trps_v3.setbase_iss(const a_Value: Currency);
begin
  Self.m_base_iss := a_Value;
end;

function Trps_v3.getvalor_iss: Currency;
begin
  Result := Self.m_valor_iss;
end;

procedure Trps_v3.setvalor_iss(const a_Value: Currency);
begin
  Self.m_valor_iss := a_Value;
end;

function Trps_v3.getbase_ir: Currency;
begin
  Result := Self.m_base_ir;
end;

procedure Trps_v3.setbase_ir(const a_Value: Currency);
begin
  Self.m_base_ir := a_Value;
end;

function Trps_v3.getvalor_ir: Currency;
begin
  Result := Self.m_valor_ir;
end;

procedure Trps_v3.setvalor_ir(const a_Value: Currency);
begin
  Self.m_valor_ir := a_Value;
end;

function Trps_v3.getbase_inss: Currency;
begin
  Result := Self.m_base_inss;
end;

procedure Trps_v3.setbase_inss(const a_Value: Currency);
begin
  Self.m_base_inss := a_Value;
end;

function Trps_v3.getvalor_inss: Currency;
begin
  Result := Self.m_valor_inss;
end;

procedure Trps_v3.setvalor_inss(const a_Value: Currency);
begin
  Self.m_valor_inss := a_Value;
end;

function Trps_v3.getbase_pis: Currency;
begin
  Result := Self.m_base_pis;
end;

procedure Trps_v3.setbase_pis(const a_Value: Currency);
begin
  Self.m_base_pis := a_Value;
end;

function Trps_v3.getvalor_pis: Currency;
begin
  Result := Self.m_valor_pis;
end;

procedure Trps_v3.setvalor_pis(const a_Value: Currency);
begin
  Self.m_valor_pis := a_Value;
end;

function Trps_v3.getbase_cofins: Currency;
begin
  Result := Self.m_base_cofins;
end;

procedure Trps_v3.setbase_cofins(const a_Value: Currency);
begin
  Self.m_base_cofins := a_Value;
end;

function Trps_v3.getvalor_cofins: Currency;
begin
  Result := Self.m_valor_cofins;
end;

procedure Trps_v3.setvalor_cofins(const a_Value: Currency);
begin
  Self.m_valor_cofins := a_Value;
end;

function Trps_v3.getbase_csll: Currency;
begin
  Result := Self.m_base_csll;
end;

procedure Trps_v3.setbase_csll(const a_Value: Currency);
begin
  Self.m_base_csll := a_Value;
end;

function Trps_v3.getvalor_csll: Currency;
begin
  Result := Self.m_valor_csll;
end;

procedure Trps_v3.setvalor_csll(const a_Value: Currency);
begin
  Self.m_valor_csll := a_Value;
end;

function Trps_v3.getobservacao: String;
begin
  Result := Self.m_observacao;
end;

procedure Trps_v3.setobservacao(const a_Value: String);
begin
  Self.m_observacao := a_Value;
end;

function Trps_v3.getobservacao_titulo: String;
begin
  Result := Self.m_observacao_titulo;
end;

procedure Trps_v3.setobservacao_titulo(const a_Value: String);
begin
  Self.m_observacao_titulo := a_Value;
end;

function Trps_v3.getconjunto_anexo: String;
begin
  Result := Self.m_conjunto_anexo;
end;

procedure Trps_v3.setconjunto_anexo(const a_Value: String);
begin
  Self.m_conjunto_anexo := a_Value;
end;

function Trps_v3.getlote_cobranca: String;
begin
  Result := Self.m_lote_cobranca;
end;

procedure Trps_v3.setlote_cobranca(const a_Value: String);
begin
  Self.m_lote_cobranca := a_Value;
end;

function Trps_v3.getnumero_externo: String;
begin
  Result := Self.m_numeroexterno;
end;

function Trps_v3.getnumero_nota_servico_substituicao: String;
begin
  Result := Self.m_numero_nota_servico_substituicao;
end;

procedure Trps_v3.setnumero_externo(const a_Value: String);
begin
  Self.m_numeroexterno := a_Value;
end;

procedure Trps_v3.setnumero_nota_servico_substituicao(const a_Value: String);
begin
  Self.m_numero_nota_servico_substituicao := a_Value;
end;

function Trps_v3.getdocumento_vinculado: String;
begin
  Result := Self.m_documento_vinculado;
end;

procedure Trps_v3.setdocumento_vinculado(const a_Value: String);
begin
  Self.m_documento_vinculado := a_Value;
end;

function Trps_v3.getnumero_titulo: String;
begin
  Result := Self.m_numero_titulo;
end;

procedure Trps_v3.setnumero_titulo(const a_Value: String);
begin
  Self.m_numero_titulo := a_Value;
end;

function Trps_v3.getusuario: String;
begin
  Result := Self.m_usuario;
end;

procedure Trps_v3.setusuario(const a_Value: String);
begin
  Self.m_usuario := a_Value;
end;

function Trps_v3.gettemplate_rps: String;
begin
  Result := Self.m_template_rps;
end;

procedure Trps_v3.settemplate_rps(const a_Value: String);
begin
  Self.m_template_rps := a_Value;
end;

function Trps_v3.getid_contrato: String;
begin
  Result := Self.m_id_contrato;
end;

procedure Trps_v3.setid_contrato(const a_Value: String);
begin
  Self.m_id_contrato := a_Value;
end;

function Trps_v3.getid_processamento_cobranca: String;
begin
  Result := Self.m_id_processamento_cobranca;
end;

procedure Trps_v3.setid_processamento_cobranca(const a_Value: String);
begin
  Self.m_id_processamento_cobranca := a_Value;
end;

function Trps_v3.getxml_docengine: String;
begin
  Result := Self.m_xml_docengine;
end;

function Trps_v3.get_projeto_padrao_id: String;
begin
  Result := Self.m_projeto_padrao_id;
end;

function Trps_v3.get_reinf_maodeobra: String;
begin
  Result := Self.m_reinf_maodeobra;
end;

function Trps_v3.get_cnae: String;
begin
  Result := Self.m_cnae;
end;

procedure Trps_v3.setxml_docengine(const a_Value: String);
begin
  Self.m_xml_docengine := a_Value;
end;

procedure Trps_v3.set_projeto_padrao_id(const a_Value: String);
begin
  Self.m_projeto_padrao_id := a_Value;
end;

procedure Trps_v3.set_reinf_maodeobra(const a_Value: String);
begin
  Self.m_reinf_maodeobra := a_Value;
end;

procedure Trps_v3.set_cnae(const a_Value: String);
begin
  Self.m_cnae := a_Value;
end;

function Trps_v3.getcalcular_imposto: Boolean;
begin
  Result := Self.m_calcular_imposto;
end;

procedure Trps_v3.setcalcular_imposto(const a_Value: Boolean);
begin
  Self.m_calcular_imposto := a_Value;
end;

function Trps_v3.getgerar_financeiro: Boolean;
begin
  Result := Self.m_gerar_financeiro;
end;

procedure Trps_v3.setgerar_financeiro(const a_Value: Boolean);
begin
  Self.m_gerar_financeiro := a_Value;
end;

function Trps_v3.getitens: TObjectList<titemrps_v3>;
begin
  if not Assigned(Self.m_itens)
    then Self.m_itens := TObjectList<titemrps_v3>.Create();
  Result := Self.m_itens;
end;

procedure Trps_v3.setitens(const a_Value: TObjectList<titemrps_v3>);
begin
  Self.m_itens := a_Value;
end;

function Trps_v3.getpagamentos: TObjectList<TPagamentoSemParcela>;
begin
  if not Assigned(Self.m_pagamentos)
    then Self.m_pagamentos := TObjectList<TPagamentoSemParcela>.Create();
  Result := Self.m_pagamentos;
end;

procedure Trps_v3.setpagamentos(const a_Value: TObjectList<TPagamentoSemParcela>);
begin
  Self.m_pagamentos := a_Value;
end;

function Trps_v3.getparcelas: TObjectList<TParcela>;
begin
  if not Assigned(Self.m_parcelas)
    then Self.m_parcelas := TObjectList<TParcela>.Create();
  Result := Self.m_parcelas;
end;

procedure Trps_v3.setparcelas(const a_Value: TObjectList<TParcela>);
begin
  Self.m_parcelas := a_Value;
end;

function Trps_v3.getrateios: TObjectList<TItemRateioFinanceiro>;
begin
  if not Assigned(Self.m_rateios)
    then Self.m_rateios := TObjectList<TItemRateioFinanceiro>.Create();
  Result := Self.m_rateios;
end;

procedure Trps_v3.setrateios(const a_Value: TObjectList<TItemRateioFinanceiro>);
begin
  Self.m_rateios := a_Value;
end;

function Trps_v3.getvendedores: TObjectList<TVendedorRPS>;
begin
  if not Assigned(Self.m_vendedores)
    then Self.m_vendedores := TObjectList<TVendedorRPS>.Create();
  Result := Self.m_vendedores;
end;

procedure Trps_v3.setvendedores(const a_Value: TObjectList<TVendedorRPS>);
begin
  Self.m_vendedores := a_Value;
end;

function Trps_v3.getretem_ir_nota: Boolean;
begin
  Result := Self.m_retem_ir_nota;
end;

procedure Trps_v3.setretem_ir_nota(const a_Value: Boolean);
begin
  Self.m_retem_ir_nota := a_Value;
end;

destructor Trps_v3.Destroy;
begin
  Self.itens.Free();  Self.pagamentos.Free();  Self.parcelas.Free();  Self.rateios.Free();  Self.vendedores.Free();
end;

function Trps_v3.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Trps_v3.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Trps_v3.getNameAPI(): String;
begin
  Result := 'rps_v3';
end;

function Trps_v3.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Trps_v3.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
