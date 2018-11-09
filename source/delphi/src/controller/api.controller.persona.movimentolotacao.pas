unit api.controller.persona.MovimentoLotacao;

interface

  uses
    System.SysUtils,

    api.model.persona.MovimentoLotacao,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIMovimentoLotacao = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TMovimentoLotacaoNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TMovimentoLotacaoAlterarDadosGerais): TRecibo; overload;

        function AlterarCalcularNaFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaFolha(const a_Objeto: TMovimentoLotacaoAlterarCalcularNaFolha): TRecibo; overload;

        function AlterarCalcularNasFerias(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNasFerias(const a_Objeto: TMovimentoLotacaoAlterarCalcularNasFerias): TRecibo; overload;

        function AlterarCalcularNoDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoDecimoTerceiro(const a_Objeto: TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro): TRecibo; overload;

        function AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro): TRecibo; overload;

        function AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha): TRecibo; overload;

        function AlterarCalcularNoPPLR(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoPPLR(const a_Objeto: TMovimentoLotacaoAlterarCalcularNoPPLR): TRecibo; overload;

        function AlterarCalcularNaFolhaCorretiva(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaFolhaCorretiva(const a_Objeto: TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva): TRecibo; overload;

        function AlterarCalcularNaRescisao(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaRescisao(const a_Objeto: TMovimentoLotacaoAlterarCalcularNaRescisao): TRecibo; overload;

        function AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro): TRecibo; overload;

        function AlterarPeriodoSempre(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoSempre(const a_Objeto: TMovimentoLotacaoAlterarPeriodoSempre): TRecibo; overload;

        function AlterarPeriodoProximoCalculo(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoProximoCalculo(const a_Objeto: TMovimentoLotacaoAlterarPeriodoProximoCalculo): TRecibo; overload;

        function AlterarPeriodoMensal(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoMensal(const a_Objeto: TMovimentoLotacaoAlterarPeriodoMensal): TRecibo; overload;

        function AlterarPeriodoSemanal(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoSemanal(const a_Objeto: TMovimentoLotacaoAlterarPeriodoSemanal): TRecibo; overload;

        function AlterarPeriodoEntreDatas(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoEntreDatas(const a_Objeto: TMovimentoLotacaoAlterarPeriodoEntreDatas): TRecibo; overload;

        function AlterarPeriodoEntreMesAno(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoEntreMesAno(const a_Objeto: TMovimentoLotacaoAlterarPeriodoEntreMesAno): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TMovimentoLotacaoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.MovimentoLotacao }

function TAPIMovimentoLotacao.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'MOVIMENTOLOTACAONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARCALCULARNAFOLHA')
    then begin
       Result := Self.AlterarCalcularNaFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARCALCULARNASFERIAS')
    then begin
       Result := Self.AlterarCalcularNasFerias(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARCALCULARNODECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARCALCULARNOADIANTAMENTODEDECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARCALCULARNOADIANTAMENTODEFOLHA')
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARCALCULARNOPPLR')
    then begin
       Result := Self.AlterarCalcularNoPPLR(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARCALCULARNAFOLHACORRETIVA')
    then begin
       Result := Self.AlterarCalcularNaFolhaCorretiva(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARCALCULARNARESCISAO')
    then begin
       Result := Self.AlterarCalcularNaRescisao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARCALCULARNOCOMPLEMENTODEDECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARPERIODOSEMPRE')
    then begin
       Result := Self.AlterarPeriodoSempre(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARPERIODOPROXIMOCALCULO')
    then begin
       Result := Self.AlterarPeriodoProximoCalculo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARPERIODOMENSAL')
    then begin
       Result := Self.AlterarPeriodoMensal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARPERIODOSEMANAL')
    then begin
       Result := Self.AlterarPeriodoSemanal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARPERIODOENTREDATAS')
    then begin
       Result := Self.AlterarPeriodoEntreDatas(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOALTERARPERIODOENTREMESANO')
    then begin
       Result := Self.AlterarPeriodoEntreMesAno(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOLOTACAOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIMovimentoLotacao.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TMovimentoLotacaoNovo)
    then begin
       Result := Self.Novo(a_Param as TMovimentoLotacaoNovo);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TMovimentoLotacaoAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarCalcularNaFolha)
    then begin
       Result := Self.AlterarCalcularNaFolha(a_Param as TMovimentoLotacaoAlterarCalcularNaFolha);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarCalcularNasFerias)
    then begin
       Result := Self.AlterarCalcularNasFerias(a_Param as TMovimentoLotacaoAlterarCalcularNasFerias);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoDecimoTerceiro(a_Param as TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(a_Param as TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha)
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeFolha(a_Param as TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarCalcularNoPPLR)
    then begin
       Result := Self.AlterarCalcularNoPPLR(a_Param as TMovimentoLotacaoAlterarCalcularNoPPLR);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva)
    then begin
       Result := Self.AlterarCalcularNaFolhaCorretiva(a_Param as TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarCalcularNaRescisao)
    then begin
       Result := Self.AlterarCalcularNaRescisao(a_Param as TMovimentoLotacaoAlterarCalcularNaRescisao);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(a_Param as TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarPeriodoSempre)
    then begin
       Result := Self.AlterarPeriodoSempre(a_Param as TMovimentoLotacaoAlterarPeriodoSempre);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarPeriodoProximoCalculo)
    then begin
       Result := Self.AlterarPeriodoProximoCalculo(a_Param as TMovimentoLotacaoAlterarPeriodoProximoCalculo);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarPeriodoMensal)
    then begin
       Result := Self.AlterarPeriodoMensal(a_Param as TMovimentoLotacaoAlterarPeriodoMensal);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarPeriodoSemanal)
    then begin
       Result := Self.AlterarPeriodoSemanal(a_Param as TMovimentoLotacaoAlterarPeriodoSemanal);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarPeriodoEntreDatas)
    then begin
       Result := Self.AlterarPeriodoEntreDatas(a_Param as TMovimentoLotacaoAlterarPeriodoEntreDatas);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoAlterarPeriodoEntreMesAno)
    then begin
       Result := Self.AlterarPeriodoEntreMesAno(a_Param as TMovimentoLotacaoAlterarPeriodoEntreMesAno);
       Exit();
    end;

  if (a_param is TMovimentoLotacaoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TMovimentoLotacaoExcluir);
       Exit();
    end;


end;

function TAPIMovimentoLotacao.Novo(const a_Objeto: TMovimentoLotacaoNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoNovo;

begin
  t_Modelo := TMovimentoLotacaoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarDadosGerais(const a_Objeto: TMovimentoLotacaoAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarDadosGerais;

begin
  t_Modelo := TMovimentoLotacaoAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarCalcularNaFolha(const a_Objeto: TMovimentoLotacaoAlterarCalcularNaFolha): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarCalcularNaFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarCalcularNaFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarCalcularNaFolha;

begin
  t_Modelo := TMovimentoLotacaoAlterarCalcularNaFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarCalcularNasFerias(const a_Objeto: TMovimentoLotacaoAlterarCalcularNasFerias): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarCalcularNasFerias', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarCalcularNasFerias(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarCalcularNasFerias;

begin
  t_Modelo := TMovimentoLotacaoAlterarCalcularNasFerias.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNasFerias(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarCalcularNoDecimoTerceiro(const a_Objeto: TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarCalcularNoDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarCalcularNoDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro;

begin
  t_Modelo := TMovimentoLotacaoAlterarCalcularNoDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro;

begin
  t_Modelo := TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha;

begin
  t_Modelo := TMovimentoLotacaoAlterarCalcularNoAdiantamentoDeFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoAdiantamentoDeFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarCalcularNoPPLR(const a_Objeto: TMovimentoLotacaoAlterarCalcularNoPPLR): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarCalcularNoPPLR', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarCalcularNoPPLR(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarCalcularNoPPLR;

begin
  t_Modelo := TMovimentoLotacaoAlterarCalcularNoPPLR.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoPPLR(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarCalcularNaFolhaCorretiva(const a_Objeto: TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarCalcularNaFolhaCorretiva', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarCalcularNaFolhaCorretiva(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva;

begin
  t_Modelo := TMovimentoLotacaoAlterarCalcularNaFolhaCorretiva.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaFolhaCorretiva(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarCalcularNaRescisao(const a_Objeto: TMovimentoLotacaoAlterarCalcularNaRescisao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarCalcularNaRescisao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarCalcularNaRescisao(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarCalcularNaRescisao;

begin
  t_Modelo := TMovimentoLotacaoAlterarCalcularNaRescisao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaRescisao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro;

begin
  t_Modelo := TMovimentoLotacaoAlterarCalcularNoComplementoDeDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarPeriodoSempre(const a_Objeto: TMovimentoLotacaoAlterarPeriodoSempre): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarPeriodoSempre', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarPeriodoSempre(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarPeriodoSempre;

begin
  t_Modelo := TMovimentoLotacaoAlterarPeriodoSempre.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoSempre(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarPeriodoProximoCalculo(const a_Objeto: TMovimentoLotacaoAlterarPeriodoProximoCalculo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarPeriodoProximoCalculo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarPeriodoProximoCalculo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarPeriodoProximoCalculo;

begin
  t_Modelo := TMovimentoLotacaoAlterarPeriodoProximoCalculo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoProximoCalculo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarPeriodoMensal(const a_Objeto: TMovimentoLotacaoAlterarPeriodoMensal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarPeriodoMensal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarPeriodoMensal(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarPeriodoMensal;

begin
  t_Modelo := TMovimentoLotacaoAlterarPeriodoMensal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoMensal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarPeriodoSemanal(const a_Objeto: TMovimentoLotacaoAlterarPeriodoSemanal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarPeriodoSemanal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarPeriodoSemanal(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarPeriodoSemanal;

begin
  t_Modelo := TMovimentoLotacaoAlterarPeriodoSemanal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoSemanal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarPeriodoEntreDatas(const a_Objeto: TMovimentoLotacaoAlterarPeriodoEntreDatas): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarPeriodoEntreDatas', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarPeriodoEntreDatas(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarPeriodoEntreDatas;

begin
  t_Modelo := TMovimentoLotacaoAlterarPeriodoEntreDatas.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoEntreDatas(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.AlterarPeriodoEntreMesAno(const a_Objeto: TMovimentoLotacaoAlterarPeriodoEntreMesAno): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoAlterarPeriodoEntreMesAno', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.AlterarPeriodoEntreMesAno(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoAlterarPeriodoEntreMesAno;

begin
  t_Modelo := TMovimentoLotacaoAlterarPeriodoEntreMesAno.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoEntreMesAno(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoLotacao.Excluir(const a_Objeto: TMovimentoLotacaoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoLotacaoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoLotacao.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoLotacaoExcluir;

begin
  t_Modelo := TMovimentoLotacaoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
