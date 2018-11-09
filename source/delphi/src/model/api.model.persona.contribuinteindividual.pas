unit api.model.persona.Contribuinteindividual;

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

type TContribuinteindividualNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdContribuinte: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Departamento: String;
    var m_Lotacao: String;
    var m_NivelCargo: String;
    var m_Cargo: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CodigoCategoria: String;
    var m_CPF: String;
    var m_NIS: String;
    var m_DataAdmissao: TDate;
    var m_UnidadeSalario: Integer;
    var m_Sexo: Integer;
    var m_CodigoCBO: String;
    

    function getIdContribuinte(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getDepartamento(): String;
    function getLotacao(): String;
    function getNivelCargo(): String;
    function getCargo(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCodigoCategoria(): String;
    function getCPF(): String;
    function getNIS(): String;
    function getDataAdmissao(): TDate;
    function getUnidadeSalario(): Integer;
    function getSexo(): Integer;
    function getCodigoCBO(): String;
    

    procedure setIdContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setNivelCargo(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCodigoCategoria(const a_Value: String);
    procedure setCPF(const a_Value: String);
    procedure setNIS(const a_Value: String);
    procedure setDataAdmissao(const a_Value: TDate);
    procedure setUnidadeSalario(const a_Value: Integer);
    procedure setSexo(const a_Value: Integer);
    procedure setCodigoCBO(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('idcontribuinte')]
    property idcontribuinte: String read getIdContribuinte write setIdContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('nivelcargo')]
    property nivelcargo: String read getNivelCargo write setNivelCargo;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Conforme tabela de categorias do eSocial
    /// </summary>
    [NasajonSerializeAttribute('codigocategoria')]
    property codigocategoria: String read getCodigoCategoria write setCodigoCategoria;

    /// <summary>
/// [999.999.999-99]. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('cpf')]
    property cpf: String read getCPF write setCPF;

    /// <summary>
/// Informar o número do PIS, PASEP ou NIT
    /// </summary>
    [NasajonSerializeAttribute('nis')]
    property nis: String read getNIS write setNIS;

    [NasajonSerializeAttribute('dataadmissao')]
    property dataadmissao: TDate read getDataAdmissao write setDataAdmissao;

    /// <summary>
/// Hora(1), Dia(2), Semana(3), Mês(4) ou Tarefa(5)
    /// </summary>
    [NasajonSerializeAttribute('unidadesalario')]
    property unidadesalario: Integer read getUnidadeSalario write setUnidadeSalario;

    /// <summary>
/// Masculino(1) ou Feminino(2)
    /// </summary>
    [NasajonSerializeAttribute('sexo')]
    property sexo: Integer read getSexo write setSexo;

    /// <summary>
/// Conforme tabela de código brasileiro de ocupações
    /// </summary>
    [NasajonSerializeAttribute('codigocbo')]
    property codigocbo: String read getCodigoCBO write setCodigoCBO;

    

end;

type TContribuinteindividualAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Departamento: String;
    var m_Lotacao: String;
    var m_NivelCargo: String;
    var m_Cargo: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CodigoCategoria: String;
    var m_CPF: String;
    var m_NIS: String;
    var m_DataAdmissao: TDate;
    var m_UnidadeSalario: Integer;
    var m_Sexo: Integer;
    var m_CodigoCBO: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getDepartamento(): String;
    function getLotacao(): String;
    function getNivelCargo(): String;
    function getCargo(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCodigoCategoria(): String;
    function getCPF(): String;
    function getNIS(): String;
    function getDataAdmissao(): TDate;
    function getUnidadeSalario(): Integer;
    function getSexo(): Integer;
    function getCodigoCBO(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setNivelCargo(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCodigoCategoria(const a_Value: String);
    procedure setCPF(const a_Value: String);
    procedure setNIS(const a_Value: String);
    procedure setDataAdmissao(const a_Value: TDate);
    procedure setUnidadeSalario(const a_Value: Integer);
    procedure setSexo(const a_Value: Integer);
    procedure setCodigoCBO(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('nivelcargo')]
    property nivelcargo: String read getNivelCargo write setNivelCargo;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// Conforme tabela de categorias do eSocial
    /// </summary>
    [NasajonSerializeAttribute('codigocategoria')]
    property codigocategoria: String read getCodigoCategoria write setCodigoCategoria;

    /// <summary>
/// [999.999.999-99]. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('cpf')]
    property cpf: String read getCPF write setCPF;

    /// <summary>
/// Informar o número do PIS, PASEP ou NIT
    /// </summary>
    [NasajonSerializeAttribute('nis')]
    property nis: String read getNIS write setNIS;

    [NasajonSerializeAttribute('dataadmissao')]
    property dataadmissao: TDate read getDataAdmissao write setDataAdmissao;

    /// <summary>
/// Hora(1), Dia(2), Semana(3), Mês(4) ou Tarefa(5)
    /// </summary>
    [NasajonSerializeAttribute('unidadesalario')]
    property unidadesalario: Integer read getUnidadeSalario write setUnidadeSalario;

    /// <summary>
/// Masculino(1) ou Feminino(2)
    /// </summary>
    [NasajonSerializeAttribute('sexo')]
    property sexo: Integer read getSexo write setSexo;

    /// <summary>
/// Conforme tabela de código brasileiro de ocupações
    /// </summary>
    [NasajonSerializeAttribute('codigocbo')]
    property codigocbo: String read getCodigoCBO write setCodigoCBO;

    

end;

type TContribuinteindividualAlterarDadosEndereco = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_TipoLogradouro: String;
    var m_CodigoMunicipio: String;
    var m_CodigoPais: String;
    var m_Logradouro: String;
    var m_Numero: String;
    var m_Complemento: String;
    var m_Bairro: String;
    var m_Cidade: String;
    var m_CEP: String;
    var m_DDD: String;
    var m_Telefone: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getTipoLogradouro(): String;
    function getCodigoMunicipio(): String;
    function getCodigoPais(): String;
    function getLogradouro(): String;
    function getNumero(): String;
    function getComplemento(): String;
    function getBairro(): String;
    function getCidade(): String;
    function getCEP(): String;
    function getDDD(): String;
    function getTelefone(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTipoLogradouro(const a_Value: String);
    procedure setCodigoMunicipio(const a_Value: String);
    procedure setCodigoPais(const a_Value: String);
    procedure setLogradouro(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setComplemento(const a_Value: String);
    procedure setBairro(const a_Value: String);
    procedure setCidade(const a_Value: String);
    procedure setCEP(const a_Value: String);
    procedure setDDD(const a_Value: String);
    procedure setTelefone(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Conforme tabela de tipos de logradouro do eSocial
    /// </summary>
    [NasajonSerializeAttribute('tipologradouro')]
    property tipologradouro: String read getTipoLogradouro write setTipoLogradouro;

    /// <summary>
/// Conforme tabela do IBGE
    /// </summary>
    [NasajonSerializeAttribute('codigomunicipio')]
    property codigomunicipio: String read getCodigoMunicipio write setCodigoMunicipio;

    /// <summary>
/// Conforme tabela oficial do governo
    /// </summary>
    [NasajonSerializeAttribute('codigopais')]
    property codigopais: String read getCodigoPais write setCodigoPais;

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

    /// <summary>
/// [99999-999]. A máscara não é obrigatória
    /// </summary>
    [NasajonSerializeAttribute('cep')]
    property cep: String read getCEP write setCEP;

    [NasajonSerializeAttribute('ddd')]
    property ddd: String read getDDD write setDDD;

    [NasajonSerializeAttribute('telefone')]
    property telefone: String read getTelefone write setTelefone;

    

end;

type TContribuinteindividualAlterarDadosRecebimentoSalario = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Tipo: Integer;
    var m_NumeroConta: String;
    var m_DigitoVerificador: String;
    var m_Agencia: String;
    var m_Banco: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getTipo(): Integer;
    function getNumeroConta(): String;
    function getDigitoVerificador(): String;
    function getAgencia(): String;
    function getBanco(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setNumeroConta(const a_Value: String);
    procedure setDigitoVerificador(const a_Value: String);
    procedure setAgencia(const a_Value: String);
    procedure setBanco(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Conta Corrente(1), Conta Poupança(2), Conta Salário(4), Dinheiro(8) ou Cheque(16)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('numeroconta')]
    property numeroconta: String read getNumeroConta write setNumeroConta;

    [NasajonSerializeAttribute('digitoverificador')]
    property digitoverificador: String read getDigitoVerificador write setDigitoVerificador;

    [NasajonSerializeAttribute('agencia')]
    property agencia: String read getAgencia write setAgencia;

    [NasajonSerializeAttribute('banco')]
    property banco: String read getBanco write setBanco;

    

end;

type TContribuinteindividualAlterarDadosTermino = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Data: TDate;
    var m_Motivo: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    function getMotivo(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setMotivo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    /// <summary>
/// Informar apenas para categoria diretor : Exoneração sem justa causa(01), Término de Mandato que não tenha sido reconduzido ao cargo(02), Exoneração a pedido(03), Exoneração por culta recíproca ou força maior(04), Morte(05) ou Exoneração por falência, encerramento ou supressão(06)
    /// </summary>
    [NasajonSerializeAttribute('motivo')]
    property motivo: String read getMotivo write setMotivo;

    

end;

type TContribuinteindividualAlterarPercentualISS = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Percentual: Currency;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getPercentual(): Currency;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setPercentual(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    

end;

type TContribuinteindividualAlterarDataOpcaoFGTS = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Data: TDate;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    

end;

type TContribuinteindividualAlterarDadosTransportadores = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_PercentualReducaoINSS: Currency;
    var m_PercentualReducaoIRRF: Currency;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getPercentualReducaoINSS(): Currency;
    function getPercentualReducaoIRRF(): Currency;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setPercentualReducaoINSS(const a_Value: Currency);
    procedure setPercentualReducaoIRRF(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('percentualreducaoinss')]
    property percentualreducaoinss: Currency read getPercentualReducaoINSS write setPercentualReducaoINSS;

    [NasajonSerializeAttribute('percentualreducaoirrf')]
    property percentualreducaoirrf: Currency read getPercentualReducaoIRRF write setPercentualReducaoIRRF;

    

end;

type TContribuinteindividualAlterarDadosNascimento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_UF: String;
    var m_Cidade: String;
    var m_CodigoMunicipio: String;
    var m_CodigoPais: String;
    var m_NomePai: String;
    var m_NomeMae: String;
    var m_DataNascimento: TDate;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getUF(): String;
    function getCidade(): String;
    function getCodigoMunicipio(): String;
    function getCodigoPais(): String;
    function getNomePai(): String;
    function getNomeMae(): String;
    function getDataNascimento(): TDate;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setUF(const a_Value: String);
    procedure setCidade(const a_Value: String);
    procedure setCodigoMunicipio(const a_Value: String);
    procedure setCodigoPais(const a_Value: String);
    procedure setNomePai(const a_Value: String);
    procedure setNomeMae(const a_Value: String);
    procedure setDataNascimento(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getUF write setUF;

    [NasajonSerializeAttribute('cidade')]
    property cidade: String read getCidade write setCidade;

    /// <summary>
/// Conforme tabela do IBGE
    /// </summary>
    [NasajonSerializeAttribute('codigomunicipio')]
    property codigomunicipio: String read getCodigoMunicipio write setCodigoMunicipio;

    /// <summary>
/// Conforme tabela oficial do governo
    /// </summary>
    [NasajonSerializeAttribute('codigopais')]
    property codigopais: String read getCodigoPais write setCodigoPais;

    [NasajonSerializeAttribute('nomepai')]
    property nomepai: String read getNomePai write setNomePai;

    [NasajonSerializeAttribute('nomemae')]
    property nomemae: String read getNomeMae write setNomeMae;

    [NasajonSerializeAttribute('datanascimento')]
    property datanascimento: TDate read getDataNascimento write setDataNascimento;

    

end;

type TContribuinteindividualAlterarDadosCarteiraTrabalho = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_Serie: String;
    var m_UF: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getSerie(): String;
    function getUF(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setSerie(const a_Value: String);
    procedure setUF(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('serie')]
    property serie: String read getSerie write setSerie;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getUF write setUF;

    

end;

type TContribuinteindividualAlterarDadosNacionalidade = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_CodigoPais: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getCodigoPais(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigoPais(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Conforme tabela oficial do governo
    /// </summary>
    [NasajonSerializeAttribute('codigopais')]
    property codigopais: String read getCodigoPais write setCodigoPais;

    

end;

type TContribuinteindividualAlterarDadosRIC = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_DataExpedicao: TDate;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getDataExpedicao(): TDate;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setOrgaoEmissor(const a_Value: String);
    procedure setDataExpedicao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('orgaoemissor')]
    property orgaoemissor: String read getOrgaoEmissor write setOrgaoEmissor;

    [NasajonSerializeAttribute('dataexpedicao')]
    property dataexpedicao: TDate read getDataExpedicao write setDataExpedicao;

    

end;

type TContribuinteindividualAlterarDadosCarteiraIdentidade = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_DataExpedicao: TDate;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getDataExpedicao(): TDate;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setOrgaoEmissor(const a_Value: String);
    procedure setDataExpedicao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('orgaoemissor')]
    property orgaoemissor: String read getOrgaoEmissor write setOrgaoEmissor;

    [NasajonSerializeAttribute('dataexpedicao')]
    property dataexpedicao: TDate read getDataExpedicao write setDataExpedicao;

    

end;

type TContribuinteindividualAlterarDadosOrdemClasse = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_DataExpedicao: TDate;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getDataExpedicao(): TDate;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setOrgaoEmissor(const a_Value: String);
    procedure setDataExpedicao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('orgaoemissor')]
    property orgaoemissor: String read getOrgaoEmissor write setOrgaoEmissor;

    [NasajonSerializeAttribute('dataexpedicao')]
    property dataexpedicao: TDate read getDataExpedicao write setDataExpedicao;

    

end;

type TContribuinteindividualAlterarDadosCarteiraHablilitacao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_DataExpedicao: TDate;
    var m_DataValidade: TDate;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getDataExpedicao(): TDate;
    function getDataValidade(): TDate;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setOrgaoEmissor(const a_Value: String);
    procedure setDataExpedicao(const a_Value: TDate);
    procedure setDataValidade(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('orgaoemissor')]
    property orgaoemissor: String read getOrgaoEmissor write setOrgaoEmissor;

    [NasajonSerializeAttribute('dataexpedicao')]
    property dataexpedicao: TDate read getDataExpedicao write setDataExpedicao;

    [NasajonSerializeAttribute('datavalidade')]
    property datavalidade: TDate read getDataValidade write setDataValidade;

    

end;

type TContribuinteindividualAlterarDadosDeficiencia = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_DeficienteIntelectual: Boolean;
    var m_DeficienteMental: Boolean;
    var m_DeficienteAuditivo: Boolean;
    var m_DeficienteVisual: Boolean;
    var m_DeficienteFisico: Boolean;
    var m_Reabilitado: Boolean;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getDeficienteIntelectual(): Boolean;
    function getDeficienteMental(): Boolean;
    function getDeficienteAuditivo(): Boolean;
    function getDeficienteVisual(): Boolean;
    function getDeficienteFisico(): Boolean;
    function getReabilitado(): Boolean;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDeficienteIntelectual(const a_Value: Boolean);
    procedure setDeficienteMental(const a_Value: Boolean);
    procedure setDeficienteAuditivo(const a_Value: Boolean);
    procedure setDeficienteVisual(const a_Value: Boolean);
    procedure setDeficienteFisico(const a_Value: Boolean);
    procedure setReabilitado(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('deficienteintelectual')]
    property deficienteintelectual: Boolean read getDeficienteIntelectual write setDeficienteIntelectual;

    [NasajonSerializeAttribute('deficientemental')]
    property deficientemental: Boolean read getDeficienteMental write setDeficienteMental;

    [NasajonSerializeAttribute('deficienteauditivo')]
    property deficienteauditivo: Boolean read getDeficienteAuditivo write setDeficienteAuditivo;

    [NasajonSerializeAttribute('deficientevisual')]
    property deficientevisual: Boolean read getDeficienteVisual write setDeficienteVisual;

    [NasajonSerializeAttribute('deficientefisico')]
    property deficientefisico: Boolean read getDeficienteFisico write setDeficienteFisico;

    [NasajonSerializeAttribute('reabilitado')]
    property reabilitado: Boolean read getReabilitado write setReabilitado;

    

end;

type TContribuinteindividualAlterarDadosEstrangeiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_CasadoComBrasileiro: Boolean;
    var m_TemFilhoBrasileiro: Boolean;
    var m_DataChegadaPais: TDate;
    var m_DataNaturalizacao: TDate;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getCasadoComBrasileiro(): Boolean;
    function getTemFilhoBrasileiro(): Boolean;
    function getDataChegadaPais(): TDate;
    function getDataNaturalizacao(): TDate;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCasadoComBrasileiro(const a_Value: Boolean);
    procedure setTemFilhoBrasileiro(const a_Value: Boolean);
    procedure setDataChegadaPais(const a_Value: TDate);
    procedure setDataNaturalizacao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('casadocombrasileiro')]
    property casadocombrasileiro: Boolean read getCasadoComBrasileiro write setCasadoComBrasileiro;

    [NasajonSerializeAttribute('temfilhobrasileiro')]
    property temfilhobrasileiro: Boolean read getTemFilhoBrasileiro write setTemFilhoBrasileiro;

    [NasajonSerializeAttribute('datachegadapais')]
    property datachegadapais: TDate read getDataChegadaPais write setDataChegadaPais;

    [NasajonSerializeAttribute('datanaturalizacao')]
    property datanaturalizacao: TDate read getDataNaturalizacao write setDataNaturalizacao;

    

end;

type TContribuinteindividualAlterarIdentidadeNasajon = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Identidade: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getIdentidade(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setIdentidade(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('identidade')]
    property identidade: String read getIdentidade write setIdentidade;

    

end;

type TContribuinteindividualAlterarDadosJornada = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_NumeroHorasMensais: Integer;
    var m_NumeroDiasPeriodo: Integer;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getNumeroHorasMensais(): Integer;
    function getNumeroDiasPeriodo(): Integer;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumeroHorasMensais(const a_Value: Integer);
    procedure setNumeroDiasPeriodo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numerohorasmensais')]
    property numerohorasmensais: Integer read getNumeroHorasMensais write setNumeroHorasMensais;

    [NasajonSerializeAttribute('numerodiasperiodo')]
    property numerodiasperiodo: Integer read getNumeroDiasPeriodo write setNumeroDiasPeriodo;

    

end;

type TContribuinteindividualAlterarSalario = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_SalarioFixo: Currency;
    var m_UnidadeSalario: Integer;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getSalarioFixo(): Currency;
    function getUnidadeSalario(): Integer;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setSalarioFixo(const a_Value: Currency);
    procedure setUnidadeSalario(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('salariofixo')]
    property salariofixo: Currency read getSalarioFixo write setSalarioFixo;

    /// <summary>
/// Hora(1), Dia(2), Semana(3), Mês(4) ou Tarefa(5)
    /// </summary>
    [NasajonSerializeAttribute('unidadesalario')]
    property unidadesalario: Integer read getUnidadeSalario write setUnidadeSalario;

    

end;

type TContribuinteindividualAlterarDadosPessoais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_EstadoCivil: Integer;
    var m_CodigoRaca: String;
    var m_CodigoGrauInstrucao: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getEstadoCivil(): Integer;
    function getCodigoRaca(): String;
    function getCodigoGrauInstrucao(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstadoCivil(const a_Value: Integer);
    procedure setCodigoRaca(const a_Value: String);
    procedure setCodigoGrauInstrucao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Solteiro(1), Casado(2), Divorciado(3), Viúvo(4), União Estável(5) ou Outros(6)
    /// </summary>
    [NasajonSerializeAttribute('estadocivil')]
    property estadocivil: Integer read getEstadoCivil write setEstadoCivil;

    /// <summary>
/// Conforme tabela oficial do governo
    /// </summary>
    [NasajonSerializeAttribute('codigoraca')]
    property codigoraca: String read getCodigoRaca write setCodigoRaca;

    /// <summary>
/// Conforme tabela oficial do governo
    /// </summary>
    [NasajonSerializeAttribute('codigograuinstrucao')]
    property codigograuinstrucao: String read getCodigoGrauInstrucao write setCodigoGrauInstrucao;

    

end;

type TContribuinteindividualAlterarMatriculaFuncionario = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Funcionario: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getFuncionario(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    

end;

type TContribuinteindividualAlterarAvalidador = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Avaliador: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getAvaliador(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setAvaliador(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('avaliador')]
    property avaliador: String read getAvaliador write setAvaliador;

    

end;

type TContribuinteindividualAlterarGestor = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Gestor: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getGestor(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setGestor(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('gestor')]
    property gestor: String read getGestor write setGestor;

    

end;

type TContribuinteindividualAlterarAtividadeConcomitante = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Codigo: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Contribuição Substituída(1), Contribuição não Substituída(2) ou Ambas(3)
    /// </summary>
    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    

end;

type TContribuinteindividualAlterarObservacao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    var m_Observacao: WideString;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    function getObservacao(): WideString;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setObservacao(const a_Value: WideString);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getObservacao write setObservacao;

    

end;

type TContribuinteindividualExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Contribuinte: String;
    var m_Empresa: String;
    

    function getContribuinte(): String;
    function getEmpresa(): String;
    

    procedure setContribuinte(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('contribuinte')]
    property contribuinte: String read getContribuinte write setContribuinte;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TContribuinteindividualNovo.getIdContribuinte: String;
begin
  Result := Self.m_IdContribuinte;
end;

procedure TContribuinteindividualNovo.setIdContribuinte(const a_Value: String);
begin
  Self.m_IdContribuinte := a_Value;
end;

function TContribuinteindividualNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TContribuinteindividualNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TContribuinteindividualNovo.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TContribuinteindividualNovo.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TContribuinteindividualNovo.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TContribuinteindividualNovo.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TContribuinteindividualNovo.getNivelCargo: String;
begin
  Result := Self.m_NivelCargo;
end;

procedure TContribuinteindividualNovo.setNivelCargo(const a_Value: String);
begin
  Self.m_NivelCargo := a_Value;
end;

function TContribuinteindividualNovo.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TContribuinteindividualNovo.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TContribuinteindividualNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContribuinteindividualNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TContribuinteindividualNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TContribuinteindividualNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TContribuinteindividualNovo.getCodigoCategoria: String;
begin
  Result := Self.m_CodigoCategoria;
end;

procedure TContribuinteindividualNovo.setCodigoCategoria(const a_Value: String);
begin
  Self.m_CodigoCategoria := a_Value;
end;

function TContribuinteindividualNovo.getCPF: String;
begin
  Result := Self.m_CPF;
end;

procedure TContribuinteindividualNovo.setCPF(const a_Value: String);
begin
  Self.m_CPF := a_Value;
end;

function TContribuinteindividualNovo.getNIS: String;
begin
  Result := Self.m_NIS;
end;

procedure TContribuinteindividualNovo.setNIS(const a_Value: String);
begin
  Self.m_NIS := a_Value;
end;

function TContribuinteindividualNovo.getDataAdmissao: TDate;
begin
  Result := Self.m_DataAdmissao;
end;

procedure TContribuinteindividualNovo.setDataAdmissao(const a_Value: TDate);
begin
  Self.m_DataAdmissao := a_Value;
end;

function TContribuinteindividualNovo.getUnidadeSalario: Integer;
begin
  Result := Self.m_UnidadeSalario;
end;

procedure TContribuinteindividualNovo.setUnidadeSalario(const a_Value: Integer);
begin
  Self.m_UnidadeSalario := a_Value;
end;

function TContribuinteindividualNovo.getSexo: Integer;
begin
  Result := Self.m_Sexo;
end;

procedure TContribuinteindividualNovo.setSexo(const a_Value: Integer);
begin
  Self.m_Sexo := a_Value;
end;

function TContribuinteindividualNovo.getCodigoCBO: String;
begin
  Result := Self.m_CodigoCBO;
end;

procedure TContribuinteindividualNovo.setCodigoCBO(const a_Value: String);
begin
  Self.m_CodigoCBO := a_Value;
end;

destructor TContribuinteindividualNovo.Destroy;
begin

end;

function TContribuinteindividualNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualNovo.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualNovo';
end;

function TContribuinteindividualNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosGerais.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosGerais.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TContribuinteindividualAlterarDadosGerais.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TContribuinteindividualAlterarDadosGerais.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TContribuinteindividualAlterarDadosGerais.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getNivelCargo: String;
begin
  Result := Self.m_NivelCargo;
end;

procedure TContribuinteindividualAlterarDadosGerais.setNivelCargo(const a_Value: String);
begin
  Self.m_NivelCargo := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TContribuinteindividualAlterarDadosGerais.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContribuinteindividualAlterarDadosGerais.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TContribuinteindividualAlterarDadosGerais.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getCodigoCategoria: String;
begin
  Result := Self.m_CodigoCategoria;
end;

procedure TContribuinteindividualAlterarDadosGerais.setCodigoCategoria(const a_Value: String);
begin
  Self.m_CodigoCategoria := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getCPF: String;
begin
  Result := Self.m_CPF;
end;

procedure TContribuinteindividualAlterarDadosGerais.setCPF(const a_Value: String);
begin
  Self.m_CPF := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getNIS: String;
begin
  Result := Self.m_NIS;
end;

procedure TContribuinteindividualAlterarDadosGerais.setNIS(const a_Value: String);
begin
  Self.m_NIS := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getDataAdmissao: TDate;
begin
  Result := Self.m_DataAdmissao;
end;

procedure TContribuinteindividualAlterarDadosGerais.setDataAdmissao(const a_Value: TDate);
begin
  Self.m_DataAdmissao := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getUnidadeSalario: Integer;
begin
  Result := Self.m_UnidadeSalario;
end;

procedure TContribuinteindividualAlterarDadosGerais.setUnidadeSalario(const a_Value: Integer);
begin
  Self.m_UnidadeSalario := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getSexo: Integer;
begin
  Result := Self.m_Sexo;
end;

procedure TContribuinteindividualAlterarDadosGerais.setSexo(const a_Value: Integer);
begin
  Self.m_Sexo := a_Value;
end;

function TContribuinteindividualAlterarDadosGerais.getCodigoCBO: String;
begin
  Result := Self.m_CodigoCBO;
end;

procedure TContribuinteindividualAlterarDadosGerais.setCodigoCBO(const a_Value: String);
begin
  Self.m_CodigoCBO := a_Value;
end;

destructor TContribuinteindividualAlterarDadosGerais.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosGerais';
end;

function TContribuinteindividualAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosEndereco.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosEndereco.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosEndereco.getTipoLogradouro: String;
begin
  Result := Self.m_TipoLogradouro;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setTipoLogradouro(const a_Value: String);
begin
  Self.m_TipoLogradouro := a_Value;
end;

function TContribuinteindividualAlterarDadosEndereco.getCodigoMunicipio: String;
begin
  Result := Self.m_CodigoMunicipio;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setCodigoMunicipio(const a_Value: String);
begin
  Self.m_CodigoMunicipio := a_Value;
end;

function TContribuinteindividualAlterarDadosEndereco.getCodigoPais: String;
begin
  Result := Self.m_CodigoPais;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setCodigoPais(const a_Value: String);
begin
  Self.m_CodigoPais := a_Value;
end;

function TContribuinteindividualAlterarDadosEndereco.getLogradouro: String;
begin
  Result := Self.m_Logradouro;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setLogradouro(const a_Value: String);
begin
  Self.m_Logradouro := a_Value;
end;

function TContribuinteindividualAlterarDadosEndereco.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TContribuinteindividualAlterarDadosEndereco.getComplemento: String;
begin
  Result := Self.m_Complemento;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setComplemento(const a_Value: String);
begin
  Self.m_Complemento := a_Value;
end;

function TContribuinteindividualAlterarDadosEndereco.getBairro: String;
begin
  Result := Self.m_Bairro;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setBairro(const a_Value: String);
begin
  Self.m_Bairro := a_Value;
end;

function TContribuinteindividualAlterarDadosEndereco.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TContribuinteindividualAlterarDadosEndereco.getCEP: String;
begin
  Result := Self.m_CEP;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setCEP(const a_Value: String);
begin
  Self.m_CEP := a_Value;
end;

function TContribuinteindividualAlterarDadosEndereco.getDDD: String;
begin
  Result := Self.m_DDD;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setDDD(const a_Value: String);
begin
  Self.m_DDD := a_Value;
end;

function TContribuinteindividualAlterarDadosEndereco.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TContribuinteindividualAlterarDadosEndereco.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

destructor TContribuinteindividualAlterarDadosEndereco.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosEndereco.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosEndereco.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosEndereco.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosEndereco';
end;

function TContribuinteindividualAlterarDadosEndereco.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosEndereco.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosRecebimentoSalario.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosRecebimentoSalario.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosRecebimentoSalario.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosRecebimentoSalario.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosRecebimentoSalario.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TContribuinteindividualAlterarDadosRecebimentoSalario.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TContribuinteindividualAlterarDadosRecebimentoSalario.getNumeroConta: String;
begin
  Result := Self.m_NumeroConta;
end;

procedure TContribuinteindividualAlterarDadosRecebimentoSalario.setNumeroConta(const a_Value: String);
begin
  Self.m_NumeroConta := a_Value;
end;

function TContribuinteindividualAlterarDadosRecebimentoSalario.getDigitoVerificador: String;
begin
  Result := Self.m_DigitoVerificador;
end;

procedure TContribuinteindividualAlterarDadosRecebimentoSalario.setDigitoVerificador(const a_Value: String);
begin
  Self.m_DigitoVerificador := a_Value;
end;

function TContribuinteindividualAlterarDadosRecebimentoSalario.getAgencia: String;
begin
  Result := Self.m_Agencia;
end;

procedure TContribuinteindividualAlterarDadosRecebimentoSalario.setAgencia(const a_Value: String);
begin
  Self.m_Agencia := a_Value;
end;

function TContribuinteindividualAlterarDadosRecebimentoSalario.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TContribuinteindividualAlterarDadosRecebimentoSalario.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

destructor TContribuinteindividualAlterarDadosRecebimentoSalario.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosRecebimentoSalario.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosRecebimentoSalario.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosRecebimentoSalario.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosRecebimentoSalario';
end;

function TContribuinteindividualAlterarDadosRecebimentoSalario.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosRecebimentoSalario.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosTermino.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosTermino.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosTermino.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosTermino.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosTermino.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TContribuinteindividualAlterarDadosTermino.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TContribuinteindividualAlterarDadosTermino.getMotivo: String;
begin
  Result := Self.m_Motivo;
end;

procedure TContribuinteindividualAlterarDadosTermino.setMotivo(const a_Value: String);
begin
  Self.m_Motivo := a_Value;
end;

destructor TContribuinteindividualAlterarDadosTermino.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosTermino.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosTermino.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosTermino.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosTermino';
end;

function TContribuinteindividualAlterarDadosTermino.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosTermino.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarPercentualISS.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarPercentualISS.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarPercentualISS.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarPercentualISS.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarPercentualISS.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure TContribuinteindividualAlterarPercentualISS.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

destructor TContribuinteindividualAlterarPercentualISS.Destroy;
begin

end;

function TContribuinteindividualAlterarPercentualISS.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarPercentualISS.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarPercentualISS.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarPercentualISS';
end;

function TContribuinteindividualAlterarPercentualISS.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarPercentualISS.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDataOpcaoFGTS.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDataOpcaoFGTS.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDataOpcaoFGTS.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDataOpcaoFGTS.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDataOpcaoFGTS.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TContribuinteindividualAlterarDataOpcaoFGTS.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

destructor TContribuinteindividualAlterarDataOpcaoFGTS.Destroy;
begin

end;

function TContribuinteindividualAlterarDataOpcaoFGTS.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDataOpcaoFGTS.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDataOpcaoFGTS.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDataOpcaoFGTS';
end;

function TContribuinteindividualAlterarDataOpcaoFGTS.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDataOpcaoFGTS.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosTransportadores.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosTransportadores.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosTransportadores.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosTransportadores.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosTransportadores.getPercentualReducaoINSS: Currency;
begin
  Result := Self.m_PercentualReducaoINSS;
end;

procedure TContribuinteindividualAlterarDadosTransportadores.setPercentualReducaoINSS(const a_Value: Currency);
begin
  Self.m_PercentualReducaoINSS := a_Value;
end;

function TContribuinteindividualAlterarDadosTransportadores.getPercentualReducaoIRRF: Currency;
begin
  Result := Self.m_PercentualReducaoIRRF;
end;

procedure TContribuinteindividualAlterarDadosTransportadores.setPercentualReducaoIRRF(const a_Value: Currency);
begin
  Self.m_PercentualReducaoIRRF := a_Value;
end;

destructor TContribuinteindividualAlterarDadosTransportadores.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosTransportadores.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosTransportadores.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosTransportadores.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosTransportadores';
end;

function TContribuinteindividualAlterarDadosTransportadores.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosTransportadores.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosNascimento.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosNascimento.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosNascimento.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosNascimento.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosNascimento.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TContribuinteindividualAlterarDadosNascimento.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TContribuinteindividualAlterarDadosNascimento.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TContribuinteindividualAlterarDadosNascimento.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TContribuinteindividualAlterarDadosNascimento.getCodigoMunicipio: String;
begin
  Result := Self.m_CodigoMunicipio;
end;

procedure TContribuinteindividualAlterarDadosNascimento.setCodigoMunicipio(const a_Value: String);
begin
  Self.m_CodigoMunicipio := a_Value;
end;

function TContribuinteindividualAlterarDadosNascimento.getCodigoPais: String;
begin
  Result := Self.m_CodigoPais;
end;

procedure TContribuinteindividualAlterarDadosNascimento.setCodigoPais(const a_Value: String);
begin
  Self.m_CodigoPais := a_Value;
end;

function TContribuinteindividualAlterarDadosNascimento.getNomePai: String;
begin
  Result := Self.m_NomePai;
end;

procedure TContribuinteindividualAlterarDadosNascimento.setNomePai(const a_Value: String);
begin
  Self.m_NomePai := a_Value;
end;

function TContribuinteindividualAlterarDadosNascimento.getNomeMae: String;
begin
  Result := Self.m_NomeMae;
end;

procedure TContribuinteindividualAlterarDadosNascimento.setNomeMae(const a_Value: String);
begin
  Self.m_NomeMae := a_Value;
end;

function TContribuinteindividualAlterarDadosNascimento.getDataNascimento: TDate;
begin
  Result := Self.m_DataNascimento;
end;

procedure TContribuinteindividualAlterarDadosNascimento.setDataNascimento(const a_Value: TDate);
begin
  Self.m_DataNascimento := a_Value;
end;

destructor TContribuinteindividualAlterarDadosNascimento.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosNascimento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosNascimento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosNascimento.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosNascimento';
end;

function TContribuinteindividualAlterarDadosNascimento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosNascimento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosCarteiraTrabalho.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosCarteiraTrabalho.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraTrabalho.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosCarteiraTrabalho.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraTrabalho.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TContribuinteindividualAlterarDadosCarteiraTrabalho.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraTrabalho.getSerie: String;
begin
  Result := Self.m_Serie;
end;

procedure TContribuinteindividualAlterarDadosCarteiraTrabalho.setSerie(const a_Value: String);
begin
  Self.m_Serie := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraTrabalho.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TContribuinteindividualAlterarDadosCarteiraTrabalho.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

destructor TContribuinteindividualAlterarDadosCarteiraTrabalho.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosCarteiraTrabalho.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosCarteiraTrabalho.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosCarteiraTrabalho.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosCarteiraTrabalho';
end;

function TContribuinteindividualAlterarDadosCarteiraTrabalho.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosCarteiraTrabalho.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosNacionalidade.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosNacionalidade.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosNacionalidade.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosNacionalidade.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosNacionalidade.getCodigoPais: String;
begin
  Result := Self.m_CodigoPais;
end;

procedure TContribuinteindividualAlterarDadosNacionalidade.setCodigoPais(const a_Value: String);
begin
  Self.m_CodigoPais := a_Value;
end;

destructor TContribuinteindividualAlterarDadosNacionalidade.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosNacionalidade.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosNacionalidade.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosNacionalidade.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosNacionalidade';
end;

function TContribuinteindividualAlterarDadosNacionalidade.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosNacionalidade.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosRIC.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosRIC.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosRIC.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosRIC.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosRIC.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TContribuinteindividualAlterarDadosRIC.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TContribuinteindividualAlterarDadosRIC.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TContribuinteindividualAlterarDadosRIC.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TContribuinteindividualAlterarDadosRIC.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TContribuinteindividualAlterarDadosRIC.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

destructor TContribuinteindividualAlterarDadosRIC.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosRIC.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosRIC.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosRIC.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosRIC';
end;

function TContribuinteindividualAlterarDadosRIC.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosRIC.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosCarteiraIdentidade.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosCarteiraIdentidade.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraIdentidade.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosCarteiraIdentidade.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraIdentidade.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TContribuinteindividualAlterarDadosCarteiraIdentidade.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraIdentidade.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TContribuinteindividualAlterarDadosCarteiraIdentidade.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraIdentidade.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TContribuinteindividualAlterarDadosCarteiraIdentidade.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

destructor TContribuinteindividualAlterarDadosCarteiraIdentidade.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosCarteiraIdentidade.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosCarteiraIdentidade.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosCarteiraIdentidade.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosCarteiraIdentidade';
end;

function TContribuinteindividualAlterarDadosCarteiraIdentidade.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosCarteiraIdentidade.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosOrdemClasse.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosOrdemClasse.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosOrdemClasse.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosOrdemClasse.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosOrdemClasse.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TContribuinteindividualAlterarDadosOrdemClasse.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TContribuinteindividualAlterarDadosOrdemClasse.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TContribuinteindividualAlterarDadosOrdemClasse.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TContribuinteindividualAlterarDadosOrdemClasse.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TContribuinteindividualAlterarDadosOrdemClasse.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

destructor TContribuinteindividualAlterarDadosOrdemClasse.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosOrdemClasse.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosOrdemClasse.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosOrdemClasse.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosOrdemClasse';
end;

function TContribuinteindividualAlterarDadosOrdemClasse.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosOrdemClasse.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosCarteiraHablilitacao.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosCarteiraHablilitacao.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraHablilitacao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosCarteiraHablilitacao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraHablilitacao.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TContribuinteindividualAlterarDadosCarteiraHablilitacao.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraHablilitacao.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TContribuinteindividualAlterarDadosCarteiraHablilitacao.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraHablilitacao.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TContribuinteindividualAlterarDadosCarteiraHablilitacao.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

function TContribuinteindividualAlterarDadosCarteiraHablilitacao.getDataValidade: TDate;
begin
  Result := Self.m_DataValidade;
end;

procedure TContribuinteindividualAlterarDadosCarteiraHablilitacao.setDataValidade(const a_Value: TDate);
begin
  Self.m_DataValidade := a_Value;
end;

destructor TContribuinteindividualAlterarDadosCarteiraHablilitacao.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosCarteiraHablilitacao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosCarteiraHablilitacao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosCarteiraHablilitacao.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosCarteiraHablilitacao';
end;

function TContribuinteindividualAlterarDadosCarteiraHablilitacao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosCarteiraHablilitacao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosDeficiencia.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosDeficiencia.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosDeficiencia.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosDeficiencia.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosDeficiencia.getDeficienteIntelectual: Boolean;
begin
  Result := Self.m_DeficienteIntelectual;
end;

procedure TContribuinteindividualAlterarDadosDeficiencia.setDeficienteIntelectual(const a_Value: Boolean);
begin
  Self.m_DeficienteIntelectual := a_Value;
end;

function TContribuinteindividualAlterarDadosDeficiencia.getDeficienteMental: Boolean;
begin
  Result := Self.m_DeficienteMental;
end;

procedure TContribuinteindividualAlterarDadosDeficiencia.setDeficienteMental(const a_Value: Boolean);
begin
  Self.m_DeficienteMental := a_Value;
end;

function TContribuinteindividualAlterarDadosDeficiencia.getDeficienteAuditivo: Boolean;
begin
  Result := Self.m_DeficienteAuditivo;
end;

procedure TContribuinteindividualAlterarDadosDeficiencia.setDeficienteAuditivo(const a_Value: Boolean);
begin
  Self.m_DeficienteAuditivo := a_Value;
end;

function TContribuinteindividualAlterarDadosDeficiencia.getDeficienteVisual: Boolean;
begin
  Result := Self.m_DeficienteVisual;
end;

procedure TContribuinteindividualAlterarDadosDeficiencia.setDeficienteVisual(const a_Value: Boolean);
begin
  Self.m_DeficienteVisual := a_Value;
end;

function TContribuinteindividualAlterarDadosDeficiencia.getDeficienteFisico: Boolean;
begin
  Result := Self.m_DeficienteFisico;
end;

procedure TContribuinteindividualAlterarDadosDeficiencia.setDeficienteFisico(const a_Value: Boolean);
begin
  Self.m_DeficienteFisico := a_Value;
end;

function TContribuinteindividualAlterarDadosDeficiencia.getReabilitado: Boolean;
begin
  Result := Self.m_Reabilitado;
end;

procedure TContribuinteindividualAlterarDadosDeficiencia.setReabilitado(const a_Value: Boolean);
begin
  Self.m_Reabilitado := a_Value;
end;

destructor TContribuinteindividualAlterarDadosDeficiencia.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosDeficiencia.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosDeficiencia.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosDeficiencia.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosDeficiencia';
end;

function TContribuinteindividualAlterarDadosDeficiencia.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosDeficiencia.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosEstrangeiro.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosEstrangeiro.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosEstrangeiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosEstrangeiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosEstrangeiro.getCasadoComBrasileiro: Boolean;
begin
  Result := Self.m_CasadoComBrasileiro;
end;

procedure TContribuinteindividualAlterarDadosEstrangeiro.setCasadoComBrasileiro(const a_Value: Boolean);
begin
  Self.m_CasadoComBrasileiro := a_Value;
end;

function TContribuinteindividualAlterarDadosEstrangeiro.getTemFilhoBrasileiro: Boolean;
begin
  Result := Self.m_TemFilhoBrasileiro;
end;

procedure TContribuinteindividualAlterarDadosEstrangeiro.setTemFilhoBrasileiro(const a_Value: Boolean);
begin
  Self.m_TemFilhoBrasileiro := a_Value;
end;

function TContribuinteindividualAlterarDadosEstrangeiro.getDataChegadaPais: TDate;
begin
  Result := Self.m_DataChegadaPais;
end;

procedure TContribuinteindividualAlterarDadosEstrangeiro.setDataChegadaPais(const a_Value: TDate);
begin
  Self.m_DataChegadaPais := a_Value;
end;

function TContribuinteindividualAlterarDadosEstrangeiro.getDataNaturalizacao: TDate;
begin
  Result := Self.m_DataNaturalizacao;
end;

procedure TContribuinteindividualAlterarDadosEstrangeiro.setDataNaturalizacao(const a_Value: TDate);
begin
  Self.m_DataNaturalizacao := a_Value;
end;

destructor TContribuinteindividualAlterarDadosEstrangeiro.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosEstrangeiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosEstrangeiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosEstrangeiro.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosEstrangeiro';
end;

function TContribuinteindividualAlterarDadosEstrangeiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosEstrangeiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarIdentidadeNasajon.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarIdentidadeNasajon.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarIdentidadeNasajon.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarIdentidadeNasajon.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarIdentidadeNasajon.getIdentidade: String;
begin
  Result := Self.m_Identidade;
end;

procedure TContribuinteindividualAlterarIdentidadeNasajon.setIdentidade(const a_Value: String);
begin
  Self.m_Identidade := a_Value;
end;

destructor TContribuinteindividualAlterarIdentidadeNasajon.Destroy;
begin

end;

function TContribuinteindividualAlterarIdentidadeNasajon.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarIdentidadeNasajon.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarIdentidadeNasajon.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarIdentidadeNasajon';
end;

function TContribuinteindividualAlterarIdentidadeNasajon.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarIdentidadeNasajon.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosJornada.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosJornada.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosJornada.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosJornada.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosJornada.getNumeroHorasMensais: Integer;
begin
  Result := Self.m_NumeroHorasMensais;
end;

procedure TContribuinteindividualAlterarDadosJornada.setNumeroHorasMensais(const a_Value: Integer);
begin
  Self.m_NumeroHorasMensais := a_Value;
end;

function TContribuinteindividualAlterarDadosJornada.getNumeroDiasPeriodo: Integer;
begin
  Result := Self.m_NumeroDiasPeriodo;
end;

procedure TContribuinteindividualAlterarDadosJornada.setNumeroDiasPeriodo(const a_Value: Integer);
begin
  Self.m_NumeroDiasPeriodo := a_Value;
end;

destructor TContribuinteindividualAlterarDadosJornada.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosJornada.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosJornada.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosJornada.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosJornada';
end;

function TContribuinteindividualAlterarDadosJornada.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosJornada.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarSalario.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarSalario.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarSalario.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarSalario.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarSalario.getSalarioFixo: Currency;
begin
  Result := Self.m_SalarioFixo;
end;

procedure TContribuinteindividualAlterarSalario.setSalarioFixo(const a_Value: Currency);
begin
  Self.m_SalarioFixo := a_Value;
end;

function TContribuinteindividualAlterarSalario.getUnidadeSalario: Integer;
begin
  Result := Self.m_UnidadeSalario;
end;

procedure TContribuinteindividualAlterarSalario.setUnidadeSalario(const a_Value: Integer);
begin
  Self.m_UnidadeSalario := a_Value;
end;

destructor TContribuinteindividualAlterarSalario.Destroy;
begin

end;

function TContribuinteindividualAlterarSalario.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarSalario.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarSalario.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarSalario';
end;

function TContribuinteindividualAlterarSalario.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarSalario.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarDadosPessoais.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarDadosPessoais.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarDadosPessoais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarDadosPessoais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarDadosPessoais.getEstadoCivil: Integer;
begin
  Result := Self.m_EstadoCivil;
end;

procedure TContribuinteindividualAlterarDadosPessoais.setEstadoCivil(const a_Value: Integer);
begin
  Self.m_EstadoCivil := a_Value;
end;

function TContribuinteindividualAlterarDadosPessoais.getCodigoRaca: String;
begin
  Result := Self.m_CodigoRaca;
end;

procedure TContribuinteindividualAlterarDadosPessoais.setCodigoRaca(const a_Value: String);
begin
  Self.m_CodigoRaca := a_Value;
end;

function TContribuinteindividualAlterarDadosPessoais.getCodigoGrauInstrucao: String;
begin
  Result := Self.m_CodigoGrauInstrucao;
end;

procedure TContribuinteindividualAlterarDadosPessoais.setCodigoGrauInstrucao(const a_Value: String);
begin
  Self.m_CodigoGrauInstrucao := a_Value;
end;

destructor TContribuinteindividualAlterarDadosPessoais.Destroy;
begin

end;

function TContribuinteindividualAlterarDadosPessoais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarDadosPessoais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarDadosPessoais.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarDadosPessoais';
end;

function TContribuinteindividualAlterarDadosPessoais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarDadosPessoais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarMatriculaFuncionario.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarMatriculaFuncionario.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarMatriculaFuncionario.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarMatriculaFuncionario.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarMatriculaFuncionario.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TContribuinteindividualAlterarMatriculaFuncionario.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

destructor TContribuinteindividualAlterarMatriculaFuncionario.Destroy;
begin

end;

function TContribuinteindividualAlterarMatriculaFuncionario.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarMatriculaFuncionario.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarMatriculaFuncionario.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarMatriculaFuncionario';
end;

function TContribuinteindividualAlterarMatriculaFuncionario.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarMatriculaFuncionario.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarAvalidador.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarAvalidador.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarAvalidador.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarAvalidador.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarAvalidador.getAvaliador: String;
begin
  Result := Self.m_Avaliador;
end;

procedure TContribuinteindividualAlterarAvalidador.setAvaliador(const a_Value: String);
begin
  Self.m_Avaliador := a_Value;
end;

destructor TContribuinteindividualAlterarAvalidador.Destroy;
begin

end;

function TContribuinteindividualAlterarAvalidador.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarAvalidador.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarAvalidador.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarAvalidador';
end;

function TContribuinteindividualAlterarAvalidador.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarAvalidador.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarGestor.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarGestor.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarGestor.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarGestor.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarGestor.getGestor: String;
begin
  Result := Self.m_Gestor;
end;

procedure TContribuinteindividualAlterarGestor.setGestor(const a_Value: String);
begin
  Self.m_Gestor := a_Value;
end;

destructor TContribuinteindividualAlterarGestor.Destroy;
begin

end;

function TContribuinteindividualAlterarGestor.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarGestor.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarGestor.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarGestor';
end;

function TContribuinteindividualAlterarGestor.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarGestor.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarAtividadeConcomitante.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarAtividadeConcomitante.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarAtividadeConcomitante.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarAtividadeConcomitante.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarAtividadeConcomitante.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TContribuinteindividualAlterarAtividadeConcomitante.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

destructor TContribuinteindividualAlterarAtividadeConcomitante.Destroy;
begin

end;

function TContribuinteindividualAlterarAtividadeConcomitante.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarAtividadeConcomitante.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarAtividadeConcomitante.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarAtividadeConcomitante';
end;

function TContribuinteindividualAlterarAtividadeConcomitante.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarAtividadeConcomitante.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualAlterarObservacao.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualAlterarObservacao.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualAlterarObservacao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualAlterarObservacao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TContribuinteindividualAlterarObservacao.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TContribuinteindividualAlterarObservacao.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

destructor TContribuinteindividualAlterarObservacao.Destroy;
begin

end;

function TContribuinteindividualAlterarObservacao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualAlterarObservacao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualAlterarObservacao.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualAlterarObservacao';
end;

function TContribuinteindividualAlterarObservacao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualAlterarObservacao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TContribuinteindividualExcluir.getContribuinte: String;
begin
  Result := Self.m_Contribuinte;
end;

procedure TContribuinteindividualExcluir.setContribuinte(const a_Value: String);
begin
  Self.m_Contribuinte := a_Value;
end;

function TContribuinteindividualExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TContribuinteindividualExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TContribuinteindividualExcluir.Destroy;
begin

end;

function TContribuinteindividualExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TContribuinteindividualExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TContribuinteindividualExcluir.getNameAPI(): String;
begin
  Result := 'ContribuinteindividualExcluir';
end;

function TContribuinteindividualExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TContribuinteindividualExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
