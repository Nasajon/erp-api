unit api.controller.persona.MovimentoDepartamento;

interface

  uses
    System.SysUtils,

    api.model.persona.MovimentoDepartamento,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIMovimentoDepartamento = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TMovimentoDepartamentoNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TMovimentoDepartamentoAlterarDadosGerais): TRecibo; overload;

        function AlterarCalcularNaFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaFolha(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNaFolha): TRecibo; overload;

        function AlterarCalcularNasFerias(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNasFerias(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNasFerias): TRecibo; overload;

        function AlterarCalcularNoDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoDecimoTerceiro(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro): TRecibo; overload;

        function AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro): TRecibo; overload;

        function AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha): TRecibo; overload;

        function AlterarCalcularNoPPLR(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoPPLR(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNoPPLR): TRecibo; overload;

        function AlterarCalcularNaFolhaCorretiva(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaFolhaCorretiva(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva): TRecibo; overload;

        function AlterarCalcularNaRescisao(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaRescisao(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNaRescisao): TRecibo; overload;

        function AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro): TRecibo; overload;

        function AlterarPeriodoSempre(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoSempre(const a_Objeto: TMovimentoDepartamentoAlterarPeriodoSempre): TRecibo; overload;

        function AlterarPeriodoProximoCalculo(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoProximoCalculo(const a_Objeto: TMovimentoDepartamentoAlterarPeriodoProximoCalculo): TRecibo; overload;

        function AlterarPeriodoMensal(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoMensal(const a_Objeto: TMovimentoDepartamentoAlterarPeriodoMensal): TRecibo; overload;

        function AlterarPeriodoSemanal(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoSemanal(const a_Objeto: TMovimentoDepartamentoAlterarPeriodoSemanal): TRecibo; overload;

        function AlterarPeriodoEntreDatas(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoEntreDatas(const a_Objeto: TMovimentoDepartamentoAlterarPeriodoEntreDatas): TRecibo; overload;

        function AlterarPeriodoEntreMesAno(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoEntreMesAno(const a_Objeto: TMovimentoDepartamentoAlterarPeriodoEntreMesAno): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TMovimentoDepartamentoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.MovimentoDepartamento }

function TAPIMovimentoDepartamento.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARCALCULARNAFOLHA')
    then begin
       Result := Self.AlterarCalcularNaFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARCALCULARNASFERIAS')
    then begin
       Result := Self.AlterarCalcularNasFerias(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARCALCULARNODECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARCALCULARNOADIANTAMENTODEDECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARCALCULARNOADIANTAMENTODEFOLHA')
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARCALCULARNOPPLR')
    then begin
       Result := Self.AlterarCalcularNoPPLR(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARCALCULARNAFOLHACORRETIVA')
    then begin
       Result := Self.AlterarCalcularNaFolhaCorretiva(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARCALCULARNARESCISAO')
    then begin
       Result := Self.AlterarCalcularNaRescisao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARCALCULARNOCOMPLEMENTODEDECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARPERIODOSEMPRE')
    then begin
       Result := Self.AlterarPeriodoSempre(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARPERIODOPROXIMOCALCULO')
    then begin
       Result := Self.AlterarPeriodoProximoCalculo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARPERIODOMENSAL')
    then begin
       Result := Self.AlterarPeriodoMensal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARPERIODOSEMANAL')
    then begin
       Result := Self.AlterarPeriodoSemanal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARPERIODOENTREDATAS')
    then begin
       Result := Self.AlterarPeriodoEntreDatas(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOALTERARPERIODOENTREMESANO')
    then begin
       Result := Self.AlterarPeriodoEntreMesAno(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTODEPARTAMENTOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIMovimentoDepartamento.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TMovimentoDepartamentoNovo)
    then begin
       Result := Self.Novo(a_Param as TMovimentoDepartamentoNovo);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TMovimentoDepartamentoAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarCalcularNaFolha)
    then begin
       Result := Self.AlterarCalcularNaFolha(a_Param as TMovimentoDepartamentoAlterarCalcularNaFolha);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarCalcularNasFerias)
    then begin
       Result := Self.AlterarCalcularNasFerias(a_Param as TMovimentoDepartamentoAlterarCalcularNasFerias);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoDecimoTerceiro(a_Param as TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(a_Param as TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha)
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeFolha(a_Param as TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarCalcularNoPPLR)
    then begin
       Result := Self.AlterarCalcularNoPPLR(a_Param as TMovimentoDepartamentoAlterarCalcularNoPPLR);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva)
    then begin
       Result := Self.AlterarCalcularNaFolhaCorretiva(a_Param as TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarCalcularNaRescisao)
    then begin
       Result := Self.AlterarCalcularNaRescisao(a_Param as TMovimentoDepartamentoAlterarCalcularNaRescisao);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(a_Param as TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarPeriodoSempre)
    then begin
       Result := Self.AlterarPeriodoSempre(a_Param as TMovimentoDepartamentoAlterarPeriodoSempre);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarPeriodoProximoCalculo)
    then begin
       Result := Self.AlterarPeriodoProximoCalculo(a_Param as TMovimentoDepartamentoAlterarPeriodoProximoCalculo);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarPeriodoMensal)
    then begin
       Result := Self.AlterarPeriodoMensal(a_Param as TMovimentoDepartamentoAlterarPeriodoMensal);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarPeriodoSemanal)
    then begin
       Result := Self.AlterarPeriodoSemanal(a_Param as TMovimentoDepartamentoAlterarPeriodoSemanal);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarPeriodoEntreDatas)
    then begin
       Result := Self.AlterarPeriodoEntreDatas(a_Param as TMovimentoDepartamentoAlterarPeriodoEntreDatas);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoAlterarPeriodoEntreMesAno)
    then begin
       Result := Self.AlterarPeriodoEntreMesAno(a_Param as TMovimentoDepartamentoAlterarPeriodoEntreMesAno);
       Exit();
    end;

  if (a_param is TMovimentoDepartamentoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TMovimentoDepartamentoExcluir);
       Exit();
    end;


end;

function TAPIMovimentoDepartamento.Novo(const a_Objeto: TMovimentoDepartamentoNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoNovo;

begin
  t_Modelo := TMovimentoDepartamentoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarDadosGerais(const a_Objeto: TMovimentoDepartamentoAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarDadosGerais;

begin
  t_Modelo := TMovimentoDepartamentoAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarCalcularNaFolha(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNaFolha): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarCalcularNaFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarCalcularNaFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarCalcularNaFolha;

begin
  t_Modelo := TMovimentoDepartamentoAlterarCalcularNaFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarCalcularNasFerias(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNasFerias): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarCalcularNasFerias', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarCalcularNasFerias(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarCalcularNasFerias;

begin
  t_Modelo := TMovimentoDepartamentoAlterarCalcularNasFerias.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNasFerias(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarCalcularNoDecimoTerceiro(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarCalcularNoDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarCalcularNoDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro;

begin
  t_Modelo := TMovimentoDepartamentoAlterarCalcularNoDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro;

begin
  t_Modelo := TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha;

begin
  t_Modelo := TMovimentoDepartamentoAlterarCalcularNoAdiantamentoDeFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoAdiantamentoDeFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarCalcularNoPPLR(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNoPPLR): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarCalcularNoPPLR', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarCalcularNoPPLR(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarCalcularNoPPLR;

begin
  t_Modelo := TMovimentoDepartamentoAlterarCalcularNoPPLR.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoPPLR(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarCalcularNaFolhaCorretiva(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarCalcularNaFolhaCorretiva', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarCalcularNaFolhaCorretiva(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva;

begin
  t_Modelo := TMovimentoDepartamentoAlterarCalcularNaFolhaCorretiva.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaFolhaCorretiva(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarCalcularNaRescisao(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNaRescisao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarCalcularNaRescisao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarCalcularNaRescisao(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarCalcularNaRescisao;

begin
  t_Modelo := TMovimentoDepartamentoAlterarCalcularNaRescisao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaRescisao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro;

begin
  t_Modelo := TMovimentoDepartamentoAlterarCalcularNoComplementoDeDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarPeriodoSempre(const a_Objeto: TMovimentoDepartamentoAlterarPeriodoSempre): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarPeriodoSempre', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarPeriodoSempre(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarPeriodoSempre;

begin
  t_Modelo := TMovimentoDepartamentoAlterarPeriodoSempre.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoSempre(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarPeriodoProximoCalculo(const a_Objeto: TMovimentoDepartamentoAlterarPeriodoProximoCalculo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarPeriodoProximoCalculo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarPeriodoProximoCalculo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarPeriodoProximoCalculo;

begin
  t_Modelo := TMovimentoDepartamentoAlterarPeriodoProximoCalculo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoProximoCalculo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarPeriodoMensal(const a_Objeto: TMovimentoDepartamentoAlterarPeriodoMensal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarPeriodoMensal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarPeriodoMensal(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarPeriodoMensal;

begin
  t_Modelo := TMovimentoDepartamentoAlterarPeriodoMensal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoMensal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarPeriodoSemanal(const a_Objeto: TMovimentoDepartamentoAlterarPeriodoSemanal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarPeriodoSemanal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarPeriodoSemanal(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarPeriodoSemanal;

begin
  t_Modelo := TMovimentoDepartamentoAlterarPeriodoSemanal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoSemanal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarPeriodoEntreDatas(const a_Objeto: TMovimentoDepartamentoAlterarPeriodoEntreDatas): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarPeriodoEntreDatas', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarPeriodoEntreDatas(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarPeriodoEntreDatas;

begin
  t_Modelo := TMovimentoDepartamentoAlterarPeriodoEntreDatas.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoEntreDatas(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.AlterarPeriodoEntreMesAno(const a_Objeto: TMovimentoDepartamentoAlterarPeriodoEntreMesAno): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoAlterarPeriodoEntreMesAno', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.AlterarPeriodoEntreMesAno(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoAlterarPeriodoEntreMesAno;

begin
  t_Modelo := TMovimentoDepartamentoAlterarPeriodoEntreMesAno.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoEntreMesAno(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoDepartamento.Excluir(const a_Objeto: TMovimentoDepartamentoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoDepartamentoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoDepartamento.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoDepartamentoExcluir;

begin
  t_Modelo := TMovimentoDepartamentoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
