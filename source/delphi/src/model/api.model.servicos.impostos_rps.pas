unit api.model.servicos.Impostos_RPS;

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
	
  , api.model.servicos.Impostos_ItemRPS
  , System.Generics.Collections
	

	;

type TImpostos_RPS = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_estabelecimento_id: String;
    var m_estabelecimento_simples_nacional: Boolean;
    var m_estabelecimento_ibge: String;
    var m_cliente_id: String;
    var m_cliente_simples_nacional: Boolean;
    var m_cliente_qualificacao: Integer;
    var m_cliente_retem_iss: Boolean;
    var m_cliente_retem_inss: Boolean;
    var m_cliente_retem_ir: Boolean;
    var m_cliente_retem_pis: Boolean;
    var m_cliente_retem_cofins: Boolean;
    var m_cliente_retem_csll: Boolean;
    var m_configuracao_id: String;
    var m_configuracao_destacar_iss_estabelecimento_simples: Boolean;
    var m_configuracao_considerar_valor_minimo: Boolean;
    var m_configuracao_ratear_retencoes: Boolean;
    var m_configuracao_destacar_retencoes_parcela_inferior_valor_minimo: Boolean;
    var m_codigo_servico_id: String;
    var m_codigo_servico_retem_ir: Boolean;
    var m_codigo_servico_retem_pis: Boolean;
    var m_codigo_servico_retem_cofins: Boolean;
    var m_codigo_servico_retem_csll: Boolean;
    var m_rps_tipo_tributacao: Integer;
    var m_rps_iss_retido: Boolean;
    var m_rps_valor_deducoes: Currency;
    var m_rps_municipio_prestacao_id: String;
    var m_rps_municipio_prestacao_ibge: String;
    var m_rps_total_parcelas: Integer;
    var m_rps_lista_itens: TObjectList<TImpostos_ItemRPS>;
    

    function getestabelecimento_id(): String;
    function getestabelecimento_simples_nacional(): Boolean;
    function getestabelecimento_ibge(): String;
    function getcliente_id(): String;
    function getcliente_simples_nacional(): Boolean;
    function getcliente_qualificacao(): Integer;
    function getcliente_retem_iss(): Boolean;
    function getcliente_retem_inss(): Boolean;
    function getcliente_retem_ir(): Boolean;
    function getcliente_retem_pis(): Boolean;
    function getcliente_retem_cofins(): Boolean;
    function getcliente_retem_csll(): Boolean;
    function getconfiguracao_id(): String;
    function getconfiguracao_destacar_iss_estabelecimento_simples(): Boolean;
    function getconfiguracao_considerar_valor_minimo(): Boolean;
    function getconfiguracao_ratear_retencoes(): Boolean;
    function getconfiguracao_destacar_retencoes_parcela_inferior_valor_minimo(): Boolean;
    function getcodigo_servico_id(): String;
    function getcodigo_servico_retem_ir(): Boolean;
    function getcodigo_servico_retem_pis(): Boolean;
    function getcodigo_servico_retem_cofins(): Boolean;
    function getcodigo_servico_retem_csll(): Boolean;
    function getrps_tipo_tributacao(): Integer;
    function getrps_iss_retido(): Boolean;
    function getrps_valor_deducoes(): Currency;
    function getrps_municipio_prestacao_id(): String;
    function getrps_municipio_prestacao_ibge(): String;
    function getrps_total_parcelas(): Integer;
    function getrps_lista_itens(): TObjectList<TImpostos_ItemRPS>;
    

    procedure setestabelecimento_id(const a_Value: String);
    procedure setestabelecimento_simples_nacional(const a_Value: Boolean);
    procedure setestabelecimento_ibge(const a_Value: String);
    procedure setcliente_id(const a_Value: String);
    procedure setcliente_simples_nacional(const a_Value: Boolean);
    procedure setcliente_qualificacao(const a_Value: Integer);
    procedure setcliente_retem_iss(const a_Value: Boolean);
    procedure setcliente_retem_inss(const a_Value: Boolean);
    procedure setcliente_retem_ir(const a_Value: Boolean);
    procedure setcliente_retem_pis(const a_Value: Boolean);
    procedure setcliente_retem_cofins(const a_Value: Boolean);
    procedure setcliente_retem_csll(const a_Value: Boolean);
    procedure setconfiguracao_id(const a_Value: String);
    procedure setconfiguracao_destacar_iss_estabelecimento_simples(const a_Value: Boolean);
    procedure setconfiguracao_considerar_valor_minimo(const a_Value: Boolean);
    procedure setconfiguracao_ratear_retencoes(const a_Value: Boolean);
    procedure setconfiguracao_destacar_retencoes_parcela_inferior_valor_minimo(const a_Value: Boolean);
    procedure setcodigo_servico_id(const a_Value: String);
    procedure setcodigo_servico_retem_ir(const a_Value: Boolean);
    procedure setcodigo_servico_retem_pis(const a_Value: Boolean);
    procedure setcodigo_servico_retem_cofins(const a_Value: Boolean);
    procedure setcodigo_servico_retem_csll(const a_Value: Boolean);
    procedure setrps_tipo_tributacao(const a_Value: Integer);
    procedure setrps_iss_retido(const a_Value: Boolean);
    procedure setrps_valor_deducoes(const a_Value: Currency);
    procedure setrps_municipio_prestacao_id(const a_Value: String);
    procedure setrps_municipio_prestacao_ibge(const a_Value: String);
    procedure setrps_total_parcelas(const a_Value: Integer);
    procedure setrps_lista_itens(const a_Value: TObjectList<TImpostos_ItemRPS>);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estabelecimento_id')]
    property estabelecimento_id: String read getestabelecimento_id write setestabelecimento_id;

    [NasajonSerializeAttribute('estabelecimento_simples_nacional')]
    property estabelecimento_simples_nacional: Boolean read getestabelecimento_simples_nacional write setestabelecimento_simples_nacional;

    [NasajonSerializeAttribute('estabelecimento_ibge')]
    property estabelecimento_ibge: String read getestabelecimento_ibge write setestabelecimento_ibge;

    [NasajonSerializeAttribute('cliente_id')]
    property cliente_id: String read getcliente_id write setcliente_id;

    [NasajonSerializeAttribute('cliente_simples_nacional')]
    property cliente_simples_nacional: Boolean read getcliente_simples_nacional write setcliente_simples_nacional;

    [NasajonSerializeAttribute('cliente_qualificacao')]
    property cliente_qualificacao: Integer read getcliente_qualificacao write setcliente_qualificacao;

    [NasajonSerializeAttribute('cliente_retem_iss')]
    property cliente_retem_iss: Boolean read getcliente_retem_iss write setcliente_retem_iss;

    [NasajonSerializeAttribute('cliente_retem_inss')]
    property cliente_retem_inss: Boolean read getcliente_retem_inss write setcliente_retem_inss;

    [NasajonSerializeAttribute('cliente_retem_ir')]
    property cliente_retem_ir: Boolean read getcliente_retem_ir write setcliente_retem_ir;

    [NasajonSerializeAttribute('cliente_retem_pis')]
    property cliente_retem_pis: Boolean read getcliente_retem_pis write setcliente_retem_pis;

    [NasajonSerializeAttribute('cliente_retem_cofins')]
    property cliente_retem_cofins: Boolean read getcliente_retem_cofins write setcliente_retem_cofins;

    [NasajonSerializeAttribute('cliente_retem_csll')]
    property cliente_retem_csll: Boolean read getcliente_retem_csll write setcliente_retem_csll;

    [NasajonSerializeAttribute('configuracao_id')]
    property configuracao_id: String read getconfiguracao_id write setconfiguracao_id;

    [NasajonSerializeAttribute('configuracao_destacar_iss_estabelecimento_simples')]
    property configuracao_destacar_iss_estabelecimento_simples: Boolean read getconfiguracao_destacar_iss_estabelecimento_simples write setconfiguracao_destacar_iss_estabelecimento_simples;

    [NasajonSerializeAttribute('configuracao_considerar_valor_minimo')]
    property configuracao_considerar_valor_minimo: Boolean read getconfiguracao_considerar_valor_minimo write setconfiguracao_considerar_valor_minimo;

    [NasajonSerializeAttribute('configuracao_ratear_retencoes')]
    property configuracao_ratear_retencoes: Boolean read getconfiguracao_ratear_retencoes write setconfiguracao_ratear_retencoes;

    [NasajonSerializeAttribute('configuracao_destacar_retencoes_parcela_inferior_valor_minimo')]
    property configuracao_destacar_retencoes_parcela_inferior_valor_minimo: Boolean read getconfiguracao_destacar_retencoes_parcela_inferior_valor_minimo write setconfiguracao_destacar_retencoes_parcela_inferior_valor_minimo;

    [NasajonSerializeAttribute('codigo_servico_id')]
    property codigo_servico_id: String read getcodigo_servico_id write setcodigo_servico_id;

    [NasajonSerializeAttribute('codigo_servico_retem_ir')]
    property codigo_servico_retem_ir: Boolean read getcodigo_servico_retem_ir write setcodigo_servico_retem_ir;

    [NasajonSerializeAttribute('codigo_servico_retem_pis')]
    property codigo_servico_retem_pis: Boolean read getcodigo_servico_retem_pis write setcodigo_servico_retem_pis;

    [NasajonSerializeAttribute('codigo_servico_retem_cofins')]
    property codigo_servico_retem_cofins: Boolean read getcodigo_servico_retem_cofins write setcodigo_servico_retem_cofins;

    [NasajonSerializeAttribute('codigo_servico_retem_csll')]
    property codigo_servico_retem_csll: Boolean read getcodigo_servico_retem_csll write setcodigo_servico_retem_csll;

    [NasajonSerializeAttribute('rps_tipo_tributacao')]
    property rps_tipo_tributacao: Integer read getrps_tipo_tributacao write setrps_tipo_tributacao;

    [NasajonSerializeAttribute('rps_iss_retido')]
    property rps_iss_retido: Boolean read getrps_iss_retido write setrps_iss_retido;

    [NasajonSerializeAttribute('rps_valor_deducoes')]
    property rps_valor_deducoes: Currency read getrps_valor_deducoes write setrps_valor_deducoes;

    [NasajonSerializeAttribute('rps_municipio_prestacao_id')]
    property rps_municipio_prestacao_id: String read getrps_municipio_prestacao_id write setrps_municipio_prestacao_id;

    [NasajonSerializeAttribute('rps_municipio_prestacao_ibge')]
    property rps_municipio_prestacao_ibge: String read getrps_municipio_prestacao_ibge write setrps_municipio_prestacao_ibge;

    [NasajonSerializeAttribute('rps_total_parcelas')]
    property rps_total_parcelas: Integer read getrps_total_parcelas write setrps_total_parcelas;

    [NasajonSerializeAttribute('rps_lista_itens')]
    property rps_lista_itens: TObjectList<TImpostos_ItemRPS> read getrps_lista_itens write setrps_lista_itens;

    

end;

	
implementation

  uses
      api.send;  

function TImpostos_RPS.getestabelecimento_id: String;
begin
  Result := Self.m_estabelecimento_id;
end;

procedure TImpostos_RPS.setestabelecimento_id(const a_Value: String);
begin
  Self.m_estabelecimento_id := a_Value;
end;

function TImpostos_RPS.getestabelecimento_simples_nacional: Boolean;
begin
  Result := Self.m_estabelecimento_simples_nacional;
end;

procedure TImpostos_RPS.setestabelecimento_simples_nacional(const a_Value: Boolean);
begin
  Self.m_estabelecimento_simples_nacional := a_Value;
end;

function TImpostos_RPS.getestabelecimento_ibge: String;
begin
  Result := Self.m_estabelecimento_ibge;
end;

procedure TImpostos_RPS.setestabelecimento_ibge(const a_Value: String);
begin
  Self.m_estabelecimento_ibge := a_Value;
end;

function TImpostos_RPS.getcliente_id: String;
begin
  Result := Self.m_cliente_id;
end;

procedure TImpostos_RPS.setcliente_id(const a_Value: String);
begin
  Self.m_cliente_id := a_Value;
end;

function TImpostos_RPS.getcliente_simples_nacional: Boolean;
begin
  Result := Self.m_cliente_simples_nacional;
end;

procedure TImpostos_RPS.setcliente_simples_nacional(const a_Value: Boolean);
begin
  Self.m_cliente_simples_nacional := a_Value;
end;

function TImpostos_RPS.getcliente_qualificacao: Integer;
begin
  Result := Self.m_cliente_qualificacao;
end;

procedure TImpostos_RPS.setcliente_qualificacao(const a_Value: Integer);
begin
  Self.m_cliente_qualificacao := a_Value;
end;

function TImpostos_RPS.getcliente_retem_iss: Boolean;
begin
  Result := Self.m_cliente_retem_iss;
end;

procedure TImpostos_RPS.setcliente_retem_iss(const a_Value: Boolean);
begin
  Self.m_cliente_retem_iss := a_Value;
end;

function TImpostos_RPS.getcliente_retem_inss: Boolean;
begin
  Result := Self.m_cliente_retem_inss;
end;

procedure TImpostos_RPS.setcliente_retem_inss(const a_Value: Boolean);
begin
  Self.m_cliente_retem_inss := a_Value;
end;

function TImpostos_RPS.getcliente_retem_ir: Boolean;
begin
  Result := Self.m_cliente_retem_ir;
end;

procedure TImpostos_RPS.setcliente_retem_ir(const a_Value: Boolean);
begin
  Self.m_cliente_retem_ir := a_Value;
end;

function TImpostos_RPS.getcliente_retem_pis: Boolean;
begin
  Result := Self.m_cliente_retem_pis;
end;

procedure TImpostos_RPS.setcliente_retem_pis(const a_Value: Boolean);
begin
  Self.m_cliente_retem_pis := a_Value;
end;

function TImpostos_RPS.getcliente_retem_cofins: Boolean;
begin
  Result := Self.m_cliente_retem_cofins;
end;

procedure TImpostos_RPS.setcliente_retem_cofins(const a_Value: Boolean);
begin
  Self.m_cliente_retem_cofins := a_Value;
end;

function TImpostos_RPS.getcliente_retem_csll: Boolean;
begin
  Result := Self.m_cliente_retem_csll;
end;

procedure TImpostos_RPS.setcliente_retem_csll(const a_Value: Boolean);
begin
  Self.m_cliente_retem_csll := a_Value;
end;

function TImpostos_RPS.getconfiguracao_id: String;
begin
  Result := Self.m_configuracao_id;
end;

procedure TImpostos_RPS.setconfiguracao_id(const a_Value: String);
begin
  Self.m_configuracao_id := a_Value;
end;

function TImpostos_RPS.getconfiguracao_destacar_iss_estabelecimento_simples: Boolean;
begin
  Result := Self.m_configuracao_destacar_iss_estabelecimento_simples;
end;

procedure TImpostos_RPS.setconfiguracao_destacar_iss_estabelecimento_simples(const a_Value: Boolean);
begin
  Self.m_configuracao_destacar_iss_estabelecimento_simples := a_Value;
end;

function TImpostos_RPS.getconfiguracao_considerar_valor_minimo: Boolean;
begin
  Result := Self.m_configuracao_considerar_valor_minimo;
end;

procedure TImpostos_RPS.setconfiguracao_considerar_valor_minimo(const a_Value: Boolean);
begin
  Self.m_configuracao_considerar_valor_minimo := a_Value;
end;

function TImpostos_RPS.getconfiguracao_ratear_retencoes: Boolean;
begin
  Result := Self.m_configuracao_ratear_retencoes;
end;

procedure TImpostos_RPS.setconfiguracao_ratear_retencoes(const a_Value: Boolean);
begin
  Self.m_configuracao_ratear_retencoes := a_Value;
end;

function TImpostos_RPS.getconfiguracao_destacar_retencoes_parcela_inferior_valor_minimo: Boolean;
begin
  Result := Self.m_configuracao_destacar_retencoes_parcela_inferior_valor_minimo;
end;

procedure TImpostos_RPS.setconfiguracao_destacar_retencoes_parcela_inferior_valor_minimo(const a_Value: Boolean);
begin
  Self.m_configuracao_destacar_retencoes_parcela_inferior_valor_minimo := a_Value;
end;

function TImpostos_RPS.getcodigo_servico_id: String;
begin
  Result := Self.m_codigo_servico_id;
end;

procedure TImpostos_RPS.setcodigo_servico_id(const a_Value: String);
begin
  Self.m_codigo_servico_id := a_Value;
end;

function TImpostos_RPS.getcodigo_servico_retem_ir: Boolean;
begin
  Result := Self.m_codigo_servico_retem_ir;
end;

procedure TImpostos_RPS.setcodigo_servico_retem_ir(const a_Value: Boolean);
begin
  Self.m_codigo_servico_retem_ir := a_Value;
end;

function TImpostos_RPS.getcodigo_servico_retem_pis: Boolean;
begin
  Result := Self.m_codigo_servico_retem_pis;
end;

procedure TImpostos_RPS.setcodigo_servico_retem_pis(const a_Value: Boolean);
begin
  Self.m_codigo_servico_retem_pis := a_Value;
end;

function TImpostos_RPS.getcodigo_servico_retem_cofins: Boolean;
begin
  Result := Self.m_codigo_servico_retem_cofins;
end;

procedure TImpostos_RPS.setcodigo_servico_retem_cofins(const a_Value: Boolean);
begin
  Self.m_codigo_servico_retem_cofins := a_Value;
end;

function TImpostos_RPS.getcodigo_servico_retem_csll: Boolean;
begin
  Result := Self.m_codigo_servico_retem_csll;
end;

procedure TImpostos_RPS.setcodigo_servico_retem_csll(const a_Value: Boolean);
begin
  Self.m_codigo_servico_retem_csll := a_Value;
end;

function TImpostos_RPS.getrps_tipo_tributacao: Integer;
begin
  Result := Self.m_rps_tipo_tributacao;
end;

procedure TImpostos_RPS.setrps_tipo_tributacao(const a_Value: Integer);
begin
  Self.m_rps_tipo_tributacao := a_Value;
end;

function TImpostos_RPS.getrps_iss_retido: Boolean;
begin
  Result := Self.m_rps_iss_retido;
end;

procedure TImpostos_RPS.setrps_iss_retido(const a_Value: Boolean);
begin
  Self.m_rps_iss_retido := a_Value;
end;

function TImpostos_RPS.getrps_valor_deducoes: Currency;
begin
  Result := Self.m_rps_valor_deducoes;
end;

procedure TImpostos_RPS.setrps_valor_deducoes(const a_Value: Currency);
begin
  Self.m_rps_valor_deducoes := a_Value;
end;

function TImpostos_RPS.getrps_municipio_prestacao_id: String;
begin
  Result := Self.m_rps_municipio_prestacao_id;
end;

procedure TImpostos_RPS.setrps_municipio_prestacao_id(const a_Value: String);
begin
  Self.m_rps_municipio_prestacao_id := a_Value;
end;

function TImpostos_RPS.getrps_municipio_prestacao_ibge: String;
begin
  Result := Self.m_rps_municipio_prestacao_ibge;
end;

procedure TImpostos_RPS.setrps_municipio_prestacao_ibge(const a_Value: String);
begin
  Self.m_rps_municipio_prestacao_ibge := a_Value;
end;

function TImpostos_RPS.getrps_total_parcelas: Integer;
begin
  Result := Self.m_rps_total_parcelas;
end;

procedure TImpostos_RPS.setrps_total_parcelas(const a_Value: Integer);
begin
  Self.m_rps_total_parcelas := a_Value;
end;

function TImpostos_RPS.getrps_lista_itens: TObjectList<TImpostos_ItemRPS>;
begin
  if not Assigned(Self.m_rps_lista_itens)
    then Self.m_rps_lista_itens := TObjectList<TImpostos_ItemRPS>.Create();
  Result := Self.m_rps_lista_itens;
end;

procedure TImpostos_RPS.setrps_lista_itens(const a_Value: TObjectList<TImpostos_ItemRPS>);
begin
  Self.m_rps_lista_itens := a_Value;
end;

destructor TImpostos_RPS.Destroy;
begin
  Self.rps_lista_itens.Free();
end;

function TImpostos_RPS.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TImpostos_RPS.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TImpostos_RPS.getNameAPI(): String;
begin
  Result := 'Impostos_RPS';
end;

function TImpostos_RPS.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TImpostos_RPS.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
