unit api.controller.persona.MovimentoFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.MovimentoFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIMovimentoFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TMovimentoFuncionarioNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TMovimentoFuncionarioAlterarDadosGerais): TRecibo; overload;

        function AlterarCalcularNaFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaFolha(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNaFolha): TRecibo; overload;

        function AlterarCalcularNasFerias(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNasFerias(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNasFerias): TRecibo; overload;

        function AlterarCalcularNoDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoDecimoTerceiro(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro): TRecibo; overload;

        function AlterarCalcularNoAdiantamento13(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoAdiantamento13(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNoAdiantamento13): TRecibo; overload;

        function AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha): TRecibo; overload;

        function AlterarCalcularNoPPLR(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoPPLR(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNoPPLR): TRecibo; overload;

        function AlterarCalcularNaFolhaCorretiva(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaFolhaCorretiva(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva): TRecibo; overload;

        function AlterarCalcularNaRescisao(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaRescisao(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNaRescisao): TRecibo; overload;

        function AlterarCalcularNoComplemento13(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoComplemento13(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNoComplemento13): TRecibo; overload;

        function AlterarPeriodoSempre(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoSempre(const a_Objeto: TMovimentoFuncionarioAlterarPeriodoSempre): TRecibo; overload;

        function AlterarPeriodoProximoCalculo(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoProximoCalculo(const a_Objeto: TMovimentoFuncionarioAlterarPeriodoProximoCalculo): TRecibo; overload;

        function AlterarPeriodoMensal(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoMensal(const a_Objeto: TMovimentoFuncionarioAlterarPeriodoMensal): TRecibo; overload;

        function AlterarPeriodoSemanal(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoSemanal(const a_Objeto: TMovimentoFuncionarioAlterarPeriodoSemanal): TRecibo; overload;

        function AlterarPeriodoEntreDatas(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoEntreDatas(const a_Objeto: TMovimentoFuncionarioAlterarPeriodoEntreDatas): TRecibo; overload;

        function AlterarPeriodoEntreMesAno(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoEntreMesAno(const a_Objeto: TMovimentoFuncionarioAlterarPeriodoEntreMesAno): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TMovimentoFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.MovimentoFuncionario }

function TAPIMovimentoFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARCALCULARNAFOLHA')
    then begin
       Result := Self.AlterarCalcularNaFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARCALCULARNASFERIAS')
    then begin
       Result := Self.AlterarCalcularNasFerias(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARCALCULARNODECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARCALCULARNOADIANTAMENTO13')
    then begin
       Result := Self.AlterarCalcularNoAdiantamento13(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARCALCULARNOADIANTAMENTODEFOLHA')
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARCALCULARNOPPLR')
    then begin
       Result := Self.AlterarCalcularNoPPLR(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARCALCULARNAFOLHACORRETIVA')
    then begin
       Result := Self.AlterarCalcularNaFolhaCorretiva(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARCALCULARNARESCISAO')
    then begin
       Result := Self.AlterarCalcularNaRescisao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARCALCULARNOCOMPLEMENTO13')
    then begin
       Result := Self.AlterarCalcularNoComplemento13(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARPERIODOSEMPRE')
    then begin
       Result := Self.AlterarPeriodoSempre(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARPERIODOPROXIMOCALCULO')
    then begin
       Result := Self.AlterarPeriodoProximoCalculo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARPERIODOMENSAL')
    then begin
       Result := Self.AlterarPeriodoMensal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARPERIODOSEMANAL')
    then begin
       Result := Self.AlterarPeriodoSemanal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARPERIODOENTREDATAS')
    then begin
       Result := Self.AlterarPeriodoEntreDatas(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOALTERARPERIODOENTREMESANO')
    then begin
       Result := Self.AlterarPeriodoEntreMesAno(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOFUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIMovimentoFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TMovimentoFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as TMovimentoFuncionarioNovo);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TMovimentoFuncionarioAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarCalcularNaFolha)
    then begin
       Result := Self.AlterarCalcularNaFolha(a_Param as TMovimentoFuncionarioAlterarCalcularNaFolha);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarCalcularNasFerias)
    then begin
       Result := Self.AlterarCalcularNasFerias(a_Param as TMovimentoFuncionarioAlterarCalcularNasFerias);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoDecimoTerceiro(a_Param as TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarCalcularNoAdiantamento13)
    then begin
       Result := Self.AlterarCalcularNoAdiantamento13(a_Param as TMovimentoFuncionarioAlterarCalcularNoAdiantamento13);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha)
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeFolha(a_Param as TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarCalcularNoPPLR)
    then begin
       Result := Self.AlterarCalcularNoPPLR(a_Param as TMovimentoFuncionarioAlterarCalcularNoPPLR);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva)
    then begin
       Result := Self.AlterarCalcularNaFolhaCorretiva(a_Param as TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarCalcularNaRescisao)
    then begin
       Result := Self.AlterarCalcularNaRescisao(a_Param as TMovimentoFuncionarioAlterarCalcularNaRescisao);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarCalcularNoComplemento13)
    then begin
       Result := Self.AlterarCalcularNoComplemento13(a_Param as TMovimentoFuncionarioAlterarCalcularNoComplemento13);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarPeriodoSempre)
    then begin
       Result := Self.AlterarPeriodoSempre(a_Param as TMovimentoFuncionarioAlterarPeriodoSempre);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarPeriodoProximoCalculo)
    then begin
       Result := Self.AlterarPeriodoProximoCalculo(a_Param as TMovimentoFuncionarioAlterarPeriodoProximoCalculo);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarPeriodoMensal)
    then begin
       Result := Self.AlterarPeriodoMensal(a_Param as TMovimentoFuncionarioAlterarPeriodoMensal);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarPeriodoSemanal)
    then begin
       Result := Self.AlterarPeriodoSemanal(a_Param as TMovimentoFuncionarioAlterarPeriodoSemanal);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarPeriodoEntreDatas)
    then begin
       Result := Self.AlterarPeriodoEntreDatas(a_Param as TMovimentoFuncionarioAlterarPeriodoEntreDatas);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioAlterarPeriodoEntreMesAno)
    then begin
       Result := Self.AlterarPeriodoEntreMesAno(a_Param as TMovimentoFuncionarioAlterarPeriodoEntreMesAno);
       Exit();
    end;

  if (a_param is TMovimentoFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TMovimentoFuncionarioExcluir);
       Exit();
    end;


end;

function TAPIMovimentoFuncionario.Novo(const a_Objeto: TMovimentoFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioNovo;

begin
  t_Modelo := TMovimentoFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarDadosGerais(const a_Objeto: TMovimentoFuncionarioAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarDadosGerais;

begin
  t_Modelo := TMovimentoFuncionarioAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarCalcularNaFolha(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNaFolha): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarCalcularNaFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarCalcularNaFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarCalcularNaFolha;

begin
  t_Modelo := TMovimentoFuncionarioAlterarCalcularNaFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarCalcularNasFerias(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNasFerias): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarCalcularNasFerias', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarCalcularNasFerias(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarCalcularNasFerias;

begin
  t_Modelo := TMovimentoFuncionarioAlterarCalcularNasFerias.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNasFerias(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarCalcularNoDecimoTerceiro(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarCalcularNoDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarCalcularNoDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro;

begin
  t_Modelo := TMovimentoFuncionarioAlterarCalcularNoDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarCalcularNoAdiantamento13(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNoAdiantamento13): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarCalcularNoAdiantamento13', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarCalcularNoAdiantamento13(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarCalcularNoAdiantamento13;

begin
  t_Modelo := TMovimentoFuncionarioAlterarCalcularNoAdiantamento13.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoAdiantamento13(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha;

begin
  t_Modelo := TMovimentoFuncionarioAlterarCalcularNoAdiantamentoDeFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoAdiantamentoDeFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarCalcularNoPPLR(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNoPPLR): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarCalcularNoPPLR', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarCalcularNoPPLR(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarCalcularNoPPLR;

begin
  t_Modelo := TMovimentoFuncionarioAlterarCalcularNoPPLR.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoPPLR(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarCalcularNaFolhaCorretiva(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarCalcularNaFolhaCorretiva', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarCalcularNaFolhaCorretiva(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva;

begin
  t_Modelo := TMovimentoFuncionarioAlterarCalcularNaFolhaCorretiva.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaFolhaCorretiva(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarCalcularNaRescisao(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNaRescisao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarCalcularNaRescisao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarCalcularNaRescisao(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarCalcularNaRescisao;

begin
  t_Modelo := TMovimentoFuncionarioAlterarCalcularNaRescisao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaRescisao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarCalcularNoComplemento13(const a_Objeto: TMovimentoFuncionarioAlterarCalcularNoComplemento13): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarCalcularNoComplemento13', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarCalcularNoComplemento13(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarCalcularNoComplemento13;

begin
  t_Modelo := TMovimentoFuncionarioAlterarCalcularNoComplemento13.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoComplemento13(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarPeriodoSempre(const a_Objeto: TMovimentoFuncionarioAlterarPeriodoSempre): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarPeriodoSempre', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarPeriodoSempre(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarPeriodoSempre;

begin
  t_Modelo := TMovimentoFuncionarioAlterarPeriodoSempre.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoSempre(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarPeriodoProximoCalculo(const a_Objeto: TMovimentoFuncionarioAlterarPeriodoProximoCalculo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarPeriodoProximoCalculo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarPeriodoProximoCalculo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarPeriodoProximoCalculo;

begin
  t_Modelo := TMovimentoFuncionarioAlterarPeriodoProximoCalculo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoProximoCalculo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarPeriodoMensal(const a_Objeto: TMovimentoFuncionarioAlterarPeriodoMensal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarPeriodoMensal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarPeriodoMensal(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarPeriodoMensal;

begin
  t_Modelo := TMovimentoFuncionarioAlterarPeriodoMensal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoMensal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarPeriodoSemanal(const a_Objeto: TMovimentoFuncionarioAlterarPeriodoSemanal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarPeriodoSemanal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarPeriodoSemanal(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarPeriodoSemanal;

begin
  t_Modelo := TMovimentoFuncionarioAlterarPeriodoSemanal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoSemanal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarPeriodoEntreDatas(const a_Objeto: TMovimentoFuncionarioAlterarPeriodoEntreDatas): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarPeriodoEntreDatas', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarPeriodoEntreDatas(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarPeriodoEntreDatas;

begin
  t_Modelo := TMovimentoFuncionarioAlterarPeriodoEntreDatas.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoEntreDatas(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.AlterarPeriodoEntreMesAno(const a_Objeto: TMovimentoFuncionarioAlterarPeriodoEntreMesAno): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioAlterarPeriodoEntreMesAno', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.AlterarPeriodoEntreMesAno(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioAlterarPeriodoEntreMesAno;

begin
  t_Modelo := TMovimentoFuncionarioAlterarPeriodoEntreMesAno.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoEntreMesAno(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoFuncionario.Excluir(const a_Objeto: TMovimentoFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoFuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoFuncionarioExcluir;

begin
  t_Modelo := TMovimentoFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
