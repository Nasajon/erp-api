unit api.model.persona.Funcionario;

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
	
  , api.model.persona.solicitacoes
	

	;

type TFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdFuncionario: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CodigoCategoria: String;
    var m_CPF: String;
    var m_NIS: String;
    var m_DataAdmissao: TDate;
    var m_UnidadeSalario: Integer;
    var m_Sexo: Integer;
    var m_CodigoCBO: String;
    

    function getIdFuncionario(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCodigoCategoria(): String;
    function getCPF(): String;
    function getNIS(): String;
    function getDataAdmissao(): TDate;
    function getUnidadeSalario(): Integer;
    function getSexo(): Integer;
    function getCodigoCBO(): String;
    

    procedure setIdFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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
    

    [NasajonSerializeAttribute('idfuncionario')]
    property idfuncionario: String read getIdFuncionario write setIdFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

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

type TFuncionarioAlterarDadosGerais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CodigoCategoria: String;
    var m_CPF: String;
    var m_NIS: String;
    var m_DataAdmissao: TDate;
    var m_UnidadeSalario: Integer;
    var m_Sexo: Integer;
    var m_CodigoCBO: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCodigoCategoria(): String;
    function getCPF(): String;
    function getNIS(): String;
    function getDataAdmissao(): TDate;
    function getUnidadeSalario(): Integer;
    function getSexo(): Integer;
    function getCodigoCBO(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

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

type TFuncionarioAlterarEstabelecimento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    

    function getFuncionario(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TFuncionarioAlterarDepartamento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Departamento: String;
    var m_Estabelecimento: String;
    var m_Empresa: String;
    

    function getFuncionario(): String;
    function getDepartamento(): String;
    function getEstabelecimento(): String;
    function getEmpresa(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setDepartamento(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('departamento')]
    property departamento: String read getDepartamento write setDepartamento;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TFuncionarioAlterarHorario = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Horario: String;
    var m_Empresa: String;
    

    function getFuncionario(): String;
    function getHorario(): String;
    function getEmpresa(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setHorario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('horario')]
    property horario: String read getHorario write setHorario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TFuncionarioAlterarSindicato = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Sindicato: String;
    var m_Empresa: String;
    

    function getFuncionario(): String;
    function getSindicato(): String;
    function getEmpresa(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setSindicato(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('sindicato')]
    property sindicato: String read getSindicato write setSindicato;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TFuncionarioAlterarLotacao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Lotacao: String;
    var m_Empresa: String;
    

    function getFuncionario(): String;
    function getLotacao(): String;
    function getEmpresa(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setLotacao(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('lotacao')]
    property lotacao: String read getLotacao write setLotacao;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TFuncionarioAlterarCargoNivel = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_NivelCargo: String;
    var m_Cargo: String;
    var m_Empresa: String;
    

    function getFuncionario(): String;
    function getNivelCargo(): String;
    function getCargo(): String;
    function getEmpresa(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setNivelCargo(const a_Value: String);
    procedure setCargo(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('nivelcargo')]
    property nivelcargo: String read getNivelCargo write setNivelCargo;

    [NasajonSerializeAttribute('cargo')]
    property cargo: String read getCargo write setCargo;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

type TFuncionarioAlterarDadosEndereco = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
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
    

    function getFuncionario(): String;
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
    

    procedure setFuncionario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

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

type TFuncionarioSolicitacaoAlteracaoEndereco = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Colaborador: String;
    var m_Empresa: String;
    var m_Novo: TSolicitacoesAlteracaoEndereco;
    var m_Antigo: TSolicitacoesAlteracaoEndereco;
    

    function getColaborador(): String;
    function getEmpresa(): String;
    function getNovo(): TSolicitacoesAlteracaoEndereco;
    function getAntigo(): TSolicitacoesAlteracaoEndereco;
    

    procedure setColaborador(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNovo(const a_Value: TSolicitacoesAlteracaoEndereco);
    procedure setAntigo(const a_Value: TSolicitacoesAlteracaoEndereco);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('colaborador')]
    property colaborador: String read getColaborador write setColaborador;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('novo')]
    property novo: TSolicitacoesAlteracaoEndereco read getNovo write setNovo;

    [NasajonSerializeAttribute('antigo')]
    property antigo: TSolicitacoesAlteracaoEndereco read getAntigo write setAntigo;

    

end;

type TFuncionarioAlterarDadosRecebimentoSalario = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Tipo: Integer;
    var m_NumeroConta: String;
    var m_DigitoVerificador: String;
    var m_Agencia: String;
    var m_Banco: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTipo(): Integer;
    function getNumeroConta(): String;
    function getDigitoVerificador(): String;
    function getAgencia(): String;
    function getBanco(): String;
    

    procedure setFuncionario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

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

type TFuncionarioAlterarDadosRescisao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_DataRescisao: TDate;
    var m_NumeroRecibo: String;
    var m_CodigoMotivo: String;
    var m_FGTSMesAnteriorRecolhido: Boolean;
    var m_AvisoIndenizadoPago: Boolean;
    var m_TinhaEmpregoDuranteAvisoPrevio: Boolean;
    var m_JornadaCumpridaNaSemanaDaRescisao: Boolean;
    var m_JornadaSabadoCompensadaNaSemanaDaRescisao: Boolean;
    var m_DataProjecaoAvisoPrevioIndenizado: TDate;
    var m_Processo: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getDataRescisao(): TDate;
    function getNumeroRecibo(): String;
    function getCodigoMotivo(): String;
    function getFGTSMesAnteriorRecolhido(): Boolean;
    function getAvisoIndenizadoPago(): Boolean;
    function getTinhaEmpregoDuranteAvisoPrevio(): Boolean;
    function getJornadaCumpridaNaSemanaDaRescisao(): Boolean;
    function getJornadaSabadoCompensadaNaSemanaDaRescisao(): Boolean;
    function getDataProjecaoAvisoPrevioIndenizado(): TDate;
    function getProcesso(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataRescisao(const a_Value: TDate);
    procedure setNumeroRecibo(const a_Value: String);
    procedure setCodigoMotivo(const a_Value: String);
    procedure setFGTSMesAnteriorRecolhido(const a_Value: Boolean);
    procedure setAvisoIndenizadoPago(const a_Value: Boolean);
    procedure setTinhaEmpregoDuranteAvisoPrevio(const a_Value: Boolean);
    procedure setJornadaCumpridaNaSemanaDaRescisao(const a_Value: Boolean);
    procedure setJornadaSabadoCompensadaNaSemanaDaRescisao(const a_Value: Boolean);
    procedure setDataProjecaoAvisoPrevioIndenizado(const a_Value: TDate);
    procedure setProcesso(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datarescisao')]
    property datarescisao: TDate read getDataRescisao write setDataRescisao;

    [NasajonSerializeAttribute('numerorecibo')]
    property numerorecibo: String read getNumeroRecibo write setNumeroRecibo;

    /// <summary>
/// Conforme tabela de motivos de rescisão disponível na tela de funcionários aba contrato
    /// </summary>
    [NasajonSerializeAttribute('codigomotivo')]
    property codigomotivo: String read getCodigoMotivo write setCodigoMotivo;

    /// <summary>
/// Informar se o fgts do mês anterior ao mês da rescisão foi recolhido na grrf do mês da rescisão
    /// </summary>
    [NasajonSerializeAttribute('fgtsmesanteriorrecolhido')]
    property fgtsmesanteriorrecolhido: Boolean read getFGTSMesAnteriorRecolhido write setFGTSMesAnteriorRecolhido;

    [NasajonSerializeAttribute('avisoindenizadopago')]
    property avisoindenizadopago: Boolean read getAvisoIndenizadoPago write setAvisoIndenizadoPago;

    [NasajonSerializeAttribute('tinhaempregoduranteavisoprevio')]
    property tinhaempregoduranteavisoprevio: Boolean read getTinhaEmpregoDuranteAvisoPrevio write setTinhaEmpregoDuranteAvisoPrevio;

    [NasajonSerializeAttribute('jornadacumpridanasemanadarescisao')]
    property jornadacumpridanasemanadarescisao: Boolean read getJornadaCumpridaNaSemanaDaRescisao write setJornadaCumpridaNaSemanaDaRescisao;

    [NasajonSerializeAttribute('jornadasabadocompensadanasemanadarescisao')]
    property jornadasabadocompensadanasemanadarescisao: Boolean read getJornadaSabadoCompensadaNaSemanaDaRescisao write setJornadaSabadoCompensadaNaSemanaDaRescisao;

    [NasajonSerializeAttribute('dataprojecaoavisoprevioindenizado')]
    property dataprojecaoavisoprevioindenizado: TDate read getDataProjecaoAvisoPrevioIndenizado write setDataProjecaoAvisoPrevioIndenizado;

    [NasajonSerializeAttribute('processo')]
    property processo: String read getProcesso write setProcesso;

    

end;

type TFuncionarioAlterarDadosReintegracao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Tipo: Integer;
    var m_DataRetroativa: TDate;
    var m_DataRetorno: TDate;
    var m_Processo: String;
    var m_NumeroLeiAnistia: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTipo(): Integer;
    function getDataRetroativa(): TDate;
    function getDataRetorno(): TDate;
    function getProcesso(): String;
    function getNumeroLeiAnistia(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setDataRetroativa(const a_Value: TDate);
    procedure setDataRetorno(const a_Value: TDate);
    procedure setProcesso(const a_Value: String);
    procedure setNumeroLeiAnistia(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Judicial(1), Anistia Legal(2) ou Outros(3)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('dataretroativa')]
    property dataretroativa: TDate read getDataRetroativa write setDataRetroativa;

    [NasajonSerializeAttribute('dataretorno')]
    property dataretorno: TDate read getDataRetorno write setDataRetorno;

    [NasajonSerializeAttribute('processo')]
    property processo: String read getProcesso write setProcesso;

    [NasajonSerializeAttribute('numeroleianistia')]
    property numeroleianistia: String read getNumeroLeiAnistia write setNumeroLeiAnistia;

    

end;

type TFuncionarioAlterarDadosNascimento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_UF: String;
    var m_Cidade: String;
    var m_CodigoMunicipio: String;
    var m_CodigoPais: String;
    var m_NomePai: String;
    var m_NomeMae: String;
    var m_DataNascimento: TDate;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getUF(): String;
    function getCidade(): String;
    function getCodigoMunicipio(): String;
    function getCodigoPais(): String;
    function getNomePai(): String;
    function getNomeMae(): String;
    function getDataNascimento(): TDate;
    

    procedure setFuncionario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

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

type TFuncionarioAlterarDadosCarteiraTrabalho = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_Serie: String;
    var m_UF: String;
    var m_DataExpedicao: TDate;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getSerie(): String;
    function getUF(): String;
    function getDataExpedicao(): TDate;
    

    procedure setFuncionario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

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

type TFuncionarioAlterarDadosNacionalidade = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_CodigoPais: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getCodigoPais(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigoPais(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Conforme tabela oficial do governo
    /// </summary>
    [NasajonSerializeAttribute('codigopais')]
    property codigopais: String read getCodigoPais write setCodigoPais;

    

end;

type TFuncionarioAlterarDadosFGTS = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_NumeroConta: String;
    var m_Optante: Boolean;
    var m_DataOpcao: TDate;
    var m_Saldo: Currency;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getNumeroConta(): String;
    function getOptante(): Boolean;
    function getDataOpcao(): TDate;
    function getSaldo(): Currency;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumeroConta(const a_Value: String);
    procedure setOptante(const a_Value: Boolean);
    procedure setDataOpcao(const a_Value: TDate);
    procedure setSaldo(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numeroconta')]
    property numeroconta: String read getNumeroConta write setNumeroConta;

    [NasajonSerializeAttribute('optante')]
    property optante: Boolean read getOptante write setOptante;

    [NasajonSerializeAttribute('dataopcao')]
    property dataopcao: TDate read getDataOpcao write setDataOpcao;

    [NasajonSerializeAttribute('saldo')]
    property saldo: Currency read getSaldo write setSaldo;

    

end;

type TFuncionarioAlterarDadosRIC = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_UF: String;
    var m_Cidade: String;
    var m_DataExpedicao: TDate;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getUF(): String;
    function getCidade(): String;
    function getDataExpedicao(): TDate;
    

    procedure setFuncionario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

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

type TFuncionarioAlterarDadosCarteiraIdentidade = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_UF: String;
    var m_DataExpedicao: TDate;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getUF(): String;
    function getDataExpedicao(): TDate;
    

    procedure setFuncionario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

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

type TFuncionarioAlterarDadosOrdemClasse = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_DataExpedicao: TDate;
    var m_DataValidade: TDate;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getDataExpedicao(): TDate;
    function getDataValidade(): TDate;
    

    procedure setFuncionario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

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

type TFuncionarioAlterarDadosCarteiraHablilitacao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_DataExpedicao: TDate;
    var m_DataValidade: TDate;
    var m_DataPrimeiraHabilitacao: TDate;
    var m_Categoria: Integer;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getDataExpedicao(): TDate;
    function getDataValidade(): TDate;
    function getDataPrimeiraHabilitacao(): TDate;
    function getCategoria(): Integer;
    

    procedure setFuncionario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

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

type TFuncionarioAlterarDadosPassaporte = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_CodigoPaisEmissor: String;
    var m_Numero: String;
    var m_OrgaoEmissor: String;
    var m_UF: String;
    var m_DataExpedicao: TDate;
    var m_DataValidade: TDate;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getCodigoPaisEmissor(): String;
    function getNumero(): String;
    function getOrgaoEmissor(): String;
    function getUF(): String;
    function getDataExpedicao(): TDate;
    function getDataValidade(): TDate;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigoPaisEmissor(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setOrgaoEmissor(const a_Value: String);
    procedure setUF(const a_Value: String);
    procedure setDataExpedicao(const a_Value: TDate);
    procedure setDataValidade(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Conforme tabela oficial do governo
    /// </summary>
    [NasajonSerializeAttribute('codigopaisemissor')]
    property codigopaisemissor: String read getCodigoPaisEmissor write setCodigoPaisEmissor;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('orgaoemissor')]
    property orgaoemissor: String read getOrgaoEmissor write setOrgaoEmissor;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getUF write setUF;

    [NasajonSerializeAttribute('dataexpedicao')]
    property dataexpedicao: TDate read getDataExpedicao write setDataExpedicao;

    [NasajonSerializeAttribute('datavalidade')]
    property datavalidade: TDate read getDataValidade write setDataValidade;

    

end;

type TFuncionarioAlterarDadosTituloEleitor = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_UF: String;
    var m_Zona: Integer;
    var m_Secao: Integer;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getUF(): String;
    function getZona(): Integer;
    function getSecao(): Integer;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setUF(const a_Value: String);
    procedure setZona(const a_Value: Integer);
    procedure setSecao(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getUF write setUF;

    [NasajonSerializeAttribute('zona')]
    property zona: Integer read getZona write setZona;

    [NasajonSerializeAttribute('secao')]
    property secao: Integer read getSecao write setSecao;

    

end;

type TFuncionarioAlterarDadosCertidao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_Livro: String;
    var m_Folha: String;
    var m_Cidade: String;
    var m_UF: String;
    var m_Cartorio: String;
    var m_DataExpedicao: TDate;
    var m_Tipo: Integer;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getLivro(): String;
    function getFolha(): String;
    function getCidade(): String;
    function getUF(): String;
    function getCartorio(): String;
    function getDataExpedicao(): TDate;
    function getTipo(): Integer;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setLivro(const a_Value: String);
    procedure setFolha(const a_Value: String);
    procedure setCidade(const a_Value: String);
    procedure setUF(const a_Value: String);
    procedure setCartorio(const a_Value: String);
    procedure setDataExpedicao(const a_Value: TDate);
    procedure setTipo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('livro')]
    property livro: String read getLivro write setLivro;

    [NasajonSerializeAttribute('folha')]
    property folha: String read getFolha write setFolha;

    [NasajonSerializeAttribute('cidade')]
    property cidade: String read getCidade write setCidade;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getUF write setUF;

    [NasajonSerializeAttribute('cartorio')]
    property cartorio: String read getCartorio write setCartorio;

    [NasajonSerializeAttribute('dataexpedicao')]
    property dataexpedicao: TDate read getDataExpedicao write setDataExpedicao;

    /// <summary>
/// Nascimento(1) ou Casamento(2)
    /// </summary>
    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    

end;

type TFuncionarioAlterarDadosCertificadoReservista = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Numero: String;
    var m_Serie: String;
    var m_DataExpedicao: TDate;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    function getSerie(): String;
    function getDataExpedicao(): TDate;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setSerie(const a_Value: String);
    procedure setDataExpedicao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('serie')]
    property serie: String read getSerie write setSerie;

    [NasajonSerializeAttribute('dataexpedicao')]
    property dataexpedicao: TDate read getDataExpedicao write setDataExpedicao;

    

end;

type TFuncionarioAlterarDadosValeTransporte = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_NumeroCartao: String;
    var m_DiaSemanaComMeioVale: Integer;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getNumeroCartao(): String;
    function getDiaSemanaComMeioVale(): Integer;
    

    procedure setFuncionario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

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

type TFuncionarioAlterarDadosEmpresaAnterior = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_CNPJ: String;
    var m_Matricula: String;
    var m_DataAdmissao: TDate;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getCNPJ(): String;
    function getMatricula(): String;
    function getDataAdmissao(): TDate;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCNPJ(const a_Value: String);
    procedure setMatricula(const a_Value: String);
    procedure setDataAdmissao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('cnpj')]
    property cnpj: String read getCNPJ write setCNPJ;

    [NasajonSerializeAttribute('matricula')]
    property matricula: String read getMatricula write setMatricula;

    [NasajonSerializeAttribute('dataadmissao')]
    property dataadmissao: TDate read getDataAdmissao write setDataAdmissao;

    

end;

type TFuncionarioAlterarDadosEmpresaCedente = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_CNPJ: String;
    var m_Matricula: String;
    var m_DataAdmissao: TDate;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getCNPJ(): String;
    function getMatricula(): String;
    function getDataAdmissao(): TDate;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCNPJ(const a_Value: String);
    procedure setMatricula(const a_Value: String);
    procedure setDataAdmissao(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('cnpj')]
    property cnpj: String read getCNPJ write setCNPJ;

    [NasajonSerializeAttribute('matricula')]
    property matricula: String read getMatricula write setMatricula;

    [NasajonSerializeAttribute('dataadmissao')]
    property dataadmissao: TDate read getDataAdmissao write setDataAdmissao;

    

end;

type TFuncionarioAlterarDadosEmpresaSucessora = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_CNPJ: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getCNPJ(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCNPJ(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('cnpj')]
    property cnpj: String read getCNPJ write setCNPJ;

    

end;

type TFuncionarioAlterarDadosDeficiencia = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_DeficienteIntelectual: Boolean;
    var m_DeficienteMental: Boolean;
    var m_DeficienteAuditivo: Boolean;
    var m_DeficienteVisual: Boolean;
    var m_DeficienteFisico: Boolean;
    var m_Reabilitado: Boolean;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getDeficienteIntelectual(): Boolean;
    function getDeficienteMental(): Boolean;
    function getDeficienteAuditivo(): Boolean;
    function getDeficienteVisual(): Boolean;
    function getDeficienteFisico(): Boolean;
    function getReabilitado(): Boolean;
    

    procedure setFuncionario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

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

type TFuncionarioAlterarDadosEstrangeiro = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_CasadoComBrasileiro: Boolean;
    var m_TemFilhoBrasileiro: Boolean;
    var m_DataChegadaPais: TDate;
    var m_DataNaturalizacao: TDate;
    var m_NumeroNaturalizacao: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getCasadoComBrasileiro(): Boolean;
    function getTemFilhoBrasileiro(): Boolean;
    function getDataChegadaPais(): TDate;
    function getDataNaturalizacao(): TDate;
    function getNumeroNaturalizacao(): String;
    

    procedure setFuncionario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

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

type TFuncionarioAlterarIdentidadeNasajon = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Identidade: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getIdentidade(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setIdentidade(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('identidade')]
    property identidade: String read getIdentidade write setIdentidade;

    

end;

type TFuncionarioAlterarDadosRecebimentoOutrasEmpresas = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_OrdemCalculoINSSFolha: Integer;
    var m_OrdemCalculoINSSDecimoTerceiro: Integer;
    var m_TemVinculoComOutraEmpresa: Boolean;
    var m_MesesTrabalhadosOutrasEmpresas: Integer;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getOrdemCalculoINSSFolha(): Integer;
    function getOrdemCalculoINSSDecimoTerceiro(): Integer;
    function getTemVinculoComOutraEmpresa(): Boolean;
    function getMesesTrabalhadosOutrasEmpresas(): Integer;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setOrdemCalculoINSSFolha(const a_Value: Integer);
    procedure setOrdemCalculoINSSDecimoTerceiro(const a_Value: Integer);
    procedure setTemVinculoComOutraEmpresa(const a_Value: Boolean);
    procedure setMesesTrabalhadosOutrasEmpresas(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('ordemcalculoinssfolha')]
    property ordemcalculoinssfolha: Integer read getOrdemCalculoINSSFolha write setOrdemCalculoINSSFolha;

    [NasajonSerializeAttribute('ordemcalculoinssdecimoterceiro')]
    property ordemcalculoinssdecimoterceiro: Integer read getOrdemCalculoINSSDecimoTerceiro write setOrdemCalculoINSSDecimoTerceiro;

    [NasajonSerializeAttribute('temvinculocomoutraempresa')]
    property temvinculocomoutraempresa: Boolean read getTemVinculoComOutraEmpresa write setTemVinculoComOutraEmpresa;

    [NasajonSerializeAttribute('mesestrabalhadosoutrasempresas')]
    property mesestrabalhadosoutrasempresas: Integer read getMesesTrabalhadosOutrasEmpresas write setMesesTrabalhadosOutrasEmpresas;

    

end;

type TFuncionarioAlterarDadosOutroVinculo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_OrdemCalculoDuploVinculo: Integer;
    var m_MatriculaOutroVinculo: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getOrdemCalculoDuploVinculo(): Integer;
    function getMatriculaOutroVinculo(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setOrdemCalculoDuploVinculo(const a_Value: Integer);
    procedure setMatriculaOutroVinculo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('ordemcalculoduplovinculo')]
    property ordemcalculoduplovinculo: Integer read getOrdemCalculoDuploVinculo write setOrdemCalculoDuploVinculo;

    [NasajonSerializeAttribute('matriculaoutrovinculo')]
    property matriculaoutrovinculo: String read getMatriculaOutroVinculo write setMatriculaOutroVinculo;

    

end;

type TFuncionarioAlterarDadosJornada = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Quantidademediahorassemanais: Integer;
    var m_RegimedeJornada: Integer;
    var m_JornadaReduzida: Boolean;
    var m_NumeroHorasMensais: Integer;
    var m_NumeroDiasPeriodo: Integer;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getQuantidademediahorassemanais(): Integer;
    function getRegimedeJornada(): Integer;
    function getJornadaReduzida(): Boolean;
    function getNumeroHorasMensais(): Integer;
    function getNumeroDiasPeriodo(): Integer;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setQuantidademediahorassemanais(const a_Value: Integer);
    procedure setRegimedeJornada(const a_Value: Integer);
    procedure setJornadaReduzida(const a_Value: Boolean);
    procedure setNumeroHorasMensais(const a_Value: Integer);
    procedure setNumeroDiasPeriodo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('quantidademediahorassemanais')]
    property quantidademediahorassemanais: Integer read getQuantidademediahorassemanais write setQuantidademediahorassemanais;

    [NasajonSerializeAttribute('regimedejornada')]
    property regimedejornada: Integer read getRegimedeJornada write setRegimedeJornada;

    [NasajonSerializeAttribute('jornadareduzida')]
    property jornadareduzida: Boolean read getJornadaReduzida write setJornadaReduzida;

    [NasajonSerializeAttribute('numerohorasmensais')]
    property numerohorasmensais: Integer read getNumeroHorasMensais write setNumeroHorasMensais;

    [NasajonSerializeAttribute('numerodiasperiodo')]
    property numerodiasperiodo: Integer read getNumeroDiasPeriodo write setNumeroDiasPeriodo;

    

end;

type TFuncionarioAlterarSalario = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_SalarioFixo: Currency;
    var m_UnidadeSalario: Integer;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getSalarioFixo(): Currency;
    function getUnidadeSalario(): Integer;
    

    procedure setFuncionario(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

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

type TFuncionarioAlterarDadosPessoais = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_EstadoCivil: Integer;
    var m_TipoSanguineo: Integer;
    var m_CodigoRaca: String;
    var m_CodigoGrauInstrucao: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getEstadoCivil(): Integer;
    function getTipoSanguineo(): Integer;
    function getCodigoRaca(): String;
    function getCodigoGrauInstrucao(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstadoCivil(const a_Value: Integer);
    procedure setTipoSanguineo(const a_Value: Integer);
    procedure setCodigoRaca(const a_Value: String);
    procedure setCodigoGrauInstrucao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Solteiro(1), Casado(2), Divorciado(3), Viúvo(4), União Estável(5) ou Outros(6)
    /// </summary>
    [NasajonSerializeAttribute('estadocivil')]
    property estadocivil: Integer read getEstadoCivil write setEstadoCivil;

    /// <summary>
/// O+(0), O-(1), A+(2), A-(3), B+(4), B-(5), AB+(6) ou AB-(7)
    /// </summary>
    [NasajonSerializeAttribute('tiposanguineo')]
    property tiposanguineo: Integer read getTipoSanguineo write setTipoSanguineo;

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

type TFuncionarioAlterarMatriculaContribuinteIndividual = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Contribuinteindividual: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getContribuinteindividual(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setContribuinteindividual(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('contribuinteindividual')]
    property contribuinteindividual: String read getContribuinteindividual write setContribuinteindividual;

    

end;

type TFuncionarioAlterarDadosFerias = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_DataInicioPeriodoAquisitivo: TDate;
    var m_DataProximasFerias: TDate;
    var m_Saldo: Integer;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getDataInicioPeriodoAquisitivo(): TDate;
    function getDataProximasFerias(): TDate;
    function getSaldo(): Integer;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataInicioPeriodoAquisitivo(const a_Value: TDate);
    procedure setDataProximasFerias(const a_Value: TDate);
    procedure setSaldo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datainicioperiodoaquisitivo')]
    property datainicioperiodoaquisitivo: TDate read getDataInicioPeriodoAquisitivo write setDataInicioPeriodoAquisitivo;

    [NasajonSerializeAttribute('dataproximasferias')]
    property dataproximasferias: TDate read getDataProximasFerias write setDataProximasFerias;

    [NasajonSerializeAttribute('saldo')]
    property saldo: Integer read getSaldo write setSaldo;

    

end;

type TFuncionarioAlterarPercentualAdiantamento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Percentual: Currency;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getPercentual(): Currency;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setPercentual(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('percentual')]
    property percentual: Currency read getPercentual write setPercentual;

    

end;

type TFuncionarioAlterarDadosProcessoIRRF = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Processo: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getProcesso(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setProcesso(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('processo')]
    property processo: String read getProcesso write setProcesso;

    

end;

type TFuncionarioAlterarDadosProcessoINSS = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Processo: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getProcesso(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setProcesso(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('processo')]
    property processo: String read getProcesso write setProcesso;

    

end;

type TFuncionarioAlterarDadosProcessoMenorAprendiz = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Processo: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getProcesso(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setProcesso(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('processo')]
    property processo: String read getProcesso write setProcesso;

    

end;

type TFuncionarioAlterarTipoFuncionario = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Tipo: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTipo(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTipo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('tipo')]
    property tipo: String read getTipo write setTipo;

    

end;

type TFuncionarioAlterarAvalidador = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Avaliador: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getAvaliador(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setAvaliador(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('avaliador')]
    property avaliador: String read getAvaliador write setAvaliador;

    

end;

type TFuncionarioAlterarGestor = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Gestor: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getGestor(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setGestor(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('gestor')]
    property gestor: String read getGestor write setGestor;

    

end;

type TFuncionarioAlterarFuncao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Funcao: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getFuncao(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setFuncao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

    

end;

type TFuncionarioAlterarSindicalizado = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Sindicalizado: Boolean;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getSindicalizado(): Boolean;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setSindicalizado(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('sindicalizado')]
    property sindicalizado: Boolean read getSindicalizado write setSindicalizado;

    

end;

type TFuncionarioAlterarDescontaINSS = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Desconta: Boolean;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getDesconta(): Boolean;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDesconta(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('desconta')]
    property desconta: Boolean read getDesconta write setDesconta;

    

end;

type TFuncionarioAlterarDataInicioAnuenio = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_DataInicio: TDate;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getDataInicio(): TDate;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataInicio(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datainicio')]
    property datainicio: TDate read getDataInicio write setDataInicio;

    

end;

type TFuncionarioAlterarDataVencimentoAtestadoMedico = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setData(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    

end;

type TFuncionarioAlterarAtividadeConcomitante = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Codigo: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Contribuição Substituída(1), Contribuição não Substituída(2) ou Ambas(3)
    /// </summary>
    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    

end;

type TFuncionarioAlterarAtestadoObito = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Numero: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getNumero(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setNumero(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    

end;

type TFuncionarioAlterarAcordoProrrogacao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Acordo: String;
    var m_Data: TDate;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getAcordo(): String;
    function getData(): TDate;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setAcordo(const a_Value: String);
    procedure setData(const a_Value: TDate);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('acordo')]
    property acordo: String read getAcordo write setAcordo;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    

end;

type TFuncionarioAlterarStatus = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Status: Integer;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getStatus(): Integer;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setStatus(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Rascunho(0), Pendente(1) ou Admitido(2)
    /// </summary>
    [NasajonSerializeAttribute('status')]
    property status: Integer read getStatus write setStatus;

    

end;

type TFuncionarioAlterarObservacao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Observacao: WideString;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getObservacao(): WideString;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setObservacao(const a_Value: WideString);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('observacao')]
    property observacao: WideString read getObservacao write setObservacao;

    

end;

type TFuncionarioAlterarFoto = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Foto: String;
    var m_FotoOriginal: String;
    var m_InfoImagem: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getFoto(): String;
    function getFotoOriginal(): String;
    function getInfoImagem(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setFoto(const a_Value: String);
    procedure setFotoOriginal(const a_Value: String);
    procedure setInfoImagem(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('foto')]
    property foto: String read getFoto write setFoto;

    [NasajonSerializeAttribute('fotooriginal')]
    property fotooriginal: String read getFotoOriginal write setFotoOriginal;

    [NasajonSerializeAttribute('infoimagem')]
    property infoimagem: String read getInfoImagem write setInfoImagem;

    

end;

type TFuncionarioAlterarDadosContrato = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    var m_TipoAdmissao: Integer;
    var m_RegimeTrabalhista: Integer;
    var m_RegimeINSS: Integer;
    var m_Atividade: Integer;
    var m_Prazo: Integer;
    var m_CodigoVinculo: String;
    var m_DiasExperiencia: Integer;
    var m_DiasProrrogacao: Integer;
    var m_MotivoAdmissao: Integer;
    var m_MotivoContratacaoTemporaria: Integer;
    var m_DataFimcontrato: TDate;
    var m_FuncionarioSubstituido: String;
    var m_ProcessoAdmissao: String;
    var m_PrimeiroEmprego: Boolean;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    function getTipoAdmissao(): Integer;
    function getRegimeTrabalhista(): Integer;
    function getRegimeINSS(): Integer;
    function getAtividade(): Integer;
    function getPrazo(): Integer;
    function getCodigoVinculo(): String;
    function getDiasExperiencia(): Integer;
    function getDiasProrrogacao(): Integer;
    function getMotivoAdmissao(): Integer;
    function getMotivoContratacaoTemporaria(): Integer;
    function getDataFimcontrato(): TDate;
    function getFuncionarioSubstituido(): String;
    function getProcessoAdmissao(): String;
    function getPrimeiroEmprego(): Boolean;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setTipoAdmissao(const a_Value: Integer);
    procedure setRegimeTrabalhista(const a_Value: Integer);
    procedure setRegimeINSS(const a_Value: Integer);
    procedure setAtividade(const a_Value: Integer);
    procedure setPrazo(const a_Value: Integer);
    procedure setCodigoVinculo(const a_Value: String);
    procedure setDiasExperiencia(const a_Value: Integer);
    procedure setDiasProrrogacao(const a_Value: Integer);
    procedure setMotivoAdmissao(const a_Value: Integer);
    procedure setMotivoContratacaoTemporaria(const a_Value: Integer);
    procedure setDataFimcontrato(const a_Value: TDate);
    procedure setFuncionarioSubstituido(const a_Value: String);
    procedure setProcessoAdmissao(const a_Value: String);
    procedure setPrimeiroEmprego(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Contratação Normal(1), Transferência de empresa do mesmo grupo econômico(2), Sucessão, incorporação ou fusão(3) ou Trabalhador Cedido(4)
    /// </summary>
    [NasajonSerializeAttribute('tipoadmissao')]
    property tipoadmissao: Integer read getTipoAdmissao write setTipoAdmissao;

    /// <summary>
/// CLT(1), RJU(2) ou RJP(3)
    /// </summary>
    [NasajonSerializeAttribute('regimetrabalhista')]
    property regimetrabalhista: Integer read getRegimeTrabalhista write setRegimeTrabalhista;

    /// <summary>
/// RGPS(1), RPPS(2) ou RPPE(3)
    /// </summary>
    [NasajonSerializeAttribute('regimeinss')]
    property regimeinss: Integer read getRegimeINSS write setRegimeINSS;

    /// <summary>
/// Rural(1) ou Urbana(2)
    /// </summary>
    [NasajonSerializeAttribute('atividade')]
    property atividade: Integer read getAtividade write setAtividade;

    /// <summary>
/// Indeterminado(1) ou Determinado(2)
    /// </summary>
    [NasajonSerializeAttribute('prazo')]
    property prazo: Integer read getPrazo write setPrazo;

    /// <summary>
/// Conforme tabela de vínculo da RAIS
    /// </summary>
    [NasajonSerializeAttribute('codigovinculo')]
    property codigovinculo: String read getCodigoVinculo write setCodigoVinculo;

    [NasajonSerializeAttribute('diasexperiencia')]
    property diasexperiencia: Integer read getDiasExperiencia write setDiasExperiencia;

    [NasajonSerializeAttribute('diasprorrogacao')]
    property diasprorrogacao: Integer read getDiasProrrogacao write setDiasProrrogacao;

    /// <summary>
/// Normal(1), Ação Fiscal(2) ou Decisão Judicial(3)
    /// </summary>
    [NasajonSerializeAttribute('motivoadmissao')]
    property motivoadmissao: Integer read getMotivoAdmissao write setMotivoAdmissao;

    /// <summary>
/// Substituição de Pessoal(1) ou Acréscimo Extraordinário de Serviço(2)
    /// </summary>
    [NasajonSerializeAttribute('motivocontratacaotemporaria')]
    property motivocontratacaotemporaria: Integer read getMotivoContratacaoTemporaria write setMotivoContratacaoTemporaria;

    [NasajonSerializeAttribute('datafimcontrato')]
    property datafimcontrato: TDate read getDataFimcontrato write setDataFimcontrato;

    [NasajonSerializeAttribute('funcionariosubstituido')]
    property funcionariosubstituido: String read getFuncionarioSubstituido write setFuncionarioSubstituido;

    [NasajonSerializeAttribute('processoadmissao')]
    property processoadmissao: String read getProcessoAdmissao write setProcessoAdmissao;

    [NasajonSerializeAttribute('primeiroemprego')]
    property primeiroemprego: Boolean read getPrimeiroEmprego write setPrimeiroEmprego;

    

end;

type TFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcionario: String;
    var m_Empresa: String;
    

    function getFuncionario(): String;
    function getEmpresa(): String;
    

    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TFuncionarioNovo.getIdFuncionario: String;
begin
  Result := Self.m_IdFuncionario;
end;

procedure TFuncionarioNovo.setIdFuncionario(const a_Value: String);
begin
  Self.m_IdFuncionario := a_Value;
end;

function TFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TFuncionarioNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TFuncionarioNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TFuncionarioNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TFuncionarioNovo.getCodigoCategoria: String;
begin
  Result := Self.m_CodigoCategoria;
end;

procedure TFuncionarioNovo.setCodigoCategoria(const a_Value: String);
begin
  Self.m_CodigoCategoria := a_Value;
end;

function TFuncionarioNovo.getCPF: String;
begin
  Result := Self.m_CPF;
end;

procedure TFuncionarioNovo.setCPF(const a_Value: String);
begin
  Self.m_CPF := a_Value;
end;

function TFuncionarioNovo.getNIS: String;
begin
  Result := Self.m_NIS;
end;

procedure TFuncionarioNovo.setNIS(const a_Value: String);
begin
  Self.m_NIS := a_Value;
end;

function TFuncionarioNovo.getDataAdmissao: TDate;
begin
  Result := Self.m_DataAdmissao;
end;

procedure TFuncionarioNovo.setDataAdmissao(const a_Value: TDate);
begin
  Self.m_DataAdmissao := a_Value;
end;

function TFuncionarioNovo.getUnidadeSalario: Integer;
begin
  Result := Self.m_UnidadeSalario;
end;

procedure TFuncionarioNovo.setUnidadeSalario(const a_Value: Integer);
begin
  Self.m_UnidadeSalario := a_Value;
end;

function TFuncionarioNovo.getSexo: Integer;
begin
  Result := Self.m_Sexo;
end;

procedure TFuncionarioNovo.setSexo(const a_Value: Integer);
begin
  Self.m_Sexo := a_Value;
end;

function TFuncionarioNovo.getCodigoCBO: String;
begin
  Result := Self.m_CodigoCBO;
end;

procedure TFuncionarioNovo.setCodigoCBO(const a_Value: String);
begin
  Self.m_CodigoCBO := a_Value;
end;

destructor TFuncionarioNovo.Destroy;
begin

end;

function TFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'FuncionarioNovo';
end;

function TFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosGerais.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosGerais.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosGerais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosGerais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosGerais.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TFuncionarioAlterarDadosGerais.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TFuncionarioAlterarDadosGerais.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TFuncionarioAlterarDadosGerais.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TFuncionarioAlterarDadosGerais.getCodigoCategoria: String;
begin
  Result := Self.m_CodigoCategoria;
end;

procedure TFuncionarioAlterarDadosGerais.setCodigoCategoria(const a_Value: String);
begin
  Self.m_CodigoCategoria := a_Value;
end;

function TFuncionarioAlterarDadosGerais.getCPF: String;
begin
  Result := Self.m_CPF;
end;

procedure TFuncionarioAlterarDadosGerais.setCPF(const a_Value: String);
begin
  Self.m_CPF := a_Value;
end;

function TFuncionarioAlterarDadosGerais.getNIS: String;
begin
  Result := Self.m_NIS;
end;

procedure TFuncionarioAlterarDadosGerais.setNIS(const a_Value: String);
begin
  Self.m_NIS := a_Value;
end;

function TFuncionarioAlterarDadosGerais.getDataAdmissao: TDate;
begin
  Result := Self.m_DataAdmissao;
end;

procedure TFuncionarioAlterarDadosGerais.setDataAdmissao(const a_Value: TDate);
begin
  Self.m_DataAdmissao := a_Value;
end;

function TFuncionarioAlterarDadosGerais.getUnidadeSalario: Integer;
begin
  Result := Self.m_UnidadeSalario;
end;

procedure TFuncionarioAlterarDadosGerais.setUnidadeSalario(const a_Value: Integer);
begin
  Self.m_UnidadeSalario := a_Value;
end;

function TFuncionarioAlterarDadosGerais.getSexo: Integer;
begin
  Result := Self.m_Sexo;
end;

procedure TFuncionarioAlterarDadosGerais.setSexo(const a_Value: Integer);
begin
  Self.m_Sexo := a_Value;
end;

function TFuncionarioAlterarDadosGerais.getCodigoCBO: String;
begin
  Result := Self.m_CodigoCBO;
end;

procedure TFuncionarioAlterarDadosGerais.setCodigoCBO(const a_Value: String);
begin
  Self.m_CodigoCBO := a_Value;
end;

destructor TFuncionarioAlterarDadosGerais.Destroy;
begin

end;

function TFuncionarioAlterarDadosGerais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosGerais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosGerais.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosGerais';
end;

function TFuncionarioAlterarDadosGerais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosGerais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarEstabelecimento.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarEstabelecimento.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarEstabelecimento.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TFuncionarioAlterarEstabelecimento.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TFuncionarioAlterarEstabelecimento.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarEstabelecimento.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TFuncionarioAlterarEstabelecimento.Destroy;
begin

end;

function TFuncionarioAlterarEstabelecimento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarEstabelecimento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarEstabelecimento.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarEstabelecimento';
end;

function TFuncionarioAlterarEstabelecimento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarEstabelecimento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDepartamento.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDepartamento.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDepartamento.getDepartamento: String;
begin
  Result := Self.m_Departamento;
end;

procedure TFuncionarioAlterarDepartamento.setDepartamento(const a_Value: String);
begin
  Self.m_Departamento := a_Value;
end;

function TFuncionarioAlterarDepartamento.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TFuncionarioAlterarDepartamento.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TFuncionarioAlterarDepartamento.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDepartamento.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TFuncionarioAlterarDepartamento.Destroy;
begin

end;

function TFuncionarioAlterarDepartamento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDepartamento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDepartamento.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDepartamento';
end;

function TFuncionarioAlterarDepartamento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDepartamento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarHorario.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarHorario.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarHorario.getHorario: String;
begin
  Result := Self.m_Horario;
end;

procedure TFuncionarioAlterarHorario.setHorario(const a_Value: String);
begin
  Self.m_Horario := a_Value;
end;

function TFuncionarioAlterarHorario.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarHorario.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TFuncionarioAlterarHorario.Destroy;
begin

end;

function TFuncionarioAlterarHorario.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarHorario.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarHorario.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarHorario';
end;

function TFuncionarioAlterarHorario.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarHorario.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarSindicato.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarSindicato.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarSindicato.getSindicato: String;
begin
  Result := Self.m_Sindicato;
end;

procedure TFuncionarioAlterarSindicato.setSindicato(const a_Value: String);
begin
  Self.m_Sindicato := a_Value;
end;

function TFuncionarioAlterarSindicato.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarSindicato.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TFuncionarioAlterarSindicato.Destroy;
begin

end;

function TFuncionarioAlterarSindicato.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarSindicato.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarSindicato.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarSindicato';
end;

function TFuncionarioAlterarSindicato.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarSindicato.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarLotacao.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarLotacao.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarLotacao.getLotacao: String;
begin
  Result := Self.m_Lotacao;
end;

procedure TFuncionarioAlterarLotacao.setLotacao(const a_Value: String);
begin
  Self.m_Lotacao := a_Value;
end;

function TFuncionarioAlterarLotacao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarLotacao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TFuncionarioAlterarLotacao.Destroy;
begin

end;

function TFuncionarioAlterarLotacao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarLotacao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarLotacao.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarLotacao';
end;

function TFuncionarioAlterarLotacao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarLotacao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarCargoNivel.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarCargoNivel.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarCargoNivel.getNivelCargo: String;
begin
  Result := Self.m_NivelCargo;
end;

procedure TFuncionarioAlterarCargoNivel.setNivelCargo(const a_Value: String);
begin
  Self.m_NivelCargo := a_Value;
end;

function TFuncionarioAlterarCargoNivel.getCargo: String;
begin
  Result := Self.m_Cargo;
end;

procedure TFuncionarioAlterarCargoNivel.setCargo(const a_Value: String);
begin
  Self.m_Cargo := a_Value;
end;

function TFuncionarioAlterarCargoNivel.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarCargoNivel.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TFuncionarioAlterarCargoNivel.Destroy;
begin

end;

function TFuncionarioAlterarCargoNivel.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarCargoNivel.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarCargoNivel.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarCargoNivel';
end;

function TFuncionarioAlterarCargoNivel.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarCargoNivel.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosEndereco.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosEndereco.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosEndereco.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosEndereco.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosEndereco.getTipoLogradouro: String;
begin
  Result := Self.m_TipoLogradouro;
end;

procedure TFuncionarioAlterarDadosEndereco.setTipoLogradouro(const a_Value: String);
begin
  Self.m_TipoLogradouro := a_Value;
end;

function TFuncionarioAlterarDadosEndereco.getCodigoMunicipio: String;
begin
  Result := Self.m_CodigoMunicipio;
end;

procedure TFuncionarioAlterarDadosEndereco.setCodigoMunicipio(const a_Value: String);
begin
  Self.m_CodigoMunicipio := a_Value;
end;

function TFuncionarioAlterarDadosEndereco.getCodigoPais: String;
begin
  Result := Self.m_CodigoPais;
end;

procedure TFuncionarioAlterarDadosEndereco.setCodigoPais(const a_Value: String);
begin
  Self.m_CodigoPais := a_Value;
end;

function TFuncionarioAlterarDadosEndereco.getLogradouro: String;
begin
  Result := Self.m_Logradouro;
end;

procedure TFuncionarioAlterarDadosEndereco.setLogradouro(const a_Value: String);
begin
  Self.m_Logradouro := a_Value;
end;

function TFuncionarioAlterarDadosEndereco.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFuncionarioAlterarDadosEndereco.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFuncionarioAlterarDadosEndereco.getComplemento: String;
begin
  Result := Self.m_Complemento;
end;

procedure TFuncionarioAlterarDadosEndereco.setComplemento(const a_Value: String);
begin
  Self.m_Complemento := a_Value;
end;

function TFuncionarioAlterarDadosEndereco.getBairro: String;
begin
  Result := Self.m_Bairro;
end;

procedure TFuncionarioAlterarDadosEndereco.setBairro(const a_Value: String);
begin
  Self.m_Bairro := a_Value;
end;

function TFuncionarioAlterarDadosEndereco.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TFuncionarioAlterarDadosEndereco.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TFuncionarioAlterarDadosEndereco.getCEP: String;
begin
  Result := Self.m_CEP;
end;

procedure TFuncionarioAlterarDadosEndereco.setCEP(const a_Value: String);
begin
  Self.m_CEP := a_Value;
end;

function TFuncionarioAlterarDadosEndereco.getDDD: String;
begin
  Result := Self.m_DDD;
end;

procedure TFuncionarioAlterarDadosEndereco.setDDD(const a_Value: String);
begin
  Self.m_DDD := a_Value;
end;

function TFuncionarioAlterarDadosEndereco.getTelefone: String;
begin
  Result := Self.m_Telefone;
end;

procedure TFuncionarioAlterarDadosEndereco.setTelefone(const a_Value: String);
begin
  Self.m_Telefone := a_Value;
end;

destructor TFuncionarioAlterarDadosEndereco.Destroy;
begin

end;

function TFuncionarioAlterarDadosEndereco.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosEndereco.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosEndereco.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosEndereco';
end;

function TFuncionarioAlterarDadosEndereco.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosEndereco.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioSolicitacaoAlteracaoEndereco.getColaborador: String;
begin
  Result := Self.m_Colaborador;
end;

procedure TFuncionarioSolicitacaoAlteracaoEndereco.setColaborador(const a_Value: String);
begin
  Self.m_Colaborador := a_Value;
end;

function TFuncionarioSolicitacaoAlteracaoEndereco.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioSolicitacaoAlteracaoEndereco.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioSolicitacaoAlteracaoEndereco.getNovo: TSolicitacoesAlteracaoEndereco;
begin
  if not Assigned(Self.m_Novo)
    then Self.m_Novo := TSolicitacoesAlteracaoEndereco.Create();
  Result := Self.m_Novo;
end;

procedure TFuncionarioSolicitacaoAlteracaoEndereco.setNovo(const a_Value: TSolicitacoesAlteracaoEndereco);
begin
  Self.m_Novo := a_Value;
end;

function TFuncionarioSolicitacaoAlteracaoEndereco.getAntigo: TSolicitacoesAlteracaoEndereco;
begin
  if not Assigned(Self.m_Antigo)
    then Self.m_Antigo := TSolicitacoesAlteracaoEndereco.Create();
  Result := Self.m_Antigo;
end;

procedure TFuncionarioSolicitacaoAlteracaoEndereco.setAntigo(const a_Value: TSolicitacoesAlteracaoEndereco);
begin
  Self.m_Antigo := a_Value;
end;

destructor TFuncionarioSolicitacaoAlteracaoEndereco.Destroy;
begin
  Self.Novo.Free();  Self.Antigo.Free();
end;

function TFuncionarioSolicitacaoAlteracaoEndereco.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioSolicitacaoAlteracaoEndereco.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioSolicitacaoAlteracaoEndereco.getNameAPI(): String;
begin
  Result := 'FuncionarioSolicitacaoAlteracaoEndereco';
end;

function TFuncionarioSolicitacaoAlteracaoEndereco.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioSolicitacaoAlteracaoEndereco.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosRecebimentoSalario.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosRecebimentoSalario.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosRecebimentoSalario.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosRecebimentoSalario.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosRecebimentoSalario.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TFuncionarioAlterarDadosRecebimentoSalario.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TFuncionarioAlterarDadosRecebimentoSalario.getNumeroConta: String;
begin
  Result := Self.m_NumeroConta;
end;

procedure TFuncionarioAlterarDadosRecebimentoSalario.setNumeroConta(const a_Value: String);
begin
  Self.m_NumeroConta := a_Value;
end;

function TFuncionarioAlterarDadosRecebimentoSalario.getDigitoVerificador: String;
begin
  Result := Self.m_DigitoVerificador;
end;

procedure TFuncionarioAlterarDadosRecebimentoSalario.setDigitoVerificador(const a_Value: String);
begin
  Self.m_DigitoVerificador := a_Value;
end;

function TFuncionarioAlterarDadosRecebimentoSalario.getAgencia: String;
begin
  Result := Self.m_Agencia;
end;

procedure TFuncionarioAlterarDadosRecebimentoSalario.setAgencia(const a_Value: String);
begin
  Self.m_Agencia := a_Value;
end;

function TFuncionarioAlterarDadosRecebimentoSalario.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TFuncionarioAlterarDadosRecebimentoSalario.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

destructor TFuncionarioAlterarDadosRecebimentoSalario.Destroy;
begin

end;

function TFuncionarioAlterarDadosRecebimentoSalario.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosRecebimentoSalario.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosRecebimentoSalario.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosRecebimentoSalario';
end;

function TFuncionarioAlterarDadosRecebimentoSalario.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosRecebimentoSalario.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosRescisao.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosRescisao.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosRescisao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosRescisao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosRescisao.getDataRescisao: TDate;
begin
  Result := Self.m_DataRescisao;
end;

procedure TFuncionarioAlterarDadosRescisao.setDataRescisao(const a_Value: TDate);
begin
  Self.m_DataRescisao := a_Value;
end;

function TFuncionarioAlterarDadosRescisao.getNumeroRecibo: String;
begin
  Result := Self.m_NumeroRecibo;
end;

procedure TFuncionarioAlterarDadosRescisao.setNumeroRecibo(const a_Value: String);
begin
  Self.m_NumeroRecibo := a_Value;
end;

function TFuncionarioAlterarDadosRescisao.getCodigoMotivo: String;
begin
  Result := Self.m_CodigoMotivo;
end;

procedure TFuncionarioAlterarDadosRescisao.setCodigoMotivo(const a_Value: String);
begin
  Self.m_CodigoMotivo := a_Value;
end;

function TFuncionarioAlterarDadosRescisao.getFGTSMesAnteriorRecolhido: Boolean;
begin
  Result := Self.m_FGTSMesAnteriorRecolhido;
end;

procedure TFuncionarioAlterarDadosRescisao.setFGTSMesAnteriorRecolhido(const a_Value: Boolean);
begin
  Self.m_FGTSMesAnteriorRecolhido := a_Value;
end;

function TFuncionarioAlterarDadosRescisao.getAvisoIndenizadoPago: Boolean;
begin
  Result := Self.m_AvisoIndenizadoPago;
end;

procedure TFuncionarioAlterarDadosRescisao.setAvisoIndenizadoPago(const a_Value: Boolean);
begin
  Self.m_AvisoIndenizadoPago := a_Value;
end;

function TFuncionarioAlterarDadosRescisao.getTinhaEmpregoDuranteAvisoPrevio: Boolean;
begin
  Result := Self.m_TinhaEmpregoDuranteAvisoPrevio;
end;

procedure TFuncionarioAlterarDadosRescisao.setTinhaEmpregoDuranteAvisoPrevio(const a_Value: Boolean);
begin
  Self.m_TinhaEmpregoDuranteAvisoPrevio := a_Value;
end;

function TFuncionarioAlterarDadosRescisao.getJornadaCumpridaNaSemanaDaRescisao: Boolean;
begin
  Result := Self.m_JornadaCumpridaNaSemanaDaRescisao;
end;

procedure TFuncionarioAlterarDadosRescisao.setJornadaCumpridaNaSemanaDaRescisao(const a_Value: Boolean);
begin
  Self.m_JornadaCumpridaNaSemanaDaRescisao := a_Value;
end;

function TFuncionarioAlterarDadosRescisao.getJornadaSabadoCompensadaNaSemanaDaRescisao: Boolean;
begin
  Result := Self.m_JornadaSabadoCompensadaNaSemanaDaRescisao;
end;

procedure TFuncionarioAlterarDadosRescisao.setJornadaSabadoCompensadaNaSemanaDaRescisao(const a_Value: Boolean);
begin
  Self.m_JornadaSabadoCompensadaNaSemanaDaRescisao := a_Value;
end;

function TFuncionarioAlterarDadosRescisao.getDataProjecaoAvisoPrevioIndenizado: TDate;
begin
  Result := Self.m_DataProjecaoAvisoPrevioIndenizado;
end;

procedure TFuncionarioAlterarDadosRescisao.setDataProjecaoAvisoPrevioIndenizado(const a_Value: TDate);
begin
  Self.m_DataProjecaoAvisoPrevioIndenizado := a_Value;
end;

function TFuncionarioAlterarDadosRescisao.getProcesso: String;
begin
  Result := Self.m_Processo;
end;

procedure TFuncionarioAlterarDadosRescisao.setProcesso(const a_Value: String);
begin
  Self.m_Processo := a_Value;
end;

destructor TFuncionarioAlterarDadosRescisao.Destroy;
begin

end;

function TFuncionarioAlterarDadosRescisao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosRescisao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosRescisao.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosRescisao';
end;

function TFuncionarioAlterarDadosRescisao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosRescisao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosReintegracao.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosReintegracao.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosReintegracao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosReintegracao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosReintegracao.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TFuncionarioAlterarDadosReintegracao.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TFuncionarioAlterarDadosReintegracao.getDataRetroativa: TDate;
begin
  Result := Self.m_DataRetroativa;
end;

procedure TFuncionarioAlterarDadosReintegracao.setDataRetroativa(const a_Value: TDate);
begin
  Self.m_DataRetroativa := a_Value;
end;

function TFuncionarioAlterarDadosReintegracao.getDataRetorno: TDate;
begin
  Result := Self.m_DataRetorno;
end;

procedure TFuncionarioAlterarDadosReintegracao.setDataRetorno(const a_Value: TDate);
begin
  Self.m_DataRetorno := a_Value;
end;

function TFuncionarioAlterarDadosReintegracao.getProcesso: String;
begin
  Result := Self.m_Processo;
end;

procedure TFuncionarioAlterarDadosReintegracao.setProcesso(const a_Value: String);
begin
  Self.m_Processo := a_Value;
end;

function TFuncionarioAlterarDadosReintegracao.getNumeroLeiAnistia: String;
begin
  Result := Self.m_NumeroLeiAnistia;
end;

procedure TFuncionarioAlterarDadosReintegracao.setNumeroLeiAnistia(const a_Value: String);
begin
  Self.m_NumeroLeiAnistia := a_Value;
end;

destructor TFuncionarioAlterarDadosReintegracao.Destroy;
begin

end;

function TFuncionarioAlterarDadosReintegracao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosReintegracao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosReintegracao.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosReintegracao';
end;

function TFuncionarioAlterarDadosReintegracao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosReintegracao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosNascimento.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosNascimento.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosNascimento.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosNascimento.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosNascimento.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TFuncionarioAlterarDadosNascimento.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TFuncionarioAlterarDadosNascimento.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TFuncionarioAlterarDadosNascimento.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TFuncionarioAlterarDadosNascimento.getCodigoMunicipio: String;
begin
  Result := Self.m_CodigoMunicipio;
end;

procedure TFuncionarioAlterarDadosNascimento.setCodigoMunicipio(const a_Value: String);
begin
  Self.m_CodigoMunicipio := a_Value;
end;

function TFuncionarioAlterarDadosNascimento.getCodigoPais: String;
begin
  Result := Self.m_CodigoPais;
end;

procedure TFuncionarioAlterarDadosNascimento.setCodigoPais(const a_Value: String);
begin
  Self.m_CodigoPais := a_Value;
end;

function TFuncionarioAlterarDadosNascimento.getNomePai: String;
begin
  Result := Self.m_NomePai;
end;

procedure TFuncionarioAlterarDadosNascimento.setNomePai(const a_Value: String);
begin
  Self.m_NomePai := a_Value;
end;

function TFuncionarioAlterarDadosNascimento.getNomeMae: String;
begin
  Result := Self.m_NomeMae;
end;

procedure TFuncionarioAlterarDadosNascimento.setNomeMae(const a_Value: String);
begin
  Self.m_NomeMae := a_Value;
end;

function TFuncionarioAlterarDadosNascimento.getDataNascimento: TDate;
begin
  Result := Self.m_DataNascimento;
end;

procedure TFuncionarioAlterarDadosNascimento.setDataNascimento(const a_Value: TDate);
begin
  Self.m_DataNascimento := a_Value;
end;

destructor TFuncionarioAlterarDadosNascimento.Destroy;
begin

end;

function TFuncionarioAlterarDadosNascimento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosNascimento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosNascimento.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosNascimento';
end;

function TFuncionarioAlterarDadosNascimento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosNascimento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosCarteiraTrabalho.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosCarteiraTrabalho.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraTrabalho.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosCarteiraTrabalho.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraTrabalho.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFuncionarioAlterarDadosCarteiraTrabalho.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraTrabalho.getSerie: String;
begin
  Result := Self.m_Serie;
end;

procedure TFuncionarioAlterarDadosCarteiraTrabalho.setSerie(const a_Value: String);
begin
  Self.m_Serie := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraTrabalho.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TFuncionarioAlterarDadosCarteiraTrabalho.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraTrabalho.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TFuncionarioAlterarDadosCarteiraTrabalho.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

destructor TFuncionarioAlterarDadosCarteiraTrabalho.Destroy;
begin

end;

function TFuncionarioAlterarDadosCarteiraTrabalho.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosCarteiraTrabalho.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosCarteiraTrabalho.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosCarteiraTrabalho';
end;

function TFuncionarioAlterarDadosCarteiraTrabalho.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosCarteiraTrabalho.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosNacionalidade.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosNacionalidade.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosNacionalidade.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosNacionalidade.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosNacionalidade.getCodigoPais: String;
begin
  Result := Self.m_CodigoPais;
end;

procedure TFuncionarioAlterarDadosNacionalidade.setCodigoPais(const a_Value: String);
begin
  Self.m_CodigoPais := a_Value;
end;

destructor TFuncionarioAlterarDadosNacionalidade.Destroy;
begin

end;

function TFuncionarioAlterarDadosNacionalidade.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosNacionalidade.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosNacionalidade.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosNacionalidade';
end;

function TFuncionarioAlterarDadosNacionalidade.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosNacionalidade.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosFGTS.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosFGTS.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosFGTS.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosFGTS.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosFGTS.getNumeroConta: String;
begin
  Result := Self.m_NumeroConta;
end;

procedure TFuncionarioAlterarDadosFGTS.setNumeroConta(const a_Value: String);
begin
  Self.m_NumeroConta := a_Value;
end;

function TFuncionarioAlterarDadosFGTS.getOptante: Boolean;
begin
  Result := Self.m_Optante;
end;

procedure TFuncionarioAlterarDadosFGTS.setOptante(const a_Value: Boolean);
begin
  Self.m_Optante := a_Value;
end;

function TFuncionarioAlterarDadosFGTS.getDataOpcao: TDate;
begin
  Result := Self.m_DataOpcao;
end;

procedure TFuncionarioAlterarDadosFGTS.setDataOpcao(const a_Value: TDate);
begin
  Self.m_DataOpcao := a_Value;
end;

function TFuncionarioAlterarDadosFGTS.getSaldo: Currency;
begin
  Result := Self.m_Saldo;
end;

procedure TFuncionarioAlterarDadosFGTS.setSaldo(const a_Value: Currency);
begin
  Self.m_Saldo := a_Value;
end;

destructor TFuncionarioAlterarDadosFGTS.Destroy;
begin

end;

function TFuncionarioAlterarDadosFGTS.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosFGTS.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosFGTS.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosFGTS';
end;

function TFuncionarioAlterarDadosFGTS.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosFGTS.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosRIC.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosRIC.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosRIC.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosRIC.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosRIC.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFuncionarioAlterarDadosRIC.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFuncionarioAlterarDadosRIC.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TFuncionarioAlterarDadosRIC.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TFuncionarioAlterarDadosRIC.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TFuncionarioAlterarDadosRIC.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TFuncionarioAlterarDadosRIC.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TFuncionarioAlterarDadosRIC.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TFuncionarioAlterarDadosRIC.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TFuncionarioAlterarDadosRIC.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

destructor TFuncionarioAlterarDadosRIC.Destroy;
begin

end;

function TFuncionarioAlterarDadosRIC.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosRIC.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosRIC.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosRIC';
end;

function TFuncionarioAlterarDadosRIC.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosRIC.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosCarteiraIdentidade.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosCarteiraIdentidade.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraIdentidade.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosCarteiraIdentidade.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraIdentidade.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFuncionarioAlterarDadosCarteiraIdentidade.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraIdentidade.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TFuncionarioAlterarDadosCarteiraIdentidade.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraIdentidade.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TFuncionarioAlterarDadosCarteiraIdentidade.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraIdentidade.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TFuncionarioAlterarDadosCarteiraIdentidade.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

destructor TFuncionarioAlterarDadosCarteiraIdentidade.Destroy;
begin

end;

function TFuncionarioAlterarDadosCarteiraIdentidade.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosCarteiraIdentidade.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosCarteiraIdentidade.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosCarteiraIdentidade';
end;

function TFuncionarioAlterarDadosCarteiraIdentidade.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosCarteiraIdentidade.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosOrdemClasse.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosOrdemClasse.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosOrdemClasse.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosOrdemClasse.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosOrdemClasse.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFuncionarioAlterarDadosOrdemClasse.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFuncionarioAlterarDadosOrdemClasse.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TFuncionarioAlterarDadosOrdemClasse.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TFuncionarioAlterarDadosOrdemClasse.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TFuncionarioAlterarDadosOrdemClasse.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

function TFuncionarioAlterarDadosOrdemClasse.getDataValidade: TDate;
begin
  Result := Self.m_DataValidade;
end;

procedure TFuncionarioAlterarDadosOrdemClasse.setDataValidade(const a_Value: TDate);
begin
  Self.m_DataValidade := a_Value;
end;

destructor TFuncionarioAlterarDadosOrdemClasse.Destroy;
begin

end;

function TFuncionarioAlterarDadosOrdemClasse.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosOrdemClasse.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosOrdemClasse.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosOrdemClasse';
end;

function TFuncionarioAlterarDadosOrdemClasse.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosOrdemClasse.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosCarteiraHablilitacao.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosCarteiraHablilitacao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFuncionarioAlterarDadosCarteiraHablilitacao.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TFuncionarioAlterarDadosCarteiraHablilitacao.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TFuncionarioAlterarDadosCarteiraHablilitacao.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.getDataValidade: TDate;
begin
  Result := Self.m_DataValidade;
end;

procedure TFuncionarioAlterarDadosCarteiraHablilitacao.setDataValidade(const a_Value: TDate);
begin
  Self.m_DataValidade := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.getDataPrimeiraHabilitacao: TDate;
begin
  Result := Self.m_DataPrimeiraHabilitacao;
end;

procedure TFuncionarioAlterarDadosCarteiraHablilitacao.setDataPrimeiraHabilitacao(const a_Value: TDate);
begin
  Self.m_DataPrimeiraHabilitacao := a_Value;
end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.getCategoria: Integer;
begin
  Result := Self.m_Categoria;
end;

procedure TFuncionarioAlterarDadosCarteiraHablilitacao.setCategoria(const a_Value: Integer);
begin
  Self.m_Categoria := a_Value;
end;

destructor TFuncionarioAlterarDadosCarteiraHablilitacao.Destroy;
begin

end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosCarteiraHablilitacao';
end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosCarteiraHablilitacao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosPassaporte.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosPassaporte.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosPassaporte.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosPassaporte.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosPassaporte.getCodigoPaisEmissor: String;
begin
  Result := Self.m_CodigoPaisEmissor;
end;

procedure TFuncionarioAlterarDadosPassaporte.setCodigoPaisEmissor(const a_Value: String);
begin
  Self.m_CodigoPaisEmissor := a_Value;
end;

function TFuncionarioAlterarDadosPassaporte.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFuncionarioAlterarDadosPassaporte.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFuncionarioAlterarDadosPassaporte.getOrgaoEmissor: String;
begin
  Result := Self.m_OrgaoEmissor;
end;

procedure TFuncionarioAlterarDadosPassaporte.setOrgaoEmissor(const a_Value: String);
begin
  Self.m_OrgaoEmissor := a_Value;
end;

function TFuncionarioAlterarDadosPassaporte.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TFuncionarioAlterarDadosPassaporte.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TFuncionarioAlterarDadosPassaporte.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TFuncionarioAlterarDadosPassaporte.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

function TFuncionarioAlterarDadosPassaporte.getDataValidade: TDate;
begin
  Result := Self.m_DataValidade;
end;

procedure TFuncionarioAlterarDadosPassaporte.setDataValidade(const a_Value: TDate);
begin
  Self.m_DataValidade := a_Value;
end;

destructor TFuncionarioAlterarDadosPassaporte.Destroy;
begin

end;

function TFuncionarioAlterarDadosPassaporte.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosPassaporte.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosPassaporte.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosPassaporte';
end;

function TFuncionarioAlterarDadosPassaporte.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosPassaporte.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosTituloEleitor.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosTituloEleitor.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosTituloEleitor.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosTituloEleitor.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosTituloEleitor.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFuncionarioAlterarDadosTituloEleitor.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFuncionarioAlterarDadosTituloEleitor.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TFuncionarioAlterarDadosTituloEleitor.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TFuncionarioAlterarDadosTituloEleitor.getZona: Integer;
begin
  Result := Self.m_Zona;
end;

procedure TFuncionarioAlterarDadosTituloEleitor.setZona(const a_Value: Integer);
begin
  Self.m_Zona := a_Value;
end;

function TFuncionarioAlterarDadosTituloEleitor.getSecao: Integer;
begin
  Result := Self.m_Secao;
end;

procedure TFuncionarioAlterarDadosTituloEleitor.setSecao(const a_Value: Integer);
begin
  Self.m_Secao := a_Value;
end;

destructor TFuncionarioAlterarDadosTituloEleitor.Destroy;
begin

end;

function TFuncionarioAlterarDadosTituloEleitor.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosTituloEleitor.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosTituloEleitor.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosTituloEleitor';
end;

function TFuncionarioAlterarDadosTituloEleitor.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosTituloEleitor.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosCertidao.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosCertidao.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosCertidao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosCertidao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosCertidao.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFuncionarioAlterarDadosCertidao.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFuncionarioAlterarDadosCertidao.getLivro: String;
begin
  Result := Self.m_Livro;
end;

procedure TFuncionarioAlterarDadosCertidao.setLivro(const a_Value: String);
begin
  Self.m_Livro := a_Value;
end;

function TFuncionarioAlterarDadosCertidao.getFolha: String;
begin
  Result := Self.m_Folha;
end;

procedure TFuncionarioAlterarDadosCertidao.setFolha(const a_Value: String);
begin
  Self.m_Folha := a_Value;
end;

function TFuncionarioAlterarDadosCertidao.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TFuncionarioAlterarDadosCertidao.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TFuncionarioAlterarDadosCertidao.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TFuncionarioAlterarDadosCertidao.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TFuncionarioAlterarDadosCertidao.getCartorio: String;
begin
  Result := Self.m_Cartorio;
end;

procedure TFuncionarioAlterarDadosCertidao.setCartorio(const a_Value: String);
begin
  Self.m_Cartorio := a_Value;
end;

function TFuncionarioAlterarDadosCertidao.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TFuncionarioAlterarDadosCertidao.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

function TFuncionarioAlterarDadosCertidao.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TFuncionarioAlterarDadosCertidao.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

destructor TFuncionarioAlterarDadosCertidao.Destroy;
begin

end;

function TFuncionarioAlterarDadosCertidao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosCertidao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosCertidao.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosCertidao';
end;

function TFuncionarioAlterarDadosCertidao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosCertidao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosCertificadoReservista.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosCertificadoReservista.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosCertificadoReservista.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosCertificadoReservista.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosCertificadoReservista.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFuncionarioAlterarDadosCertificadoReservista.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TFuncionarioAlterarDadosCertificadoReservista.getSerie: String;
begin
  Result := Self.m_Serie;
end;

procedure TFuncionarioAlterarDadosCertificadoReservista.setSerie(const a_Value: String);
begin
  Self.m_Serie := a_Value;
end;

function TFuncionarioAlterarDadosCertificadoReservista.getDataExpedicao: TDate;
begin
  Result := Self.m_DataExpedicao;
end;

procedure TFuncionarioAlterarDadosCertificadoReservista.setDataExpedicao(const a_Value: TDate);
begin
  Self.m_DataExpedicao := a_Value;
end;

destructor TFuncionarioAlterarDadosCertificadoReservista.Destroy;
begin

end;

function TFuncionarioAlterarDadosCertificadoReservista.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosCertificadoReservista.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosCertificadoReservista.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosCertificadoReservista';
end;

function TFuncionarioAlterarDadosCertificadoReservista.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosCertificadoReservista.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosValeTransporte.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosValeTransporte.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosValeTransporte.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosValeTransporte.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosValeTransporte.getNumeroCartao: String;
begin
  Result := Self.m_NumeroCartao;
end;

procedure TFuncionarioAlterarDadosValeTransporte.setNumeroCartao(const a_Value: String);
begin
  Self.m_NumeroCartao := a_Value;
end;

function TFuncionarioAlterarDadosValeTransporte.getDiaSemanaComMeioVale: Integer;
begin
  Result := Self.m_DiaSemanaComMeioVale;
end;

procedure TFuncionarioAlterarDadosValeTransporte.setDiaSemanaComMeioVale(const a_Value: Integer);
begin
  Self.m_DiaSemanaComMeioVale := a_Value;
end;

destructor TFuncionarioAlterarDadosValeTransporte.Destroy;
begin

end;

function TFuncionarioAlterarDadosValeTransporte.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosValeTransporte.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosValeTransporte.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosValeTransporte';
end;

function TFuncionarioAlterarDadosValeTransporte.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosValeTransporte.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosEmpresaAnterior.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosEmpresaAnterior.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosEmpresaAnterior.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosEmpresaAnterior.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosEmpresaAnterior.getCNPJ: String;
begin
  Result := Self.m_CNPJ;
end;

procedure TFuncionarioAlterarDadosEmpresaAnterior.setCNPJ(const a_Value: String);
begin
  Self.m_CNPJ := a_Value;
end;

function TFuncionarioAlterarDadosEmpresaAnterior.getMatricula: String;
begin
  Result := Self.m_Matricula;
end;

procedure TFuncionarioAlterarDadosEmpresaAnterior.setMatricula(const a_Value: String);
begin
  Self.m_Matricula := a_Value;
end;

function TFuncionarioAlterarDadosEmpresaAnterior.getDataAdmissao: TDate;
begin
  Result := Self.m_DataAdmissao;
end;

procedure TFuncionarioAlterarDadosEmpresaAnterior.setDataAdmissao(const a_Value: TDate);
begin
  Self.m_DataAdmissao := a_Value;
end;

destructor TFuncionarioAlterarDadosEmpresaAnterior.Destroy;
begin

end;

function TFuncionarioAlterarDadosEmpresaAnterior.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosEmpresaAnterior.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosEmpresaAnterior.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosEmpresaAnterior';
end;

function TFuncionarioAlterarDadosEmpresaAnterior.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosEmpresaAnterior.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosEmpresaCedente.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosEmpresaCedente.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosEmpresaCedente.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosEmpresaCedente.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosEmpresaCedente.getCNPJ: String;
begin
  Result := Self.m_CNPJ;
end;

procedure TFuncionarioAlterarDadosEmpresaCedente.setCNPJ(const a_Value: String);
begin
  Self.m_CNPJ := a_Value;
end;

function TFuncionarioAlterarDadosEmpresaCedente.getMatricula: String;
begin
  Result := Self.m_Matricula;
end;

procedure TFuncionarioAlterarDadosEmpresaCedente.setMatricula(const a_Value: String);
begin
  Self.m_Matricula := a_Value;
end;

function TFuncionarioAlterarDadosEmpresaCedente.getDataAdmissao: TDate;
begin
  Result := Self.m_DataAdmissao;
end;

procedure TFuncionarioAlterarDadosEmpresaCedente.setDataAdmissao(const a_Value: TDate);
begin
  Self.m_DataAdmissao := a_Value;
end;

destructor TFuncionarioAlterarDadosEmpresaCedente.Destroy;
begin

end;

function TFuncionarioAlterarDadosEmpresaCedente.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosEmpresaCedente.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosEmpresaCedente.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosEmpresaCedente';
end;

function TFuncionarioAlterarDadosEmpresaCedente.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosEmpresaCedente.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosEmpresaSucessora.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosEmpresaSucessora.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosEmpresaSucessora.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosEmpresaSucessora.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosEmpresaSucessora.getCNPJ: String;
begin
  Result := Self.m_CNPJ;
end;

procedure TFuncionarioAlterarDadosEmpresaSucessora.setCNPJ(const a_Value: String);
begin
  Self.m_CNPJ := a_Value;
end;

destructor TFuncionarioAlterarDadosEmpresaSucessora.Destroy;
begin

end;

function TFuncionarioAlterarDadosEmpresaSucessora.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosEmpresaSucessora.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosEmpresaSucessora.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosEmpresaSucessora';
end;

function TFuncionarioAlterarDadosEmpresaSucessora.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosEmpresaSucessora.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosDeficiencia.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosDeficiencia.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosDeficiencia.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosDeficiencia.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosDeficiencia.getDeficienteIntelectual: Boolean;
begin
  Result := Self.m_DeficienteIntelectual;
end;

procedure TFuncionarioAlterarDadosDeficiencia.setDeficienteIntelectual(const a_Value: Boolean);
begin
  Self.m_DeficienteIntelectual := a_Value;
end;

function TFuncionarioAlterarDadosDeficiencia.getDeficienteMental: Boolean;
begin
  Result := Self.m_DeficienteMental;
end;

procedure TFuncionarioAlterarDadosDeficiencia.setDeficienteMental(const a_Value: Boolean);
begin
  Self.m_DeficienteMental := a_Value;
end;

function TFuncionarioAlterarDadosDeficiencia.getDeficienteAuditivo: Boolean;
begin
  Result := Self.m_DeficienteAuditivo;
end;

procedure TFuncionarioAlterarDadosDeficiencia.setDeficienteAuditivo(const a_Value: Boolean);
begin
  Self.m_DeficienteAuditivo := a_Value;
end;

function TFuncionarioAlterarDadosDeficiencia.getDeficienteVisual: Boolean;
begin
  Result := Self.m_DeficienteVisual;
end;

procedure TFuncionarioAlterarDadosDeficiencia.setDeficienteVisual(const a_Value: Boolean);
begin
  Self.m_DeficienteVisual := a_Value;
end;

function TFuncionarioAlterarDadosDeficiencia.getDeficienteFisico: Boolean;
begin
  Result := Self.m_DeficienteFisico;
end;

procedure TFuncionarioAlterarDadosDeficiencia.setDeficienteFisico(const a_Value: Boolean);
begin
  Self.m_DeficienteFisico := a_Value;
end;

function TFuncionarioAlterarDadosDeficiencia.getReabilitado: Boolean;
begin
  Result := Self.m_Reabilitado;
end;

procedure TFuncionarioAlterarDadosDeficiencia.setReabilitado(const a_Value: Boolean);
begin
  Self.m_Reabilitado := a_Value;
end;

destructor TFuncionarioAlterarDadosDeficiencia.Destroy;
begin

end;

function TFuncionarioAlterarDadosDeficiencia.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosDeficiencia.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosDeficiencia.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosDeficiencia';
end;

function TFuncionarioAlterarDadosDeficiencia.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosDeficiencia.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosEstrangeiro.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosEstrangeiro.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosEstrangeiro.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosEstrangeiro.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosEstrangeiro.getCasadoComBrasileiro: Boolean;
begin
  Result := Self.m_CasadoComBrasileiro;
end;

procedure TFuncionarioAlterarDadosEstrangeiro.setCasadoComBrasileiro(const a_Value: Boolean);
begin
  Self.m_CasadoComBrasileiro := a_Value;
end;

function TFuncionarioAlterarDadosEstrangeiro.getTemFilhoBrasileiro: Boolean;
begin
  Result := Self.m_TemFilhoBrasileiro;
end;

procedure TFuncionarioAlterarDadosEstrangeiro.setTemFilhoBrasileiro(const a_Value: Boolean);
begin
  Self.m_TemFilhoBrasileiro := a_Value;
end;

function TFuncionarioAlterarDadosEstrangeiro.getDataChegadaPais: TDate;
begin
  Result := Self.m_DataChegadaPais;
end;

procedure TFuncionarioAlterarDadosEstrangeiro.setDataChegadaPais(const a_Value: TDate);
begin
  Self.m_DataChegadaPais := a_Value;
end;

function TFuncionarioAlterarDadosEstrangeiro.getDataNaturalizacao: TDate;
begin
  Result := Self.m_DataNaturalizacao;
end;

procedure TFuncionarioAlterarDadosEstrangeiro.setDataNaturalizacao(const a_Value: TDate);
begin
  Self.m_DataNaturalizacao := a_Value;
end;

function TFuncionarioAlterarDadosEstrangeiro.getNumeroNaturalizacao: String;
begin
  Result := Self.m_NumeroNaturalizacao;
end;

procedure TFuncionarioAlterarDadosEstrangeiro.setNumeroNaturalizacao(const a_Value: String);
begin
  Self.m_NumeroNaturalizacao := a_Value;
end;

destructor TFuncionarioAlterarDadosEstrangeiro.Destroy;
begin

end;

function TFuncionarioAlterarDadosEstrangeiro.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosEstrangeiro.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosEstrangeiro.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosEstrangeiro';
end;

function TFuncionarioAlterarDadosEstrangeiro.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosEstrangeiro.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarIdentidadeNasajon.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarIdentidadeNasajon.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarIdentidadeNasajon.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarIdentidadeNasajon.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarIdentidadeNasajon.getIdentidade: String;
begin
  Result := Self.m_Identidade;
end;

procedure TFuncionarioAlterarIdentidadeNasajon.setIdentidade(const a_Value: String);
begin
  Self.m_Identidade := a_Value;
end;

destructor TFuncionarioAlterarIdentidadeNasajon.Destroy;
begin

end;

function TFuncionarioAlterarIdentidadeNasajon.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarIdentidadeNasajon.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarIdentidadeNasajon.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarIdentidadeNasajon';
end;

function TFuncionarioAlterarIdentidadeNasajon.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarIdentidadeNasajon.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.getOrdemCalculoINSSFolha: Integer;
begin
  Result := Self.m_OrdemCalculoINSSFolha;
end;

procedure TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.setOrdemCalculoINSSFolha(const a_Value: Integer);
begin
  Self.m_OrdemCalculoINSSFolha := a_Value;
end;

function TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.getOrdemCalculoINSSDecimoTerceiro: Integer;
begin
  Result := Self.m_OrdemCalculoINSSDecimoTerceiro;
end;

procedure TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.setOrdemCalculoINSSDecimoTerceiro(const a_Value: Integer);
begin
  Self.m_OrdemCalculoINSSDecimoTerceiro := a_Value;
end;

function TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.getTemVinculoComOutraEmpresa: Boolean;
begin
  Result := Self.m_TemVinculoComOutraEmpresa;
end;

procedure TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.setTemVinculoComOutraEmpresa(const a_Value: Boolean);
begin
  Self.m_TemVinculoComOutraEmpresa := a_Value;
end;

function TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.getMesesTrabalhadosOutrasEmpresas: Integer;
begin
  Result := Self.m_MesesTrabalhadosOutrasEmpresas;
end;

procedure TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.setMesesTrabalhadosOutrasEmpresas(const a_Value: Integer);
begin
  Self.m_MesesTrabalhadosOutrasEmpresas := a_Value;
end;

destructor TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.Destroy;
begin

end;

function TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosRecebimentoOutrasEmpresas';
end;

function TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosOutroVinculo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosOutroVinculo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosOutroVinculo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosOutroVinculo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosOutroVinculo.getOrdemCalculoDuploVinculo: Integer;
begin
  Result := Self.m_OrdemCalculoDuploVinculo;
end;

procedure TFuncionarioAlterarDadosOutroVinculo.setOrdemCalculoDuploVinculo(const a_Value: Integer);
begin
  Self.m_OrdemCalculoDuploVinculo := a_Value;
end;

function TFuncionarioAlterarDadosOutroVinculo.getMatriculaOutroVinculo: String;
begin
  Result := Self.m_MatriculaOutroVinculo;
end;

procedure TFuncionarioAlterarDadosOutroVinculo.setMatriculaOutroVinculo(const a_Value: String);
begin
  Self.m_MatriculaOutroVinculo := a_Value;
end;

destructor TFuncionarioAlterarDadosOutroVinculo.Destroy;
begin

end;

function TFuncionarioAlterarDadosOutroVinculo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosOutroVinculo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosOutroVinculo.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosOutroVinculo';
end;

function TFuncionarioAlterarDadosOutroVinculo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosOutroVinculo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosJornada.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosJornada.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosJornada.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosJornada.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosJornada.getQuantidademediahorassemanais: Integer;
begin
  Result := Self.m_Quantidademediahorassemanais;
end;

procedure TFuncionarioAlterarDadosJornada.setQuantidademediahorassemanais(const a_Value: Integer);
begin
  Self.m_Quantidademediahorassemanais := a_Value;
end;

function TFuncionarioAlterarDadosJornada.getRegimedeJornada: Integer;
begin
  Result := Self.m_RegimedeJornada;
end;

procedure TFuncionarioAlterarDadosJornada.setRegimedeJornada(const a_Value: Integer);
begin
  Self.m_RegimedeJornada := a_Value;
end;

function TFuncionarioAlterarDadosJornada.getJornadaReduzida: Boolean;
begin
  Result := Self.m_JornadaReduzida;
end;

procedure TFuncionarioAlterarDadosJornada.setJornadaReduzida(const a_Value: Boolean);
begin
  Self.m_JornadaReduzida := a_Value;
end;

function TFuncionarioAlterarDadosJornada.getNumeroHorasMensais: Integer;
begin
  Result := Self.m_NumeroHorasMensais;
end;

procedure TFuncionarioAlterarDadosJornada.setNumeroHorasMensais(const a_Value: Integer);
begin
  Self.m_NumeroHorasMensais := a_Value;
end;

function TFuncionarioAlterarDadosJornada.getNumeroDiasPeriodo: Integer;
begin
  Result := Self.m_NumeroDiasPeriodo;
end;

procedure TFuncionarioAlterarDadosJornada.setNumeroDiasPeriodo(const a_Value: Integer);
begin
  Self.m_NumeroDiasPeriodo := a_Value;
end;

destructor TFuncionarioAlterarDadosJornada.Destroy;
begin

end;

function TFuncionarioAlterarDadosJornada.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosJornada.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosJornada.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosJornada';
end;

function TFuncionarioAlterarDadosJornada.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosJornada.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarSalario.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarSalario.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarSalario.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarSalario.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarSalario.getSalarioFixo: Currency;
begin
  Result := Self.m_SalarioFixo;
end;

procedure TFuncionarioAlterarSalario.setSalarioFixo(const a_Value: Currency);
begin
  Self.m_SalarioFixo := a_Value;
end;

function TFuncionarioAlterarSalario.getUnidadeSalario: Integer;
begin
  Result := Self.m_UnidadeSalario;
end;

procedure TFuncionarioAlterarSalario.setUnidadeSalario(const a_Value: Integer);
begin
  Self.m_UnidadeSalario := a_Value;
end;

destructor TFuncionarioAlterarSalario.Destroy;
begin

end;

function TFuncionarioAlterarSalario.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarSalario.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarSalario.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarSalario';
end;

function TFuncionarioAlterarSalario.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarSalario.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosPessoais.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosPessoais.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosPessoais.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosPessoais.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosPessoais.getEstadoCivil: Integer;
begin
  Result := Self.m_EstadoCivil;
end;

procedure TFuncionarioAlterarDadosPessoais.setEstadoCivil(const a_Value: Integer);
begin
  Self.m_EstadoCivil := a_Value;
end;

function TFuncionarioAlterarDadosPessoais.getTipoSanguineo: Integer;
begin
  Result := Self.m_TipoSanguineo;
end;

procedure TFuncionarioAlterarDadosPessoais.setTipoSanguineo(const a_Value: Integer);
begin
  Self.m_TipoSanguineo := a_Value;
end;

function TFuncionarioAlterarDadosPessoais.getCodigoRaca: String;
begin
  Result := Self.m_CodigoRaca;
end;

procedure TFuncionarioAlterarDadosPessoais.setCodigoRaca(const a_Value: String);
begin
  Self.m_CodigoRaca := a_Value;
end;

function TFuncionarioAlterarDadosPessoais.getCodigoGrauInstrucao: String;
begin
  Result := Self.m_CodigoGrauInstrucao;
end;

procedure TFuncionarioAlterarDadosPessoais.setCodigoGrauInstrucao(const a_Value: String);
begin
  Self.m_CodigoGrauInstrucao := a_Value;
end;

destructor TFuncionarioAlterarDadosPessoais.Destroy;
begin

end;

function TFuncionarioAlterarDadosPessoais.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosPessoais.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosPessoais.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosPessoais';
end;

function TFuncionarioAlterarDadosPessoais.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosPessoais.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarMatriculaContribuinteIndividual.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarMatriculaContribuinteIndividual.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarMatriculaContribuinteIndividual.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarMatriculaContribuinteIndividual.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarMatriculaContribuinteIndividual.getContribuinteindividual: String;
begin
  Result := Self.m_Contribuinteindividual;
end;

procedure TFuncionarioAlterarMatriculaContribuinteIndividual.setContribuinteindividual(const a_Value: String);
begin
  Self.m_Contribuinteindividual := a_Value;
end;

destructor TFuncionarioAlterarMatriculaContribuinteIndividual.Destroy;
begin

end;

function TFuncionarioAlterarMatriculaContribuinteIndividual.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarMatriculaContribuinteIndividual.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarMatriculaContribuinteIndividual.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarMatriculaContribuinteIndividual';
end;

function TFuncionarioAlterarMatriculaContribuinteIndividual.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarMatriculaContribuinteIndividual.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosFerias.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosFerias.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosFerias.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosFerias.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosFerias.getDataInicioPeriodoAquisitivo: TDate;
begin
  Result := Self.m_DataInicioPeriodoAquisitivo;
end;

procedure TFuncionarioAlterarDadosFerias.setDataInicioPeriodoAquisitivo(const a_Value: TDate);
begin
  Self.m_DataInicioPeriodoAquisitivo := a_Value;
end;

function TFuncionarioAlterarDadosFerias.getDataProximasFerias: TDate;
begin
  Result := Self.m_DataProximasFerias;
end;

procedure TFuncionarioAlterarDadosFerias.setDataProximasFerias(const a_Value: TDate);
begin
  Self.m_DataProximasFerias := a_Value;
end;

function TFuncionarioAlterarDadosFerias.getSaldo: Integer;
begin
  Result := Self.m_Saldo;
end;

procedure TFuncionarioAlterarDadosFerias.setSaldo(const a_Value: Integer);
begin
  Self.m_Saldo := a_Value;
end;

destructor TFuncionarioAlterarDadosFerias.Destroy;
begin

end;

function TFuncionarioAlterarDadosFerias.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosFerias.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosFerias.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosFerias';
end;

function TFuncionarioAlterarDadosFerias.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosFerias.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarPercentualAdiantamento.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarPercentualAdiantamento.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarPercentualAdiantamento.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarPercentualAdiantamento.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarPercentualAdiantamento.getPercentual: Currency;
begin
  Result := Self.m_Percentual;
end;

procedure TFuncionarioAlterarPercentualAdiantamento.setPercentual(const a_Value: Currency);
begin
  Self.m_Percentual := a_Value;
end;

destructor TFuncionarioAlterarPercentualAdiantamento.Destroy;
begin

end;

function TFuncionarioAlterarPercentualAdiantamento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarPercentualAdiantamento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarPercentualAdiantamento.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarPercentualAdiantamento';
end;

function TFuncionarioAlterarPercentualAdiantamento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarPercentualAdiantamento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosProcessoIRRF.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosProcessoIRRF.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosProcessoIRRF.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosProcessoIRRF.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosProcessoIRRF.getProcesso: String;
begin
  Result := Self.m_Processo;
end;

procedure TFuncionarioAlterarDadosProcessoIRRF.setProcesso(const a_Value: String);
begin
  Self.m_Processo := a_Value;
end;

destructor TFuncionarioAlterarDadosProcessoIRRF.Destroy;
begin

end;

function TFuncionarioAlterarDadosProcessoIRRF.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosProcessoIRRF.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosProcessoIRRF.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosProcessoIRRF';
end;

function TFuncionarioAlterarDadosProcessoIRRF.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosProcessoIRRF.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosProcessoINSS.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosProcessoINSS.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosProcessoINSS.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosProcessoINSS.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosProcessoINSS.getProcesso: String;
begin
  Result := Self.m_Processo;
end;

procedure TFuncionarioAlterarDadosProcessoINSS.setProcesso(const a_Value: String);
begin
  Self.m_Processo := a_Value;
end;

destructor TFuncionarioAlterarDadosProcessoINSS.Destroy;
begin

end;

function TFuncionarioAlterarDadosProcessoINSS.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosProcessoINSS.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosProcessoINSS.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosProcessoINSS';
end;

function TFuncionarioAlterarDadosProcessoINSS.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosProcessoINSS.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosProcessoMenorAprendiz.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosProcessoMenorAprendiz.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosProcessoMenorAprendiz.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosProcessoMenorAprendiz.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosProcessoMenorAprendiz.getProcesso: String;
begin
  Result := Self.m_Processo;
end;

procedure TFuncionarioAlterarDadosProcessoMenorAprendiz.setProcesso(const a_Value: String);
begin
  Self.m_Processo := a_Value;
end;

destructor TFuncionarioAlterarDadosProcessoMenorAprendiz.Destroy;
begin

end;

function TFuncionarioAlterarDadosProcessoMenorAprendiz.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosProcessoMenorAprendiz.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosProcessoMenorAprendiz.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosProcessoMenorAprendiz';
end;

function TFuncionarioAlterarDadosProcessoMenorAprendiz.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosProcessoMenorAprendiz.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarTipoFuncionario.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarTipoFuncionario.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarTipoFuncionario.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarTipoFuncionario.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarTipoFuncionario.getTipo: String;
begin
  Result := Self.m_Tipo;
end;

procedure TFuncionarioAlterarTipoFuncionario.setTipo(const a_Value: String);
begin
  Self.m_Tipo := a_Value;
end;

destructor TFuncionarioAlterarTipoFuncionario.Destroy;
begin

end;

function TFuncionarioAlterarTipoFuncionario.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarTipoFuncionario.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarTipoFuncionario.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarTipoFuncionario';
end;

function TFuncionarioAlterarTipoFuncionario.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarTipoFuncionario.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarAvalidador.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarAvalidador.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarAvalidador.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarAvalidador.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarAvalidador.getAvaliador: String;
begin
  Result := Self.m_Avaliador;
end;

procedure TFuncionarioAlterarAvalidador.setAvaliador(const a_Value: String);
begin
  Self.m_Avaliador := a_Value;
end;

destructor TFuncionarioAlterarAvalidador.Destroy;
begin

end;

function TFuncionarioAlterarAvalidador.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarAvalidador.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarAvalidador.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarAvalidador';
end;

function TFuncionarioAlterarAvalidador.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarAvalidador.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarGestor.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarGestor.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarGestor.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarGestor.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarGestor.getGestor: String;
begin
  Result := Self.m_Gestor;
end;

procedure TFuncionarioAlterarGestor.setGestor(const a_Value: String);
begin
  Self.m_Gestor := a_Value;
end;

destructor TFuncionarioAlterarGestor.Destroy;
begin

end;

function TFuncionarioAlterarGestor.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarGestor.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarGestor.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarGestor';
end;

function TFuncionarioAlterarGestor.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarGestor.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarFuncao.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarFuncao.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarFuncao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarFuncao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarFuncao.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TFuncionarioAlterarFuncao.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

destructor TFuncionarioAlterarFuncao.Destroy;
begin

end;

function TFuncionarioAlterarFuncao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarFuncao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarFuncao.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarFuncao';
end;

function TFuncionarioAlterarFuncao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarFuncao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarSindicalizado.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarSindicalizado.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarSindicalizado.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarSindicalizado.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarSindicalizado.getSindicalizado: Boolean;
begin
  Result := Self.m_Sindicalizado;
end;

procedure TFuncionarioAlterarSindicalizado.setSindicalizado(const a_Value: Boolean);
begin
  Self.m_Sindicalizado := a_Value;
end;

destructor TFuncionarioAlterarSindicalizado.Destroy;
begin

end;

function TFuncionarioAlterarSindicalizado.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarSindicalizado.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarSindicalizado.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarSindicalizado';
end;

function TFuncionarioAlterarSindicalizado.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarSindicalizado.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDescontaINSS.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDescontaINSS.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDescontaINSS.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDescontaINSS.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDescontaINSS.getDesconta: Boolean;
begin
  Result := Self.m_Desconta;
end;

procedure TFuncionarioAlterarDescontaINSS.setDesconta(const a_Value: Boolean);
begin
  Self.m_Desconta := a_Value;
end;

destructor TFuncionarioAlterarDescontaINSS.Destroy;
begin

end;

function TFuncionarioAlterarDescontaINSS.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDescontaINSS.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDescontaINSS.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDescontaINSS';
end;

function TFuncionarioAlterarDescontaINSS.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDescontaINSS.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDataInicioAnuenio.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDataInicioAnuenio.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDataInicioAnuenio.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDataInicioAnuenio.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDataInicioAnuenio.getDataInicio: TDate;
begin
  Result := Self.m_DataInicio;
end;

procedure TFuncionarioAlterarDataInicioAnuenio.setDataInicio(const a_Value: TDate);
begin
  Self.m_DataInicio := a_Value;
end;

destructor TFuncionarioAlterarDataInicioAnuenio.Destroy;
begin

end;

function TFuncionarioAlterarDataInicioAnuenio.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDataInicioAnuenio.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDataInicioAnuenio.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDataInicioAnuenio';
end;

function TFuncionarioAlterarDataInicioAnuenio.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDataInicioAnuenio.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDataVencimentoAtestadoMedico.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDataVencimentoAtestadoMedico.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDataVencimentoAtestadoMedico.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDataVencimentoAtestadoMedico.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDataVencimentoAtestadoMedico.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TFuncionarioAlterarDataVencimentoAtestadoMedico.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

destructor TFuncionarioAlterarDataVencimentoAtestadoMedico.Destroy;
begin

end;

function TFuncionarioAlterarDataVencimentoAtestadoMedico.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDataVencimentoAtestadoMedico.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDataVencimentoAtestadoMedico.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDataVencimentoAtestadoMedico';
end;

function TFuncionarioAlterarDataVencimentoAtestadoMedico.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDataVencimentoAtestadoMedico.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarAtividadeConcomitante.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarAtividadeConcomitante.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarAtividadeConcomitante.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarAtividadeConcomitante.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarAtividadeConcomitante.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TFuncionarioAlterarAtividadeConcomitante.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

destructor TFuncionarioAlterarAtividadeConcomitante.Destroy;
begin

end;

function TFuncionarioAlterarAtividadeConcomitante.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarAtividadeConcomitante.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarAtividadeConcomitante.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarAtividadeConcomitante';
end;

function TFuncionarioAlterarAtividadeConcomitante.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarAtividadeConcomitante.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarAtestadoObito.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarAtestadoObito.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarAtestadoObito.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarAtestadoObito.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarAtestadoObito.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TFuncionarioAlterarAtestadoObito.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

destructor TFuncionarioAlterarAtestadoObito.Destroy;
begin

end;

function TFuncionarioAlterarAtestadoObito.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarAtestadoObito.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarAtestadoObito.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarAtestadoObito';
end;

function TFuncionarioAlterarAtestadoObito.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarAtestadoObito.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarAcordoProrrogacao.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarAcordoProrrogacao.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarAcordoProrrogacao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarAcordoProrrogacao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarAcordoProrrogacao.getAcordo: String;
begin
  Result := Self.m_Acordo;
end;

procedure TFuncionarioAlterarAcordoProrrogacao.setAcordo(const a_Value: String);
begin
  Self.m_Acordo := a_Value;
end;

function TFuncionarioAlterarAcordoProrrogacao.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TFuncionarioAlterarAcordoProrrogacao.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

destructor TFuncionarioAlterarAcordoProrrogacao.Destroy;
begin

end;

function TFuncionarioAlterarAcordoProrrogacao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarAcordoProrrogacao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarAcordoProrrogacao.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarAcordoProrrogacao';
end;

function TFuncionarioAlterarAcordoProrrogacao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarAcordoProrrogacao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarStatus.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarStatus.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarStatus.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarStatus.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarStatus.getStatus: Integer;
begin
  Result := Self.m_Status;
end;

procedure TFuncionarioAlterarStatus.setStatus(const a_Value: Integer);
begin
  Self.m_Status := a_Value;
end;

destructor TFuncionarioAlterarStatus.Destroy;
begin

end;

function TFuncionarioAlterarStatus.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarStatus.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarStatus.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarStatus';
end;

function TFuncionarioAlterarStatus.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarStatus.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarObservacao.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarObservacao.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarObservacao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarObservacao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarObservacao.getObservacao: WideString;
begin
  Result := Self.m_Observacao;
end;

procedure TFuncionarioAlterarObservacao.setObservacao(const a_Value: WideString);
begin
  Self.m_Observacao := a_Value;
end;

destructor TFuncionarioAlterarObservacao.Destroy;
begin

end;

function TFuncionarioAlterarObservacao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarObservacao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarObservacao.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarObservacao';
end;

function TFuncionarioAlterarObservacao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarObservacao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarFoto.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarFoto.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarFoto.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarFoto.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarFoto.getFoto: String;
begin
  Result := Self.m_Foto;
end;

procedure TFuncionarioAlterarFoto.setFoto(const a_Value: String);
begin
  Self.m_Foto := a_Value;
end;

function TFuncionarioAlterarFoto.getFotoOriginal: String;
begin
  Result := Self.m_FotoOriginal;
end;

procedure TFuncionarioAlterarFoto.setFotoOriginal(const a_Value: String);
begin
  Self.m_FotoOriginal := a_Value;
end;

function TFuncionarioAlterarFoto.getInfoImagem: String;
begin
  Result := Self.m_InfoImagem;
end;

procedure TFuncionarioAlterarFoto.setInfoImagem(const a_Value: String);
begin
  Self.m_InfoImagem := a_Value;
end;

destructor TFuncionarioAlterarFoto.Destroy;
begin

end;

function TFuncionarioAlterarFoto.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarFoto.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarFoto.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarFoto';
end;

function TFuncionarioAlterarFoto.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarFoto.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioAlterarDadosContrato.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioAlterarDadosContrato.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioAlterarDadosContrato.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getTipoAdmissao: Integer;
begin
  Result := Self.m_TipoAdmissao;
end;

procedure TFuncionarioAlterarDadosContrato.setTipoAdmissao(const a_Value: Integer);
begin
  Self.m_TipoAdmissao := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getRegimeTrabalhista: Integer;
begin
  Result := Self.m_RegimeTrabalhista;
end;

procedure TFuncionarioAlterarDadosContrato.setRegimeTrabalhista(const a_Value: Integer);
begin
  Self.m_RegimeTrabalhista := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getRegimeINSS: Integer;
begin
  Result := Self.m_RegimeINSS;
end;

procedure TFuncionarioAlterarDadosContrato.setRegimeINSS(const a_Value: Integer);
begin
  Self.m_RegimeINSS := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getAtividade: Integer;
begin
  Result := Self.m_Atividade;
end;

procedure TFuncionarioAlterarDadosContrato.setAtividade(const a_Value: Integer);
begin
  Self.m_Atividade := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getPrazo: Integer;
begin
  Result := Self.m_Prazo;
end;

procedure TFuncionarioAlterarDadosContrato.setPrazo(const a_Value: Integer);
begin
  Self.m_Prazo := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getCodigoVinculo: String;
begin
  Result := Self.m_CodigoVinculo;
end;

procedure TFuncionarioAlterarDadosContrato.setCodigoVinculo(const a_Value: String);
begin
  Self.m_CodigoVinculo := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getDiasExperiencia: Integer;
begin
  Result := Self.m_DiasExperiencia;
end;

procedure TFuncionarioAlterarDadosContrato.setDiasExperiencia(const a_Value: Integer);
begin
  Self.m_DiasExperiencia := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getDiasProrrogacao: Integer;
begin
  Result := Self.m_DiasProrrogacao;
end;

procedure TFuncionarioAlterarDadosContrato.setDiasProrrogacao(const a_Value: Integer);
begin
  Self.m_DiasProrrogacao := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getMotivoAdmissao: Integer;
begin
  Result := Self.m_MotivoAdmissao;
end;

procedure TFuncionarioAlterarDadosContrato.setMotivoAdmissao(const a_Value: Integer);
begin
  Self.m_MotivoAdmissao := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getMotivoContratacaoTemporaria: Integer;
begin
  Result := Self.m_MotivoContratacaoTemporaria;
end;

procedure TFuncionarioAlterarDadosContrato.setMotivoContratacaoTemporaria(const a_Value: Integer);
begin
  Self.m_MotivoContratacaoTemporaria := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getDataFimcontrato: TDate;
begin
  Result := Self.m_DataFimcontrato;
end;

procedure TFuncionarioAlterarDadosContrato.setDataFimcontrato(const a_Value: TDate);
begin
  Self.m_DataFimcontrato := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getFuncionarioSubstituido: String;
begin
  Result := Self.m_FuncionarioSubstituido;
end;

procedure TFuncionarioAlterarDadosContrato.setFuncionarioSubstituido(const a_Value: String);
begin
  Self.m_FuncionarioSubstituido := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getProcessoAdmissao: String;
begin
  Result := Self.m_ProcessoAdmissao;
end;

procedure TFuncionarioAlterarDadosContrato.setProcessoAdmissao(const a_Value: String);
begin
  Self.m_ProcessoAdmissao := a_Value;
end;

function TFuncionarioAlterarDadosContrato.getPrimeiroEmprego: Boolean;
begin
  Result := Self.m_PrimeiroEmprego;
end;

procedure TFuncionarioAlterarDadosContrato.setPrimeiroEmprego(const a_Value: Boolean);
begin
  Self.m_PrimeiroEmprego := a_Value;
end;

destructor TFuncionarioAlterarDadosContrato.Destroy;
begin

end;

function TFuncionarioAlterarDadosContrato.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioAlterarDadosContrato.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioAlterarDadosContrato.getNameAPI(): String;
begin
  Result := 'FuncionarioAlterarDadosContrato';
end;

function TFuncionarioAlterarDadosContrato.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioAlterarDadosContrato.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncionarioExcluir.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TFuncionarioExcluir.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TFuncionarioExcluir.Destroy;
begin

end;

function TFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'FuncionarioExcluir';
end;

function TFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
