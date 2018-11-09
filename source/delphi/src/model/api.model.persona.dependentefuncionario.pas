unit api.model.persona.DependenteFuncionario;

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

type TDependenteFuncionarioNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_IdDependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CPF: String;
    var m_DataInclusao: TDate;
    var m_TipoParentesco: Integer;
    var m_Sexo: Integer;
    

    function getIdDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCPF(): String;
    function getDataInclusao(): TDate;
    function getTipoParentesco(): Integer;
    function getSexo(): Integer;
    

    procedure setIdDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCPF(const a_Value: String);
    procedure setDataInclusao(const a_Value: TDate);
    procedure setTipoParentesco(const a_Value: Integer);
    procedure setSexo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('iddependente')]
    property iddependente: String read getIdDependente write setIdDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// [999.999.999-99]. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('cpf')]
    property cpf: String read getCPF write setCPF;

    [NasajonSerializeAttribute('datainclusao')]
    property datainclusao: TDate read getDataInclusao write setDataInclusao;

    /// <summary>
/// Conforme tabela do eSocial
    /// </summary>
    [NasajonSerializeAttribute('tipoparentesco')]
    property tipoparentesco: Integer read getTipoParentesco write setTipoParentesco;

    /// <summary>
/// Masculino(1) ou Feminino(2)
    /// </summary>
    [NasajonSerializeAttribute('sexo')]
    property sexo: Integer read getSexo write setSexo;

    

end;

type TDependenteFuncionarioAlterarDadosPadrao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Codigo: String;
    var m_Nome: String;
    var m_CPF: String;
    var m_DataInclusao: TDate;
    var m_TipoParentesco: Integer;
    var m_Sexo: Integer;
    

    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getCodigo(): String;
    function getNome(): String;
    function getCPF(): String;
    function getDataInclusao(): TDate;
    function getTipoParentesco(): Integer;
    function getSexo(): Integer;
    

    procedure setDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setNome(const a_Value: String);
    procedure setCPF(const a_Value: String);
    procedure setDataInclusao(const a_Value: TDate);
    procedure setTipoParentesco(const a_Value: Integer);
    procedure setSexo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('nome')]
    property nome: String read getNome write setNome;

    /// <summary>
/// [999.999.999-99]. A máscara não é obrigatória.
    /// </summary>
    [NasajonSerializeAttribute('cpf')]
    property cpf: String read getCPF write setCPF;

    [NasajonSerializeAttribute('datainclusao')]
    property datainclusao: TDate read getDataInclusao write setDataInclusao;

    /// <summary>
/// Conforme tabela do eSocial
    /// </summary>
    [NasajonSerializeAttribute('tipoparentesco')]
    property tipoparentesco: Integer read getTipoParentesco write setTipoParentesco;

    /// <summary>
/// Masculino(1) ou Feminino(2)
    /// </summary>
    [NasajonSerializeAttribute('sexo')]
    property sexo: Integer read getSexo write setSexo;

    

end;

type TDependenteFuncionarioAlterarDadosCertidaoNascimento = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_DataNascimento: TDate;
    var m_DataEntrega: TDate;
    var m_DataBaixa: TDate;
    var m_UF: String;
    var m_Cidade: String;
    var m_Cartorio: String;
    var m_Numero: String;
    var m_Livro: String;
    var m_FolhaLivro: String;
    

    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getDataNascimento(): TDate;
    function getDataEntrega(): TDate;
    function getDataBaixa(): TDate;
    function getUF(): String;
    function getCidade(): String;
    function getCartorio(): String;
    function getNumero(): String;
    function getLivro(): String;
    function getFolhaLivro(): String;
    

    procedure setDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataNascimento(const a_Value: TDate);
    procedure setDataEntrega(const a_Value: TDate);
    procedure setDataBaixa(const a_Value: TDate);
    procedure setUF(const a_Value: String);
    procedure setCidade(const a_Value: String);
    procedure setCartorio(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setLivro(const a_Value: String);
    procedure setFolhaLivro(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datanascimento')]
    property datanascimento: TDate read getDataNascimento write setDataNascimento;

    [NasajonSerializeAttribute('dataentrega')]
    property dataentrega: TDate read getDataEntrega write setDataEntrega;

    [NasajonSerializeAttribute('databaixa')]
    property databaixa: TDate read getDataBaixa write setDataBaixa;

    [NasajonSerializeAttribute('uf')]
    property uf: String read getUF write setUF;

    [NasajonSerializeAttribute('cidade')]
    property cidade: String read getCidade write setCidade;

    [NasajonSerializeAttribute('cartorio')]
    property cartorio: String read getCartorio write setCartorio;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('livro')]
    property livro: String read getLivro write setLivro;

    [NasajonSerializeAttribute('folhalivro')]
    property folhalivro: String read getFolhaLivro write setFolhaLivro;

    

end;

type TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Beneficiario: Boolean;
    

    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getBeneficiario(): Boolean;
    

    procedure setDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setBeneficiario(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('beneficiario')]
    property beneficiario: Boolean read getBeneficiario write setBeneficiario;

    

end;

type TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Beneficiario: Boolean;
    

    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getBeneficiario(): Boolean;
    

    procedure setDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setBeneficiario(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('beneficiario')]
    property beneficiario: Boolean read getBeneficiario write setBeneficiario;

    

end;

type TDependenteFuncionarioAlterarBeneficiarioPlanoSaude = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Beneficiario: Boolean;
    

    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getBeneficiario(): Boolean;
    

    procedure setDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setBeneficiario(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('beneficiario')]
    property beneficiario: Boolean read getBeneficiario write setBeneficiario;

    

end;

type TDependenteFuncionarioAlterarBeneficiarioImpostoRenda = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Beneficiario: Boolean;
    

    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getBeneficiario(): Boolean;
    

    procedure setDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setBeneficiario(const a_Value: Boolean);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('beneficiario')]
    property beneficiario: Boolean read getBeneficiario write setBeneficiario;

    

end;

type TDependenteFuncionarioAlterarDadosSalarioFamilia = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_DataVencimentoDeclaracaoEscolar: TDate;
    var m_DataVencimentoVacinacao: TDate;
    var m_DependenteBeneficiarioPensao: String;
    

    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getDataVencimentoDeclaracaoEscolar(): TDate;
    function getDataVencimentoVacinacao(): TDate;
    function getDependenteBeneficiarioPensao(): String;
    

    procedure setDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setDataVencimentoDeclaracaoEscolar(const a_Value: TDate);
    procedure setDataVencimentoVacinacao(const a_Value: TDate);
    procedure setDependenteBeneficiarioPensao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('datavencimentodeclaracaoescolar')]
    property datavencimentodeclaracaoescolar: TDate read getDataVencimentoDeclaracaoEscolar write setDataVencimentoDeclaracaoEscolar;

    [NasajonSerializeAttribute('datavencimentovacinacao')]
    property datavencimentovacinacao: TDate read getDataVencimentoVacinacao write setDataVencimentoVacinacao;

    [NasajonSerializeAttribute('dependentebeneficiariopensao')]
    property dependentebeneficiariopensao: String read getDependenteBeneficiarioPensao write setDependenteBeneficiarioPensao;

    

end;

type TDependenteFuncionarioAlterarDataBaixaImpostoRenda = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_Data: TDate;
    

    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getData(): TDate;
    

    procedure setDependente(const a_Value: String);
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
    

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    

end;

type TDependenteFuncionarioAlterarDadosPensaoAlimenticia = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    var m_PercentualFolha: Currency;
    var m_PercentualMultaFGTS: Currency;
    var m_TipoRecebimento: Integer;
    var m_Agencia: String;
    var m_Banco: String;
    var m_NumeroContaRecebimento: String;
    var m_DigitoVerificadorContaRecebimento: String;
    var m_RubricaFolha: String;
    var m_RubricaFerias: String;
    var m_RubricaPPLR: String;
    var m_RubricaDecimoTerceiro: String;
    var m_Conjunto: String;
    

    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    function getPercentualFolha(): Currency;
    function getPercentualMultaFGTS(): Currency;
    function getTipoRecebimento(): Integer;
    function getAgencia(): String;
    function getBanco(): String;
    function getNumeroContaRecebimento(): String;
    function getDigitoVerificadorContaRecebimento(): String;
    function getRubricaFolha(): String;
    function getRubricaFerias(): String;
    function getRubricaPPLR(): String;
    function getRubricaDecimoTerceiro(): String;
    function getConjunto(): String;
    

    procedure setDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setPercentualFolha(const a_Value: Currency);
    procedure setPercentualMultaFGTS(const a_Value: Currency);
    procedure setTipoRecebimento(const a_Value: Integer);
    procedure setAgencia(const a_Value: String);
    procedure setBanco(const a_Value: String);
    procedure setNumeroContaRecebimento(const a_Value: String);
    procedure setDigitoVerificadorContaRecebimento(const a_Value: String);
    procedure setRubricaFolha(const a_Value: String);
    procedure setRubricaFerias(const a_Value: String);
    procedure setRubricaPPLR(const a_Value: String);
    procedure setRubricaDecimoTerceiro(const a_Value: String);
    procedure setConjunto(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('percentualfolha')]
    property percentualfolha: Currency read getPercentualFolha write setPercentualFolha;

    [NasajonSerializeAttribute('percentualmultafgts')]
    property percentualmultafgts: Currency read getPercentualMultaFGTS write setPercentualMultaFGTS;

    /// <summary>
/// Conta Corrente(1), Conta Poupança(2), Conta Salário(4), Dinheiro(8) ou Cheque(16)
    /// </summary>
    [NasajonSerializeAttribute('tiporecebimento')]
    property tiporecebimento: Integer read getTipoRecebimento write setTipoRecebimento;

    [NasajonSerializeAttribute('agencia')]
    property agencia: String read getAgencia write setAgencia;

    [NasajonSerializeAttribute('banco')]
    property banco: String read getBanco write setBanco;

    [NasajonSerializeAttribute('numerocontarecebimento')]
    property numerocontarecebimento: String read getNumeroContaRecebimento write setNumeroContaRecebimento;

    [NasajonSerializeAttribute('digitoverificadorcontarecebimento')]
    property digitoverificadorcontarecebimento: String read getDigitoVerificadorContaRecebimento write setDigitoVerificadorContaRecebimento;

    [NasajonSerializeAttribute('rubricafolha')]
    property rubricafolha: String read getRubricaFolha write setRubricaFolha;

    [NasajonSerializeAttribute('rubricaferias')]
    property rubricaferias: String read getRubricaFerias write setRubricaFerias;

    [NasajonSerializeAttribute('rubricapplr')]
    property rubricapplr: String read getRubricaPPLR write setRubricaPPLR;

    [NasajonSerializeAttribute('rubricadecimoterceiro')]
    property rubricadecimoterceiro: String read getRubricaDecimoTerceiro write setRubricaDecimoTerceiro;

    [NasajonSerializeAttribute('conjunto')]
    property conjunto: String read getConjunto write setConjunto;

    

end;

type TDependenteFuncionarioExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Dependente: String;
    var m_Funcionario: String;
    var m_Empresa: String;
    

    function getDependente(): String;
    function getFuncionario(): String;
    function getEmpresa(): String;
    

    procedure setDependente(const a_Value: String);
    procedure setFuncionario(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('dependente')]
    property dependente: String read getDependente write setDependente;

    [NasajonSerializeAttribute('funcionario')]
    property funcionario: String read getFuncionario write setFuncionario;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    

end;

	
implementation

  uses
      api.send;  

function TDependenteFuncionarioNovo.getIdDependente: String;
begin
  Result := Self.m_IdDependente;
end;

procedure TDependenteFuncionarioNovo.setIdDependente(const a_Value: String);
begin
  Self.m_IdDependente := a_Value;
end;

function TDependenteFuncionarioNovo.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDependenteFuncionarioNovo.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDependenteFuncionarioNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDependenteFuncionarioNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDependenteFuncionarioNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TDependenteFuncionarioNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TDependenteFuncionarioNovo.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TDependenteFuncionarioNovo.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TDependenteFuncionarioNovo.getCPF: String;
begin
  Result := Self.m_CPF;
end;

procedure TDependenteFuncionarioNovo.setCPF(const a_Value: String);
begin
  Self.m_CPF := a_Value;
end;

function TDependenteFuncionarioNovo.getDataInclusao: TDate;
begin
  Result := Self.m_DataInclusao;
end;

procedure TDependenteFuncionarioNovo.setDataInclusao(const a_Value: TDate);
begin
  Self.m_DataInclusao := a_Value;
end;

function TDependenteFuncionarioNovo.getTipoParentesco: Integer;
begin
  Result := Self.m_TipoParentesco;
end;

procedure TDependenteFuncionarioNovo.setTipoParentesco(const a_Value: Integer);
begin
  Self.m_TipoParentesco := a_Value;
end;

function TDependenteFuncionarioNovo.getSexo: Integer;
begin
  Result := Self.m_Sexo;
end;

procedure TDependenteFuncionarioNovo.setSexo(const a_Value: Integer);
begin
  Self.m_Sexo := a_Value;
end;

destructor TDependenteFuncionarioNovo.Destroy;
begin

end;

function TDependenteFuncionarioNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDependenteFuncionarioNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDependenteFuncionarioNovo.getNameAPI(): String;
begin
  Result := 'DependenteFuncionarioNovo';
end;

function TDependenteFuncionarioNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDependenteFuncionarioNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDependenteFuncionarioAlterarDadosPadrao.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDependenteFuncionarioAlterarDadosPadrao.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPadrao.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDependenteFuncionarioAlterarDadosPadrao.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPadrao.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDependenteFuncionarioAlterarDadosPadrao.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPadrao.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TDependenteFuncionarioAlterarDadosPadrao.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPadrao.getNome: String;
begin
  Result := Self.m_Nome;
end;

procedure TDependenteFuncionarioAlterarDadosPadrao.setNome(const a_Value: String);
begin
  Self.m_Nome := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPadrao.getCPF: String;
begin
  Result := Self.m_CPF;
end;

procedure TDependenteFuncionarioAlterarDadosPadrao.setCPF(const a_Value: String);
begin
  Self.m_CPF := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPadrao.getDataInclusao: TDate;
begin
  Result := Self.m_DataInclusao;
end;

procedure TDependenteFuncionarioAlterarDadosPadrao.setDataInclusao(const a_Value: TDate);
begin
  Self.m_DataInclusao := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPadrao.getTipoParentesco: Integer;
begin
  Result := Self.m_TipoParentesco;
end;

procedure TDependenteFuncionarioAlterarDadosPadrao.setTipoParentesco(const a_Value: Integer);
begin
  Self.m_TipoParentesco := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPadrao.getSexo: Integer;
begin
  Result := Self.m_Sexo;
end;

procedure TDependenteFuncionarioAlterarDadosPadrao.setSexo(const a_Value: Integer);
begin
  Self.m_Sexo := a_Value;
end;

destructor TDependenteFuncionarioAlterarDadosPadrao.Destroy;
begin

end;

function TDependenteFuncionarioAlterarDadosPadrao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDependenteFuncionarioAlterarDadosPadrao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDependenteFuncionarioAlterarDadosPadrao.getNameAPI(): String;
begin
  Result := 'DependenteFuncionarioAlterarDadosPadrao';
end;

function TDependenteFuncionarioAlterarDadosPadrao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDependenteFuncionarioAlterarDadosPadrao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDependenteFuncionarioAlterarDadosCertidaoNascimento.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDependenteFuncionarioAlterarDadosCertidaoNascimento.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDependenteFuncionarioAlterarDadosCertidaoNascimento.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getDataNascimento: TDate;
begin
  Result := Self.m_DataNascimento;
end;

procedure TDependenteFuncionarioAlterarDadosCertidaoNascimento.setDataNascimento(const a_Value: TDate);
begin
  Self.m_DataNascimento := a_Value;
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getDataEntrega: TDate;
begin
  Result := Self.m_DataEntrega;
end;

procedure TDependenteFuncionarioAlterarDadosCertidaoNascimento.setDataEntrega(const a_Value: TDate);
begin
  Self.m_DataEntrega := a_Value;
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getDataBaixa: TDate;
begin
  Result := Self.m_DataBaixa;
end;

procedure TDependenteFuncionarioAlterarDadosCertidaoNascimento.setDataBaixa(const a_Value: TDate);
begin
  Self.m_DataBaixa := a_Value;
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getUF: String;
begin
  Result := Self.m_UF;
end;

procedure TDependenteFuncionarioAlterarDadosCertidaoNascimento.setUF(const a_Value: String);
begin
  Self.m_UF := a_Value;
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getCidade: String;
begin
  Result := Self.m_Cidade;
end;

procedure TDependenteFuncionarioAlterarDadosCertidaoNascimento.setCidade(const a_Value: String);
begin
  Self.m_Cidade := a_Value;
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getCartorio: String;
begin
  Result := Self.m_Cartorio;
end;

procedure TDependenteFuncionarioAlterarDadosCertidaoNascimento.setCartorio(const a_Value: String);
begin
  Self.m_Cartorio := a_Value;
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TDependenteFuncionarioAlterarDadosCertidaoNascimento.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getLivro: String;
begin
  Result := Self.m_Livro;
end;

procedure TDependenteFuncionarioAlterarDadosCertidaoNascimento.setLivro(const a_Value: String);
begin
  Self.m_Livro := a_Value;
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getFolhaLivro: String;
begin
  Result := Self.m_FolhaLivro;
end;

procedure TDependenteFuncionarioAlterarDadosCertidaoNascimento.setFolhaLivro(const a_Value: String);
begin
  Self.m_FolhaLivro := a_Value;
end;

destructor TDependenteFuncionarioAlterarDadosCertidaoNascimento.Destroy;
begin

end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getNameAPI(): String;
begin
  Result := 'DependenteFuncionarioAlterarDadosCertidaoNascimento';
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDependenteFuncionarioAlterarDadosCertidaoNascimento.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.getBeneficiario: Boolean;
begin
  Result := Self.m_Beneficiario;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.setBeneficiario(const a_Value: Boolean);
begin
  Self.m_Beneficiario := a_Value;
end;

destructor TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.Destroy;
begin

end;

function TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.getNameAPI(): String;
begin
  Result := 'DependenteFuncionarioAlterarBeneficiarioSalarioFamilia';
end;

function TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.getBeneficiario: Boolean;
begin
  Result := Self.m_Beneficiario;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.setBeneficiario(const a_Value: Boolean);
begin
  Self.m_Beneficiario := a_Value;
end;

destructor TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.Destroy;
begin

end;

function TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.getNameAPI(): String;
begin
  Result := 'DependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia';
end;

function TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.getBeneficiario: Boolean;
begin
  Result := Self.m_Beneficiario;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.setBeneficiario(const a_Value: Boolean);
begin
  Self.m_Beneficiario := a_Value;
end;

destructor TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.Destroy;
begin

end;

function TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.getNameAPI(): String;
begin
  Result := 'DependenteFuncionarioAlterarBeneficiarioPlanoSaude';
end;

function TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.getBeneficiario: Boolean;
begin
  Result := Self.m_Beneficiario;
end;

procedure TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.setBeneficiario(const a_Value: Boolean);
begin
  Self.m_Beneficiario := a_Value;
end;

destructor TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.Destroy;
begin

end;

function TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.getNameAPI(): String;
begin
  Result := 'DependenteFuncionarioAlterarBeneficiarioImpostoRenda';
end;

function TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDependenteFuncionarioAlterarDadosSalarioFamilia.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDependenteFuncionarioAlterarDadosSalarioFamilia.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDependenteFuncionarioAlterarDadosSalarioFamilia.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDependenteFuncionarioAlterarDadosSalarioFamilia.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDependenteFuncionarioAlterarDadosSalarioFamilia.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDependenteFuncionarioAlterarDadosSalarioFamilia.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDependenteFuncionarioAlterarDadosSalarioFamilia.getDataVencimentoDeclaracaoEscolar: TDate;
begin
  Result := Self.m_DataVencimentoDeclaracaoEscolar;
end;

procedure TDependenteFuncionarioAlterarDadosSalarioFamilia.setDataVencimentoDeclaracaoEscolar(const a_Value: TDate);
begin
  Self.m_DataVencimentoDeclaracaoEscolar := a_Value;
end;

function TDependenteFuncionarioAlterarDadosSalarioFamilia.getDataVencimentoVacinacao: TDate;
begin
  Result := Self.m_DataVencimentoVacinacao;
end;

procedure TDependenteFuncionarioAlterarDadosSalarioFamilia.setDataVencimentoVacinacao(const a_Value: TDate);
begin
  Self.m_DataVencimentoVacinacao := a_Value;
end;

function TDependenteFuncionarioAlterarDadosSalarioFamilia.getDependenteBeneficiarioPensao: String;
begin
  Result := Self.m_DependenteBeneficiarioPensao;
end;

procedure TDependenteFuncionarioAlterarDadosSalarioFamilia.setDependenteBeneficiarioPensao(const a_Value: String);
begin
  Self.m_DependenteBeneficiarioPensao := a_Value;
end;

destructor TDependenteFuncionarioAlterarDadosSalarioFamilia.Destroy;
begin

end;

function TDependenteFuncionarioAlterarDadosSalarioFamilia.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDependenteFuncionarioAlterarDadosSalarioFamilia.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDependenteFuncionarioAlterarDadosSalarioFamilia.getNameAPI(): String;
begin
  Result := 'DependenteFuncionarioAlterarDadosSalarioFamilia';
end;

function TDependenteFuncionarioAlterarDadosSalarioFamilia.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDependenteFuncionarioAlterarDadosSalarioFamilia.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDependenteFuncionarioAlterarDataBaixaImpostoRenda.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDependenteFuncionarioAlterarDataBaixaImpostoRenda.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDependenteFuncionarioAlterarDataBaixaImpostoRenda.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDependenteFuncionarioAlterarDataBaixaImpostoRenda.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDependenteFuncionarioAlterarDataBaixaImpostoRenda.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDependenteFuncionarioAlterarDataBaixaImpostoRenda.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDependenteFuncionarioAlterarDataBaixaImpostoRenda.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TDependenteFuncionarioAlterarDataBaixaImpostoRenda.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

destructor TDependenteFuncionarioAlterarDataBaixaImpostoRenda.Destroy;
begin

end;

function TDependenteFuncionarioAlterarDataBaixaImpostoRenda.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDependenteFuncionarioAlterarDataBaixaImpostoRenda.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDependenteFuncionarioAlterarDataBaixaImpostoRenda.getNameAPI(): String;
begin
  Result := 'DependenteFuncionarioAlterarDataBaixaImpostoRenda';
end;

function TDependenteFuncionarioAlterarDataBaixaImpostoRenda.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDependenteFuncionarioAlterarDataBaixaImpostoRenda.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getPercentualFolha: Currency;
begin
  Result := Self.m_PercentualFolha;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setPercentualFolha(const a_Value: Currency);
begin
  Self.m_PercentualFolha := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getPercentualMultaFGTS: Currency;
begin
  Result := Self.m_PercentualMultaFGTS;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setPercentualMultaFGTS(const a_Value: Currency);
begin
  Self.m_PercentualMultaFGTS := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getTipoRecebimento: Integer;
begin
  Result := Self.m_TipoRecebimento;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setTipoRecebimento(const a_Value: Integer);
begin
  Self.m_TipoRecebimento := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getAgencia: String;
begin
  Result := Self.m_Agencia;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setAgencia(const a_Value: String);
begin
  Self.m_Agencia := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getBanco: String;
begin
  Result := Self.m_Banco;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setBanco(const a_Value: String);
begin
  Self.m_Banco := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getNumeroContaRecebimento: String;
begin
  Result := Self.m_NumeroContaRecebimento;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setNumeroContaRecebimento(const a_Value: String);
begin
  Self.m_NumeroContaRecebimento := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getDigitoVerificadorContaRecebimento: String;
begin
  Result := Self.m_DigitoVerificadorContaRecebimento;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setDigitoVerificadorContaRecebimento(const a_Value: String);
begin
  Self.m_DigitoVerificadorContaRecebimento := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getRubricaFolha: String;
begin
  Result := Self.m_RubricaFolha;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setRubricaFolha(const a_Value: String);
begin
  Self.m_RubricaFolha := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getRubricaFerias: String;
begin
  Result := Self.m_RubricaFerias;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setRubricaFerias(const a_Value: String);
begin
  Self.m_RubricaFerias := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getRubricaPPLR: String;
begin
  Result := Self.m_RubricaPPLR;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setRubricaPPLR(const a_Value: String);
begin
  Self.m_RubricaPPLR := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getRubricaDecimoTerceiro: String;
begin
  Result := Self.m_RubricaDecimoTerceiro;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setRubricaDecimoTerceiro(const a_Value: String);
begin
  Self.m_RubricaDecimoTerceiro := a_Value;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getConjunto: String;
begin
  Result := Self.m_Conjunto;
end;

procedure TDependenteFuncionarioAlterarDadosPensaoAlimenticia.setConjunto(const a_Value: String);
begin
  Self.m_Conjunto := a_Value;
end;

destructor TDependenteFuncionarioAlterarDadosPensaoAlimenticia.Destroy;
begin

end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getNameAPI(): String;
begin
  Result := 'DependenteFuncionarioAlterarDadosPensaoAlimenticia';
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDependenteFuncionarioAlterarDadosPensaoAlimenticia.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TDependenteFuncionarioExcluir.getDependente: String;
begin
  Result := Self.m_Dependente;
end;

procedure TDependenteFuncionarioExcluir.setDependente(const a_Value: String);
begin
  Self.m_Dependente := a_Value;
end;

function TDependenteFuncionarioExcluir.getFuncionario: String;
begin
  Result := Self.m_Funcionario;
end;

procedure TDependenteFuncionarioExcluir.setFuncionario(const a_Value: String);
begin
  Self.m_Funcionario := a_Value;
end;

function TDependenteFuncionarioExcluir.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TDependenteFuncionarioExcluir.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

destructor TDependenteFuncionarioExcluir.Destroy;
begin

end;

function TDependenteFuncionarioExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TDependenteFuncionarioExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TDependenteFuncionarioExcluir.getNameAPI(): String;
begin
  Result := 'DependenteFuncionarioExcluir';
end;

function TDependenteFuncionarioExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TDependenteFuncionarioExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
