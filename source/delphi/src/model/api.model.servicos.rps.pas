unit api.model.servicos.RPS;

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
	
  , api.model.servicos.ItemRPS
  , System.Generics.Collections
	

	;

type TRPSNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_Serie: String;
    var m_Emissao: TDate;
    var m_Lancamento: TDate;
    var m_TipoTributacao: Integer;
    var m_RegimeEspecial: Integer;
    var m_IncentivoCultural: Integer;
    var m_BeneficioFiscal: Integer;
    var m_Desconto: Currency;
    var m_ItemRPS: TObjectList<TItemRPSNovo>;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getSerie(): String;
    function getEmissao(): TDate;
    function getLancamento(): TDate;
    function getTipoTributacao(): Integer;
    function getRegimeEspecial(): Integer;
    function getIncentivoCultural(): Integer;
    function getBeneficioFiscal(): Integer;
    function getDesconto(): Currency;
    function getItemRPS(): TObjectList<TItemRPSNovo>;
    

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setSerie(const a_Value: String);
    procedure setEmissao(const a_Value: TDate);
    procedure setLancamento(const a_Value: TDate);
    procedure setTipoTributacao(const a_Value: Integer);
    procedure setRegimeEspecial(const a_Value: Integer);
    procedure setIncentivoCultural(const a_Value: Integer);
    procedure setBeneficioFiscal(const a_Value: Integer);
    procedure setDesconto(const a_Value: Currency);
    procedure setItemRPS(const a_Value: TObjectList<TItemRPSNovo>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('serie')]
    property serie: String read getSerie write setSerie;

    [NasajonSerializeAttribute('emissao')]
    property emissao: TDate read getEmissao write setEmissao;

    [NasajonSerializeAttribute('lancamento')]
    property lancamento: TDate read getLancamento write setLancamento;

    /// <summary>
/// Indica o Tipo de Tributa��o. Quando n�o informado assumir� da configura��o de RPS.
///                                              00 - Nenhum,
///                                              01 - Tributa��o no Munic�pio,
///                                              02 - Tributa��o Fora do Munic�pio,
///                                              03 - Opera��o Isenta,
///                                              04 - Opera��o Imune,
///                                              05 - Opera��o Suspensa por Decis�o Judicial,
///                                              06 - Opera��o Suspensa por Decis�o Administrativa
    /// </summary>
    [NasajonSerializeAttribute('tipotributacao')]
    property tipotributacao: Integer read getTipoTributacao write setTipoTributacao;

    /// <summary>
/// Indica o Regime Especial. Quando n�o informado assumir� da configura��o de RPS.
///                                              00 - Nenhum,
///                                              01 - Microempresa Municipal,
///                                              02 - Estimativa,
///                                              03 - Sociedade de Profissionais,
///                                              04 - Cooperativa,
///                                              05 - Microempreendedor Individual,
///                                              06 - Empresa J�nior
    /// </summary>
    [NasajonSerializeAttribute('regimeespecial')]
    property regimeespecial: Integer read getRegimeEspecial write setRegimeEspecial;

    /// <summary>
/// Indica se tem Incentivo Cultural. Quando n�o informado assumir� da configura��o de RPS.
///                                              0 - N�o,
///                                              1 - Sim
    /// </summary>
    [NasajonSerializeAttribute('incentivocultural')]
    property incentivocultural: Integer read getIncentivoCultural write setIncentivoCultural;

    /// <summary>
/// Indica se tem Benif�cio Fiscal. Quando n�o informado assumir� da configura��o de RPS.
///                                              001 - L. 691/84 - Isen��o - associa��es de classe, sindicatos e as respectivas federa��es e confedera��es.
///                                              002 - L. 691/84 - Isen��o - associa��es culturais, recreativas e desportivas.
///                                              003 - L. 691/84 - Isen��o - servi�os de veicula��o de publicidade prestados por t�xis aut�nomos e t�xis de cooperativas.
///                                              004 - L. 691/84 - Isen��o - espet�culos circenses nacionais.
///                                              005 - L. 691/84 - Isen��o - espet�culos teatrais.
///                                              006 - L. 691/84 - Isen��o - promo��o de concertos, recitais, shows, festividades, exposi��es, quermesses e similares.
///                                              007 - L. 691/84 - Isen��o - m�sicos, artistas e t�cnicos de espet�culos.
///                                              008 - L. 691/84 - Isen��o - exibi��o de filmes cinematogr�ficos por entidades brasileiras sem fins lucrativos.
///                                              009 - L. 691/84 - Isen��o - reforma, reestrutura��o ou conserv. de pr�dios de int. hist�rico, cultural ou p/ preserv. ambiental.
///                                              010 - L. 691/84 - Estudos e projetos / polos industriais - Lei 691/84, art. 12, inciso XX.
///                                              011 - L. 4.372/06 - Isen��o - Serv. vinc. � constru��o de terminais portu�rios na Zona Oeste.
///                                              012 - L. 5.133/09 - Isen��o - Servi�os vinculados � constru��o de complexos sider�rgicos na Zona Oeste.
///                                              013 - L. 5.044/2009 - Isen��o - Central de teleatendimento (constru��o/reforma).
///                                              014 - L. 5.065/2009 - Isen��o - Empreendim. Habitacionais de interesse social e de arrendamento Resid. - constru��o / reforma.
///                                              015 - Lei 5.128/2009 - Isen��o - Opera��o Urbana Consorciada da Regi�o do Porto do Rio.
///                                              016 - L. 5.230/2010 - Isen��o - Copa das Confedera��es 2013 / Copa do Mundo 2014.
///                                              017 - L. 5.230/2010 - Isen��o - Jogos Ol�mpicos e Paraol�mpicos RIO 2016.
///                                              039 - Exporta��o de servi�os para o exterior.
///                                              040 - Lei 4.372/2006 - Redu��o de Aliq. - Servi�os Vinculados � opera��o de terminais portu�rios na Zona Oeste.
///                                              041 - Lei 5.128/2009 - Redu��o de Aliq. - Opera��o Urbana Consorciada da Regi�o do Porto do Rio.
///                                              080 - Imunidade - Ente Federado.
///                                              081 - Imunidade - Autarquia ou Funda��o p�blica.
///                                              082 - Imunidade - Templo religioso.
///                                              083 - Imunidade - Partido pol�tico.
///                                              084 - Imunidade - Funda��o mantida por partido pol�tico.
///                                              085 - Imunidade - Entidade sindical de trabalhadores.
///                                              086 - Imunidade - Institui��o de educa��o sem fins lucrativos.
///                                              087 - CRFB, Art. 150, inc. VI, al�nea c.
    /// </summary>
    [NasajonSerializeAttribute('beneficiofiscal')]
    property beneficiofiscal: Integer read getBeneficioFiscal write setBeneficioFiscal;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getDesconto write setDesconto;

    /// <summary>
/// Indica a lista dos Itens do RPS.
    /// </summary>
    [NasajonSerializeAttribute('itemrps')]
    property itemrps: TObjectList<TItemRPSNovo> read getItemRPS write setItemRPS;

    

end;

type TRPSExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    

    function getId(): String;
    

    procedure setId(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    

end;

type TRPSVisualizar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    

    function getId(): String;
    

    procedure setId(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Identificador do RPS
    /// </summary>
    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    

end;

	
implementation

  uses
      api.send;  

function TRPSNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TRPSNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TRPSNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TRPSNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TRPSNovo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TRPSNovo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TRPSNovo.getSerie: String;
begin
  Result := Self.m_Serie;
end;

procedure TRPSNovo.setSerie(const a_Value: String);
begin
  Self.m_Serie := a_Value;
end;

function TRPSNovo.getEmissao: TDate;
begin
  Result := Self.m_Emissao;
end;

procedure TRPSNovo.setEmissao(const a_Value: TDate);
begin
  Self.m_Emissao := a_Value;
end;

function TRPSNovo.getLancamento: TDate;
begin
  Result := Self.m_Lancamento;
end;

procedure TRPSNovo.setLancamento(const a_Value: TDate);
begin
  Self.m_Lancamento := a_Value;
end;

function TRPSNovo.getTipoTributacao: Integer;
begin
  Result := Self.m_TipoTributacao;
end;

procedure TRPSNovo.setTipoTributacao(const a_Value: Integer);
begin
  Self.m_TipoTributacao := a_Value;
end;

function TRPSNovo.getRegimeEspecial: Integer;
begin
  Result := Self.m_RegimeEspecial;
end;

procedure TRPSNovo.setRegimeEspecial(const a_Value: Integer);
begin
  Self.m_RegimeEspecial := a_Value;
end;

function TRPSNovo.getIncentivoCultural: Integer;
begin
  Result := Self.m_IncentivoCultural;
end;

procedure TRPSNovo.setIncentivoCultural(const a_Value: Integer);
begin
  Self.m_IncentivoCultural := a_Value;
end;

function TRPSNovo.getBeneficioFiscal: Integer;
begin
  Result := Self.m_BeneficioFiscal;
end;

procedure TRPSNovo.setBeneficioFiscal(const a_Value: Integer);
begin
  Self.m_BeneficioFiscal := a_Value;
end;

function TRPSNovo.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TRPSNovo.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TRPSNovo.getItemRPS: TObjectList<TItemRPSNovo>;
begin
  if not Assigned(Self.m_ItemRPS)
    then Self.m_ItemRPS := TObjectList<TItemRPSNovo>.Create();
  Result := Self.m_ItemRPS;
end;

procedure TRPSNovo.setItemRPS(const a_Value: TObjectList<TItemRPSNovo>);
begin
  Self.m_ItemRPS := a_Value;
end;

destructor TRPSNovo.Destroy;
begin
  Self.ItemRPS.Free();
end;

function TRPSNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRPSNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRPSNovo.getNameAPI(): String;
begin
  Result := 'RPSNovo';
end;

function TRPSNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRPSNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRPSExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TRPSExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TRPSExcluir.Destroy;
begin

end;

function TRPSExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRPSExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRPSExcluir.getNameAPI(): String;
begin
  Result := 'RPSExcluir';
end;

function TRPSExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRPSExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRPSVisualizar.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TRPSVisualizar.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TRPSVisualizar.Destroy;
begin

end;

function TRPSVisualizar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRPSVisualizar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRPSVisualizar.getNameAPI(): String;
begin
  Result := 'RPSVisualizar';
end;

function TRPSVisualizar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRPSVisualizar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
