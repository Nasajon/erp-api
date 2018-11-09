unit api.model.persona.Sindicato;

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

type TSindicatoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdSindicato: String;
    var m_Codigo: String;
    var m_CNPJ: String;
    var m_CodigoContribuicao: String;
    var m_CodigoEntidade: String;
    var m_Patronal: Boolean;
    var m_MesContribuicaoAssistencial: Integer;
    var m_MesContribuicaoSindical: Integer;
    var m_PisoSalarial: Currency;
    var m_Nome: String;
    

    function getIdSindicato(): String;
    function getCodigo(): String;
    function getCNPJ(): String;
    function getCodigoContribuicao(): String;
    function getCodigoEntidade(): String;
    function getPatronal(): Boolean;
    function getMesContribuicaoAssistencial(): Integer;
    function getMesContribuicaoSindical(): Integer;
    function getPisoSalarial(): Currency;
    function getNome(): String;
    

    procedure setIdSindicato(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setCNPJ(const a_Value: String);
    procedure setCodigoContribuicao(const a_Value: String);
    procedure setCodigoEntidade(const a_Value: String);
    procedure setPatronal(const a_Value: Boolean);
    procedure setMesContribuicaoAssistencial(const a_Value: Integer);
    procedure setMesContribuicaoSindical(const a_Value: Integer);
    procedure setPisoSalarial(const a_Value: Currency);
    procedure setNome(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idsindicato')]
    property idsindicato: String read getIdSindicato write setIdSindicato;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    /// <summary>
/// [99.999.999/9999-99]. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('cnpj')]
    property cnpj: String read getCNPJ write setCNPJ;

    [NasajonSerializeAttribute('codigocontribuicao')]
    property codigocontribuicao: String read getCodigoContribuicao write setCodigoContribuicao;

    [NasajonSerializeAttribute('codigoentidade')]
    property codigoentidade: String read getCodigoEntidade write setCodigoEntidade;

    [NasajonSerializeAttribute('patronal')]
    property patronal: Boolean read getPatronal write setPatronal;

    [NasajonSerializeAttribute('mescontribuicaoassistencial')]
    property mescontribuicaoassistencial: Integer read getMesContribuicaoAssistencial write setMesContribuicaoAssistencial;

    [NasajonSerializeAttribute('mescontribuicaosindical')]
    property mescontribuicaosindical: Integer read getMesContribuicaoSindical write setMesContribuicaoSindical;

    [NasajonSerializeAttribute('pisosalarial')]
    property pisosalarial: Currency read getPisoSalarial write setPisoSalarial;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    

end;

type TSindicatoAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Sindicato: String;
    var m_Codigo: String;
    var m_CNPJ: String;
    var m_CodigoContribuicao: String;
    var m_CodigoEntidade: String;
    var m_Patronal: Boolean;
    var m_MesContribuicaoAssistencial: Integer;
    var m_MesContribuicaoSindical: Integer;
    var m_PisoSalarial: Currency;
    var m_Nome: String;
    

    function getSindicato(): String;
    function getCodigo(): String;
    function getCNPJ(): String;
    function getCodigoContribuicao(): String;
    function getCodigoEntidade(): String;
    function getPatronal(): Boolean;
    function getMesContribuicaoAssistencial(): Integer;
    function getMesContribuicaoSindical(): Integer;
    function getPisoSalarial(): Currency;
    function getNome(): String;
    

    procedure setSindicato(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setCNPJ(const a_Value: String);
    procedure setCodigoContribuicao(const a_Value: String);
    procedure setCodigoEntidade(const a_Value: String);
    procedure setPatronal(const a_Value: Boolean);
    procedure setMesContribuicaoAssistencial(const a_Value: Integer);
    procedure setMesContribuicaoSindical(const a_Value: Integer);
    procedure setPisoSalarial(const a_Value: Currency);
    procedure setNome(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    /// <summary>
/// [99.999.999/9999-99]. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('cnpj')]
    property cnpj: String read getCNPJ write setCNPJ;

    [NasajonSerializeAttribute('codigocontribuicao')]
    property codigocontribuicao: String read getCodigoContribuicao write setCodigoContribuicao;

    [NasajonSerializeAttribute('codigoentidade')]
    property codigoentidade: String read getCodigoEntidade write setCodigoEntidade;

    [NasajonSerializeAttribute('patronal')]
    property patronal: Boolean read getPatronal write setPatronal;

    [NasajonSerializeAttribute('mescontribuicaoassistencial')]
    property mescontribuicaoassistencial: Integer read getMesContribuicaoAssistencial write setMesContribuicaoAssistencial;

    [NasajonSerializeAttribute('mescontribuicaosindical')]
    property mescontribuicaosindical: Integer read getMesContribuicaoSindical write setMesContribuicaoSindical;

    [NasajonSerializeAttribute('pisosalarial')]
    property pisosalarial: Currency read getPisoSalarial write setPisoSalarial;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    

end;

type TSindicatoAlterarDadosEndereco = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Sindicato: String;
    var m_Logradouro: String;
    var m_Numero: String;
    var m_complemento: String;
    var m_Bairro: String;
    var m_Cidade: String;
    var m_CEP: String;
    var m_Estado: String;
    

    function getSindicato(): String;
    function getLogradouro(): String;
    function getNumero(): String;
    function getcomplemento(): String;
    function getBairro(): String;
    function getCidade(): String;
    function getCEP(): String;
    function getEstado(): String;
    

    procedure setSindicato(const a_Value: String);
    procedure setLogradouro(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setcomplemento(const a_Value: String);
    procedure setBairro(const a_Value: String);
    procedure setCidade(const a_Value: String);
    procedure setCEP(const a_Value: String);
    procedure setEstado(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('logradouro')]
    property logradouro: String read getLogradouro write setLogradouro;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('complemento')]
    property complemento: String read getcomplemento write setcomplemento;

    [NasajonSerializeAttribute('bairro')]
    property bairro: String read getBairro write setBairro;

    [NasajonSerializeAttribute('cidade')]
    property cidade: String read getCidade write setCidade;

    [NasajonSerializeAttribute('cep')]
    property cep: String read getCEP write setCEP;

    [NasajonSerializeAttribute('estado')]
    property estado: String read getEstado write setEstado;

    

end;

type TSindicatoAlterarDadosContato = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Sindicato: String;
    var m_Nome: String;
    var m_Email: String;
    var m_DDDTelefone: String;
    var m_Telefone: String;
    var m_DDDFAX: String;
    var m_FAX: String;
    

    function getSindicato(): String;
    function getNome(): String;
    function getEmail(): String;
    function getDDDTelefone(): String;
    function getTelefone(): String;
    function getDDDFAX(): String;
    function getFAX(): String;
    

    procedure setSindicato(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setEmail(const a_Value: String);
    procedure setDDDTelefone(const a_Value: String);
    procedure setTelefone(const a_Value: String);
    procedure setDDDFAX(const a_Value: String);
    procedure setFAX(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    [NasajonSerializeAttribute('email')]
    property email: String read getEmail write setEmail;

    [NasajonSerializeAttribute('dddtelefone')]
    property dddtelefone: String read getDDDTelefone write setDDDTelefone;

    [NasajonSerializeAttribute('telefone')]
    property telefone: String read getTelefone write setTelefone;

    [NasajonSerializeAttribute('dddfax')]
    property dddfax: String read getDDDFAX write setDDDFAX;

    [NasajonSerializeAttribute('fax')]
    property fax: String read getFAX write setFAX;

    

end;

type TSindicatoAlterarDadosOutrasEntidades = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Sindicato: String;
    var m_CodigoFPAS: String;
    var m_CodigoTerceiros: String;
    

    function getSindicato(): String;
    function getCodigoFPAS(): String;
    function getCodigoTerceiros(): String;
    

    procedure setSindicato(const a_Value: String);
    procedure setCodigoFPAS(const a_Value: String);
    procedure setCodigoTerceiros(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

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

    

end;

type TSindicatoAlterarDadosCalculoFerias = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Sindicato: String;
    var m_MesesParaCalculoMedia: Integer;
    var m_NumeradorFracaoAdicionalFerias: Integer;
    var m_DenominadorFracaoAdicionalFerias: Integer;
    var m_MediaPelosMaioresValores: Boolean;
    var m_QuantidadeMesesMaioresValores: Integer;
    

    function getSindicato(): String;
    function getMesesParaCalculoMedia(): Integer;
    function getNumeradorFracaoAdicionalFerias(): Integer;
    function getDenominadorFracaoAdicionalFerias(): Integer;
    function getMediaPelosMaioresValores(): Boolean;
    function getQuantidadeMesesMaioresValores(): Integer;
    

    procedure setSindicato(const a_Value: String);
    procedure setMesesParaCalculoMedia(const a_Value: Integer);
    procedure setNumeradorFracaoAdicionalFerias(const a_Value: Integer);
    procedure setDenominadorFracaoAdicionalFerias(const a_Value: Integer);
    procedure setMediaPelosMaioresValores(const a_Value: Boolean);
    procedure setQuantidadeMesesMaioresValores(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('mesesparacalculomedia')]
    property mesesparacalculomedia: Integer read getMesesParaCalculoMedia write setMesesParaCalculoMedia;

    /// <summary>
/// Se o adicional de férias for de 1/3 informar 1
    /// </summary>
    [NasajonSerializeAttribute('numeradorfracaoadicionalferias')]
    property numeradorfracaoadicionalferias: Integer read getNumeradorFracaoAdicionalFerias write setNumeradorFracaoAdicionalFerias;

    /// <summary>
/// Se o adicional de férias for de 1/3 informar 3
    /// </summary>
    [NasajonSerializeAttribute('denominadorfracaoadicionalferias')]
    property denominadorfracaoadicionalferias: Integer read getDenominadorFracaoAdicionalFerias write setDenominadorFracaoAdicionalFerias;

    [NasajonSerializeAttribute('mediapelosmaioresvalores')]
    property mediapelosmaioresvalores: Boolean read getMediaPelosMaioresValores write setMediaPelosMaioresValores;

    /// <summary>
/// Informar o número de meses que possuam os maiores valores. Por exemplo, se o número de meses para médias forem 12, porém no sindicato apenas os 5 maiores valores interssam, informar 5
    /// </summary>
    [NasajonSerializeAttribute('quantidademesesmaioresvalores')]
    property quantidademesesmaioresvalores: Integer read getQuantidadeMesesMaioresValores write setQuantidadeMesesMaioresValores;

    

end;

type TSindicatoAlterarDadosCalculoDecimoTerceiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Sindicato: String;
    var m_MesesParaCalculoMedia: Integer;
    var m_MediaPelosMaioresValores: Boolean;
    var m_QuantidadeMesesMaioresValores: Integer;
    

    function getSindicato(): String;
    function getMesesParaCalculoMedia(): Integer;
    function getMediaPelosMaioresValores(): Boolean;
    function getQuantidadeMesesMaioresValores(): Integer;
    

    procedure setSindicato(const a_Value: String);
    procedure setMesesParaCalculoMedia(const a_Value: Integer);
    procedure setMediaPelosMaioresValores(const a_Value: Boolean);
    procedure setQuantidadeMesesMaioresValores(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('mesesparacalculomedia')]
    property mesesparacalculomedia: Integer read getMesesParaCalculoMedia write setMesesParaCalculoMedia;

    [NasajonSerializeAttribute('mediapelosmaioresvalores')]
    property mediapelosmaioresvalores: Boolean read getMediaPelosMaioresValores write setMediaPelosMaioresValores;

    /// <summary>
/// Informar o número de meses que possuam os maiores valores. Por exemplo, se o número de meses para médias forem 12, porém no sindicato apenas os 5 maiores valores interssam, informar 5
    /// </summary>
    [NasajonSerializeAttribute('quantidademesesmaioresvalores')]
    property quantidademesesmaioresvalores: Integer read getQuantidadeMesesMaioresValores write setQuantidadeMesesMaioresValores;

    

end;

type TSindicatoAlterarDadosCalculoRescisao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Sindicato: String;
    var m_MesesParaCalculoMedia: Integer;
    var m_MediaPelosMaioresValores: Boolean;
    var m_QuantidadeMesesMaioresValores: Integer;
    var m_DiasAvisoPrevio: Integer;
    var m_PercentualMultaFGTS: Currency;
    

    function getSindicato(): String;
    function getMesesParaCalculoMedia(): Integer;
    function getMediaPelosMaioresValores(): Boolean;
    function getQuantidadeMesesMaioresValores(): Integer;
    function getDiasAvisoPrevio(): Integer;
    function getPercentualMultaFGTS(): Currency;
    

    procedure setSindicato(const a_Value: String);
    procedure setMesesParaCalculoMedia(const a_Value: Integer);
    procedure setMediaPelosMaioresValores(const a_Value: Boolean);
    procedure setQuantidadeMesesMaioresValores(const a_Value: Integer);
    procedure setDiasAvisoPrevio(const a_Value: Integer);
    procedure setPercentualMultaFGTS(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('mesesparacalculomedia')]
    property mesesparacalculomedia: Integer read getMesesParaCalculoMedia write setMesesParaCalculoMedia;

    [NasajonSerializeAttribute('mediapelosmaioresvalores')]
    property mediapelosmaioresvalores: Boolean read getMediaPelosMaioresValores write setMediaPelosMaioresValores;

    /// <summary>
/// Informar o número de meses que possuam os maiores valores. Por exemplo, se o número de meses para médias forem 12, porém no sindicato apenas os 5 maiores valores interssam, informar 5
    /// </summary>
    [NasajonSerializeAttribute('quantidademesesmaioresvalores')]
    property quantidademesesmaioresvalores: Integer read getQuantidadeMesesMaioresValores write setQuantidadeMesesMaioresValores;

    [NasajonSerializeAttribute('diasavisoprevio')]
    property diasavisoprevio: Integer read getDiasAvisoPrevio write setDiasAvisoPrevio;

    [NasajonSerializeAttribute('percentualmultafgts')]
    property percentualmultafgts: Currency read getPercentualMultaFGTS write setPercentualMultaFGTS;

    

end;

type TSindicatoAlterarDadosCalculoDissidio = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Sindicato: String;
    var m_Dias: Integer;
    var m_Mes: Integer;
    

    function getSindicato(): String;
    function getDias(): Integer;
    function getMes(): Integer;
    

    procedure setSindicato(const a_Value: String);
    procedure setDias(const a_Value: Integer);
    procedure setMes(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('dias')]
    property dias: Integer read getDias write setDias;

    [NasajonSerializeAttribute('mes')]
    property mes: Integer read getMes write setMes;

    

end;

type TSindicatoAlterarDadosCalculoMaternidade = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Sindicato: String;
    var m_Meses: Integer;
    

    function getSindicato(): String;
    function getMeses(): Integer;
    

    procedure setSindicato(const a_Value: String);
    procedure setMeses(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('meses')]
    property meses: Integer read getMeses write setMeses;

    

end;

type TSindicatoAlterarDadosCalculoAnuenio = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Sindicato: String;
    var m_Acumulativo: Boolean;
    var m_CalculaNoFim: Boolean;
    var m_PagaSomenteMaior: Boolean;
    

    function getSindicato(): String;
    function getAcumulativo(): Boolean;
    function getCalculaNoFim(): Boolean;
    function getPagaSomenteMaior(): Boolean;
    

    procedure setSindicato(const a_Value: String);
    procedure setAcumulativo(const a_Value: Boolean);
    procedure setCalculaNoFim(const a_Value: Boolean);
    procedure setPagaSomenteMaior(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('acumulativo')]
    property acumulativo: Boolean read getAcumulativo write setAcumulativo;

    [NasajonSerializeAttribute('calculanofim')]
    property calculanofim: Boolean read getCalculaNoFim write setCalculaNoFim;

    [NasajonSerializeAttribute('pagasomentemaior')]
    property pagasomentemaior: Boolean read getPagaSomenteMaior write setPagaSomenteMaior;

    

end;

type TSindicatoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Sindicato: String;
    

    function getSindicato(): String;
    

    procedure setSindicato(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    

end;

	
implementation

  uses
      api.send;  

function TSindicatoNovo.getIdSindicato: String;
begin
  Result := Self.m_IdSindicato;
end;

procedure TSindicatoNovo.setIdSindicato(const a_Value: String);
begin
  Self.m_IdSindicato := a_Value;
end;

function TSindicatoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TSindicatoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TSindicatoNovo.getCNPJ: String;
begin
  Result := Self.m_CNPJ;
end;

procedure TSindicatoNovo.setCNPJ(const a_Value: String);
begin
  Self.m_CNPJ := a_Value;
end;

function TSindicatoNovo.getCodigoContribuicao: String;
begin
  Result := Self.m_CodigoContribuicao;
end;

procedure TSindicatoNovo.setCodigoContribuicao(const a_Value: String);
begin
  Self.m_CodigoContribuicao := a_Value;
end;

function TSindicatoNovo.getCodigoEntidade: String;
begin
  Result := Self.m_CodigoEntidade;
end;

procedure TSindicatoNovo.setCodigoEntidade(const a_Value: String);
begin
  Self.m_CodigoEntidade := a_Value;
end;

function TSindicatoNovo.getPatronal: Boolean;
begin
  Result := Self.m_Patronal;
end;

procedure TSindicatoNovo.setPatronal(const a_Value: Boolean);
begin
  Self.m_Patronal := a_Value;
end;

function TSindicatoNovo.getMesContribuicaoAssistencial: Integer;
begin
  Result := Self.m_MesContribuicaoAssistencial;
end;

procedure TSindicatoNovo.setMesContribuicaoAssistencial(const a_Value: Integer);
begin
  Self.m_MesContribuicaoAssistencial := a_Value;
end;

function TSindicatoNovo.getMesContribuicaoSindical: Integer;
begin
  Result := Self.m_MesContribuicaoSindical;
end;

procedure TSindicatoNovo.setMesContribuicaoSindical(const a_Value: Integer);
begin
  Self.m_MesContribuicaoSindical := a_Value;
end;

function TSindicatoNovo.getPisoSalarial: Currency;
begin
  Result := Self.m_PisoSalarial;
end;

procedure TSindicatoNovo.setPisoSalarial(const a_Value: Currency);
begin
  Self.m_PisoSalarial := a_Value;
end;

function TSindicatoNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TSindicatoNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

destructor TSindicatoNovo.Destroy;
begin

end;

function TSindicatoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSindicatoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSindicatoNovo.getNameAPI(): String;
begin
  Result := 'SindicatoNovo';
end;

function TSindicatoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSindicatoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSindicatoAlterarDadosGerais.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TSindicatoAlterarDadosGerais.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TSindicatoAlterarDadosGerais.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TSindicatoAlterarDadosGerais.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TSindicatoAlterarDadosGerais.getCNPJ: String;
begin
  Result := Self.m_CNPJ;
end;

procedure TSindicatoAlterarDadosGerais.setCNPJ(const a_Value: String);
begin
  Self.m_CNPJ := a_Value;
end;

function TSindicatoAlterarDadosGerais.getCodigoContribuicao: String;
begin
  Result := Self.m_CodigoContribuicao;
end;

procedure TSindicatoAlterarDadosGerais.setCodigoContribuicao(const a_Value: String);
begin
  Self.m_CodigoContribuicao := a_Value;
end;

function TSindicatoAlterarDadosGerais.getCodigoEntidade: String;
begin
  Result := Self.m_CodigoEntidade;
end;

procedure TSindicatoAlterarDadosGerais.setCodigoEntidade(const a_Value: String);
begin
  Self.m_CodigoEntidade := a_Value;
end;

function TSindicatoAlterarDadosGerais.getPatronal: Boolean;
begin
  Result := Self.m_Patronal;
end;

procedure TSindicatoAlterarDadosGerais.setPatronal(const a_Value: Boolean);
begin
  Self.m_Patronal := a_Value;
end;

function TSindicatoAlterarDadosGerais.getMesContribuicaoAssistencial: Integer;
begin
  Result := Self.m_MesContribuicaoAssistencial;
end;

procedure TSindicatoAlterarDadosGerais.setMesContribuicaoAssistencial(const a_Value: Integer);
begin
  Self.m_MesContribuicaoAssistencial := a_Value;
end;

function TSindicatoAlterarDadosGerais.getMesContribuicaoSindical: Integer;
begin
  Result := Self.m_MesContribuicaoSindical;
end;

procedure TSindicatoAlterarDadosGerais.setMesContribuicaoSindical(const a_Value: Integer);
begin
  Self.m_MesContribuicaoSindical := a_Value;
end;

function TSindicatoAlterarDadosGerais.getPisoSalarial: Currency;
begin
  Result := Self.m_PisoSalarial;
end;

procedure TSindicatoAlterarDadosGerais.setPisoSalarial(const a_Value: Currency);
begin
  Self.m_PisoSalarial := a_Value;
end;

function TSindicatoAlterarDadosGerais.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TSindicatoAlterarDadosGerais.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

destructor TSindicatoAlterarDadosGerais.Destroy;
begin

end;

function TSindicatoAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSindicatoAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSindicatoAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'SindicatoAlterarDadosGerais';
end;

function TSindicatoAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSindicatoAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSindicatoAlterarDadosEndereco.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TSindicatoAlterarDadosEndereco.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TSindicatoAlterarDadosEndereco.getLogradouro: String;
begin
  Result := Self.m_Logradouro;
end;

procedure TSindicatoAlterarDadosEndereco.setLogradouro(const a_Value: String);
begin
  Self.m_Logradouro := a_Value;
end;

function TSindicatoAlterarDadosEndereco.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TSindicatoAlterarDadosEndereco.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TSindicatoAlterarDadosEndereco.getcomplemento: String;
begin
  Result := Self.m_complemento;
end;

procedure TSindicatoAlterarDadosEndereco.setcomplemento(const a_Value: String);
begin
  Self.m_complemento := a_Value;
end;

function TSindicatoAlterarDadosEndereco.getBairro: String;
begin
  Result := Self.m_Bairro;
end;

procedure TSindicatoAlterarDadosEndereco.setBairro(const a_Value: String);
begin
  Self.m_Bairro := a_Value;
end;

function TSindicatoAlterarDadosEndereco.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TSindicatoAlterarDadosEndereco.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TSindicatoAlterarDadosEndereco.getCEP: String;
begin
  Result := Self.m_CEP;
end;

procedure TSindicatoAlterarDadosEndereco.setCEP(const a_Value: String);
begin
  Self.m_CEP := a_Value;
end;

function TSindicatoAlterarDadosEndereco.getEstado: String;
begin
  Result := Self.m_Estado;
end;

procedure TSindicatoAlterarDadosEndereco.setEstado(const a_Value: String);
begin
  Self.m_Estado := a_Value;
end;

destructor TSindicatoAlterarDadosEndereco.Destroy;
begin

end;

function TSindicatoAlterarDadosEndereco.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSindicatoAlterarDadosEndereco.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSindicatoAlterarDadosEndereco.getNameAPI(): String;
begin
  Result := 'SindicatoAlterarDadosEndereco';
end;

function TSindicatoAlterarDadosEndereco.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSindicatoAlterarDadosEndereco.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSindicatoAlterarDadosContato.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TSindicatoAlterarDadosContato.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TSindicatoAlterarDadosContato.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TSindicatoAlterarDadosContato.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TSindicatoAlterarDadosContato.getEmail: String;
begin
  Result := Self.m_Email;
end;

procedure TSindicatoAlterarDadosContato.setEmail(const a_Value: String);
begin
  Self.m_Email := a_Value;
end;

function TSindicatoAlterarDadosContato.getDDDTelefone: String;
begin
  Result := Self.m_DDDTelefone;
end;

procedure TSindicatoAlterarDadosContato.setDDDTelefone(const a_Value: String);
begin
  Self.m_DDDTelefone := a_Value;
end;

function TSindicatoAlterarDadosContato.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TSindicatoAlterarDadosContato.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

function TSindicatoAlterarDadosContato.getDDDFAX: String;
begin
  Result := Self.m_DDDFAX;
end;

procedure TSindicatoAlterarDadosContato.setDDDFAX(const a_Value: String);
begin
  Self.m_DDDFAX := a_Value;
end;

function TSindicatoAlterarDadosContato.getFAX: String;
begin
  Result := Self.m_FAX;
end;

procedure TSindicatoAlterarDadosContato.setFAX(const a_Value: String);
begin
  Self.m_FAX := a_Value;
end;

destructor TSindicatoAlterarDadosContato.Destroy;
begin

end;

function TSindicatoAlterarDadosContato.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSindicatoAlterarDadosContato.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSindicatoAlterarDadosContato.getNameAPI(): String;
begin
  Result := 'SindicatoAlterarDadosContato';
end;

function TSindicatoAlterarDadosContato.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSindicatoAlterarDadosContato.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSindicatoAlterarDadosOutrasEntidades.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TSindicatoAlterarDadosOutrasEntidades.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TSindicatoAlterarDadosOutrasEntidades.getCodigoFPAS: String;
begin
  Result := Self.m_CodigoFPAS;
end;

procedure TSindicatoAlterarDadosOutrasEntidades.setCodigoFPAS(const a_Value: String);
begin
  Self.m_CodigoFPAS := a_Value;
end;

function TSindicatoAlterarDadosOutrasEntidades.getCodigoTerceiros: String;
begin
  Result := Self.m_CodigoTerceiros;
end;

procedure TSindicatoAlterarDadosOutrasEntidades.setCodigoTerceiros(const a_Value: String);
begin
  Self.m_CodigoTerceiros := a_Value;
end;

destructor TSindicatoAlterarDadosOutrasEntidades.Destroy;
begin

end;

function TSindicatoAlterarDadosOutrasEntidades.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSindicatoAlterarDadosOutrasEntidades.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSindicatoAlterarDadosOutrasEntidades.getNameAPI(): String;
begin
  Result := 'SindicatoAlterarDadosOutrasEntidades';
end;

function TSindicatoAlterarDadosOutrasEntidades.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSindicatoAlterarDadosOutrasEntidades.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSindicatoAlterarDadosCalculoFerias.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TSindicatoAlterarDadosCalculoFerias.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TSindicatoAlterarDadosCalculoFerias.getMesesParaCalculoMedia: Integer;
begin
  Result := Self.m_MesesParaCalculoMedia;
end;

procedure TSindicatoAlterarDadosCalculoFerias.setMesesParaCalculoMedia(const a_Value: Integer);
begin
  Self.m_MesesParaCalculoMedia := a_Value;
end;

function TSindicatoAlterarDadosCalculoFerias.getNumeradorFracaoAdicionalFerias: Integer;
begin
  Result := Self.m_NumeradorFracaoAdicionalFerias;
end;

procedure TSindicatoAlterarDadosCalculoFerias.setNumeradorFracaoAdicionalFerias(const a_Value: Integer);
begin
  Self.m_NumeradorFracaoAdicionalFerias := a_Value;
end;

function TSindicatoAlterarDadosCalculoFerias.getDenominadorFracaoAdicionalFerias: Integer;
begin
  Result := Self.m_DenominadorFracaoAdicionalFerias;
end;

procedure TSindicatoAlterarDadosCalculoFerias.setDenominadorFracaoAdicionalFerias(const a_Value: Integer);
begin
  Self.m_DenominadorFracaoAdicionalFerias := a_Value;
end;

function TSindicatoAlterarDadosCalculoFerias.getMediaPelosMaioresValores: Boolean;
begin
  Result := Self.m_MediaPelosMaioresValores;
end;

procedure TSindicatoAlterarDadosCalculoFerias.setMediaPelosMaioresValores(const a_Value: Boolean);
begin
  Self.m_MediaPelosMaioresValores := a_Value;
end;

function TSindicatoAlterarDadosCalculoFerias.getQuantidadeMesesMaioresValores: Integer;
begin
  Result := Self.m_QuantidadeMesesMaioresValores;
end;

procedure TSindicatoAlterarDadosCalculoFerias.setQuantidadeMesesMaioresValores(const a_Value: Integer);
begin
  Self.m_QuantidadeMesesMaioresValores := a_Value;
end;

destructor TSindicatoAlterarDadosCalculoFerias.Destroy;
begin

end;

function TSindicatoAlterarDadosCalculoFerias.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSindicatoAlterarDadosCalculoFerias.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSindicatoAlterarDadosCalculoFerias.getNameAPI(): String;
begin
  Result := 'SindicatoAlterarDadosCalculoFerias';
end;

function TSindicatoAlterarDadosCalculoFerias.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSindicatoAlterarDadosCalculoFerias.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSindicatoAlterarDadosCalculoDecimoTerceiro.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TSindicatoAlterarDadosCalculoDecimoTerceiro.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TSindicatoAlterarDadosCalculoDecimoTerceiro.getMesesParaCalculoMedia: Integer;
begin
  Result := Self.m_MesesParaCalculoMedia;
end;

procedure TSindicatoAlterarDadosCalculoDecimoTerceiro.setMesesParaCalculoMedia(const a_Value: Integer);
begin
  Self.m_MesesParaCalculoMedia := a_Value;
end;

function TSindicatoAlterarDadosCalculoDecimoTerceiro.getMediaPelosMaioresValores: Boolean;
begin
  Result := Self.m_MediaPelosMaioresValores;
end;

procedure TSindicatoAlterarDadosCalculoDecimoTerceiro.setMediaPelosMaioresValores(const a_Value: Boolean);
begin
  Self.m_MediaPelosMaioresValores := a_Value;
end;

function TSindicatoAlterarDadosCalculoDecimoTerceiro.getQuantidadeMesesMaioresValores: Integer;
begin
  Result := Self.m_QuantidadeMesesMaioresValores;
end;

procedure TSindicatoAlterarDadosCalculoDecimoTerceiro.setQuantidadeMesesMaioresValores(const a_Value: Integer);
begin
  Self.m_QuantidadeMesesMaioresValores := a_Value;
end;

destructor TSindicatoAlterarDadosCalculoDecimoTerceiro.Destroy;
begin

end;

function TSindicatoAlterarDadosCalculoDecimoTerceiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSindicatoAlterarDadosCalculoDecimoTerceiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSindicatoAlterarDadosCalculoDecimoTerceiro.getNameAPI(): String;
begin
  Result := 'SindicatoAlterarDadosCalculoDecimoTerceiro';
end;

function TSindicatoAlterarDadosCalculoDecimoTerceiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSindicatoAlterarDadosCalculoDecimoTerceiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSindicatoAlterarDadosCalculoRescisao.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TSindicatoAlterarDadosCalculoRescisao.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TSindicatoAlterarDadosCalculoRescisao.getMesesParaCalculoMedia: Integer;
begin
  Result := Self.m_MesesParaCalculoMedia;
end;

procedure TSindicatoAlterarDadosCalculoRescisao.setMesesParaCalculoMedia(const a_Value: Integer);
begin
  Self.m_MesesParaCalculoMedia := a_Value;
end;

function TSindicatoAlterarDadosCalculoRescisao.getMediaPelosMaioresValores: Boolean;
begin
  Result := Self.m_MediaPelosMaioresValores;
end;

procedure TSindicatoAlterarDadosCalculoRescisao.setMediaPelosMaioresValores(const a_Value: Boolean);
begin
  Self.m_MediaPelosMaioresValores := a_Value;
end;

function TSindicatoAlterarDadosCalculoRescisao.getQuantidadeMesesMaioresValores: Integer;
begin
  Result := Self.m_QuantidadeMesesMaioresValores;
end;

procedure TSindicatoAlterarDadosCalculoRescisao.setQuantidadeMesesMaioresValores(const a_Value: Integer);
begin
  Self.m_QuantidadeMesesMaioresValores := a_Value;
end;

function TSindicatoAlterarDadosCalculoRescisao.getDiasAvisoPrevio: Integer;
begin
  Result := Self.m_DiasAvisoPrevio;
end;

procedure TSindicatoAlterarDadosCalculoRescisao.setDiasAvisoPrevio(const a_Value: Integer);
begin
  Self.m_DiasAvisoPrevio := a_Value;
end;

function TSindicatoAlterarDadosCalculoRescisao.getPercentualMultaFGTS: Currency;
begin
  Result := Self.m_PercentualMultaFGTS;
end;

procedure TSindicatoAlterarDadosCalculoRescisao.setPercentualMultaFGTS(const a_Value: Currency);
begin
  Self.m_PercentualMultaFGTS := a_Value;
end;

destructor TSindicatoAlterarDadosCalculoRescisao.Destroy;
begin

end;

function TSindicatoAlterarDadosCalculoRescisao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSindicatoAlterarDadosCalculoRescisao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSindicatoAlterarDadosCalculoRescisao.getNameAPI(): String;
begin
  Result := 'SindicatoAlterarDadosCalculoRescisao';
end;

function TSindicatoAlterarDadosCalculoRescisao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSindicatoAlterarDadosCalculoRescisao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSindicatoAlterarDadosCalculoDissidio.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TSindicatoAlterarDadosCalculoDissidio.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TSindicatoAlterarDadosCalculoDissidio.getDias: Integer;
begin
  Result := Self.m_Dias;
end;

procedure TSindicatoAlterarDadosCalculoDissidio.setDias(const a_Value: Integer);
begin
  Self.m_Dias := a_Value;
end;

function TSindicatoAlterarDadosCalculoDissidio.getMes: Integer;
begin
  Result := Self.m_Mes;
end;

procedure TSindicatoAlterarDadosCalculoDissidio.setMes(const a_Value: Integer);
begin
  Self.m_Mes := a_Value;
end;

destructor TSindicatoAlterarDadosCalculoDissidio.Destroy;
begin

end;

function TSindicatoAlterarDadosCalculoDissidio.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSindicatoAlterarDadosCalculoDissidio.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSindicatoAlterarDadosCalculoDissidio.getNameAPI(): String;
begin
  Result := 'SindicatoAlterarDadosCalculoDissidio';
end;

function TSindicatoAlterarDadosCalculoDissidio.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSindicatoAlterarDadosCalculoDissidio.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSindicatoAlterarDadosCalculoMaternidade.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TSindicatoAlterarDadosCalculoMaternidade.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TSindicatoAlterarDadosCalculoMaternidade.getMeses: Integer;
begin
  Result := Self.m_Meses;
end;

procedure TSindicatoAlterarDadosCalculoMaternidade.setMeses(const a_Value: Integer);
begin
  Self.m_Meses := a_Value;
end;

destructor TSindicatoAlterarDadosCalculoMaternidade.Destroy;
begin

end;

function TSindicatoAlterarDadosCalculoMaternidade.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSindicatoAlterarDadosCalculoMaternidade.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSindicatoAlterarDadosCalculoMaternidade.getNameAPI(): String;
begin
  Result := 'SindicatoAlterarDadosCalculoMaternidade';
end;

function TSindicatoAlterarDadosCalculoMaternidade.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSindicatoAlterarDadosCalculoMaternidade.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSindicatoAlterarDadosCalculoAnuenio.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TSindicatoAlterarDadosCalculoAnuenio.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TSindicatoAlterarDadosCalculoAnuenio.getAcumulativo: Boolean;
begin
  Result := Self.m_Acumulativo;
end;

procedure TSindicatoAlterarDadosCalculoAnuenio.setAcumulativo(const a_Value: Boolean);
begin
  Self.m_Acumulativo := a_Value;
end;

function TSindicatoAlterarDadosCalculoAnuenio.getCalculaNoFim: Boolean;
begin
  Result := Self.m_CalculaNoFim;
end;

procedure TSindicatoAlterarDadosCalculoAnuenio.setCalculaNoFim(const a_Value: Boolean);
begin
  Self.m_CalculaNoFim := a_Value;
end;

function TSindicatoAlterarDadosCalculoAnuenio.getPagaSomenteMaior: Boolean;
begin
  Result := Self.m_PagaSomenteMaior;
end;

procedure TSindicatoAlterarDadosCalculoAnuenio.setPagaSomenteMaior(const a_Value: Boolean);
begin
  Self.m_PagaSomenteMaior := a_Value;
end;

destructor TSindicatoAlterarDadosCalculoAnuenio.Destroy;
begin

end;

function TSindicatoAlterarDadosCalculoAnuenio.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSindicatoAlterarDadosCalculoAnuenio.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSindicatoAlterarDadosCalculoAnuenio.getNameAPI(): String;
begin
  Result := 'SindicatoAlterarDadosCalculoAnuenio';
end;

function TSindicatoAlterarDadosCalculoAnuenio.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSindicatoAlterarDadosCalculoAnuenio.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TSindicatoExcluir.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TSindicatoExcluir.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

destructor TSindicatoExcluir.Destroy;
begin

end;

function TSindicatoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TSindicatoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TSindicatoExcluir.getNameAPI(): String;
begin
  Result := 'SindicatoExcluir';
end;

function TSindicatoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TSindicatoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
