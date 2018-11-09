unit api.controller.persona.MovimentoEstabelecimento;

interface

  uses
    System.SysUtils,

    api.model.persona.MovimentoEstabelecimento,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIMovimentoEstabelecimento = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TMovimentoEstabelecimentoNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TMovimentoEstabelecimentoAlterarDadosGerais): TRecibo; overload;

        function AlterarCalcularNaFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaFolha(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNaFolha): TRecibo; overload;

        function AlterarCalcularNasFerias(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNasFerias(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNasFerias): TRecibo; overload;

        function AlterarCalcularNoDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoDecimoTerceiro(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro): TRecibo; overload;

        function AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro): TRecibo; overload;

        function AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha): TRecibo; overload;

        function AlterarCalcularNoPPLR(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoPPLR(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNoPPLR): TRecibo; overload;

        function AlterarCalcularNaFolhaCorretiva(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaFolhaCorretiva(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva): TRecibo; overload;

        function AlterarCalcularNaRescisao(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaRescisao(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNaRescisao): TRecibo; overload;

        function AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro): TRecibo; overload;

        function AlterarPeriodoSempre(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoSempre(const a_Objeto: TMovimentoEstabelecimentoAlterarPeriodoSempre): TRecibo; overload;

        function AlterarPeriodoProximoCalculo(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoProximoCalculo(const a_Objeto: TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo): TRecibo; overload;

        function AlterarPeriodoMensal(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoMensal(const a_Objeto: TMovimentoEstabelecimentoAlterarPeriodoMensal): TRecibo; overload;

        function AlterarPeriodoSemanal(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoSemanal(const a_Objeto: TMovimentoEstabelecimentoAlterarPeriodoSemanal): TRecibo; overload;

        function AlterarPeriodoEntreDatas(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoEntreDatas(const a_Objeto: TMovimentoEstabelecimentoAlterarPeriodoEntreDatas): TRecibo; overload;

        function AlterarPeriodoEntreMesAno(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoEntreMesAno(const a_Objeto: TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TMovimentoEstabelecimentoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.MovimentoEstabelecimento }

function TAPIMovimentoEstabelecimento.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARCALCULARNAFOLHA')
    then begin
       Result := Self.AlterarCalcularNaFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARCALCULARNASFERIAS')
    then begin
       Result := Self.AlterarCalcularNasFerias(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARCALCULARNODECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARCALCULARNOADIANTAMENTODEDECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARCALCULARNOADIANTAMENTODEFOLHA')
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARCALCULARNOPPLR')
    then begin
       Result := Self.AlterarCalcularNoPPLR(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARCALCULARNAFOLHACORRETIVA')
    then begin
       Result := Self.AlterarCalcularNaFolhaCorretiva(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARCALCULARNARESCISAO')
    then begin
       Result := Self.AlterarCalcularNaRescisao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARCALCULARNOCOMPLEMENTODEDECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARPERIODOSEMPRE')
    then begin
       Result := Self.AlterarPeriodoSempre(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARPERIODOPROXIMOCALCULO')
    then begin
       Result := Self.AlterarPeriodoProximoCalculo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARPERIODOMENSAL')
    then begin
       Result := Self.AlterarPeriodoMensal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARPERIODOSEMANAL')
    then begin
       Result := Self.AlterarPeriodoSemanal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARPERIODOENTREDATAS')
    then begin
       Result := Self.AlterarPeriodoEntreDatas(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOALTERARPERIODOENTREMESANO')
    then begin
       Result := Self.AlterarPeriodoEntreMesAno(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOESTABELECIMENTOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIMovimentoEstabelecimento.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TMovimentoEstabelecimentoNovo)
    then begin
       Result := Self.Novo(a_Param as TMovimentoEstabelecimentoNovo);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TMovimentoEstabelecimentoAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarCalcularNaFolha)
    then begin
       Result := Self.AlterarCalcularNaFolha(a_Param as TMovimentoEstabelecimentoAlterarCalcularNaFolha);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarCalcularNasFerias)
    then begin
       Result := Self.AlterarCalcularNasFerias(a_Param as TMovimentoEstabelecimentoAlterarCalcularNasFerias);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoDecimoTerceiro(a_Param as TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(a_Param as TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha)
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeFolha(a_Param as TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarCalcularNoPPLR)
    then begin
       Result := Self.AlterarCalcularNoPPLR(a_Param as TMovimentoEstabelecimentoAlterarCalcularNoPPLR);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva)
    then begin
       Result := Self.AlterarCalcularNaFolhaCorretiva(a_Param as TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarCalcularNaRescisao)
    then begin
       Result := Self.AlterarCalcularNaRescisao(a_Param as TMovimentoEstabelecimentoAlterarCalcularNaRescisao);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(a_Param as TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarPeriodoSempre)
    then begin
       Result := Self.AlterarPeriodoSempre(a_Param as TMovimentoEstabelecimentoAlterarPeriodoSempre);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo)
    then begin
       Result := Self.AlterarPeriodoProximoCalculo(a_Param as TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarPeriodoMensal)
    then begin
       Result := Self.AlterarPeriodoMensal(a_Param as TMovimentoEstabelecimentoAlterarPeriodoMensal);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarPeriodoSemanal)
    then begin
       Result := Self.AlterarPeriodoSemanal(a_Param as TMovimentoEstabelecimentoAlterarPeriodoSemanal);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarPeriodoEntreDatas)
    then begin
       Result := Self.AlterarPeriodoEntreDatas(a_Param as TMovimentoEstabelecimentoAlterarPeriodoEntreDatas);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno)
    then begin
       Result := Self.AlterarPeriodoEntreMesAno(a_Param as TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno);
       Exit();
    end;

  if (a_param is TMovimentoEstabelecimentoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TMovimentoEstabelecimentoExcluir);
       Exit();
    end;


end;

function TAPIMovimentoEstabelecimento.Novo(const a_Objeto: TMovimentoEstabelecimentoNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoNovo;

begin
  t_Modelo := TMovimentoEstabelecimentoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarDadosGerais(const a_Objeto: TMovimentoEstabelecimentoAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarDadosGerais;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNaFolha(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNaFolha): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarCalcularNaFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNaFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarCalcularNaFolha;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarCalcularNaFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNasFerias(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNasFerias): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarCalcularNasFerias', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNasFerias(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarCalcularNasFerias;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarCalcularNasFerias.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNasFerias(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNoDecimoTerceiro(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNoDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarCalcularNoDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarCalcularNoAdiantamentoDeFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoAdiantamentoDeFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNoPPLR(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNoPPLR): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarCalcularNoPPLR', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNoPPLR(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarCalcularNoPPLR;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarCalcularNoPPLR.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoPPLR(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNaFolhaCorretiva(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNaFolhaCorretiva(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarCalcularNaFolhaCorretiva.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaFolhaCorretiva(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNaRescisao(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNaRescisao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarCalcularNaRescisao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNaRescisao(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarCalcularNaRescisao;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarCalcularNaRescisao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaRescisao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarCalcularNoComplementoDeDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarPeriodoSempre(const a_Objeto: TMovimentoEstabelecimentoAlterarPeriodoSempre): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarPeriodoSempre', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarPeriodoSempre(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarPeriodoSempre;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarPeriodoSempre.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoSempre(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarPeriodoProximoCalculo(const a_Objeto: TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarPeriodoProximoCalculo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarPeriodoProximoCalculo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarPeriodoProximoCalculo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoProximoCalculo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarPeriodoMensal(const a_Objeto: TMovimentoEstabelecimentoAlterarPeriodoMensal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarPeriodoMensal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarPeriodoMensal(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarPeriodoMensal;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarPeriodoMensal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoMensal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarPeriodoSemanal(const a_Objeto: TMovimentoEstabelecimentoAlterarPeriodoSemanal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarPeriodoSemanal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarPeriodoSemanal(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarPeriodoSemanal;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarPeriodoSemanal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoSemanal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarPeriodoEntreDatas(const a_Objeto: TMovimentoEstabelecimentoAlterarPeriodoEntreDatas): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarPeriodoEntreDatas', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarPeriodoEntreDatas(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarPeriodoEntreDatas;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarPeriodoEntreDatas.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoEntreDatas(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.AlterarPeriodoEntreMesAno(const a_Objeto: TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoAlterarPeriodoEntreMesAno', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.AlterarPeriodoEntreMesAno(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno;

begin
  t_Modelo := TMovimentoEstabelecimentoAlterarPeriodoEntreMesAno.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoEntreMesAno(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEstabelecimento.Excluir(const a_Objeto: TMovimentoEstabelecimentoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEstabelecimentoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEstabelecimento.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEstabelecimentoExcluir;

begin
  t_Modelo := TMovimentoEstabelecimentoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
