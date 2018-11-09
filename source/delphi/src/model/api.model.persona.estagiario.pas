unit api.model.persona.Estagiario;

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

type TEstagiarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdEstagiario: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Departamento: String;
    var m_Horario: String;
    var m_Lotacao: String;
    var m_NivelCargo: String;
    var m_Cargo: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CodigoCategoria: String;
    var m_CPF: String;
    var m_NIS: String;
    var m_DataInicioContrato: TDate;
    var m_DataFimContrato: TDate;
    var m_UnidadeSalario: Integer;
    var m_Sexo: Integer;
    var m_CodigoCBO: String;
    

    function getIdEstagiario(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getDepartamento(): String;
    function getHorario(): String;
    function getLotacao(): String;
    function getNivelCargo(): String;
    function getCargo(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCodigoCategoria(): String;
    function getCPF(): String;
    function getNIS(): String;
    function getDataInicioContrato(): TDate;
    function getDataFimContrato(): TDate;
    function getUnidadeSalario(): Integer;
    function getSexo(): Integer;
    function getCodigoCBO(): String;
    

    procedure setIdEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
    procedure setHorario(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setNivelCargo(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCodigoCategoria(const a_Value: String);
    procedure setCPF(const a_Value: String);
    procedure setNIS(const a_Value: String);
    procedure setDataInicioContrato(const a_Value: TDate);
    procedure setDataFimContrato(const a_Value: TDate);
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
    

    [NasajonSerializeAttribute('idestagiario')]
    property idestagiario: String read getIdEstagiario write setIdEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

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

    [NasajonSerializeAttribute('datainiciocontrato')]
    property datainiciocontrato: TDate read getDataInicioContrato write setDataInicioContrato;

    [NasajonSerializeAttribute('datafimcontrato')]
    property datafimcontrato: TDate read getDataFimContrato write setDataFimContrato;

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

type TEstagiarioAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Departamento: String;
    var m_Horario: String;
    var m_Lotacao: String;
    var m_NivelCargo: String;
    var m_Cargo: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CodigoCategoria: String;
    var m_CPF: String;
    var m_NIS: String;
    var m_DataInicioContrato: TDate;
    var m_DataFimContrato: TDate;
    var m_UnidadeSalario: Integer;
    var m_Sexo: Integer;
    var m_CodigoCBO: String;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getDepartamento(): String;
    function getHorario(): String;
    function getLotacao(): String;
    function getNivelCargo(): String;
    function getCargo(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCodigoCategoria(): String;
    function getCPF(): String;
    function getNIS(): String;
    function getDataInicioContrato(): TDate;
    function getDataFimContrato(): TDate;
    function getUnidadeSalario(): Integer;
    function getSexo(): Integer;
    function getCodigoCBO(): String;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
    procedure setHorario(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setNivelCargo(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCodigoCategoria(const a_Value: String);
    procedure setCPF(const a_Value: String);
    procedure setNIS(const a_Value: String);
    procedure setDataInicioContrato(const a_Value: TDate);
    procedure setDataFimContrato(const a_Value: TDate);
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
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

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

    [NasajonSerializeAttribute('datainiciocontrato')]
    property datainiciocontrato: TDate read getDataInicioContrato write setDataInicioContrato;

    [NasajonSerializeAttribute('datafimcontrato')]
    property datafimcontrato: TDate read getDataFimContrato write setDataFimContrato;

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

type TEstagiarioAlterarDadosEndereco = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
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
    

    function getEstagiario(): String;
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
    

    procedure setEstagiario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

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

type TEstagiarioAlterarDadosRecebimentoSalario = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Tipo: Integer;
    var m_NumeroConta: String;
    var m_DigitoVerificador: String;
    var m_Agencia: String;
    var m_Banco: String;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getTipo(): Integer;
    function getNumeroConta(): String;
    function getDigitoVerificador(): String;
    function getAgencia(): String;
    function getBanco(): String;
    

    procedure setEstagiario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

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

type TEstagiarioAlterarDadosNascimento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_UF: String;
    var m_Cidade: String;
    var m_CodigoMunicipio: String;
    var m_CodigoPais: String;
    var m_NomePai: String;
    var m_NomeMae: String;
    var m_DataNascimento: TDate;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getUF(): String;
    function getCidade(): String;
    function getCodigoMunicipio(): String;
    function getCodigoPais(): String;
    function getNomePai(): String;
    function getNomeMae(): String;
    function getDataNascimento(): TDate;
    

    procedure setEstagiario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

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

type TEstagiarioAlterarDadosCarteiraTrabalho = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_Serie: String;
    var m_UF: String;
    var m_DataExpedicao: TDate;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getSerie(): String;
    function getUF(): String;
    function getDataExpedicao(): TDate;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setSerie(const a_Value: String);
    procedure setUF(const a_Value: String);
    procedure setDataExpedicao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('serie')]
    property serie: String read getSerie write setSerie;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getUF write setUF;

    [NasajonSerializeAttribute('dataexpedicao')]
    property dataexpedicao: TDate read getDataExpedicao write setDataExpedicao;

    

end;

type TEstagiarioAlterarDadosEstagio = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_AreaAtuacao: String;
    var m_ApoliceSeguro: String;
    var m_NomeSupervisor: String;
    var m_CPFSupervisor: String;
    var m_Nivel: Integer;
    var m_Obrigatorio: Boolean;
    var m_InstituicaoEnsino: String;
    var m_InstituicaoIntegradora: String;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getAreaAtuacao(): String;
    function getApoliceSeguro(): String;
    function getNomeSupervisor(): String;
    function getCPFSupervisor(): String;
    function getNivel(): Integer;
    function getObrigatorio(): Boolean;
    function getInstituicaoEnsino(): String;
    function getInstituicaoIntegradora(): String;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setAreaAtuacao(const a_Value: String);
    procedure setApoliceSeguro(const a_Value: String);
    procedure setNomeSupervisor(const a_Value: String);
    procedure setCPFSupervisor(const a_Value: String);
    procedure setNivel(const a_Value: Integer);
    procedure setObrigatorio(const a_Value: Boolean);
    procedure setInstituicaoEnsino(const a_Value: String);
    procedure setInstituicaoIntegradora(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('areaatuacao')]
    property areaatuacao: String read getAreaAtuacao write setAreaAtuacao;

    [NasajonSerializeAttribute('apoliceseguro')]
    property apoliceseguro: String read getApoliceSeguro write setApoliceSeguro;

    [NasajonSerializeAttribute('nomesupervisor')]
    property nomesupervisor: String read getNomeSupervisor write setNomeSupervisor;

    [NasajonSerializeAttribute('cpfsupervisor')]
    property cpfsupervisor: String read getCPFSupervisor write setCPFSupervisor;

    /// <summary>
/// Fundamental(1), Médio(2), Formação Profissional(3) ou Superior(4)
    /// </summary>
    [NasajonSerializeAttribute('nivel')]
    property nivel: Integer read getNivel write setNivel;

    [NasajonSerializeAttribute('obrigatorio')]
    property obrigatorio: Boolean read getObrigatorio write setObrigatorio;

    [NasajonSerializeAttribute('instituicaoensino')]
    property instituicaoensino: String read getInstituicaoEnsino write setInstituicaoEnsino;

    [NasajonSerializeAttribute('instituicaointegradora')]
    property instituicaointegradora: String read getInstituicaoIntegradora write setInstituicaoIntegradora;

    

end;

type TEstagiarioAlterarDadosNacionalidade = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_CodigoPais: String;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getCodigoPais(): String;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigoPais(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Conforme tabela oficial do governo
    /// </summary>
    [NasajonSerializeAttribute('codigopais')]
    property codigopais: String read getCodigoPais write setCodigoPais;

    

end;

type TEstagiarioAlterarDadosRIC = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_UF: String;
    var m_Cidade: String;
    var m_DataExpedicao: TDate;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getUF(): String;
    function getCidade(): String;
    function getDataExpedicao(): TDate;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setOrgaoEmissor(const a_Value: String);
    procedure setUF(const a_Value: String);
    procedure setCidade(const a_Value: String);
    procedure setDataExpedicao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('orgaoemissor')]
    property orgaoemissor: String read getOrgaoEmissor write setOrgaoEmissor;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getUF write setUF;

    [NasajonSerializeAttribute('cidade')]
    property cidade: String read getCidade write setCidade;

    [NasajonSerializeAttribute('dataexpedicao')]
    property dataexpedicao: TDate read getDataExpedicao write setDataExpedicao;

    

end;

type TEstagiarioAlterarDadosCarteiraIdentidade = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_UF: String;
    var m_DataExpedicao: TDate;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getUF(): String;
    function getDataExpedicao(): TDate;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setOrgaoEmissor(const a_Value: String);
    procedure setUF(const a_Value: String);
    procedure setDataExpedicao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('orgaoemissor')]
    property orgaoemissor: String read getOrgaoEmissor write setOrgaoEmissor;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getUF write setUF;

    [NasajonSerializeAttribute('dataexpedicao')]
    property dataexpedicao: TDate read getDataExpedicao write setDataExpedicao;

    

end;

type TEstagiarioAlterarDadosOrdemClasse = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_DataExpedicao: TDate;
    var m_DataValidade: TDate;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getDataExpedicao(): TDate;
    function getDataValidade(): TDate;
    

    procedure setEstagiario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

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

type TEstagiarioAlterarDadosCarteiraHablilitacao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_DataExpedicao: TDate;
    var m_DataValidade: TDate;
    var m_DataPrimeiraHabilitacao: TDate;
    var m_Categoria: Integer;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getDataExpedicao(): TDate;
    function getDataValidade(): TDate;
    function getDataPrimeiraHabilitacao(): TDate;
    function getCategoria(): Integer;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setOrgaoEmissor(const a_Value: String);
    procedure setDataExpedicao(const a_Value: TDate);
    procedure setDataValidade(const a_Value: TDate);
    procedure setDataPrimeiraHabilitacao(const a_Value: TDate);
    procedure setCategoria(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

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

    [NasajonSerializeAttribute('dataprimeirahabilitacao')]
    property dataprimeirahabilitacao: TDate read getDataPrimeiraHabilitacao write setDataPrimeiraHabilitacao;

    /// <summary>
/// A(0), B(1), C(2), D(3), E(4), AB(5), AC(6), AD(7) ou AE(8)
    /// </summary>
    [NasajonSerializeAttribute('categoria')]
    property categoria: Integer read getCategoria write setCategoria;

    

end;

type TEstagiarioAlterarDadosValeTransporte = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_NumeroCartao: String;
    var m_DiaSemanaComMeioVale: Integer;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getNumeroCartao(): String;
    function getDiaSemanaComMeioVale(): Integer;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumeroCartao(const a_Value: String);
    procedure setDiaSemanaComMeioVale(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numerocartao')]
    property numerocartao: String read getNumeroCartao write setNumeroCartao;

    /// <summary>
/// De 1 a 7, começando pelo domingo
    /// </summary>
    [NasajonSerializeAttribute('diasemanacommeiovale')]
    property diasemanacommeiovale: Integer read getDiaSemanaComMeioVale write setDiaSemanaComMeioVale;

    

end;

type TEstagiarioAlterarDadosDeficiencia = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_DeficienteIntelectual: Boolean;
    var m_DeficienteMental: Boolean;
    var m_DeficienteAuditivo: Boolean;
    var m_DeficienteVisual: Boolean;
    var m_DeficienteFisico: Boolean;
    var m_Reabilitado: Boolean;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getDeficienteIntelectual(): Boolean;
    function getDeficienteMental(): Boolean;
    function getDeficienteAuditivo(): Boolean;
    function getDeficienteVisual(): Boolean;
    function getDeficienteFisico(): Boolean;
    function getReabilitado(): Boolean;
    

    procedure setEstagiario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

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

type TEstagiarioAlterarDadosEstrangeiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_CasadoComBrasileiro: Boolean;
    var m_TemFilhoBrasileiro: Boolean;
    var m_DataChegadaPais: TDate;
    var m_DataNaturalizacao: TDate;
    var m_NumeroNaturalizacao: String;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getCasadoComBrasileiro(): Boolean;
    function getTemFilhoBrasileiro(): Boolean;
    function getDataChegadaPais(): TDate;
    function getDataNaturalizacao(): TDate;
    function getNumeroNaturalizacao(): String;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCasadoComBrasileiro(const a_Value: Boolean);
    procedure setTemFilhoBrasileiro(const a_Value: Boolean);
    procedure setDataChegadaPais(const a_Value: TDate);
    procedure setDataNaturalizacao(const a_Value: TDate);
    procedure setNumeroNaturalizacao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

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

    [NasajonSerializeAttribute('numeronaturalizacao')]
    property numeronaturalizacao: String read getNumeroNaturalizacao write setNumeroNaturalizacao;

    

end;

type TEstagiarioAlterarIdentidadeNasajon = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Identidade: String;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getIdentidade(): String;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setIdentidade(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('identidade')]
    property identidade: String read getIdentidade write setIdentidade;

    

end;

type TEstagiarioAlterarDadosJornada = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_QuantidadeMediaHorasSemanais: Integer;
    var m_NumeroHorasMensais: Integer;
    var m_NumeroDiasPeriodo: Integer;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getQuantidadeMediaHorasSemanais(): Integer;
    function getNumeroHorasMensais(): Integer;
    function getNumeroDiasPeriodo(): Integer;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setQuantidadeMediaHorasSemanais(const a_Value: Integer);
    procedure setNumeroHorasMensais(const a_Value: Integer);
    procedure setNumeroDiasPeriodo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('quantidademediahorassemanais')]
    property quantidademediahorassemanais: Integer read getQuantidadeMediaHorasSemanais write setQuantidadeMediaHorasSemanais;

    [NasajonSerializeAttribute('numerohorasmensais')]
    property numerohorasmensais: Integer read getNumeroHorasMensais write setNumeroHorasMensais;

    [NasajonSerializeAttribute('numerodiasperiodo')]
    property numerodiasperiodo: Integer read getNumeroDiasPeriodo write setNumeroDiasPeriodo;

    

end;

type TEstagiarioAlterarSalario = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_SalarioFixo: Currency;
    var m_UnidadeSalario: Integer;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getSalarioFixo(): Currency;
    function getUnidadeSalario(): Integer;
    

    procedure setEstagiario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

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

type TEstagiarioAlterarDadosPessoais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_EstadoCivil: Integer;
    var m_CodigoRaca: String;
    var m_CodigoGrauInstrucao: String;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getEstadoCivil(): Integer;
    function getCodigoRaca(): String;
    function getCodigoGrauInstrucao(): String;
    

    procedure setEstagiario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

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

type TEstagiarioAlterarDadosFerias = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_DataInicioPeriodoAquisitivo: TDate;
    var m_DataProximasFerias: TDate;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getDataInicioPeriodoAquisitivo(): TDate;
    function getDataProximasFerias(): TDate;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataInicioPeriodoAquisitivo(const a_Value: TDate);
    procedure setDataProximasFerias(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datainicioperiodoaquisitivo')]
    property datainicioperiodoaquisitivo: TDate read getDataInicioPeriodoAquisitivo write setDataInicioPeriodoAquisitivo;

    [NasajonSerializeAttribute('dataproximasferias')]
    property dataproximasferias: TDate read getDataProximasFerias write setDataProximasFerias;

    

end;

type TEstagiarioAlterarPercentualAdiantamento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Percentual: Currency;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getPercentual(): Currency;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setPercentual(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    

end;

type TEstagiarioAlterarAvalidador = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Avaliador: String;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getAvaliador(): String;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setAvaliador(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('avaliador')]
    property avaliador: String read getAvaliador write setAvaliador;

    

end;

type TEstagiarioAlterarGestor = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Gestor: String;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getGestor(): String;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setGestor(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('gestor')]
    property gestor: String read getGestor write setGestor;

    

end;

type TEstagiarioAlterarDataVencimentoAtestadoMedico = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    

end;

type TEstagiarioAlterarObservacao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Observacao: WideString;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getObservacao(): WideString;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setObservacao(const a_Value: WideString);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getObservacao write setObservacao;

    

end;

type TEstagiarioAlterarDadosAtividade = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    var m_Atividade: Integer;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    function getAtividade(): Integer;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setAtividade(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Rural(1) ou Urbana(2)
    /// </summary>
    [NasajonSerializeAttribute('atividade')]
    property atividade: Integer read getAtividade write setAtividade;

    

end;

type TEstagiarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Estagiario: String;
    var m_Empresa: String;
    

    function getEstagiario(): String;
    function getEmpresa(): String;
    

    procedure setEstagiario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('estagiario')]
    property estagiario: String read getEstagiario write setEstagiario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TEstagiarioNovo.getIdEstagiario: String;
begin
  Result := Self.m_IdEstagiario;
end;

procedure TEstagiarioNovo.setIdEstagiario(const a_Value: String);
begin
  Self.m_IdEstagiario := a_Value;
end;

function TEstagiarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TEstagiarioNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TEstagiarioNovo.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TEstagiarioNovo.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TEstagiarioNovo.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure TEstagiarioNovo.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function TEstagiarioNovo.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TEstagiarioNovo.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TEstagiarioNovo.getNivelCargo: String;
begin
  Result := Self.m_NivelCargo;
end;

procedure TEstagiarioNovo.setNivelCargo(const a_Value: String);
begin
  Self.m_NivelCargo := a_Value;
end;

function TEstagiarioNovo.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TEstagiarioNovo.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TEstagiarioNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TEstagiarioNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TEstagiarioNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TEstagiarioNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TEstagiarioNovo.getCodigoCategoria: String;
begin
  Result := Self.m_CodigoCategoria;
end;

procedure TEstagiarioNovo.setCodigoCategoria(const a_Value: String);
begin
  Self.m_CodigoCategoria := a_Value;
end;

function TEstagiarioNovo.getCPF: String;
begin
  Result := Self.m_CPF;
end;

procedure TEstagiarioNovo.setCPF(const a_Value: String);
begin
  Self.m_CPF := a_Value;
end;

function TEstagiarioNovo.getNIS: String;
begin
  Result := Self.m_NIS;
end;

procedure TEstagiarioNovo.setNIS(const a_Value: String);
begin
  Self.m_NIS := a_Value;
end;

function TEstagiarioNovo.getDataInicioContrato: TDate;
begin
  Result := Self.m_DataInicioContrato;
end;

procedure TEstagiarioNovo.setDataInicioContrato(const a_Value: TDate);
begin
  Self.m_DataInicioContrato := a_Value;
end;

function TEstagiarioNovo.getDataFimContrato: TDate;
begin
  Result := Self.m_DataFimContrato;
end;

procedure TEstagiarioNovo.setDataFimContrato(const a_Value: TDate);
begin
  Self.m_DataFimContrato := a_Value;
end;

function TEstagiarioNovo.getUnidadeSalario: Integer;
begin
  Result := Self.m_UnidadeSalario;
end;

procedure TEstagiarioNovo.setUnidadeSalario(const a_Value: Integer);
begin
  Self.m_UnidadeSalario := a_Value;
end;

function TEstagiarioNovo.getSexo: Integer;
begin
  Result := Self.m_Sexo;
end;

procedure TEstagiarioNovo.setSexo(const a_Value: Integer);
begin
  Self.m_Sexo := a_Value;
end;

function TEstagiarioNovo.getCodigoCBO: String;
begin
  Result := Self.m_CodigoCBO;
end;

procedure TEstagiarioNovo.setCodigoCBO(const a_Value: String);
begin
  Self.m_CodigoCBO := a_Value;
end;

destructor TEstagiarioNovo.Destroy;
begin

end;

function TEstagiarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioNovo.getNameAPI(): String;
begin
  Result := 'EstagiarioNovo';
end;

function TEstagiarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosGerais.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosGerais.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TEstagiarioAlterarDadosGerais.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TEstagiarioAlterarDadosGerais.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure TEstagiarioAlterarDadosGerais.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TEstagiarioAlterarDadosGerais.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getNivelCargo: String;
begin
  Result := Self.m_NivelCargo;
end;

procedure TEstagiarioAlterarDadosGerais.setNivelCargo(const a_Value: String);
begin
  Self.m_NivelCargo := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TEstagiarioAlterarDadosGerais.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TEstagiarioAlterarDadosGerais.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TEstagiarioAlterarDadosGerais.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getCodigoCategoria: String;
begin
  Result := Self.m_CodigoCategoria;
end;

procedure TEstagiarioAlterarDadosGerais.setCodigoCategoria(const a_Value: String);
begin
  Self.m_CodigoCategoria := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getCPF: String;
begin
  Result := Self.m_CPF;
end;

procedure TEstagiarioAlterarDadosGerais.setCPF(const a_Value: String);
begin
  Self.m_CPF := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getNIS: String;
begin
  Result := Self.m_NIS;
end;

procedure TEstagiarioAlterarDadosGerais.setNIS(const a_Value: String);
begin
  Self.m_NIS := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getDataInicioContrato: TDate;
begin
  Result := Self.m_DataInicioContrato;
end;

procedure TEstagiarioAlterarDadosGerais.setDataInicioContrato(const a_Value: TDate);
begin
  Self.m_DataInicioContrato := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getDataFimContrato: TDate;
begin
  Result := Self.m_DataFimContrato;
end;

procedure TEstagiarioAlterarDadosGerais.setDataFimContrato(const a_Value: TDate);
begin
  Self.m_DataFimContrato := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getUnidadeSalario: Integer;
begin
  Result := Self.m_UnidadeSalario;
end;

procedure TEstagiarioAlterarDadosGerais.setUnidadeSalario(const a_Value: Integer);
begin
  Self.m_UnidadeSalario := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getSexo: Integer;
begin
  Result := Self.m_Sexo;
end;

procedure TEstagiarioAlterarDadosGerais.setSexo(const a_Value: Integer);
begin
  Self.m_Sexo := a_Value;
end;

function TEstagiarioAlterarDadosGerais.getCodigoCBO: String;
begin
  Result := Self.m_CodigoCBO;
end;

procedure TEstagiarioAlterarDadosGerais.setCodigoCBO(const a_Value: String);
begin
  Self.m_CodigoCBO := a_Value;
end;

destructor TEstagiarioAlterarDadosGerais.Destroy;
begin

end;

function TEstagiarioAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosGerais';
end;

function TEstagiarioAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosEndereco.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosEndereco.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosEndereco.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosEndereco.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosEndereco.getTipoLogradouro: String;
begin
  Result := Self.m_TipoLogradouro;
end;

procedure TEstagiarioAlterarDadosEndereco.setTipoLogradouro(const a_Value: String);
begin
  Self.m_TipoLogradouro := a_Value;
end;

function TEstagiarioAlterarDadosEndereco.getCodigoMunicipio: String;
begin
  Result := Self.m_CodigoMunicipio;
end;

procedure TEstagiarioAlterarDadosEndereco.setCodigoMunicipio(const a_Value: String);
begin
  Self.m_CodigoMunicipio := a_Value;
end;

function TEstagiarioAlterarDadosEndereco.getCodigoPais: String;
begin
  Result := Self.m_CodigoPais;
end;

procedure TEstagiarioAlterarDadosEndereco.setCodigoPais(const a_Value: String);
begin
  Self.m_CodigoPais := a_Value;
end;

function TEstagiarioAlterarDadosEndereco.getLogradouro: String;
begin
  Result := Self.m_Logradouro;
end;

procedure TEstagiarioAlterarDadosEndereco.setLogradouro(const a_Value: String);
begin
  Self.m_Logradouro := a_Value;
end;

function TEstagiarioAlterarDadosEndereco.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TEstagiarioAlterarDadosEndereco.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TEstagiarioAlterarDadosEndereco.getComplemento: String;
begin
  Result := Self.m_Complemento;
end;

procedure TEstagiarioAlterarDadosEndereco.setComplemento(const a_Value: String);
begin
  Self.m_Complemento := a_Value;
end;

function TEstagiarioAlterarDadosEndereco.getBairro: String;
begin
  Result := Self.m_Bairro;
end;

procedure TEstagiarioAlterarDadosEndereco.setBairro(const a_Value: String);
begin
  Self.m_Bairro := a_Value;
end;

function TEstagiarioAlterarDadosEndereco.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TEstagiarioAlterarDadosEndereco.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TEstagiarioAlterarDadosEndereco.getCEP: String;
begin
  Result := Self.m_CEP;
end;

procedure TEstagiarioAlterarDadosEndereco.setCEP(const a_Value: String);
begin
  Self.m_CEP := a_Value;
end;

function TEstagiarioAlterarDadosEndereco.getDDD: String;
begin
  Result := Self.m_DDD;
end;

procedure TEstagiarioAlterarDadosEndereco.setDDD(const a_Value: String);
begin
  Self.m_DDD := a_Value;
end;

function TEstagiarioAlterarDadosEndereco.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TEstagiarioAlterarDadosEndereco.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

destructor TEstagiarioAlterarDadosEndereco.Destroy;
begin

end;

function TEstagiarioAlterarDadosEndereco.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosEndereco.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosEndereco.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosEndereco';
end;

function TEstagiarioAlterarDadosEndereco.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosEndereco.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosRecebimentoSalario.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosRecebimentoSalario.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosRecebimentoSalario.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosRecebimentoSalario.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosRecebimentoSalario.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TEstagiarioAlterarDadosRecebimentoSalario.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TEstagiarioAlterarDadosRecebimentoSalario.getNumeroConta: String;
begin
  Result := Self.m_NumeroConta;
end;

procedure TEstagiarioAlterarDadosRecebimentoSalario.setNumeroConta(const a_Value: String);
begin
  Self.m_NumeroConta := a_Value;
end;

function TEstagiarioAlterarDadosRecebimentoSalario.getDigitoVerificador: String;
begin
  Result := Self.m_DigitoVerificador;
end;

procedure TEstagiarioAlterarDadosRecebimentoSalario.setDigitoVerificador(const a_Value: String);
begin
  Self.m_DigitoVerificador := a_Value;
end;

function TEstagiarioAlterarDadosRecebimentoSalario.getAgencia: String;
begin
  Result := Self.m_Agencia;
end;

procedure TEstagiarioAlterarDadosRecebimentoSalario.setAgencia(const a_Value: String);
begin
  Self.m_Agencia := a_Value;
end;

function TEstagiarioAlterarDadosRecebimentoSalario.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TEstagiarioAlterarDadosRecebimentoSalario.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

destructor TEstagiarioAlterarDadosRecebimentoSalario.Destroy;
begin

end;

function TEstagiarioAlterarDadosRecebimentoSalario.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosRecebimentoSalario.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosRecebimentoSalario.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosRecebimentoSalario';
end;

function TEstagiarioAlterarDadosRecebimentoSalario.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosRecebimentoSalario.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosNascimento.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosNascimento.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosNascimento.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosNascimento.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosNascimento.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TEstagiarioAlterarDadosNascimento.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TEstagiarioAlterarDadosNascimento.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TEstagiarioAlterarDadosNascimento.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TEstagiarioAlterarDadosNascimento.getCodigoMunicipio: String;
begin
  Result := Self.m_CodigoMunicipio;
end;

procedure TEstagiarioAlterarDadosNascimento.setCodigoMunicipio(const a_Value: String);
begin
  Self.m_CodigoMunicipio := a_Value;
end;

function TEstagiarioAlterarDadosNascimento.getCodigoPais: String;
begin
  Result := Self.m_CodigoPais;
end;

procedure TEstagiarioAlterarDadosNascimento.setCodigoPais(const a_Value: String);
begin
  Self.m_CodigoPais := a_Value;
end;

function TEstagiarioAlterarDadosNascimento.getNomePai: String;
begin
  Result := Self.m_NomePai;
end;

procedure TEstagiarioAlterarDadosNascimento.setNomePai(const a_Value: String);
begin
  Self.m_NomePai := a_Value;
end;

function TEstagiarioAlterarDadosNascimento.getNomeMae: String;
begin
  Result := Self.m_NomeMae;
end;

procedure TEstagiarioAlterarDadosNascimento.setNomeMae(const a_Value: String);
begin
  Self.m_NomeMae := a_Value;
end;

function TEstagiarioAlterarDadosNascimento.getDataNascimento: TDate;
begin
  Result := Self.m_DataNascimento;
end;

procedure TEstagiarioAlterarDadosNascimento.setDataNascimento(const a_Value: TDate);
begin
  Self.m_DataNascimento := a_Value;
end;

destructor TEstagiarioAlterarDadosNascimento.Destroy;
begin

end;

function TEstagiarioAlterarDadosNascimento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosNascimento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosNascimento.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosNascimento';
end;

function TEstagiarioAlterarDadosNascimento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosNascimento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosCarteiraTrabalho.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosCarteiraTrabalho.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraTrabalho.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosCarteiraTrabalho.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraTrabalho.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TEstagiarioAlterarDadosCarteiraTrabalho.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraTrabalho.getSerie: String;
begin
  Result := Self.m_Serie;
end;

procedure TEstagiarioAlterarDadosCarteiraTrabalho.setSerie(const a_Value: String);
begin
  Self.m_Serie := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraTrabalho.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TEstagiarioAlterarDadosCarteiraTrabalho.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraTrabalho.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TEstagiarioAlterarDadosCarteiraTrabalho.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

destructor TEstagiarioAlterarDadosCarteiraTrabalho.Destroy;
begin

end;

function TEstagiarioAlterarDadosCarteiraTrabalho.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosCarteiraTrabalho.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosCarteiraTrabalho.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosCarteiraTrabalho';
end;

function TEstagiarioAlterarDadosCarteiraTrabalho.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosCarteiraTrabalho.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosEstagio.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosEstagio.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosEstagio.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosEstagio.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosEstagio.getAreaAtuacao: String;
begin
  Result := Self.m_AreaAtuacao;
end;

procedure TEstagiarioAlterarDadosEstagio.setAreaAtuacao(const a_Value: String);
begin
  Self.m_AreaAtuacao := a_Value;
end;

function TEstagiarioAlterarDadosEstagio.getApoliceSeguro: String;
begin
  Result := Self.m_ApoliceSeguro;
end;

procedure TEstagiarioAlterarDadosEstagio.setApoliceSeguro(const a_Value: String);
begin
  Self.m_ApoliceSeguro := a_Value;
end;

function TEstagiarioAlterarDadosEstagio.getNomeSupervisor: String;
begin
  Result := Self.m_NomeSupervisor;
end;

procedure TEstagiarioAlterarDadosEstagio.setNomeSupervisor(const a_Value: String);
begin
  Self.m_NomeSupervisor := a_Value;
end;

function TEstagiarioAlterarDadosEstagio.getCPFSupervisor: String;
begin
  Result := Self.m_CPFSupervisor;
end;

procedure TEstagiarioAlterarDadosEstagio.setCPFSupervisor(const a_Value: String);
begin
  Self.m_CPFSupervisor := a_Value;
end;

function TEstagiarioAlterarDadosEstagio.getNivel: Integer;
begin
  Result := Self.m_Nivel;
end;

procedure TEstagiarioAlterarDadosEstagio.setNivel(const a_Value: Integer);
begin
  Self.m_Nivel := a_Value;
end;

function TEstagiarioAlterarDadosEstagio.getObrigatorio: Boolean;
begin
  Result := Self.m_Obrigatorio;
end;

procedure TEstagiarioAlterarDadosEstagio.setObrigatorio(const a_Value: Boolean);
begin
  Self.m_Obrigatorio := a_Value;
end;

function TEstagiarioAlterarDadosEstagio.getInstituicaoEnsino: String;
begin
  Result := Self.m_InstituicaoEnsino;
end;

procedure TEstagiarioAlterarDadosEstagio.setInstituicaoEnsino(const a_Value: String);
begin
  Self.m_InstituicaoEnsino := a_Value;
end;

function TEstagiarioAlterarDadosEstagio.getInstituicaoIntegradora: String;
begin
  Result := Self.m_InstituicaoIntegradora;
end;

procedure TEstagiarioAlterarDadosEstagio.setInstituicaoIntegradora(const a_Value: String);
begin
  Self.m_InstituicaoIntegradora := a_Value;
end;

destructor TEstagiarioAlterarDadosEstagio.Destroy;
begin

end;

function TEstagiarioAlterarDadosEstagio.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosEstagio.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosEstagio.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosEstagio';
end;

function TEstagiarioAlterarDadosEstagio.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosEstagio.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosNacionalidade.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosNacionalidade.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosNacionalidade.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosNacionalidade.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosNacionalidade.getCodigoPais: String;
begin
  Result := Self.m_CodigoPais;
end;

procedure TEstagiarioAlterarDadosNacionalidade.setCodigoPais(const a_Value: String);
begin
  Self.m_CodigoPais := a_Value;
end;

destructor TEstagiarioAlterarDadosNacionalidade.Destroy;
begin

end;

function TEstagiarioAlterarDadosNacionalidade.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosNacionalidade.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosNacionalidade.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosNacionalidade';
end;

function TEstagiarioAlterarDadosNacionalidade.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosNacionalidade.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosRIC.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosRIC.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosRIC.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosRIC.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosRIC.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TEstagiarioAlterarDadosRIC.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TEstagiarioAlterarDadosRIC.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TEstagiarioAlterarDadosRIC.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TEstagiarioAlterarDadosRIC.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TEstagiarioAlterarDadosRIC.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TEstagiarioAlterarDadosRIC.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TEstagiarioAlterarDadosRIC.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TEstagiarioAlterarDadosRIC.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TEstagiarioAlterarDadosRIC.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

destructor TEstagiarioAlterarDadosRIC.Destroy;
begin

end;

function TEstagiarioAlterarDadosRIC.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosRIC.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosRIC.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosRIC';
end;

function TEstagiarioAlterarDadosRIC.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosRIC.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosCarteiraIdentidade.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosCarteiraIdentidade.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraIdentidade.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosCarteiraIdentidade.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraIdentidade.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TEstagiarioAlterarDadosCarteiraIdentidade.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraIdentidade.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TEstagiarioAlterarDadosCarteiraIdentidade.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraIdentidade.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TEstagiarioAlterarDadosCarteiraIdentidade.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraIdentidade.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TEstagiarioAlterarDadosCarteiraIdentidade.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

destructor TEstagiarioAlterarDadosCarteiraIdentidade.Destroy;
begin

end;

function TEstagiarioAlterarDadosCarteiraIdentidade.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosCarteiraIdentidade.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosCarteiraIdentidade.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosCarteiraIdentidade';
end;

function TEstagiarioAlterarDadosCarteiraIdentidade.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosCarteiraIdentidade.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosOrdemClasse.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosOrdemClasse.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosOrdemClasse.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosOrdemClasse.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosOrdemClasse.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TEstagiarioAlterarDadosOrdemClasse.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TEstagiarioAlterarDadosOrdemClasse.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TEstagiarioAlterarDadosOrdemClasse.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TEstagiarioAlterarDadosOrdemClasse.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TEstagiarioAlterarDadosOrdemClasse.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

function TEstagiarioAlterarDadosOrdemClasse.getDataValidade: TDate;
begin
  Result := Self.m_DataValidade;
end;

procedure TEstagiarioAlterarDadosOrdemClasse.setDataValidade(const a_Value: TDate);
begin
  Self.m_DataValidade := a_Value;
end;

destructor TEstagiarioAlterarDadosOrdemClasse.Destroy;
begin

end;

function TEstagiarioAlterarDadosOrdemClasse.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosOrdemClasse.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosOrdemClasse.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosOrdemClasse';
end;

function TEstagiarioAlterarDadosOrdemClasse.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosOrdemClasse.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosCarteiraHablilitacao.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosCarteiraHablilitacao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TEstagiarioAlterarDadosCarteiraHablilitacao.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TEstagiarioAlterarDadosCarteiraHablilitacao.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TEstagiarioAlterarDadosCarteiraHablilitacao.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.getDataValidade: TDate;
begin
  Result := Self.m_DataValidade;
end;

procedure TEstagiarioAlterarDadosCarteiraHablilitacao.setDataValidade(const a_Value: TDate);
begin
  Self.m_DataValidade := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.getDataPrimeiraHabilitacao: TDate;
begin
  Result := Self.m_DataPrimeiraHabilitacao;
end;

procedure TEstagiarioAlterarDadosCarteiraHablilitacao.setDataPrimeiraHabilitacao(const a_Value: TDate);
begin
  Self.m_DataPrimeiraHabilitacao := a_Value;
end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.getCategoria: Integer;
begin
  Result := Self.m_Categoria;
end;

procedure TEstagiarioAlterarDadosCarteiraHablilitacao.setCategoria(const a_Value: Integer);
begin
  Self.m_Categoria := a_Value;
end;

destructor TEstagiarioAlterarDadosCarteiraHablilitacao.Destroy;
begin

end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosCarteiraHablilitacao';
end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosCarteiraHablilitacao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosValeTransporte.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosValeTransporte.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosValeTransporte.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosValeTransporte.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosValeTransporte.getNumeroCartao: String;
begin
  Result := Self.m_NumeroCartao;
end;

procedure TEstagiarioAlterarDadosValeTransporte.setNumeroCartao(const a_Value: String);
begin
  Self.m_NumeroCartao := a_Value;
end;

function TEstagiarioAlterarDadosValeTransporte.getDiaSemanaComMeioVale: Integer;
begin
  Result := Self.m_DiaSemanaComMeioVale;
end;

procedure TEstagiarioAlterarDadosValeTransporte.setDiaSemanaComMeioVale(const a_Value: Integer);
begin
  Self.m_DiaSemanaComMeioVale := a_Value;
end;

destructor TEstagiarioAlterarDadosValeTransporte.Destroy;
begin

end;

function TEstagiarioAlterarDadosValeTransporte.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosValeTransporte.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosValeTransporte.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosValeTransporte';
end;

function TEstagiarioAlterarDadosValeTransporte.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosValeTransporte.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosDeficiencia.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosDeficiencia.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosDeficiencia.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosDeficiencia.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosDeficiencia.getDeficienteIntelectual: Boolean;
begin
  Result := Self.m_DeficienteIntelectual;
end;

procedure TEstagiarioAlterarDadosDeficiencia.setDeficienteIntelectual(const a_Value: Boolean);
begin
  Self.m_DeficienteIntelectual := a_Value;
end;

function TEstagiarioAlterarDadosDeficiencia.getDeficienteMental: Boolean;
begin
  Result := Self.m_DeficienteMental;
end;

procedure TEstagiarioAlterarDadosDeficiencia.setDeficienteMental(const a_Value: Boolean);
begin
  Self.m_DeficienteMental := a_Value;
end;

function TEstagiarioAlterarDadosDeficiencia.getDeficienteAuditivo: Boolean;
begin
  Result := Self.m_DeficienteAuditivo;
end;

procedure TEstagiarioAlterarDadosDeficiencia.setDeficienteAuditivo(const a_Value: Boolean);
begin
  Self.m_DeficienteAuditivo := a_Value;
end;

function TEstagiarioAlterarDadosDeficiencia.getDeficienteVisual: Boolean;
begin
  Result := Self.m_DeficienteVisual;
end;

procedure TEstagiarioAlterarDadosDeficiencia.setDeficienteVisual(const a_Value: Boolean);
begin
  Self.m_DeficienteVisual := a_Value;
end;

function TEstagiarioAlterarDadosDeficiencia.getDeficienteFisico: Boolean;
begin
  Result := Self.m_DeficienteFisico;
end;

procedure TEstagiarioAlterarDadosDeficiencia.setDeficienteFisico(const a_Value: Boolean);
begin
  Self.m_DeficienteFisico := a_Value;
end;

function TEstagiarioAlterarDadosDeficiencia.getReabilitado: Boolean;
begin
  Result := Self.m_Reabilitado;
end;

procedure TEstagiarioAlterarDadosDeficiencia.setReabilitado(const a_Value: Boolean);
begin
  Self.m_Reabilitado := a_Value;
end;

destructor TEstagiarioAlterarDadosDeficiencia.Destroy;
begin

end;

function TEstagiarioAlterarDadosDeficiencia.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosDeficiencia.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosDeficiencia.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosDeficiencia';
end;

function TEstagiarioAlterarDadosDeficiencia.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosDeficiencia.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosEstrangeiro.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosEstrangeiro.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosEstrangeiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosEstrangeiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosEstrangeiro.getCasadoComBrasileiro: Boolean;
begin
  Result := Self.m_CasadoComBrasileiro;
end;

procedure TEstagiarioAlterarDadosEstrangeiro.setCasadoComBrasileiro(const a_Value: Boolean);
begin
  Self.m_CasadoComBrasileiro := a_Value;
end;

function TEstagiarioAlterarDadosEstrangeiro.getTemFilhoBrasileiro: Boolean;
begin
  Result := Self.m_TemFilhoBrasileiro;
end;

procedure TEstagiarioAlterarDadosEstrangeiro.setTemFilhoBrasileiro(const a_Value: Boolean);
begin
  Self.m_TemFilhoBrasileiro := a_Value;
end;

function TEstagiarioAlterarDadosEstrangeiro.getDataChegadaPais: TDate;
begin
  Result := Self.m_DataChegadaPais;
end;

procedure TEstagiarioAlterarDadosEstrangeiro.setDataChegadaPais(const a_Value: TDate);
begin
  Self.m_DataChegadaPais := a_Value;
end;

function TEstagiarioAlterarDadosEstrangeiro.getDataNaturalizacao: TDate;
begin
  Result := Self.m_DataNaturalizacao;
end;

procedure TEstagiarioAlterarDadosEstrangeiro.setDataNaturalizacao(const a_Value: TDate);
begin
  Self.m_DataNaturalizacao := a_Value;
end;

function TEstagiarioAlterarDadosEstrangeiro.getNumeroNaturalizacao: String;
begin
  Result := Self.m_NumeroNaturalizacao;
end;

procedure TEstagiarioAlterarDadosEstrangeiro.setNumeroNaturalizacao(const a_Value: String);
begin
  Self.m_NumeroNaturalizacao := a_Value;
end;

destructor TEstagiarioAlterarDadosEstrangeiro.Destroy;
begin

end;

function TEstagiarioAlterarDadosEstrangeiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosEstrangeiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosEstrangeiro.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosEstrangeiro';
end;

function TEstagiarioAlterarDadosEstrangeiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosEstrangeiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarIdentidadeNasajon.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarIdentidadeNasajon.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarIdentidadeNasajon.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarIdentidadeNasajon.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarIdentidadeNasajon.getIdentidade: String;
begin
  Result := Self.m_Identidade;
end;

procedure TEstagiarioAlterarIdentidadeNasajon.setIdentidade(const a_Value: String);
begin
  Self.m_Identidade := a_Value;
end;

destructor TEstagiarioAlterarIdentidadeNasajon.Destroy;
begin

end;

function TEstagiarioAlterarIdentidadeNasajon.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarIdentidadeNasajon.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarIdentidadeNasajon.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarIdentidadeNasajon';
end;

function TEstagiarioAlterarIdentidadeNasajon.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarIdentidadeNasajon.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosJornada.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosJornada.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosJornada.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosJornada.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosJornada.getQuantidadeMediaHorasSemanais: Integer;
begin
  Result := Self.m_QuantidadeMediaHorasSemanais;
end;

procedure TEstagiarioAlterarDadosJornada.setQuantidadeMediaHorasSemanais(const a_Value: Integer);
begin
  Self.m_QuantidadeMediaHorasSemanais := a_Value;
end;

function TEstagiarioAlterarDadosJornada.getNumeroHorasMensais: Integer;
begin
  Result := Self.m_NumeroHorasMensais;
end;

procedure TEstagiarioAlterarDadosJornada.setNumeroHorasMensais(const a_Value: Integer);
begin
  Self.m_NumeroHorasMensais := a_Value;
end;

function TEstagiarioAlterarDadosJornada.getNumeroDiasPeriodo: Integer;
begin
  Result := Self.m_NumeroDiasPeriodo;
end;

procedure TEstagiarioAlterarDadosJornada.setNumeroDiasPeriodo(const a_Value: Integer);
begin
  Self.m_NumeroDiasPeriodo := a_Value;
end;

destructor TEstagiarioAlterarDadosJornada.Destroy;
begin

end;

function TEstagiarioAlterarDadosJornada.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosJornada.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosJornada.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosJornada';
end;

function TEstagiarioAlterarDadosJornada.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosJornada.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarSalario.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarSalario.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarSalario.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarSalario.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarSalario.getSalarioFixo: Currency;
begin
  Result := Self.m_SalarioFixo;
end;

procedure TEstagiarioAlterarSalario.setSalarioFixo(const a_Value: Currency);
begin
  Self.m_SalarioFixo := a_Value;
end;

function TEstagiarioAlterarSalario.getUnidadeSalario: Integer;
begin
  Result := Self.m_UnidadeSalario;
end;

procedure TEstagiarioAlterarSalario.setUnidadeSalario(const a_Value: Integer);
begin
  Self.m_UnidadeSalario := a_Value;
end;

destructor TEstagiarioAlterarSalario.Destroy;
begin

end;

function TEstagiarioAlterarSalario.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarSalario.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarSalario.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarSalario';
end;

function TEstagiarioAlterarSalario.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarSalario.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosPessoais.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosPessoais.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosPessoais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosPessoais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosPessoais.getEstadoCivil: Integer;
begin
  Result := Self.m_EstadoCivil;
end;

procedure TEstagiarioAlterarDadosPessoais.setEstadoCivil(const a_Value: Integer);
begin
  Self.m_EstadoCivil := a_Value;
end;

function TEstagiarioAlterarDadosPessoais.getCodigoRaca: String;
begin
  Result := Self.m_CodigoRaca;
end;

procedure TEstagiarioAlterarDadosPessoais.setCodigoRaca(const a_Value: String);
begin
  Self.m_CodigoRaca := a_Value;
end;

function TEstagiarioAlterarDadosPessoais.getCodigoGrauInstrucao: String;
begin
  Result := Self.m_CodigoGrauInstrucao;
end;

procedure TEstagiarioAlterarDadosPessoais.setCodigoGrauInstrucao(const a_Value: String);
begin
  Self.m_CodigoGrauInstrucao := a_Value;
end;

destructor TEstagiarioAlterarDadosPessoais.Destroy;
begin

end;

function TEstagiarioAlterarDadosPessoais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosPessoais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosPessoais.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosPessoais';
end;

function TEstagiarioAlterarDadosPessoais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosPessoais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosFerias.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosFerias.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosFerias.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosFerias.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosFerias.getDataInicioPeriodoAquisitivo: TDate;
begin
  Result := Self.m_DataInicioPeriodoAquisitivo;
end;

procedure TEstagiarioAlterarDadosFerias.setDataInicioPeriodoAquisitivo(const a_Value: TDate);
begin
  Self.m_DataInicioPeriodoAquisitivo := a_Value;
end;

function TEstagiarioAlterarDadosFerias.getDataProximasFerias: TDate;
begin
  Result := Self.m_DataProximasFerias;
end;

procedure TEstagiarioAlterarDadosFerias.setDataProximasFerias(const a_Value: TDate);
begin
  Self.m_DataProximasFerias := a_Value;
end;

destructor TEstagiarioAlterarDadosFerias.Destroy;
begin

end;

function TEstagiarioAlterarDadosFerias.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosFerias.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosFerias.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosFerias';
end;

function TEstagiarioAlterarDadosFerias.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosFerias.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarPercentualAdiantamento.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarPercentualAdiantamento.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarPercentualAdiantamento.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarPercentualAdiantamento.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarPercentualAdiantamento.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure TEstagiarioAlterarPercentualAdiantamento.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

destructor TEstagiarioAlterarPercentualAdiantamento.Destroy;
begin

end;

function TEstagiarioAlterarPercentualAdiantamento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarPercentualAdiantamento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarPercentualAdiantamento.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarPercentualAdiantamento';
end;

function TEstagiarioAlterarPercentualAdiantamento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarPercentualAdiantamento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarAvalidador.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarAvalidador.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarAvalidador.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarAvalidador.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarAvalidador.getAvaliador: String;
begin
  Result := Self.m_Avaliador;
end;

procedure TEstagiarioAlterarAvalidador.setAvaliador(const a_Value: String);
begin
  Self.m_Avaliador := a_Value;
end;

destructor TEstagiarioAlterarAvalidador.Destroy;
begin

end;

function TEstagiarioAlterarAvalidador.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarAvalidador.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarAvalidador.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarAvalidador';
end;

function TEstagiarioAlterarAvalidador.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarAvalidador.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarGestor.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarGestor.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarGestor.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarGestor.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarGestor.getGestor: String;
begin
  Result := Self.m_Gestor;
end;

procedure TEstagiarioAlterarGestor.setGestor(const a_Value: String);
begin
  Self.m_Gestor := a_Value;
end;

destructor TEstagiarioAlterarGestor.Destroy;
begin

end;

function TEstagiarioAlterarGestor.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarGestor.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarGestor.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarGestor';
end;

function TEstagiarioAlterarGestor.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarGestor.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDataVencimentoAtestadoMedico.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDataVencimentoAtestadoMedico.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDataVencimentoAtestadoMedico.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDataVencimentoAtestadoMedico.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDataVencimentoAtestadoMedico.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TEstagiarioAlterarDataVencimentoAtestadoMedico.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

destructor TEstagiarioAlterarDataVencimentoAtestadoMedico.Destroy;
begin

end;

function TEstagiarioAlterarDataVencimentoAtestadoMedico.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDataVencimentoAtestadoMedico.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDataVencimentoAtestadoMedico.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDataVencimentoAtestadoMedico';
end;

function TEstagiarioAlterarDataVencimentoAtestadoMedico.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDataVencimentoAtestadoMedico.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarObservacao.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarObservacao.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarObservacao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarObservacao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarObservacao.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TEstagiarioAlterarObservacao.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

destructor TEstagiarioAlterarObservacao.Destroy;
begin

end;

function TEstagiarioAlterarObservacao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarObservacao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarObservacao.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarObservacao';
end;

function TEstagiarioAlterarObservacao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarObservacao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioAlterarDadosAtividade.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioAlterarDadosAtividade.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioAlterarDadosAtividade.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioAlterarDadosAtividade.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TEstagiarioAlterarDadosAtividade.getAtividade: Integer;
begin
  Result := Self.m_Atividade;
end;

procedure TEstagiarioAlterarDadosAtividade.setAtividade(const a_Value: Integer);
begin
  Self.m_Atividade := a_Value;
end;

destructor TEstagiarioAlterarDadosAtividade.Destroy;
begin

end;

function TEstagiarioAlterarDadosAtividade.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioAlterarDadosAtividade.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioAlterarDadosAtividade.getNameAPI(): String;
begin
  Result := 'EstagiarioAlterarDadosAtividade';
end;

function TEstagiarioAlterarDadosAtividade.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioAlterarDadosAtividade.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TEstagiarioExcluir.getEstagiario: String;
begin
  Result := Self.m_Estagiario;
end;

procedure TEstagiarioExcluir.setEstagiario(const a_Value: String);
begin
  Self.m_Estagiario := a_Value;
end;

function TEstagiarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TEstagiarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TEstagiarioExcluir.Destroy;
begin

end;

function TEstagiarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TEstagiarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TEstagiarioExcluir.getNameAPI(): String;
begin
  Result := 'EstagiarioExcluir';
end;

function TEstagiarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TEstagiarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
