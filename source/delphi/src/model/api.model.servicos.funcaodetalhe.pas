unit api.model.servicos.FuncaoDetalhe;

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

type TFuncaoDetalheNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_FuncaoDetalhe: String;
    var m_Funcao: String;
    var m_Registro: String;
    var m_RegistroTipo: Integer;
    var m_FuncaoDetalhePai: String;
    var m_Codigo: String;
    var m_Descricao: String;
    var m_Unidade: String;
    var m_Quantidade: Currency;
    var m_ValorUnitario: Currency;
    var m_ValorTotal: Currency;
    var m_PeriodicidadeTipo: Integer;
    var m_PeriodicidadeIntervalo: Currency;
    

    function getFuncaoDetalhe(): String;
    function getFuncao(): String;
    function getRegistro(): String;
    function getRegistroTipo(): Integer;
    function getFuncaoDetalhePai(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    function getUnidade(): String;
    function getQuantidade(): Currency;
    function getValorUnitario(): Currency;
    function getValorTotal(): Currency;
    function getPeriodicidadeTipo(): Integer;
    function getPeriodicidadeIntervalo(): Currency;
    

    procedure setFuncaoDetalhe(const a_Value: String);
    procedure setFuncao(const a_Value: String);
    procedure setRegistro(const a_Value: String);
    procedure setRegistroTipo(const a_Value: Integer);
    procedure setFuncaoDetalhePai(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    procedure setUnidade(const a_Value: String);
    procedure setQuantidade(const a_Value: Currency);
    procedure setValorUnitario(const a_Value: Currency);
    procedure setValorTotal(const a_Value: Currency);
    procedure setPeriodicidadeTipo(const a_Value: Integer);
    procedure setPeriodicidadeIntervalo(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcaodetalhe')]
    property funcaodetalhe: String read getFuncaoDetalhe write setFuncaoDetalhe;

    /// <summary>
/// Função à qual este detalhe pertence.
    /// </summary>
    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

    /// <summary>
/// Identificador do registro para o qual este detalhe aponta (consultar os tipos disponíveis no parâmetro RegistroTipo).
    /// </summary>
    [NasajonSerializeAttribute('registro')]
    property registro: String read getRegistro write setRegistro;

    /// <summary>
/// Tipo do detalhe, podendo assumir um dos valores: 0) Agrupador; 1) EPI; 2) Formação salarial; 3) Benefícios.
    /// </summary>
    [NasajonSerializeAttribute('registrotipo')]
    property registrotipo: Integer read getRegistroTipo write setRegistroTipo;

    /// <summary>
/// Campo utilizado para indicar a que agrupador este detalhe pertence.
    /// </summary>
    [NasajonSerializeAttribute('funcaodetalhepai')]
    property funcaodetalhepai: String read getFuncaoDetalhePai write setFuncaoDetalhePai;

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

    /// <summary>
/// Unidade de cálculo para as quantidades. Refere-se apenas a detalhes do tipo EPI.
    /// </summary>
    [NasajonSerializeAttribute('unidade')]
    property unidade: String read getUnidade write setUnidade;

    /// <summary>
/// Refere-se apenas a detalhes do tipo EPI.
    /// </summary>
    [NasajonSerializeAttribute('quantidade')]
    property quantidade: Currency read getQuantidade write setQuantidade;

    /// <summary>
/// Refere-se apenas a detalhes do tipo EPI.
    /// </summary>
    [NasajonSerializeAttribute('valorunitario')]
    property valorunitario: Currency read getValorUnitario write setValorUnitario;

    /// <summary>
/// Refere-se apenas a detalhes do tipo EPI.
    /// </summary>
    [NasajonSerializeAttribute('valortotal')]
    property valortotal: Currency read getValorTotal write setValorTotal;

    /// <summary>
/// Tipo de periodicidade do detalhe. Valores possíveis: 0) Não periódico; 1) Diário; 2) Semanal; 3) Mensal; 4) Bimestral; 5) Trimestral; 6) Semestral; 7) Anual
    /// </summary>
    [NasajonSerializeAttribute('periodicidadetipo')]
    property periodicidadetipo: Integer read getPeriodicidadeTipo write setPeriodicidadeTipo;

    /// <summary>
/// Periodicidade do detalhe (verificar os tipos de periodicidade no parâmetro PeriodicidadeTipo).
    /// </summary>
    [NasajonSerializeAttribute('periodicidadeintervalo')]
    property periodicidadeintervalo: Currency read getPeriodicidadeIntervalo write setPeriodicidadeIntervalo;

    

end;

type TFuncaoDetalheNovoAgrupador = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_FuncaoDetalhe: String;
    var m_Funcao: String;
    var m_Codigo: String;
    var m_Descricao: String;
    

    function getFuncaoDetalhe(): String;
    function getFuncao(): String;
    function getCodigo(): String;
    function getDescricao(): String;
    

    procedure setFuncaoDetalhe(const a_Value: String);
    procedure setFuncao(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setDescricao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcaodetalhe')]
    property funcaodetalhe: String read getFuncaoDetalhe write setFuncaoDetalhe;

    /// <summary>
/// Função à qual este agrupador pertence.
    /// </summary>
    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

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

type TFuncaoDetalheNovoEPI = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_FuncaoDetalhe: String;
    var m_Funcao: String;
    var m_Registro: String;
    var m_Agrupador: String;
    var m_Unidade: String;
    var m_Quantidade: Currency;
    var m_ValorUnitario: Currency;
    var m_ValorTotal: Currency;
    var m_PeriodicidadeTipo: Integer;
    var m_PeriodicidadeIntervalo: Currency;
    

    function getFuncaoDetalhe(): String;
    function getFuncao(): String;
    function getRegistro(): String;
    function getAgrupador(): String;
    function getUnidade(): String;
    function getQuantidade(): Currency;
    function getValorUnitario(): Currency;
    function getValorTotal(): Currency;
    function getPeriodicidadeTipo(): Integer;
    function getPeriodicidadeIntervalo(): Currency;
    

    procedure setFuncaoDetalhe(const a_Value: String);
    procedure setFuncao(const a_Value: String);
    procedure setRegistro(const a_Value: String);
    procedure setAgrupador(const a_Value: String);
    procedure setUnidade(const a_Value: String);
    procedure setQuantidade(const a_Value: Currency);
    procedure setValorUnitario(const a_Value: Currency);
    procedure setValorTotal(const a_Value: Currency);
    procedure setPeriodicidadeTipo(const a_Value: Integer);
    procedure setPeriodicidadeIntervalo(const a_Value: Currency);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcaodetalhe')]
    property funcaodetalhe: String read getFuncaoDetalhe write setFuncaoDetalhe;

    /// <summary>
/// Função à qual este EPI pertence.
    /// </summary>
    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

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
/// Valor total do item, normalemente calculado como (Valor Unitário * Quantidade).
    /// </summary>
    [NasajonSerializeAttribute('valortotal')]
    property valortotal: Currency read getValorTotal write setValorTotal;

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

type TFuncaoDetalheNovoFormacaoSalarial = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_FuncaoDetalhe: String;
    var m_Funcao: String;
    var m_Registro: String;
    var m_Agrupador: String;
    var m_PeriodicidadeTipo: Integer;
    var m_PeriodicidadeIntervalo: Currency;
    

    function getFuncaoDetalhe(): String;
    function getFuncao(): String;
    function getRegistro(): String;
    function getAgrupador(): String;
    function getPeriodicidadeTipo(): Integer;
    function getPeriodicidadeIntervalo(): Currency;
    

    procedure setFuncaoDetalhe(const a_Value: String);
    procedure setFuncao(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcaodetalhe')]
    property funcaodetalhe: String read getFuncaoDetalhe write setFuncaoDetalhe;

    /// <summary>
/// Função à qual esta Formação Salarial pertence.
    /// </summary>
    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

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

type TFuncaoDetalheNovoBeneficio = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_FuncaoDetalhe: String;
    var m_Funcao: String;
    var m_Registro: String;
    var m_Agrupador: String;
    var m_PeriodicidadeTipo: Integer;
    var m_PeriodicidadeIntervalo: Currency;
    

    function getFuncaoDetalhe(): String;
    function getFuncao(): String;
    function getRegistro(): String;
    function getAgrupador(): String;
    function getPeriodicidadeTipo(): Integer;
    function getPeriodicidadeIntervalo(): Currency;
    

    procedure setFuncaoDetalhe(const a_Value: String);
    procedure setFuncao(const a_Value: String);
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
    

    [NasajonSerializeAttribute('funcaodetalhe')]
    property funcaodetalhe: String read getFuncaoDetalhe write setFuncaoDetalhe;

    /// <summary>
/// Função à qual este Beneficio pertence.
    /// </summary>
    [NasajonSerializeAttribute('funcao')]
    property funcao: String read getFuncao write setFuncao;

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

type TFuncaoDetalheExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_FuncaoDetalhe: String;
    

    function getFuncaoDetalhe(): String;
    

    procedure setFuncaoDetalhe(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('funcaodetalhe')]
    property funcaodetalhe: String read getFuncaoDetalhe write setFuncaoDetalhe;

    

end;

	
implementation

  uses
      api.send;  

function TFuncaoDetalheNovo.getFuncaoDetalhe: String;
begin
  Result := Self.m_FuncaoDetalhe;
end;

procedure TFuncaoDetalheNovo.setFuncaoDetalhe(const a_Value: String);
begin
  Self.m_FuncaoDetalhe := a_Value;
end;

function TFuncaoDetalheNovo.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TFuncaoDetalheNovo.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

function TFuncaoDetalheNovo.getRegistro: String;
begin
  Result := Self.m_Registro;
end;

procedure TFuncaoDetalheNovo.setRegistro(const a_Value: String);
begin
  Self.m_Registro := a_Value;
end;

function TFuncaoDetalheNovo.getRegistroTipo: Integer;
begin
  Result := Self.m_RegistroTipo;
end;

procedure TFuncaoDetalheNovo.setRegistroTipo(const a_Value: Integer);
begin
  Self.m_RegistroTipo := a_Value;
end;

function TFuncaoDetalheNovo.getFuncaoDetalhePai: String;
begin
  Result := Self.m_FuncaoDetalhePai;
end;

procedure TFuncaoDetalheNovo.setFuncaoDetalhePai(const a_Value: String);
begin
  Self.m_FuncaoDetalhePai := a_Value;
end;

function TFuncaoDetalheNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TFuncaoDetalheNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TFuncaoDetalheNovo.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TFuncaoDetalheNovo.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

function TFuncaoDetalheNovo.getUnidade: String;
begin
  Result := Self.m_Unidade;
end;

procedure TFuncaoDetalheNovo.setUnidade(const a_Value: String);
begin
  Self.m_Unidade := a_Value;
end;

function TFuncaoDetalheNovo.getQuantidade: Currency;
begin
  Result := Self.m_Quantidade;
end;

procedure TFuncaoDetalheNovo.setQuantidade(const a_Value: Currency);
begin
  Self.m_Quantidade := a_Value;
end;

function TFuncaoDetalheNovo.getValorUnitario: Currency;
begin
  Result := Self.m_ValorUnitario;
end;

procedure TFuncaoDetalheNovo.setValorUnitario(const a_Value: Currency);
begin
  Self.m_ValorUnitario := a_Value;
end;

function TFuncaoDetalheNovo.getValorTotal: Currency;
begin
  Result := Self.m_ValorTotal;
end;

procedure TFuncaoDetalheNovo.setValorTotal(const a_Value: Currency);
begin
  Self.m_ValorTotal := a_Value;
end;

function TFuncaoDetalheNovo.getPeriodicidadeTipo: Integer;
begin
  Result := Self.m_PeriodicidadeTipo;
end;

procedure TFuncaoDetalheNovo.setPeriodicidadeTipo(const a_Value: Integer);
begin
  Self.m_PeriodicidadeTipo := a_Value;
end;

function TFuncaoDetalheNovo.getPeriodicidadeIntervalo: Currency;
begin
  Result := Self.m_PeriodicidadeIntervalo;
end;

procedure TFuncaoDetalheNovo.setPeriodicidadeIntervalo(const a_Value: Currency);
begin
  Self.m_PeriodicidadeIntervalo := a_Value;
end;

destructor TFuncaoDetalheNovo.Destroy;
begin

end;

function TFuncaoDetalheNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncaoDetalheNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncaoDetalheNovo.getNameAPI(): String;
begin
  Result := 'FuncaoDetalheNovo';
end;

function TFuncaoDetalheNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncaoDetalheNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncaoDetalheNovoAgrupador.getFuncaoDetalhe: String;
begin
  Result := Self.m_FuncaoDetalhe;
end;

procedure TFuncaoDetalheNovoAgrupador.setFuncaoDetalhe(const a_Value: String);
begin
  Self.m_FuncaoDetalhe := a_Value;
end;

function TFuncaoDetalheNovoAgrupador.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TFuncaoDetalheNovoAgrupador.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

function TFuncaoDetalheNovoAgrupador.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TFuncaoDetalheNovoAgrupador.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TFuncaoDetalheNovoAgrupador.getDescricao: String;
begin
  Result := Self.m_Descricao;
end;

procedure TFuncaoDetalheNovoAgrupador.setDescricao(const a_Value: String);
begin
  Self.m_Descricao := a_Value;
end;

destructor TFuncaoDetalheNovoAgrupador.Destroy;
begin

end;

function TFuncaoDetalheNovoAgrupador.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncaoDetalheNovoAgrupador.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncaoDetalheNovoAgrupador.getNameAPI(): String;
begin
  Result := 'FuncaoDetalheNovoAgrupador';
end;

function TFuncaoDetalheNovoAgrupador.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncaoDetalheNovoAgrupador.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncaoDetalheNovoEPI.getFuncaoDetalhe: String;
begin
  Result := Self.m_FuncaoDetalhe;
end;

procedure TFuncaoDetalheNovoEPI.setFuncaoDetalhe(const a_Value: String);
begin
  Self.m_FuncaoDetalhe := a_Value;
end;

function TFuncaoDetalheNovoEPI.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TFuncaoDetalheNovoEPI.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

function TFuncaoDetalheNovoEPI.getRegistro: String;
begin
  Result := Self.m_Registro;
end;

procedure TFuncaoDetalheNovoEPI.setRegistro(const a_Value: String);
begin
  Self.m_Registro := a_Value;
end;

function TFuncaoDetalheNovoEPI.getAgrupador: String;
begin
  Result := Self.m_Agrupador;
end;

procedure TFuncaoDetalheNovoEPI.setAgrupador(const a_Value: String);
begin
  Self.m_Agrupador := a_Value;
end;

function TFuncaoDetalheNovoEPI.getUnidade: String;
begin
  Result := Self.m_Unidade;
end;

procedure TFuncaoDetalheNovoEPI.setUnidade(const a_Value: String);
begin
  Self.m_Unidade := a_Value;
end;

function TFuncaoDetalheNovoEPI.getQuantidade: Currency;
begin
  Result := Self.m_Quantidade;
end;

procedure TFuncaoDetalheNovoEPI.setQuantidade(const a_Value: Currency);
begin
  Self.m_Quantidade := a_Value;
end;

function TFuncaoDetalheNovoEPI.getValorUnitario: Currency;
begin
  Result := Self.m_ValorUnitario;
end;

procedure TFuncaoDetalheNovoEPI.setValorUnitario(const a_Value: Currency);
begin
  Self.m_ValorUnitario := a_Value;
end;

function TFuncaoDetalheNovoEPI.getValorTotal: Currency;
begin
  Result := Self.m_ValorTotal;
end;

procedure TFuncaoDetalheNovoEPI.setValorTotal(const a_Value: Currency);
begin
  Self.m_ValorTotal := a_Value;
end;

function TFuncaoDetalheNovoEPI.getPeriodicidadeTipo: Integer;
begin
  Result := Self.m_PeriodicidadeTipo;
end;

procedure TFuncaoDetalheNovoEPI.setPeriodicidadeTipo(const a_Value: Integer);
begin
  Self.m_PeriodicidadeTipo := a_Value;
end;

function TFuncaoDetalheNovoEPI.getPeriodicidadeIntervalo: Currency;
begin
  Result := Self.m_PeriodicidadeIntervalo;
end;

procedure TFuncaoDetalheNovoEPI.setPeriodicidadeIntervalo(const a_Value: Currency);
begin
  Self.m_PeriodicidadeIntervalo := a_Value;
end;

destructor TFuncaoDetalheNovoEPI.Destroy;
begin

end;

function TFuncaoDetalheNovoEPI.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncaoDetalheNovoEPI.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncaoDetalheNovoEPI.getNameAPI(): String;
begin
  Result := 'FuncaoDetalheNovoEPI';
end;

function TFuncaoDetalheNovoEPI.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncaoDetalheNovoEPI.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncaoDetalheNovoFormacaoSalarial.getFuncaoDetalhe: String;
begin
  Result := Self.m_FuncaoDetalhe;
end;

procedure TFuncaoDetalheNovoFormacaoSalarial.setFuncaoDetalhe(const a_Value: String);
begin
  Self.m_FuncaoDetalhe := a_Value;
end;

function TFuncaoDetalheNovoFormacaoSalarial.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TFuncaoDetalheNovoFormacaoSalarial.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

function TFuncaoDetalheNovoFormacaoSalarial.getRegistro: String;
begin
  Result := Self.m_Registro;
end;

procedure TFuncaoDetalheNovoFormacaoSalarial.setRegistro(const a_Value: String);
begin
  Self.m_Registro := a_Value;
end;

function TFuncaoDetalheNovoFormacaoSalarial.getAgrupador: String;
begin
  Result := Self.m_Agrupador;
end;

procedure TFuncaoDetalheNovoFormacaoSalarial.setAgrupador(const a_Value: String);
begin
  Self.m_Agrupador := a_Value;
end;

function TFuncaoDetalheNovoFormacaoSalarial.getPeriodicidadeTipo: Integer;
begin
  Result := Self.m_PeriodicidadeTipo;
end;

procedure TFuncaoDetalheNovoFormacaoSalarial.setPeriodicidadeTipo(const a_Value: Integer);
begin
  Self.m_PeriodicidadeTipo := a_Value;
end;

function TFuncaoDetalheNovoFormacaoSalarial.getPeriodicidadeIntervalo: Currency;
begin
  Result := Self.m_PeriodicidadeIntervalo;
end;

procedure TFuncaoDetalheNovoFormacaoSalarial.setPeriodicidadeIntervalo(const a_Value: Currency);
begin
  Self.m_PeriodicidadeIntervalo := a_Value;
end;

destructor TFuncaoDetalheNovoFormacaoSalarial.Destroy;
begin

end;

function TFuncaoDetalheNovoFormacaoSalarial.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncaoDetalheNovoFormacaoSalarial.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncaoDetalheNovoFormacaoSalarial.getNameAPI(): String;
begin
  Result := 'FuncaoDetalheNovoFormacaoSalarial';
end;

function TFuncaoDetalheNovoFormacaoSalarial.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncaoDetalheNovoFormacaoSalarial.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncaoDetalheNovoBeneficio.getFuncaoDetalhe: String;
begin
  Result := Self.m_FuncaoDetalhe;
end;

procedure TFuncaoDetalheNovoBeneficio.setFuncaoDetalhe(const a_Value: String);
begin
  Self.m_FuncaoDetalhe := a_Value;
end;

function TFuncaoDetalheNovoBeneficio.getFuncao: String;
begin
  Result := Self.m_Funcao;
end;

procedure TFuncaoDetalheNovoBeneficio.setFuncao(const a_Value: String);
begin
  Self.m_Funcao := a_Value;
end;

function TFuncaoDetalheNovoBeneficio.getRegistro: String;
begin
  Result := Self.m_Registro;
end;

procedure TFuncaoDetalheNovoBeneficio.setRegistro(const a_Value: String);
begin
  Self.m_Registro := a_Value;
end;

function TFuncaoDetalheNovoBeneficio.getAgrupador: String;
begin
  Result := Self.m_Agrupador;
end;

procedure TFuncaoDetalheNovoBeneficio.setAgrupador(const a_Value: String);
begin
  Self.m_Agrupador := a_Value;
end;

function TFuncaoDetalheNovoBeneficio.getPeriodicidadeTipo: Integer;
begin
  Result := Self.m_PeriodicidadeTipo;
end;

procedure TFuncaoDetalheNovoBeneficio.setPeriodicidadeTipo(const a_Value: Integer);
begin
  Self.m_PeriodicidadeTipo := a_Value;
end;

function TFuncaoDetalheNovoBeneficio.getPeriodicidadeIntervalo: Currency;
begin
  Result := Self.m_PeriodicidadeIntervalo;
end;

procedure TFuncaoDetalheNovoBeneficio.setPeriodicidadeIntervalo(const a_Value: Currency);
begin
  Self.m_PeriodicidadeIntervalo := a_Value;
end;

destructor TFuncaoDetalheNovoBeneficio.Destroy;
begin

end;

function TFuncaoDetalheNovoBeneficio.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncaoDetalheNovoBeneficio.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncaoDetalheNovoBeneficio.getNameAPI(): String;
begin
  Result := 'FuncaoDetalheNovoBeneficio';
end;

function TFuncaoDetalheNovoBeneficio.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncaoDetalheNovoBeneficio.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TFuncaoDetalheExcluir.getFuncaoDetalhe: String;
begin
  Result := Self.m_FuncaoDetalhe;
end;

procedure TFuncaoDetalheExcluir.setFuncaoDetalhe(const a_Value: String);
begin
  Self.m_FuncaoDetalhe := a_Value;
end;

destructor TFuncaoDetalheExcluir.Destroy;
begin

end;

function TFuncaoDetalheExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TFuncaoDetalheExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TFuncaoDetalheExcluir.getNameAPI(): String;
begin
  Result := 'FuncaoDetalheExcluir';
end;

function TFuncaoDetalheExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TFuncaoDetalheExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
