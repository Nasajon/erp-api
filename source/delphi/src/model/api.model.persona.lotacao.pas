unit api.model.persona.Lotacao;

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

type TLotacaoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdLotacao: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CodigoAgenteNocivo: String;
    

    function getIdLotacao(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCodigoAgenteNocivo(): String;
    

    procedure setIdLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCodigoAgenteNocivo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idlotacao')]
    property idlotacao: String read getIdLotacao write setIdLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Conforme tabela do eSocial
    /// </summary>
    [NasajonSerializeAttribute('codigoagentenocivo')]
    property codigoagentenocivo: String read getCodigoAgenteNocivo write setCodigoAgenteNocivo;

    

end;

type TLotacaoAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CodigoAgenteNocivo: String;
    

    function getLotacao(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCodigoAgenteNocivo(): String;
    

    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCodigoAgenteNocivo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Conforme tabela do eSocial
    /// </summary>
    [NasajonSerializeAttribute('codigoagentenocivo')]
    property codigoagentenocivo: String read getCodigoAgenteNocivo write setCodigoAgenteNocivo;

    

end;

type TLotacaoAlterarTipoLotacaoEstabelecimento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    

    function getLotacao(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    

    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    

end;

type TLotacaoAlterarTipoLotacaoObraEstabelecimento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Obra: String;
    var m_Estabelecimento: String;
    

    function getLotacao(): String;
    function getEmpresa(): String;
    function getObra(): String;
    function getEstabelecimento(): String;
    

    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setObra(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('obra')]
    property obra: String read getObra write setObra;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    

end;

type TLotacaoAlterarTipoLotacaoTomador = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Tomador: String;
    

    function getLotacao(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getTomador(): String;
    

    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setTomador(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('tomador')]
    property tomador: String read getTomador write setTomador;

    

end;

type TLotacaoAlterarTipoLotacaoObraTomador = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Obra: String;
    var m_Tomador: String;
    

    function getLotacao(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getObra(): String;
    function getTomador(): String;
    

    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setObra(const a_Value: String);
    procedure setTomador(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('obra')]
    property obra: String read getObra write setObra;

    [NasajonSerializeAttribute('tomador')]
    property tomador: String read getTomador write setTomador;

    

end;

type TLotacaoAlterarEnderecoDiferenteDoVinculo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Diferente: Boolean;
    

    function getLotacao(): String;
    function getEmpresa(): String;
    function getDiferente(): Boolean;
    

    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDiferente(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('diferente')]
    property diferente: Boolean read getDiferente write setDiferente;

    

end;

type TLotacaoAlterarDadosEnderecoDiferenteDoVinculo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Tipologradouro: String;
    var m_Logradouro: String;
    var m_Numero: String;
    var m_Complemento: String;
    var m_Bairro: String;
    var m_Cidade: String;
    var m_CEP: String;
    var m_CodigoMunicipio: String;
    var m_UF: String;
    

    function getLotacao(): String;
    function getEmpresa(): String;
    function getTipologradouro(): String;
    function getLogradouro(): String;
    function getNumero(): String;
    function getComplemento(): String;
    function getBairro(): String;
    function getCidade(): String;
    function getCEP(): String;
    function getCodigoMunicipio(): String;
    function getUF(): String;
    

    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTipologradouro(const a_Value: String);
    procedure setLogradouro(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setComplemento(const a_Value: String);
    procedure setBairro(const a_Value: String);
    procedure setCidade(const a_Value: String);
    procedure setCEP(const a_Value: String);
    procedure setCodigoMunicipio(const a_Value: String);
    procedure setUF(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Conforme tabela do eSocial
    /// </summary>
    [NasajonSerializeAttribute('tipologradouro')]
    property tipologradouro: String read getTipologradouro write setTipologradouro;

    [NasajonSerializeAttribute('logradouro')]
    property logradouro: String read getLogradouro write setLogradouro;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('complemento')]
    property complemento: String read getComplemento write setComplemento;

    [NasajonSerializeAttribute('bairro')]
    property bairro: String read getBairro write setBairro;

    [NasajonSerializeAttribute('cidade')]
    property cidade: String read getCidade write setCidade;

    [NasajonSerializeAttribute('cep')]
    property cep: String read getCEP write setCEP;

    /// <summary>
/// Conforme tabela do IBGE
    /// </summary>
    [NasajonSerializeAttribute('codigomunicipio')]
    property codigomunicipio: String read getCodigoMunicipio write setCodigoMunicipio;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getUF write setUF;

    

end;

type TLotacaoAlterarProcessoTerceiros = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Processo: String;
    

    function getLotacao(): String;
    function getEmpresa(): String;
    function getProcesso(): String;
    

    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setProcesso(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('processo')]
    property processo: String read getProcesso write setProcesso;

    

end;

type TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Lotacao: String;
    var m_Empresa: String;
    var m_Diferente: Boolean;
    

    function getLotacao(): String;
    function getEmpresa(): String;
    function getDiferente(): Boolean;
    

    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDiferente(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('diferente')]
    property diferente: Boolean read getDiferente write setDiferente;

    

end;

type TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Lotacao: String;
    var m_Empresa: String;
    var m_CodigoFPAS: String;
    var m_CodigoTerceiros: String;
    var m_AliquotaTerceiros: Currency;
    

    function getLotacao(): String;
    function getEmpresa(): String;
    function getCodigoFPAS(): String;
    function getCodigoTerceiros(): String;
    function getAliquotaTerceiros(): Currency;
    

    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigoFPAS(const a_Value: String);
    procedure setCodigoTerceiros(const a_Value: String);
    procedure setAliquotaTerceiros(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Conforme tabela de Fundo da Previdência e Assistência Social do governo
    /// </summary>
    [NasajonSerializeAttribute('codigofpas')]
    property codigofpas: String read getCodigoFPAS write setCodigoFPAS;

    /// <summary>
/// Conforme tabela de outras entidades do governo
    /// </summary>
    [NasajonSerializeAttribute('codigoterceiros')]
    property codigoterceiros: String read getCodigoTerceiros write setCodigoTerceiros;

    [NasajonSerializeAttribute('aliquotaterceiros')]
    property aliquotaterceiros: Currency read getAliquotaTerceiros write setAliquotaTerceiros;

    

end;

type TLotacaoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Lotacao: String;
    var m_Empresa: String;
    

    function getLotacao(): String;
    function getEmpresa(): String;
    

    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TLotacaoNovo.getIdLotacao: String;
begin
  Result := Self.m_IdLotacao;
end;

procedure TLotacaoNovo.setIdLotacao(const a_Value: String);
begin
  Self.m_IdLotacao := a_Value;
end;

function TLotacaoNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TLotacaoNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TLotacaoNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TLotacaoNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TLotacaoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TLotacaoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TLotacaoNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TLotacaoNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TLotacaoNovo.getCodigoAgenteNocivo: String;
begin
  Result := Self.m_CodigoAgenteNocivo;
end;

procedure TLotacaoNovo.setCodigoAgenteNocivo(const a_Value: String);
begin
  Self.m_CodigoAgenteNocivo := a_Value;
end;

destructor TLotacaoNovo.Destroy;
begin

end;

function TLotacaoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotacaoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotacaoNovo.getNameAPI(): String;
begin
  Result := 'LotacaoNovo';
end;

function TLotacaoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotacaoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLotacaoAlterarDadosGerais.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TLotacaoAlterarDadosGerais.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TLotacaoAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TLotacaoAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TLotacaoAlterarDadosGerais.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TLotacaoAlterarDadosGerais.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TLotacaoAlterarDadosGerais.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TLotacaoAlterarDadosGerais.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TLotacaoAlterarDadosGerais.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TLotacaoAlterarDadosGerais.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TLotacaoAlterarDadosGerais.getCodigoAgenteNocivo: String;
begin
  Result := Self.m_CodigoAgenteNocivo;
end;

procedure TLotacaoAlterarDadosGerais.setCodigoAgenteNocivo(const a_Value: String);
begin
  Self.m_CodigoAgenteNocivo := a_Value;
end;

destructor TLotacaoAlterarDadosGerais.Destroy;
begin

end;

function TLotacaoAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotacaoAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotacaoAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'LotacaoAlterarDadosGerais';
end;

function TLotacaoAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotacaoAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLotacaoAlterarTipoLotacaoEstabelecimento.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TLotacaoAlterarTipoLotacaoEstabelecimento.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TLotacaoAlterarTipoLotacaoEstabelecimento.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TLotacaoAlterarTipoLotacaoEstabelecimento.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TLotacaoAlterarTipoLotacaoEstabelecimento.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TLotacaoAlterarTipoLotacaoEstabelecimento.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

destructor TLotacaoAlterarTipoLotacaoEstabelecimento.Destroy;
begin

end;

function TLotacaoAlterarTipoLotacaoEstabelecimento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotacaoAlterarTipoLotacaoEstabelecimento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotacaoAlterarTipoLotacaoEstabelecimento.getNameAPI(): String;
begin
  Result := 'LotacaoAlterarTipoLotacaoEstabelecimento';
end;

function TLotacaoAlterarTipoLotacaoEstabelecimento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotacaoAlterarTipoLotacaoEstabelecimento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLotacaoAlterarTipoLotacaoObraEstabelecimento.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TLotacaoAlterarTipoLotacaoObraEstabelecimento.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TLotacaoAlterarTipoLotacaoObraEstabelecimento.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TLotacaoAlterarTipoLotacaoObraEstabelecimento.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TLotacaoAlterarTipoLotacaoObraEstabelecimento.getObra: String;
begin
  Result := Self.m_Obra;
end;

procedure TLotacaoAlterarTipoLotacaoObraEstabelecimento.setObra(const a_Value: String);
begin
  Self.m_Obra := a_Value;
end;

function TLotacaoAlterarTipoLotacaoObraEstabelecimento.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TLotacaoAlterarTipoLotacaoObraEstabelecimento.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

destructor TLotacaoAlterarTipoLotacaoObraEstabelecimento.Destroy;
begin

end;

function TLotacaoAlterarTipoLotacaoObraEstabelecimento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotacaoAlterarTipoLotacaoObraEstabelecimento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotacaoAlterarTipoLotacaoObraEstabelecimento.getNameAPI(): String;
begin
  Result := 'LotacaoAlterarTipoLotacaoObraEstabelecimento';
end;

function TLotacaoAlterarTipoLotacaoObraEstabelecimento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotacaoAlterarTipoLotacaoObraEstabelecimento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLotacaoAlterarTipoLotacaoTomador.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TLotacaoAlterarTipoLotacaoTomador.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TLotacaoAlterarTipoLotacaoTomador.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TLotacaoAlterarTipoLotacaoTomador.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TLotacaoAlterarTipoLotacaoTomador.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TLotacaoAlterarTipoLotacaoTomador.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TLotacaoAlterarTipoLotacaoTomador.getTomador: String;
begin
  Result := Self.m_Tomador;
end;

procedure TLotacaoAlterarTipoLotacaoTomador.setTomador(const a_Value: String);
begin
  Self.m_Tomador := a_Value;
end;

destructor TLotacaoAlterarTipoLotacaoTomador.Destroy;
begin

end;

function TLotacaoAlterarTipoLotacaoTomador.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotacaoAlterarTipoLotacaoTomador.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotacaoAlterarTipoLotacaoTomador.getNameAPI(): String;
begin
  Result := 'LotacaoAlterarTipoLotacaoTomador';
end;

function TLotacaoAlterarTipoLotacaoTomador.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotacaoAlterarTipoLotacaoTomador.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLotacaoAlterarTipoLotacaoObraTomador.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TLotacaoAlterarTipoLotacaoObraTomador.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TLotacaoAlterarTipoLotacaoObraTomador.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TLotacaoAlterarTipoLotacaoObraTomador.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TLotacaoAlterarTipoLotacaoObraTomador.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TLotacaoAlterarTipoLotacaoObraTomador.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TLotacaoAlterarTipoLotacaoObraTomador.getObra: String;
begin
  Result := Self.m_Obra;
end;

procedure TLotacaoAlterarTipoLotacaoObraTomador.setObra(const a_Value: String);
begin
  Self.m_Obra := a_Value;
end;

function TLotacaoAlterarTipoLotacaoObraTomador.getTomador: String;
begin
  Result := Self.m_Tomador;
end;

procedure TLotacaoAlterarTipoLotacaoObraTomador.setTomador(const a_Value: String);
begin
  Self.m_Tomador := a_Value;
end;

destructor TLotacaoAlterarTipoLotacaoObraTomador.Destroy;
begin

end;

function TLotacaoAlterarTipoLotacaoObraTomador.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotacaoAlterarTipoLotacaoObraTomador.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotacaoAlterarTipoLotacaoObraTomador.getNameAPI(): String;
begin
  Result := 'LotacaoAlterarTipoLotacaoObraTomador';
end;

function TLotacaoAlterarTipoLotacaoObraTomador.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotacaoAlterarTipoLotacaoObraTomador.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLotacaoAlterarEnderecoDiferenteDoVinculo.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TLotacaoAlterarEnderecoDiferenteDoVinculo.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TLotacaoAlterarEnderecoDiferenteDoVinculo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TLotacaoAlterarEnderecoDiferenteDoVinculo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TLotacaoAlterarEnderecoDiferenteDoVinculo.getDiferente: Boolean;
begin
  Result := Self.m_Diferente;
end;

procedure TLotacaoAlterarEnderecoDiferenteDoVinculo.setDiferente(const a_Value: Boolean);
begin
  Self.m_Diferente := a_Value;
end;

destructor TLotacaoAlterarEnderecoDiferenteDoVinculo.Destroy;
begin

end;

function TLotacaoAlterarEnderecoDiferenteDoVinculo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotacaoAlterarEnderecoDiferenteDoVinculo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotacaoAlterarEnderecoDiferenteDoVinculo.getNameAPI(): String;
begin
  Result := 'LotacaoAlterarEnderecoDiferenteDoVinculo';
end;

function TLotacaoAlterarEnderecoDiferenteDoVinculo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotacaoAlterarEnderecoDiferenteDoVinculo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getTipologradouro: String;
begin
  Result := Self.m_Tipologradouro;
end;

procedure TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.setTipologradouro(const a_Value: String);
begin
  Self.m_Tipologradouro := a_Value;
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getLogradouro: String;
begin
  Result := Self.m_Logradouro;
end;

procedure TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.setLogradouro(const a_Value: String);
begin
  Self.m_Logradouro := a_Value;
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getComplemento: String;
begin
  Result := Self.m_Complemento;
end;

procedure TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.setComplemento(const a_Value: String);
begin
  Self.m_Complemento := a_Value;
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getBairro: String;
begin
  Result := Self.m_Bairro;
end;

procedure TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.setBairro(const a_Value: String);
begin
  Self.m_Bairro := a_Value;
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getCEP: String;
begin
  Result := Self.m_CEP;
end;

procedure TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.setCEP(const a_Value: String);
begin
  Self.m_CEP := a_Value;
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getCodigoMunicipio: String;
begin
  Result := Self.m_CodigoMunicipio;
end;

procedure TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.setCodigoMunicipio(const a_Value: String);
begin
  Self.m_CodigoMunicipio := a_Value;
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

destructor TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.Destroy;
begin

end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getNameAPI(): String;
begin
  Result := 'LotacaoAlterarDadosEnderecoDiferenteDoVinculo';
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLotacaoAlterarProcessoTerceiros.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TLotacaoAlterarProcessoTerceiros.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TLotacaoAlterarProcessoTerceiros.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TLotacaoAlterarProcessoTerceiros.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TLotacaoAlterarProcessoTerceiros.getProcesso: String;
begin
  Result := Self.m_Processo;
end;

procedure TLotacaoAlterarProcessoTerceiros.setProcesso(const a_Value: String);
begin
  Self.m_Processo := a_Value;
end;

destructor TLotacaoAlterarProcessoTerceiros.Destroy;
begin

end;

function TLotacaoAlterarProcessoTerceiros.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotacaoAlterarProcessoTerceiros.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotacaoAlterarProcessoTerceiros.getNameAPI(): String;
begin
  Result := 'LotacaoAlterarProcessoTerceiros';
end;

function TLotacaoAlterarProcessoTerceiros.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotacaoAlterarProcessoTerceiros.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.getDiferente: Boolean;
begin
  Result := Self.m_Diferente;
end;

procedure TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.setDiferente(const a_Value: Boolean);
begin
  Self.m_Diferente := a_Value;
end;

destructor TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.Destroy;
begin

end;

function TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.getNameAPI(): String;
begin
  Result := 'LotacaoAlterarOutrasEntidadesDiferenteDoVinculo';
end;

function TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.getCodigoFPAS: String;
begin
  Result := Self.m_CodigoFPAS;
end;

procedure TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.setCodigoFPAS(const a_Value: String);
begin
  Self.m_CodigoFPAS := a_Value;
end;

function TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.getCodigoTerceiros: String;
begin
  Result := Self.m_CodigoTerceiros;
end;

procedure TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.setCodigoTerceiros(const a_Value: String);
begin
  Self.m_CodigoTerceiros := a_Value;
end;

function TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.getAliquotaTerceiros: Currency;
begin
  Result := Self.m_AliquotaTerceiros;
end;

procedure TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.setAliquotaTerceiros(const a_Value: Currency);
begin
  Self.m_AliquotaTerceiros := a_Value;
end;

destructor TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.Destroy;
begin

end;

function TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.getNameAPI(): String;
begin
  Result := 'LotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo';
end;

function TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TLotacaoExcluir.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TLotacaoExcluir.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TLotacaoExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TLotacaoExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TLotacaoExcluir.Destroy;
begin

end;

function TLotacaoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TLotacaoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TLotacaoExcluir.getNameAPI(): String;
begin
  Result := 'LotacaoExcluir';
end;

function TLotacaoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TLotacaoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
