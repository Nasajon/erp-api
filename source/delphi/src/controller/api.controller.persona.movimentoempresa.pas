unit api.controller.persona.MovimentoEmpresa;

interface

  uses
    System.SysUtils,

    api.model.persona.MovimentoEmpresa,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIMovimentoEmpresa = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TMovimentoEmpresaNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TMovimentoEmpresaAlterarDadosGerais): TRecibo; overload;

        function AlterarCalcularNaFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaFolha(const a_Objeto: TMovimentoEmpresaAlterarCalcularNaFolha): TRecibo; overload;

        function AlterarCalcularNasFerias(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNasFerias(const a_Objeto: TMovimentoEmpresaAlterarCalcularNasFerias): TRecibo; overload;

        function AlterarCalcularNoDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoDecimoTerceiro(const a_Objeto: TMovimentoEmpresaAlterarCalcularNoDecimoTerceiro): TRecibo; overload;

        function AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: TMovimentoEmpresaAlterarCalcularNoAdiantamentoDeDecimoTerceiro): TRecibo; overload;

        function AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: TMovimentoEmpresaAlterarCalcularNoAdiantamentoDeFolha): TRecibo; overload;

        function AlterarCalcularNoPPLR(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoPPLR(const a_Objeto: TMovimentoEmpresaAlterarCalcularNoPPLR): TRecibo; overload;

        function AlterarCalcularNaFolhaCorretiva(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaFolhaCorretiva(const a_Objeto: TMovimentoEmpresaAlterarCalcularNaFolhaCorretiva): TRecibo; overload;

        function AlterarCalcularNaRescisao(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNaRescisao(const a_Objeto: TMovimentoEmpresaAlterarCalcularNaRescisao): TRecibo; overload;

        function AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: TMovimentoEmpresaAlterarCalcularNoComplementoDeDecimoTerceiro): TRecibo; overload;

        function AlterarPeriodoSempre(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoSempre(const a_Objeto: TMovimentoEmpresaAlterarPeriodoSempre): TRecibo; overload;

        function AlterarPeriodoProximoCalculo(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoProximoCalculo(const a_Objeto: TMovimentoEmpresaAlterarPeriodoProximoCalculo): TRecibo; overload;

        function AlterarPeriodoMensal(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoMensal(const a_Objeto: TMovimentoEmpresaAlterarPeriodoMensal): TRecibo; overload;

        function AlterarPeriodoSemanal(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoSemanal(const a_Objeto: TMovimentoEmpresaAlterarPeriodoSemanal): TRecibo; overload;

        function AlterarPeriodoEntreDatas(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoEntreDatas(const a_Objeto: TMovimentoEmpresaAlterarPeriodoEntreDatas): TRecibo; overload;

        function AlterarPeriodoEntreMesAno(const a_Objeto: String): TRecibo; overload;
        function AlterarPeriodoEntreMesAno(const a_Objeto: TMovimentoEmpresaAlterarPeriodoEntreMesAno): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TMovimentoEmpresaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.MovimentoEmpresa }

function TAPIMovimentoEmpresa.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'MOVIMENTOEMPRESANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARCALCULARNAFOLHA')
    then begin
       Result := Self.AlterarCalcularNaFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARCALCULARNASFERIAS')
    then begin
       Result := Self.AlterarCalcularNasFerias(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARCALCULARNODECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARCALCULARNOADIANTAMENTODEDECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARCALCULARNOADIANTAMENTODEFOLHA')
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARCALCULARNOPPLR')
    then begin
       Result := Self.AlterarCalcularNoPPLR(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARCALCULARNAFOLHACORRETIVA')
    then begin
       Result := Self.AlterarCalcularNaFolhaCorretiva(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARCALCULARNARESCISAO')
    then begin
       Result := Self.AlterarCalcularNaRescisao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARCALCULARNOCOMPLEMENTODEDECIMOTERCEIRO')
    then begin
       Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARPERIODOSEMPRE')
    then begin
       Result := Self.AlterarPeriodoSempre(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARPERIODOPROXIMOCALCULO')
    then begin
       Result := Self.AlterarPeriodoProximoCalculo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARPERIODOMENSAL')
    then begin
       Result := Self.AlterarPeriodoMensal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARPERIODOSEMANAL')
    then begin
       Result := Self.AlterarPeriodoSemanal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARPERIODOENTREDATAS')
    then begin
       Result := Self.AlterarPeriodoEntreDatas(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAALTERARPERIODOENTREMESANO')
    then begin
       Result := Self.AlterarPeriodoEntreMesAno(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MOVIMENTOEMPRESAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIMovimentoEmpresa.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TMovimentoEmpresaNovo)
    then begin
       Result := Self.Novo(a_Param as TMovimentoEmpresaNovo);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TMovimentoEmpresaAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarCalcularNaFolha)
    then begin
       Result := Self.AlterarCalcularNaFolha(a_Param as TMovimentoEmpresaAlterarCalcularNaFolha);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarCalcularNasFerias)
    then begin
       Result := Self.AlterarCalcularNasFerias(a_Param as TMovimentoEmpresaAlterarCalcularNasFerias);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarCalcularNoDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoDecimoTerceiro(a_Param as TMovimentoEmpresaAlterarCalcularNoDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarCalcularNoAdiantamentoDeDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(a_Param as TMovimentoEmpresaAlterarCalcularNoAdiantamentoDeDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarCalcularNoAdiantamentoDeFolha)
    then begin
       Result := Self.AlterarCalcularNoAdiantamentoDeFolha(a_Param as TMovimentoEmpresaAlterarCalcularNoAdiantamentoDeFolha);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarCalcularNoPPLR)
    then begin
       Result := Self.AlterarCalcularNoPPLR(a_Param as TMovimentoEmpresaAlterarCalcularNoPPLR);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarCalcularNaFolhaCorretiva)
    then begin
       Result := Self.AlterarCalcularNaFolhaCorretiva(a_Param as TMovimentoEmpresaAlterarCalcularNaFolhaCorretiva);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarCalcularNaRescisao)
    then begin
       Result := Self.AlterarCalcularNaRescisao(a_Param as TMovimentoEmpresaAlterarCalcularNaRescisao);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarCalcularNoComplementoDeDecimoTerceiro)
    then begin
       Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(a_Param as TMovimentoEmpresaAlterarCalcularNoComplementoDeDecimoTerceiro);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarPeriodoSempre)
    then begin
       Result := Self.AlterarPeriodoSempre(a_Param as TMovimentoEmpresaAlterarPeriodoSempre);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarPeriodoProximoCalculo)
    then begin
       Result := Self.AlterarPeriodoProximoCalculo(a_Param as TMovimentoEmpresaAlterarPeriodoProximoCalculo);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarPeriodoMensal)
    then begin
       Result := Self.AlterarPeriodoMensal(a_Param as TMovimentoEmpresaAlterarPeriodoMensal);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarPeriodoSemanal)
    then begin
       Result := Self.AlterarPeriodoSemanal(a_Param as TMovimentoEmpresaAlterarPeriodoSemanal);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarPeriodoEntreDatas)
    then begin
       Result := Self.AlterarPeriodoEntreDatas(a_Param as TMovimentoEmpresaAlterarPeriodoEntreDatas);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaAlterarPeriodoEntreMesAno)
    then begin
       Result := Self.AlterarPeriodoEntreMesAno(a_Param as TMovimentoEmpresaAlterarPeriodoEntreMesAno);
       Exit();
    end;

  if (a_param is TMovimentoEmpresaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TMovimentoEmpresaExcluir);
       Exit();
    end;


end;

function TAPIMovimentoEmpresa.Novo(const a_Objeto: TMovimentoEmpresaNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaNovo;

begin
  t_Modelo := TMovimentoEmpresaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarDadosGerais(const a_Objeto: TMovimentoEmpresaAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarDadosGerais;

begin
  t_Modelo := TMovimentoEmpresaAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarCalcularNaFolha(const a_Objeto: TMovimentoEmpresaAlterarCalcularNaFolha): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarCalcularNaFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarCalcularNaFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarCalcularNaFolha;

begin
  t_Modelo := TMovimentoEmpresaAlterarCalcularNaFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarCalcularNasFerias(const a_Objeto: TMovimentoEmpresaAlterarCalcularNasFerias): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarCalcularNasFerias', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarCalcularNasFerias(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarCalcularNasFerias;

begin
  t_Modelo := TMovimentoEmpresaAlterarCalcularNasFerias.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNasFerias(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarCalcularNoDecimoTerceiro(const a_Objeto: TMovimentoEmpresaAlterarCalcularNoDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarCalcularNoDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarCalcularNoDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarCalcularNoDecimoTerceiro;

begin
  t_Modelo := TMovimentoEmpresaAlterarCalcularNoDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: TMovimentoEmpresaAlterarCalcularNoAdiantamentoDeDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarCalcularNoAdiantamentoDeDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarCalcularNoAdiantamentoDeDecimoTerceiro;

begin
  t_Modelo := TMovimentoEmpresaAlterarCalcularNoAdiantamentoDeDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoAdiantamentoDeDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: TMovimentoEmpresaAlterarCalcularNoAdiantamentoDeFolha): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarCalcularNoAdiantamentoDeFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarCalcularNoAdiantamentoDeFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarCalcularNoAdiantamentoDeFolha;

begin
  t_Modelo := TMovimentoEmpresaAlterarCalcularNoAdiantamentoDeFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoAdiantamentoDeFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarCalcularNoPPLR(const a_Objeto: TMovimentoEmpresaAlterarCalcularNoPPLR): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarCalcularNoPPLR', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarCalcularNoPPLR(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarCalcularNoPPLR;

begin
  t_Modelo := TMovimentoEmpresaAlterarCalcularNoPPLR.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoPPLR(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarCalcularNaFolhaCorretiva(const a_Objeto: TMovimentoEmpresaAlterarCalcularNaFolhaCorretiva): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarCalcularNaFolhaCorretiva', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarCalcularNaFolhaCorretiva(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarCalcularNaFolhaCorretiva;

begin
  t_Modelo := TMovimentoEmpresaAlterarCalcularNaFolhaCorretiva.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaFolhaCorretiva(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarCalcularNaRescisao(const a_Objeto: TMovimentoEmpresaAlterarCalcularNaRescisao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarCalcularNaRescisao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarCalcularNaRescisao(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarCalcularNaRescisao;

begin
  t_Modelo := TMovimentoEmpresaAlterarCalcularNaRescisao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNaRescisao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: TMovimentoEmpresaAlterarCalcularNoComplementoDeDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarCalcularNoComplementoDeDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarCalcularNoComplementoDeDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarCalcularNoComplementoDeDecimoTerceiro;

begin
  t_Modelo := TMovimentoEmpresaAlterarCalcularNoComplementoDeDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCalcularNoComplementoDeDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarPeriodoSempre(const a_Objeto: TMovimentoEmpresaAlterarPeriodoSempre): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarPeriodoSempre', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarPeriodoSempre(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarPeriodoSempre;

begin
  t_Modelo := TMovimentoEmpresaAlterarPeriodoSempre.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoSempre(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarPeriodoProximoCalculo(const a_Objeto: TMovimentoEmpresaAlterarPeriodoProximoCalculo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarPeriodoProximoCalculo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarPeriodoProximoCalculo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarPeriodoProximoCalculo;

begin
  t_Modelo := TMovimentoEmpresaAlterarPeriodoProximoCalculo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoProximoCalculo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarPeriodoMensal(const a_Objeto: TMovimentoEmpresaAlterarPeriodoMensal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarPeriodoMensal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarPeriodoMensal(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarPeriodoMensal;

begin
  t_Modelo := TMovimentoEmpresaAlterarPeriodoMensal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoMensal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarPeriodoSemanal(const a_Objeto: TMovimentoEmpresaAlterarPeriodoSemanal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarPeriodoSemanal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarPeriodoSemanal(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarPeriodoSemanal;

begin
  t_Modelo := TMovimentoEmpresaAlterarPeriodoSemanal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoSemanal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarPeriodoEntreDatas(const a_Objeto: TMovimentoEmpresaAlterarPeriodoEntreDatas): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarPeriodoEntreDatas', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarPeriodoEntreDatas(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarPeriodoEntreDatas;

begin
  t_Modelo := TMovimentoEmpresaAlterarPeriodoEntreDatas.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoEntreDatas(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.AlterarPeriodoEntreMesAno(const a_Objeto: TMovimentoEmpresaAlterarPeriodoEntreMesAno): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaAlterarPeriodoEntreMesAno', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.AlterarPeriodoEntreMesAno(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaAlterarPeriodoEntreMesAno;

begin
  t_Modelo := TMovimentoEmpresaAlterarPeriodoEntreMesAno.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPeriodoEntreMesAno(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMovimentoEmpresa.Excluir(const a_Objeto: TMovimentoEmpresaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_MovimentoEmpresaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMovimentoEmpresa.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TMovimentoEmpresaExcluir;

begin
  t_Modelo := TMovimentoEmpresaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
