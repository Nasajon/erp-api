unit api.model.servicos.importacao_itemrps;

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

type Timportacao_itemrps = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Servico: String;
    var m_Descricao: String;
    var m_ValorUnitario: Currency;
    var m_Quantidade: Currency;
    var m_Desconto: Currency;
    var m_BaseISS: Currency;
    var m_ValorISS: Currency;
    var m_BaseINSS: Currency;
    var m_ValorINSS: Currency;
    var m_BaseIR: Currency;
    var m_ValorIR: Currency;
    var m_BasePIS: Currency;
    var m_ValorPIS: Currency;
    var m_BaseCOFINS: Currency;
    var m_ValorCOFINS: Currency;
    var m_BaseCSLL: Currency;
    var m_ValorCSLL: Currency;
    var m_RetemISS: Boolean;
    var m_RetemINSS: Boolean;
    var m_RetemIR: Boolean;
    var m_RetemPIS: Boolean;
    var m_RetemCOFINS: Boolean;
    var m_RetemCSLL: Boolean;
    

    function getServico(): String;
    function getDescricao(): String;
    function getValorUnitario(): Currency;
    function getQuantidade(): Currency;
    function getDesconto(): Currency;
    function getBaseISS(): Currency;
    function getValorISS(): Currency;
    function getBaseINSS(): Currency;
    function getValorINSS(): Currency;
    function getBaseIR(): Currency;
    function getValorIR(): Currency;
    function getBasePIS(): Currency;
    function getValorPIS(): Currency;
    function getBaseCOFINS(): Currency;
    function getValorCOFINS(): Currency;
    function getBaseCSLL(): Currency;
    function getValorCSLL(): Currency;
    function getRetemISS(): Boolean;
    function getRetemINSS(): Boolean;
    function getRetemIR(): Boolean;
    function getRetemPIS(): Boolean;
    function getRetemCOFINS(): Boolean;
    function getRetemCSLL(): Boolean;
    

    procedure setServico(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setValorUnitario(const a_Value: Currency);
    procedure setQuantidade(const a_Value: Currency);
    procedure setDesconto(const a_Value: Currency);
    procedure setBaseISS(const a_Value: Currency);
    procedure setValorISS(const a_Value: Currency);
    procedure setBaseINSS(const a_Value: Currency);
    procedure setValorINSS(const a_Value: Currency);
    procedure setBaseIR(const a_Value: Currency);
    procedure setValorIR(const a_Value: Currency);
    procedure setBasePIS(const a_Value: Currency);
    procedure setValorPIS(const a_Value: Currency);
    procedure setBaseCOFINS(const a_Value: Currency);
    procedure setValorCOFINS(const a_Value: Currency);
    procedure setBaseCSLL(const a_Value: Currency);
    procedure setValorCSLL(const a_Value: Currency);
    procedure setRetemISS(const a_Value: Boolean);
    procedure setRetemINSS(const a_Value: Boolean);
    procedure setRetemIR(const a_Value: Boolean);
    procedure setRetemPIS(const a_Value: Boolean);
    procedure setRetemCOFINS(const a_Value: Boolean);
    procedure setRetemCSLL(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    /// <summary>
/// Identificador do serviço prestado
    /// </summary>
    [NasajonSerializeAttribute('servico')]
    property servico: String read getServico write setServico;

    /// <summary>
/// Indica a descrição do serviço prestado. Quando não informado assumirá a descrição do serviço informado
    /// </summary>
    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    /// <summary>
/// Indica o valor unitário do serviço prestado. Quando não informado assumirá o valor unitário do serviço informado
    /// </summary>
    [NasajonSerializeAttribute('valorunitario')]
    property valorunitario: Currency read getValorUnitario write setValorUnitario;

    /// <summary>
/// Indica a quantidade de serviços prestados
    /// </summary>
    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Currency read getQuantidade write setQuantidade;

    /// <summary>
/// Indica o desconto no valor unitário do serviço prestado. Quando não informado assumirá o valor zero
    /// </summary>
    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getDesconto write setDesconto;

    /// <summary>
/// Indica a base de ISS do serviço prestado. Quando não informado assumirá o o valor do serviço informado caso a configuração do cliente/código de serviço esteja informando que retem
    /// </summary>
    [NasajonSerializeAttribute('baseiss')]
    property baseiss: Currency read getBaseISS write setBaseISS;

    /// <summary>
/// Indica o valor do ISS do serviço prestado. Quando não informado assumirá o valor da base de ISS multiplicado pela alíquota de ISS informada na configuração de RPS
    /// </summary>
    [NasajonSerializeAttribute('valoriss')]
    property valoriss: Currency read getValorISS write setValorISS;

    /// <summary>
/// Indica a base de INSS do serviço prestado. Quando não informado assumirá o valor do serviço informado caso a configuração do cliente/código de serviço esteja informando que retem
    /// </summary>
    [NasajonSerializeAttribute('baseinss')]
    property baseinss: Currency read getBaseINSS write setBaseINSS;

    /// <summary>
/// Indica o valor do INSS do serviço prestado. Quando não informado assumirá o valor da base de INSS multiplicado pela alíquota de INSS informada na configuração do serviço
    /// </summary>
    [NasajonSerializeAttribute('valorinss')]
    property valorinss: Currency read getValorINSS write setValorINSS;

    /// <summary>
/// Indica a base de IR do serviço prestado. Quando não informado assumirá o valor do serviço informado caso a configuração do cliente/código de serviço esteja informando que retem
    /// </summary>
    [NasajonSerializeAttribute('baseir')]
    property baseir: Currency read getBaseIR write setBaseIR;

    /// <summary>
/// Indica o valor do IR do serviço prestado. Quando não informado assumirá o valor da base de IR multiplicado pela alíquota de IR informada na configuração de RPS
    /// </summary>
    [NasajonSerializeAttribute('valorir')]
    property valorir: Currency read getValorIR write setValorIR;

    /// <summary>
/// Indica a base de PIS do serviço prestado. Quando não informado assumirá o valor do serviço informado caso a configuração do cliente/código de serviço esteja informando que retem
    /// </summary>
    [NasajonSerializeAttribute('basepis')]
    property basepis: Currency read getBasePIS write setBasePIS;

    /// <summary>
/// Indica o valor do PIS do serviço prestado. Quando não informado assumirá o valor da base de PIS multiplicado pela alíquota de PIS informada na configuração de RPS
    /// </summary>
    [NasajonSerializeAttribute('valorpis')]
    property valorpis: Currency read getValorPIS write setValorPIS;

    /// <summary>
/// Indica a base de COFINS do serviço prestado. Quando não informado assumirá o valor do serviço informado caso a configuração do cliente/código de serviço esteja informando que retem
    /// </summary>
    [NasajonSerializeAttribute('basecofins')]
    property basecofins: Currency read getBaseCOFINS write setBaseCOFINS;

    /// <summary>
/// Indica o valor do COFINS do serviço prestado. Quando não informado assumirá o valor da base de COFINS multiplicado pela alíquota de COFINS informada na configuração de RPS
    /// </summary>
    [NasajonSerializeAttribute('valorcofins')]
    property valorcofins: Currency read getValorCOFINS write setValorCOFINS;

    /// <summary>
/// Indica a base de CSLL do serviço prestado. Quando não informado assumirá o valor do serviço informado caso a configuração do cliente/código de serviço esteja informando que retem
    /// </summary>
    [NasajonSerializeAttribute('basecsll')]
    property basecsll: Currency read getBaseCSLL write setBaseCSLL;

    /// <summary>
/// Indica o valor do CSLL do serviço prestado. Quando não informado assumirá o valor da base de CSLL  multiplicado pela alíquota de CSLL informada na configuração de RPS
    /// </summary>
    [NasajonSerializeAttribute('valorcsll')]
    property valorcsll: Currency read getValorCSLL write setValorCSLL;

    /// <summary>
/// Indica se o serviço informado irá ter retenção. Quando não informado assumirá valor de acordo com o valor do ISS calculado
    /// </summary>
    [NasajonSerializeAttribute('retemiss')]
    property retemiss: Boolean read getRetemISS write setRetemISS;

    /// <summary>
/// Indica se o serviço informado irá ter retenção. Quando não informado assumirá valor de acordo com o valor do INSS calculado
    /// </summary>
    [NasajonSerializeAttribute('reteminss')]
    property reteminss: Boolean read getRetemINSS write setRetemINSS;

    /// <summary>
/// Indica se o serviço informado irá ter retenção. Quando não informado assumirá valor de acordo com o valor do IR calculado
    /// </summary>
    [NasajonSerializeAttribute('retemir')]
    property retemir: Boolean read getRetemIR write setRetemIR;

    /// <summary>
/// Indica se o serviço informado irá ter retenção. Quando não informado assumirá valor de acordo com o valor do PIS calculado
    /// </summary>
    [NasajonSerializeAttribute('retempis')]
    property retempis: Boolean read getRetemPIS write setRetemPIS;

    /// <summary>
/// Indica se o serviço informado irá ter retenção. Quando não informado assumirá valor de acordo com o valor do COFINS calculado
    /// </summary>
    [NasajonSerializeAttribute('retemcofins')]
    property retemcofins: Boolean read getRetemCOFINS write setRetemCOFINS;

    /// <summary>
/// Indica se o serviço informado irá ter retenção. Quando não informado assumirá valor de acordo com o valor do CSLL calculado
    /// </summary>
    [NasajonSerializeAttribute('retemcsll')]
    property retemcsll: Boolean read getRetemCSLL write setRetemCSLL;

    

end;

	
implementation

  uses
      api.send;  

function Timportacao_itemrps.getServico: String;
begin
  Result := Self.m_Servico;
end;

procedure Timportacao_itemrps.setServico(const a_Value: String);
begin
  Self.m_Servico := a_Value;
end;

function Timportacao_itemrps.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure Timportacao_itemrps.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function Timportacao_itemrps.getValorUnitario: Currency;
begin
  Result := Self.m_ValorUnitario;
end;

procedure Timportacao_itemrps.setValorUnitario(const a_Value: Currency);
begin
  Self.m_ValorUnitario := a_Value;
end;

function Timportacao_itemrps.getQuantidade: Currency;
begin
  Result := Self.m_Quantidade;
end;

procedure Timportacao_itemrps.setQuantidade(const a_Value: Currency);
begin
  Self.m_Quantidade := a_Value;
end;

function Timportacao_itemrps.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure Timportacao_itemrps.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function Timportacao_itemrps.getBaseISS: Currency;
begin
  Result := Self.m_BaseISS;
end;

procedure Timportacao_itemrps.setBaseISS(const a_Value: Currency);
begin
  Self.m_BaseISS := a_Value;
end;

function Timportacao_itemrps.getValorISS: Currency;
begin
  Result := Self.m_ValorISS;
end;

procedure Timportacao_itemrps.setValorISS(const a_Value: Currency);
begin
  Self.m_ValorISS := a_Value;
end;

function Timportacao_itemrps.getBaseINSS: Currency;
begin
  Result := Self.m_BaseINSS;
end;

procedure Timportacao_itemrps.setBaseINSS(const a_Value: Currency);
begin
  Self.m_BaseINSS := a_Value;
end;

function Timportacao_itemrps.getValorINSS: Currency;
begin
  Result := Self.m_ValorINSS;
end;

procedure Timportacao_itemrps.setValorINSS(const a_Value: Currency);
begin
  Self.m_ValorINSS := a_Value;
end;

function Timportacao_itemrps.getBaseIR: Currency;
begin
  Result := Self.m_BaseIR;
end;

procedure Timportacao_itemrps.setBaseIR(const a_Value: Currency);
begin
  Self.m_BaseIR := a_Value;
end;

function Timportacao_itemrps.getValorIR: Currency;
begin
  Result := Self.m_ValorIR;
end;

procedure Timportacao_itemrps.setValorIR(const a_Value: Currency);
begin
  Self.m_ValorIR := a_Value;
end;

function Timportacao_itemrps.getBasePIS: Currency;
begin
  Result := Self.m_BasePIS;
end;

procedure Timportacao_itemrps.setBasePIS(const a_Value: Currency);
begin
  Self.m_BasePIS := a_Value;
end;

function Timportacao_itemrps.getValorPIS: Currency;
begin
  Result := Self.m_ValorPIS;
end;

procedure Timportacao_itemrps.setValorPIS(const a_Value: Currency);
begin
  Self.m_ValorPIS := a_Value;
end;

function Timportacao_itemrps.getBaseCOFINS: Currency;
begin
  Result := Self.m_BaseCOFINS;
end;

procedure Timportacao_itemrps.setBaseCOFINS(const a_Value: Currency);
begin
  Self.m_BaseCOFINS := a_Value;
end;

function Timportacao_itemrps.getValorCOFINS: Currency;
begin
  Result := Self.m_ValorCOFINS;
end;

procedure Timportacao_itemrps.setValorCOFINS(const a_Value: Currency);
begin
  Self.m_ValorCOFINS := a_Value;
end;

function Timportacao_itemrps.getBaseCSLL: Currency;
begin
  Result := Self.m_BaseCSLL;
end;

procedure Timportacao_itemrps.setBaseCSLL(const a_Value: Currency);
begin
  Self.m_BaseCSLL := a_Value;
end;

function Timportacao_itemrps.getValorCSLL: Currency;
begin
  Result := Self.m_ValorCSLL;
end;

procedure Timportacao_itemrps.setValorCSLL(const a_Value: Currency);
begin
  Self.m_ValorCSLL := a_Value;
end;

function Timportacao_itemrps.getRetemISS: Boolean;
begin
  Result := Self.m_RetemISS;
end;

procedure Timportacao_itemrps.setRetemISS(const a_Value: Boolean);
begin
  Self.m_RetemISS := a_Value;
end;

function Timportacao_itemrps.getRetemINSS: Boolean;
begin
  Result := Self.m_RetemINSS;
end;

procedure Timportacao_itemrps.setRetemINSS(const a_Value: Boolean);
begin
  Self.m_RetemINSS := a_Value;
end;

function Timportacao_itemrps.getRetemIR: Boolean;
begin
  Result := Self.m_RetemIR;
end;

procedure Timportacao_itemrps.setRetemIR(const a_Value: Boolean);
begin
  Self.m_RetemIR := a_Value;
end;

function Timportacao_itemrps.getRetemPIS: Boolean;
begin
  Result := Self.m_RetemPIS;
end;

procedure Timportacao_itemrps.setRetemPIS(const a_Value: Boolean);
begin
  Self.m_RetemPIS := a_Value;
end;

function Timportacao_itemrps.getRetemCOFINS: Boolean;
begin
  Result := Self.m_RetemCOFINS;
end;

procedure Timportacao_itemrps.setRetemCOFINS(const a_Value: Boolean);
begin
  Self.m_RetemCOFINS := a_Value;
end;

function Timportacao_itemrps.getRetemCSLL: Boolean;
begin
  Result := Self.m_RetemCSLL;
end;

procedure Timportacao_itemrps.setRetemCSLL(const a_Value: Boolean);
begin
  Self.m_RetemCSLL := a_Value;
end;

destructor Timportacao_itemrps.Destroy;
begin

end;

function Timportacao_itemrps.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function Timportacao_itemrps.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function Timportacao_itemrps.getNameAPI(): String;
begin
  Result := 'importacao_itemrps';
end;

function Timportacao_itemrps.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function Timportacao_itemrps.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
