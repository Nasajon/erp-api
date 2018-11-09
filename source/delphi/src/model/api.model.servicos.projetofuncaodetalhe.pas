unit api.model.servicos.ProjetoFuncaoDetalhe;

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

type TProjetoFuncaoDetalheNovoAgrupador = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Identificador: String;
    var m_Funcao: String;
    var m_GrupoEmpresarial: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getIdentificador(): String;
    function getFuncao(): String;
    function getGrupoEmpresarial(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setIdentificador(const a_Value: String);
    procedure setFuncao(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('identificador')]
    property identificador: String read getIdentificador write setIdentificador;

    /// <summary>
/// Função à qual este agrupador pertence.
    /// </summary>
    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

    /// <summary>
/// Utilizado para recuperar a função à que o Agrupador pertence.
    /// </summary>
    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    /// <summary>
/// Código do agrupador sendo cadastrado.
    /// </summary>
    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    /// <summary>
/// Descrição do agrupador sendo cadastrado.
    /// </summary>
    [NasajonSerializeAttribute('descricao')]
    property descricao: String read getDescricao write setDescricao;

    

end;

type TProjetoFuncaoDetalheNovoEPI = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Identificador: String;
    var m_Funcao: String;
    var m_GrupoEmpresarial: String;
    var m_Registro: String;
    var m_Agrupador: String;
    var m_Unidade: String;
    var m_Quantidade: Currency;
    var m_ValorUnitario: Currency;
    var m_PeriodicidadeTipo: Integer;
    var m_PeriodicidadeIntervalo: Currency;
    

    function getIdentificador(): String;
    function getFuncao(): String;
    function getGrupoEmpresarial(): String;
    function getRegistro(): String;
    function getAgrupador(): String;
    function getUnidade(): String;
    function getQuantidade(): Currency;
    function getValorUnitario(): Currency;
    function getPeriodicidadeTipo(): Integer;
    function getPeriodicidadeIntervalo(): Currency;
    

    procedure setIdentificador(const a_Value: String);
    procedure setFuncao(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setRegistro(const a_Value: String);
    procedure setAgrupador(const a_Value: String);
    procedure setUnidade(const a_Value: String);
    procedure setQuantidade(const a_Value: Currency);
    procedure setValorUnitario(const a_Value: Currency);
    procedure setPeriodicidadeTipo(const a_Value: Integer);
    procedure setPeriodicidadeIntervalo(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('identificador')]
    property identificador: String read getIdentificador write setIdentificador;

    /// <summary>
/// Função à qual este EPI pertence.
    /// </summary>
    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

    /// <summary>
/// Utilizado para recuperar a função à que o EPI pertence, e para localizar o próprio item de EPI.
    /// </summary>
    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    /// <summary>
/// Identificador da EPI.
    /// </summary>
    [NasajonSerializeAttribute('registro')]
    property registro: String read getRegistro write setRegistro;

    /// <summary>
/// Campo utilizado para indicar a que agrupador esta EPI pertence.
    /// </summary>
    [NasajonSerializeAttribute('agrupador')]
    property agrupador: String read getAgrupador write setAgrupador;

    /// <summary>
/// Unidade de cálculo para as quantidades..
    /// </summary>
    [NasajonSerializeAttribute('unidade')]
    property unidade: String read getUnidade write setUnidade;

    /// <summary>
/// Quantidade.
    /// </summary>
    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Currency read getQuantidade write setQuantidade;

    /// <summary>
/// Valor comercial de uma unidade.
    /// </summary>
    [NasajonSerializeAttribute('valorunitario')]
    property valorunitario: Currency read getValorUnitario write setValorUnitario;

    /// <summary>
/// Tipo de periodicidade da EPI. Valores possíveis: 0) Não periódico; 1) Diário; 2) Semanal; 3) Mensal; 4) Bimestral; 5) Trimestral; 6) Semestral; 7) Anual
    /// </summary>
    [NasajonSerializeAttribute('periodicidadetipo')]
    property periodicidadetipo: Integer read getPeriodicidadeTipo write setPeriodicidadeTipo;

    /// <summary>
/// Periodicidade da EPI (verificar os tipos de periodicidade no parâmetro PeriodicidadeTipo).
    /// </summary>
    [NasajonSerializeAttribute('periodicidadeintervalo')]
    property periodicidadeintervalo: Currency read getPeriodicidadeIntervalo write setPeriodicidadeIntervalo;

    

end;

type TProjetoFuncaoDetalheNovoFormacaoSalarial = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Identificador: String;
    var m_Funcao: String;
    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Registro: String;
    var m_Agrupador: String;
    var m_PeriodicidadeTipo: Integer;
    var m_PeriodicidadeIntervalo: Currency;
    

    function getIdentificador(): String;
    function getFuncao(): String;
    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getRegistro(): String;
    function getAgrupador(): String;
    function getPeriodicidadeTipo(): Integer;
    function getPeriodicidadeIntervalo(): Currency;
    

    procedure setIdentificador(const a_Value: String);
    procedure setFuncao(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setRegistro(const a_Value: String);
    procedure setAgrupador(const a_Value: String);
    procedure setPeriodicidadeTipo(const a_Value: Integer);
    procedure setPeriodicidadeIntervalo(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('identificador')]
    property identificador: String read getIdentificador write setIdentificador;

    /// <summary>
/// Função à qual esta Formação Salarial pertence.
    /// </summary>
    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

    /// <summary>
/// Utilizado para recuperar a função à que a Formação Salarial pertence.
    /// </summary>
    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    /// <summary>
/// Utilizado para recuperar a própria Formação Salarial.
    /// </summary>
    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Identificador da formação salarial.
    /// </summary>
    [NasajonSerializeAttribute('registro')]
    property registro: String read getRegistro write setRegistro;

    /// <summary>
/// Campo utilizado para indicar a que agrupador esta Formação Salarial pertence.
    /// </summary>
    [NasajonSerializeAttribute('agrupador')]
    property agrupador: String read getAgrupador write setAgrupador;

    /// <summary>
/// Tipo de periodicidade da Formação Salarial. Valores possíveis: 0) Não periódico; 1) Diário; 2) Semanal; 3) Mensal; 4) Bimestral; 5) Trimestral; 6) Semestral; 7) Anual
    /// </summary>
    [NasajonSerializeAttribute('periodicidadetipo')]
    property periodicidadetipo: Integer read getPeriodicidadeTipo write setPeriodicidadeTipo;

    /// <summary>
/// Periodicidade do Formação Salarial (verificar os tipos de periodicidade no parâmetro PeriodicidadeTipo).
    /// </summary>
    [NasajonSerializeAttribute('periodicidadeintervalo')]
    property periodicidadeintervalo: Currency read getPeriodicidadeIntervalo write setPeriodicidadeIntervalo;

    

end;

type TProjetoFuncaoDetalheNovoBeneficio = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Identificador: String;
    var m_Funcao: String;
    var m_GrupoEmpresarial: String;
    var m_Empresa: String;
    var m_Registro: String;
    var m_Agrupador: String;
    var m_PeriodicidadeTipo: Integer;
    var m_PeriodicidadeIntervalo: Currency;
    

    function getIdentificador(): String;
    function getFuncao(): String;
    function getGrupoEmpresarial(): String;
    function getEmpresa(): String;
    function getRegistro(): String;
    function getAgrupador(): String;
    function getPeriodicidadeTipo(): Integer;
    function getPeriodicidadeIntervalo(): Currency;
    

    procedure setIdentificador(const a_Value: String);
    procedure setFuncao(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setRegistro(const a_Value: String);
    procedure setAgrupador(const a_Value: String);
    procedure setPeriodicidadeTipo(const a_Value: Integer);
    procedure setPeriodicidadeIntervalo(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('identificador')]
    property identificador: String read getIdentificador write setIdentificador;

    /// <summary>
/// Função à qual este Beneficio pertence.
    /// </summary>
    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

    /// <summary>
/// Utilizado para recuperar a função à que o Benefício pertence, e para localizar o próprio benefício.
    /// </summary>
    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    /// <summary>
/// Utilizado para recuperar a própria Formação Salarial.
    /// </summary>
    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    /// <summary>
/// Identificador do Benefício.
    /// </summary>
    [NasajonSerializeAttribute('registro')]
    property registro: String read getRegistro write setRegistro;

    /// <summary>
/// Campo utilizado para indicar a que agrupador este Benefício pertence.
    /// </summary>
    [NasajonSerializeAttribute('agrupador')]
    property agrupador: String read getAgrupador write setAgrupador;

    /// <summary>
/// Tipo de periodicidade do benefício. Valores possíveis: 0) Não periódico; 1) Diário; 2) Semanal; 3) Mensal; 4) Bimestral; 5) Trimestral; 6) Semestral; 7) Anual
    /// </summary>
    [NasajonSerializeAttribute('periodicidadetipo')]
    property periodicidadetipo: Integer read getPeriodicidadeTipo write setPeriodicidadeTipo;

    /// <summary>
/// Periodicidade do Benefício (verificar os tipos de periodicidade no parâmetro PeriodicidadeTipo).
    /// </summary>
    [NasajonSerializeAttribute('periodicidadeintervalo')]
    property periodicidadeintervalo: Currency read getPeriodicidadeIntervalo write setPeriodicidadeIntervalo;

    

end;

type TProjetoFuncaoDetalheDeleteByFuncao = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Funcao: String;
    var m_GrupoEmpresarial: String;
    

    function getFuncao(): String;
    function getGrupoEmpresarial(): String;
    

    procedure setFuncao(const a_Value: String);
    procedure setGrupoEmpresarial(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getGrupoEmpresarial write setGrupoEmpresarial;

    

end;

	
implementation

  uses
      api.send;  

function TProjetoFuncaoDetalheNovoAgrupador.getIdentificador: String;
begin
  Result := Self.m_Identificador;
end;

procedure TProjetoFuncaoDetalheNovoAgrupador.setIdentificador(const a_Value: String);
begin
  Self.m_Identificador := a_Value;
end;

function TProjetoFuncaoDetalheNovoAgrupador.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TProjetoFuncaoDetalheNovoAgrupador.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

function TProjetoFuncaoDetalheNovoAgrupador.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TProjetoFuncaoDetalheNovoAgrupador.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TProjetoFuncaoDetalheNovoAgrupador.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TProjetoFuncaoDetalheNovoAgrupador.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TProjetoFuncaoDetalheNovoAgrupador.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TProjetoFuncaoDetalheNovoAgrupador.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TProjetoFuncaoDetalheNovoAgrupador.Destroy;
begin

end;

function TProjetoFuncaoDetalheNovoAgrupador.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProjetoFuncaoDetalheNovoAgrupador.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProjetoFuncaoDetalheNovoAgrupador.getNameAPI(): String;
begin
  Result := 'ProjetoFuncaoDetalheNovoAgrupador';
end;

function TProjetoFuncaoDetalheNovoAgrupador.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProjetoFuncaoDetalheNovoAgrupador.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProjetoFuncaoDetalheNovoEPI.getIdentificador: String;
begin
  Result := Self.m_Identificador;
end;

procedure TProjetoFuncaoDetalheNovoEPI.setIdentificador(const a_Value: String);
begin
  Self.m_Identificador := a_Value;
end;

function TProjetoFuncaoDetalheNovoEPI.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TProjetoFuncaoDetalheNovoEPI.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

function TProjetoFuncaoDetalheNovoEPI.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TProjetoFuncaoDetalheNovoEPI.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TProjetoFuncaoDetalheNovoEPI.getRegistro: String;
begin
  Result := Self.m_Registro;
end;

procedure TProjetoFuncaoDetalheNovoEPI.setRegistro(const a_Value: String);
begin
  Self.m_Registro := a_Value;
end;

function TProjetoFuncaoDetalheNovoEPI.getAgrupador: String;
begin
  Result := Self.m_Agrupador;
end;

procedure TProjetoFuncaoDetalheNovoEPI.setAgrupador(const a_Value: String);
begin
  Self.m_Agrupador := a_Value;
end;

function TProjetoFuncaoDetalheNovoEPI.getUnidade: String;
begin
  Result := Self.m_Unidade;
end;

procedure TProjetoFuncaoDetalheNovoEPI.setUnidade(const a_Value: String);
begin
  Self.m_Unidade := a_Value;
end;

function TProjetoFuncaoDetalheNovoEPI.getQuantidade: Currency;
begin
  Result := Self.m_Quantidade;
end;

procedure TProjetoFuncaoDetalheNovoEPI.setQuantidade(const a_Value: Currency);
begin
  Self.m_Quantidade := a_Value;
end;

function TProjetoFuncaoDetalheNovoEPI.getValorUnitario: Currency;
begin
  Result := Self.m_ValorUnitario;
end;

procedure TProjetoFuncaoDetalheNovoEPI.setValorUnitario(const a_Value: Currency);
begin
  Self.m_ValorUnitario := a_Value;
end;

function TProjetoFuncaoDetalheNovoEPI.getPeriodicidadeTipo: Integer;
begin
  Result := Self.m_PeriodicidadeTipo;
end;

procedure TProjetoFuncaoDetalheNovoEPI.setPeriodicidadeTipo(const a_Value: Integer);
begin
  Self.m_PeriodicidadeTipo := a_Value;
end;

function TProjetoFuncaoDetalheNovoEPI.getPeriodicidadeIntervalo: Currency;
begin
  Result := Self.m_PeriodicidadeIntervalo;
end;

procedure TProjetoFuncaoDetalheNovoEPI.setPeriodicidadeIntervalo(const a_Value: Currency);
begin
  Self.m_PeriodicidadeIntervalo := a_Value;
end;

destructor TProjetoFuncaoDetalheNovoEPI.Destroy;
begin

end;

function TProjetoFuncaoDetalheNovoEPI.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProjetoFuncaoDetalheNovoEPI.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProjetoFuncaoDetalheNovoEPI.getNameAPI(): String;
begin
  Result := 'ProjetoFuncaoDetalheNovoEPI';
end;

function TProjetoFuncaoDetalheNovoEPI.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProjetoFuncaoDetalheNovoEPI.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.getIdentificador: String;
begin
  Result := Self.m_Identificador;
end;

procedure TProjetoFuncaoDetalheNovoFormacaoSalarial.setIdentificador(const a_Value: String);
begin
  Self.m_Identificador := a_Value;
end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TProjetoFuncaoDetalheNovoFormacaoSalarial.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TProjetoFuncaoDetalheNovoFormacaoSalarial.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TProjetoFuncaoDetalheNovoFormacaoSalarial.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.getRegistro: String;
begin
  Result := Self.m_Registro;
end;

procedure TProjetoFuncaoDetalheNovoFormacaoSalarial.setRegistro(const a_Value: String);
begin
  Self.m_Registro := a_Value;
end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.getAgrupador: String;
begin
  Result := Self.m_Agrupador;
end;

procedure TProjetoFuncaoDetalheNovoFormacaoSalarial.setAgrupador(const a_Value: String);
begin
  Self.m_Agrupador := a_Value;
end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.getPeriodicidadeTipo: Integer;
begin
  Result := Self.m_PeriodicidadeTipo;
end;

procedure TProjetoFuncaoDetalheNovoFormacaoSalarial.setPeriodicidadeTipo(const a_Value: Integer);
begin
  Self.m_PeriodicidadeTipo := a_Value;
end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.getPeriodicidadeIntervalo: Currency;
begin
  Result := Self.m_PeriodicidadeIntervalo;
end;

procedure TProjetoFuncaoDetalheNovoFormacaoSalarial.setPeriodicidadeIntervalo(const a_Value: Currency);
begin
  Self.m_PeriodicidadeIntervalo := a_Value;
end;

destructor TProjetoFuncaoDetalheNovoFormacaoSalarial.Destroy;
begin

end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.getNameAPI(): String;
begin
  Result := 'ProjetoFuncaoDetalheNovoFormacaoSalarial';
end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProjetoFuncaoDetalheNovoFormacaoSalarial.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProjetoFuncaoDetalheNovoBeneficio.getIdentificador: String;
begin
  Result := Self.m_Identificador;
end;

procedure TProjetoFuncaoDetalheNovoBeneficio.setIdentificador(const a_Value: String);
begin
  Self.m_Identificador := a_Value;
end;

function TProjetoFuncaoDetalheNovoBeneficio.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TProjetoFuncaoDetalheNovoBeneficio.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

function TProjetoFuncaoDetalheNovoBeneficio.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TProjetoFuncaoDetalheNovoBeneficio.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

function TProjetoFuncaoDetalheNovoBeneficio.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TProjetoFuncaoDetalheNovoBeneficio.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TProjetoFuncaoDetalheNovoBeneficio.getRegistro: String;
begin
  Result := Self.m_Registro;
end;

procedure TProjetoFuncaoDetalheNovoBeneficio.setRegistro(const a_Value: String);
begin
  Self.m_Registro := a_Value;
end;

function TProjetoFuncaoDetalheNovoBeneficio.getAgrupador: String;
begin
  Result := Self.m_Agrupador;
end;

procedure TProjetoFuncaoDetalheNovoBeneficio.setAgrupador(const a_Value: String);
begin
  Self.m_Agrupador := a_Value;
end;

function TProjetoFuncaoDetalheNovoBeneficio.getPeriodicidadeTipo: Integer;
begin
  Result := Self.m_PeriodicidadeTipo;
end;

procedure TProjetoFuncaoDetalheNovoBeneficio.setPeriodicidadeTipo(const a_Value: Integer);
begin
  Self.m_PeriodicidadeTipo := a_Value;
end;

function TProjetoFuncaoDetalheNovoBeneficio.getPeriodicidadeIntervalo: Currency;
begin
  Result := Self.m_PeriodicidadeIntervalo;
end;

procedure TProjetoFuncaoDetalheNovoBeneficio.setPeriodicidadeIntervalo(const a_Value: Currency);
begin
  Self.m_PeriodicidadeIntervalo := a_Value;
end;

destructor TProjetoFuncaoDetalheNovoBeneficio.Destroy;
begin

end;

function TProjetoFuncaoDetalheNovoBeneficio.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProjetoFuncaoDetalheNovoBeneficio.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProjetoFuncaoDetalheNovoBeneficio.getNameAPI(): String;
begin
  Result := 'ProjetoFuncaoDetalheNovoBeneficio';
end;

function TProjetoFuncaoDetalheNovoBeneficio.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProjetoFuncaoDetalheNovoBeneficio.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TProjetoFuncaoDetalheDeleteByFuncao.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TProjetoFuncaoDetalheDeleteByFuncao.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

function TProjetoFuncaoDetalheDeleteByFuncao.getGrupoEmpresarial: String;
begin
  Result := Self.m_GrupoEmpresarial;
end;

procedure TProjetoFuncaoDetalheDeleteByFuncao.setGrupoEmpresarial(const a_Value: String);
begin
  Self.m_GrupoEmpresarial := a_Value;
end;

destructor TProjetoFuncaoDetalheDeleteByFuncao.Destroy;
begin

end;

function TProjetoFuncaoDetalheDeleteByFuncao.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TProjetoFuncaoDetalheDeleteByFuncao.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TProjetoFuncaoDetalheDeleteByFuncao.getNameAPI(): String;
begin
  Result := 'ProjetoFuncaoDetalheDeleteByFuncao';
end;

function TProjetoFuncaoDetalheDeleteByFuncao.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TProjetoFuncaoDetalheDeleteByFuncao.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
