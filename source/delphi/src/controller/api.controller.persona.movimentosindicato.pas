unit api.controller.persona.MovimentoSindicato;

interface

  uses
    System.SysUtils,

    api.model.persona.MovimentoSindicato,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIMovimentoSindicato = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TMovimentoSindicatoNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TMovimentoSindicatoAlterarDadosGerais): TRecibo; overload;

        function AlterarCalcularNaFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaFolha(const a_Objeto: TMovimentoSindicatoAlterarCalcularNaFolha): TRecibo; overload;

        function AlterarCalcularNasFerias(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNasFerias(const a_Objeto: TMovimentoSindicatoAlterarCalcularNasFerias): TRecibo; overload;

        function AlterarCalcularNoDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoDecimoTerceiro(const a_Objeto: TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro): TRecibo; overload;

        function AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro): TRecibo; overload;

        function AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha): TRecibo; overload;

        function AlterarCalcularNoPPLR(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoPPLR(const a_Objeto: TMovimentoSindicatoAlterarCalcularNoPPLR): TRecibo; overload;

        function AlterarCalcularNaFolhaCorretiva(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaFolhaCorretiva(const a_Objeto: TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva): TRecibo; overload;

        function AlterarCalcularNaRescisao(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaRescisao(const a_Objeto: TMovimentoSindicatoAlterarCalcularNaRescisao): TRecibo; overload;

        function AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro): TRecibo; overload;

        function AlterarPeriodoSempre(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoSempre(const a_Objeto: TMovimentoSindicatoAlterarPeriodoSempre): TRecibo; overload;

        function AlterarPeriodoProximoCalculo(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoProximoCalculo(const a_Objeto: TMovimentoSindicatoAlterarPeriodoProximoCalculo): TRecibo; overload;

        function AlterarPeriodoMensal(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoMensal(const a_Objeto: TMovimentoSindicatoAlterarPeriodoMensal): TRecibo; overload;

        function AlterarPeriodoSemanal(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoSemanal(const a_Objeto: TMovimentoSindicatoAlterarPeriodoSemanal): TRecibo; overload;

        function AlterarPeriodoEntreDatas(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoEntreDatas(const a_Objeto: TMovimentoSindicatoAlterarPeriodoEntreDatas): TRecibo; overload;

        function AlterarPeriodoEntreMesAno(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoEntreMesAno(const a_Objeto: TMovimentoSindicatoAlterarPeriodoEntreMesAno): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TMovimentoSindicatoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.MovimentoSindicato }

function TAPIMovimentoSindicato.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'MOVIMENTOSINDICATONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARCALCULARNAFOLHA')
    then begin
       Result := Self.AlterarCalcularNaFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARCALCULARNASFERIAS')
    then begin
       Result := Self.AlterarCalcularNasFerias(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARCALCULARNODECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARCALCULARNOADIANTAMENTODEDECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARCALCULARNOADIANTAMENTODEFOLHA')
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARCALCULARNOPPLR')
    then begin
       Result := Self.AlterarCalcularNoPPLR(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARCALCULARNAFOLHACORRETIVA')
    then begin
       Result := Self.AlterarCalcularNaFolhaCorretiva(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARCALCULARNARESCISAO')
    then begin
       Result := Self.AlterarCalcularNaRescisao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARCALCULARNOCOMPLEMENTODEDECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARPERIODOSEMPRE')
    then begin
       Result := Self.AlterarPeriodoSempre(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARPERIODOPROXIMOCALCULO')
    then begin
       Result := Self.AlterarPeriodoProximoCalculo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARPERIODOMENSAL')
    then begin
       Result := Self.AlterarPeriodoMensal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARPERIODOSEMANAL')
    then begin
       Result := Self.AlterarPeriodoSemanal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARPERIODOENTREDATAS')
    then begin
       Result := Self.AlterarPeriodoEntreDatas(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOALTERARPERIODOENTREMESANO')
    then begin
       Result := Self.AlterarPeriodoEntreMesAno(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOSINDICATOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIMovimentoSindicato.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TMovimentoSindicatoNovo)
    then begin
       Result := Self.Novo(a_Param as TMovimentoSindicatoNovo);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TMovimentoSindicatoAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarCalcularNaFolha)
    then begin
       Result := Self.AlterarCalcularNaFolha(a_Param as TMovimentoSindicatoAlterarCalcularNaFolha);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarCalcularNasFerias)
    then begin
       Result := Self.AlterarCalcularNasFerias(a_Param as TMovimentoSindicatoAlterarCalcularNasFerias);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoDecimoTerceiro(a_Param as TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(a_Param as TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha)
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeFolha(a_Param as TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarCalcularNoPPLR)
    then begin
       Result := Self.AlterarCalcularNoPPLR(a_Param as TMovimentoSindicatoAlterarCalcularNoPPLR);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva)
    then begin
       Result := Self.AlterarCalcularNaFolhaCorretiva(a_Param as TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarCalcularNaRescisao)
    then begin
       Result := Self.AlterarCalcularNaRescisao(a_Param as TMovimentoSindicatoAlterarCalcularNaRescisao);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(a_Param as TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarPeriodoSempre)
    then begin
       Result := Self.AlterarPeriodoSempre(a_Param as TMovimentoSindicatoAlterarPeriodoSempre);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarPeriodoProximoCalculo)
    then begin
       Result := Self.AlterarPeriodoProximoCalculo(a_Param as TMovimentoSindicatoAlterarPeriodoProximoCalculo);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarPeriodoMensal)
    then begin
       Result := Self.AlterarPeriodoMensal(a_Param as TMovimentoSindicatoAlterarPeriodoMensal);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarPeriodoSemanal)
    then begin
       Result := Self.AlterarPeriodoSemanal(a_Param as TMovimentoSindicatoAlterarPeriodoSemanal);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarPeriodoEntreDatas)
    then begin
       Result := Self.AlterarPeriodoEntreDatas(a_Param as TMovimentoSindicatoAlterarPeriodoEntreDatas);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoAlterarPeriodoEntreMesAno)
    then begin
       Result := Self.AlterarPeriodoEntreMesAno(a_Param as TMovimentoSindicatoAlterarPeriodoEntreMesAno);
       Exit();
    end;

  if (a_param is TMovimentoSindicatoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TMovimentoSindicatoExcluir);
       Exit();
    end;


end;

function TAPIMovimentoSindicato.Novo(const a_Objeto: TMovimentoSindicatoNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoNovo;

begin
  t_Modelo := TMovimentoSindicatoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarDadosGerais(const a_Objeto: TMovimentoSindicatoAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarDadosGerais;

begin
  t_Modelo := TMovimentoSindicatoAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarCalcularNaFolha(const a_Objeto: TMovimentoSindicatoAlterarCalcularNaFolha): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarCalcularNaFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarCalcularNaFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarCalcularNaFolha;

begin
  t_Modelo := TMovimentoSindicatoAlterarCalcularNaFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarCalcularNasFerias(const a_Objeto: TMovimentoSindicatoAlterarCalcularNasFerias): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarCalcularNasFerias', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarCalcularNasFerias(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarCalcularNasFerias;

begin
  t_Modelo := TMovimentoSindicatoAlterarCalcularNasFerias.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNasFerias(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarCalcularNoDecimoTerceiro(const a_Objeto: TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarCalcularNoDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarCalcularNoDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro;

begin
  t_Modelo := TMovimentoSindicatoAlterarCalcularNoDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro;

begin
  t_Modelo := TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha;

begin
  t_Modelo := TMovimentoSindicatoAlterarCalcularNoAdiantamentoDeFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoAdiantamentoDeFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarCalcularNoPPLR(const a_Objeto: TMovimentoSindicatoAlterarCalcularNoPPLR): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarCalcularNoPPLR', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarCalcularNoPPLR(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarCalcularNoPPLR;

begin
  t_Modelo := TMovimentoSindicatoAlterarCalcularNoPPLR.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoPPLR(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarCalcularNaFolhaCorretiva(const a_Objeto: TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarCalcularNaFolhaCorretiva', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarCalcularNaFolhaCorretiva(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva;

begin
  t_Modelo := TMovimentoSindicatoAlterarCalcularNaFolhaCorretiva.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaFolhaCorretiva(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarCalcularNaRescisao(const a_Objeto: TMovimentoSindicatoAlterarCalcularNaRescisao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarCalcularNaRescisao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarCalcularNaRescisao(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarCalcularNaRescisao;

begin
  t_Modelo := TMovimentoSindicatoAlterarCalcularNaRescisao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaRescisao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro;

begin
  t_Modelo := TMovimentoSindicatoAlterarCalcularNoComplementoDeDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarPeriodoSempre(const a_Objeto: TMovimentoSindicatoAlterarPeriodoSempre): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarPeriodoSempre', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarPeriodoSempre(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarPeriodoSempre;

begin
  t_Modelo := TMovimentoSindicatoAlterarPeriodoSempre.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoSempre(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarPeriodoProximoCalculo(const a_Objeto: TMovimentoSindicatoAlterarPeriodoProximoCalculo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarPeriodoProximoCalculo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarPeriodoProximoCalculo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarPeriodoProximoCalculo;

begin
  t_Modelo := TMovimentoSindicatoAlterarPeriodoProximoCalculo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoProximoCalculo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarPeriodoMensal(const a_Objeto: TMovimentoSindicatoAlterarPeriodoMensal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarPeriodoMensal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarPeriodoMensal(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarPeriodoMensal;

begin
  t_Modelo := TMovimentoSindicatoAlterarPeriodoMensal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoMensal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarPeriodoSemanal(const a_Objeto: TMovimentoSindicatoAlterarPeriodoSemanal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarPeriodoSemanal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarPeriodoSemanal(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarPeriodoSemanal;

begin
  t_Modelo := TMovimentoSindicatoAlterarPeriodoSemanal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoSemanal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarPeriodoEntreDatas(const a_Objeto: TMovimentoSindicatoAlterarPeriodoEntreDatas): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarPeriodoEntreDatas', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarPeriodoEntreDatas(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarPeriodoEntreDatas;

begin
  t_Modelo := TMovimentoSindicatoAlterarPeriodoEntreDatas.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoEntreDatas(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.AlterarPeriodoEntreMesAno(const a_Objeto: TMovimentoSindicatoAlterarPeriodoEntreMesAno): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoAlterarPeriodoEntreMesAno', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.AlterarPeriodoEntreMesAno(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoAlterarPeriodoEntreMesAno;

begin
  t_Modelo := TMovimentoSindicatoAlterarPeriodoEntreMesAno.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoEntreMesAno(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoSindicato.Excluir(const a_Objeto: TMovimentoSindicatoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoSindicatoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoSindicato.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoSindicatoExcluir;

begin
  t_Modelo := TMovimentoSindicatoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
