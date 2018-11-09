unit api.controller.persona.Horario;

interface

  uses
    System.SysUtils,

    api.model.persona.Horario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIHorario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function NovoDadosPadrao(const a_Objeto: String): TRecibo; overload;
        function NovoDadosPadrao(const a_Objeto: THorarioNovoDadosPadrao): TRecibo; overload;

        function NovoDadosOutros(const a_Objeto: String): TRecibo; overload;
        function NovoDadosOutros(const a_Objeto: THorarioNovoDadosOutros): TRecibo; overload;

        function NovoDadosEscala(const a_Objeto: String): TRecibo; overload;
        function NovoDadosEscala(const a_Objeto: THorarioNovoDadosEscala): TRecibo; overload;

        function AlterarDadosPadrao(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosPadrao(const a_Objeto: THorarioAlterarDadosPadrao): TRecibo; overload;

        function AlterarDadosOutros(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosOutros(const a_Objeto: THorarioAlterarDadosOutros): TRecibo; overload;

        function AlterarDadosEscala(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEscala(const a_Objeto: THorarioAlterarDadosEscala): TRecibo; overload;

        function AlterarFolgaFixa(const a_Objeto: String): TRecibo; overload;
        function AlterarFolgaFixa(const a_Objeto: THorarioAlterarFolgaFixa): TRecibo; overload;

        function AlterarFolgaExtra(const a_Objeto: String): TRecibo; overload;
        function AlterarFolgaExtra(const a_Objeto: THorarioAlterarFolgaExtra): TRecibo; overload;

        function AlterarDescontaAtrasosEmDiasDeFalta(const a_Objeto: String): TRecibo; overload;
        function AlterarDescontaAtrasosEmDiasDeFalta(const a_Objeto: THorarioAlterarDescontaAtrasosEmDiasDeFalta): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: THorarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Horario }

function TAPIHorario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'HORARIONOVODADOSPADRAO')
    then begin
       Result := Self.NovoDadosPadrao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'HORARIONOVODADOSOUTROS')
    then begin
       Result := Self.NovoDadosOutros(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'HORARIONOVODADOSESCALA')
    then begin
       Result := Self.NovoDadosEscala(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'HORARIOALTERARDADOSPADRAO')
    then begin
       Result := Self.AlterarDadosPadrao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'HORARIOALTERARDADOSOUTROS')
    then begin
       Result := Self.AlterarDadosOutros(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'HORARIOALTERARDADOSESCALA')
    then begin
       Result := Self.AlterarDadosEscala(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'HORARIOALTERARFOLGAFIXA')
    then begin
       Result := Self.AlterarFolgaFixa(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'HORARIOALTERARFOLGAEXTRA')
    then begin
       Result := Self.AlterarFolgaExtra(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'HORARIOALTERARDESCONTAATRASOSEMDIASDEFALTA')
    then begin
       Result := Self.AlterarDescontaAtrasosEmDiasDeFalta(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'HORARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIHorario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is THorarioNovoDadosPadrao)
    then begin
       Result := Self.NovoDadosPadrao(a_Param as THorarioNovoDadosPadrao);
       Exit();
    end;

  if (a_param is THorarioNovoDadosOutros)
    then begin
       Result := Self.NovoDadosOutros(a_Param as THorarioNovoDadosOutros);
       Exit();
    end;

  if (a_param is THorarioNovoDadosEscala)
    then begin
       Result := Self.NovoDadosEscala(a_Param as THorarioNovoDadosEscala);
       Exit();
    end;

  if (a_param is THorarioAlterarDadosPadrao)
    then begin
       Result := Self.AlterarDadosPadrao(a_Param as THorarioAlterarDadosPadrao);
       Exit();
    end;

  if (a_param is THorarioAlterarDadosOutros)
    then begin
       Result := Self.AlterarDadosOutros(a_Param as THorarioAlterarDadosOutros);
       Exit();
    end;

  if (a_param is THorarioAlterarDadosEscala)
    then begin
       Result := Self.AlterarDadosEscala(a_Param as THorarioAlterarDadosEscala);
       Exit();
    end;

  if (a_param is THorarioAlterarFolgaFixa)
    then begin
       Result := Self.AlterarFolgaFixa(a_Param as THorarioAlterarFolgaFixa);
       Exit();
    end;

  if (a_param is THorarioAlterarFolgaExtra)
    then begin
       Result := Self.AlterarFolgaExtra(a_Param as THorarioAlterarFolgaExtra);
       Exit();
    end;

  if (a_param is THorarioAlterarDescontaAtrasosEmDiasDeFalta)
    then begin
       Result := Self.AlterarDescontaAtrasosEmDiasDeFalta(a_Param as THorarioAlterarDescontaAtrasosEmDiasDeFalta);
       Exit();
    end;

  if (a_param is THorarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as THorarioExcluir);
       Exit();
    end;


end;

function TAPIHorario.NovoDadosPadrao(const a_Objeto: THorarioNovoDadosPadrao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HorarioNovoDadosPadrao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHorario.NovoDadosPadrao(const a_Objeto: String): TRecibo;

  var t_Modelo: THorarioNovoDadosPadrao;

begin
  t_Modelo := THorarioNovoDadosPadrao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.NovoDadosPadrao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIHorario.NovoDadosOutros(const a_Objeto: THorarioNovoDadosOutros): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HorarioNovoDadosOutros', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHorario.NovoDadosOutros(const a_Objeto: String): TRecibo;

  var t_Modelo: THorarioNovoDadosOutros;

begin
  t_Modelo := THorarioNovoDadosOutros.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.NovoDadosOutros(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIHorario.NovoDadosEscala(const a_Objeto: THorarioNovoDadosEscala): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HorarioNovoDadosEscala', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHorario.NovoDadosEscala(const a_Objeto: String): TRecibo;

  var t_Modelo: THorarioNovoDadosEscala;

begin
  t_Modelo := THorarioNovoDadosEscala.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.NovoDadosEscala(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIHorario.AlterarDadosPadrao(const a_Objeto: THorarioAlterarDadosPadrao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HorarioAlterarDadosPadrao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHorario.AlterarDadosPadrao(const a_Objeto: String): TRecibo;

  var t_Modelo: THorarioAlterarDadosPadrao;

begin
  t_Modelo := THorarioAlterarDadosPadrao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosPadrao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIHorario.AlterarDadosOutros(const a_Objeto: THorarioAlterarDadosOutros): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HorarioAlterarDadosOutros', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHorario.AlterarDadosOutros(const a_Objeto: String): TRecibo;

  var t_Modelo: THorarioAlterarDadosOutros;

begin
  t_Modelo := THorarioAlterarDadosOutros.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosOutros(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIHorario.AlterarDadosEscala(const a_Objeto: THorarioAlterarDadosEscala): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HorarioAlterarDadosEscala', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHorario.AlterarDadosEscala(const a_Objeto: String): TRecibo;

  var t_Modelo: THorarioAlterarDadosEscala;

begin
  t_Modelo := THorarioAlterarDadosEscala.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEscala(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIHorario.AlterarFolgaFixa(const a_Objeto: THorarioAlterarFolgaFixa): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HorarioAlterarFolgaFixa', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHorario.AlterarFolgaFixa(const a_Objeto: String): TRecibo;

  var t_Modelo: THorarioAlterarFolgaFixa;

begin
  t_Modelo := THorarioAlterarFolgaFixa.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarFolgaFixa(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIHorario.AlterarFolgaExtra(const a_Objeto: THorarioAlterarFolgaExtra): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HorarioAlterarFolgaExtra', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHorario.AlterarFolgaExtra(const a_Objeto: String): TRecibo;

  var t_Modelo: THorarioAlterarFolgaExtra;

begin
  t_Modelo := THorarioAlterarFolgaExtra.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarFolgaExtra(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIHorario.AlterarDescontaAtrasosEmDiasDeFalta(const a_Objeto: THorarioAlterarDescontaAtrasosEmDiasDeFalta): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HorarioAlterarDescontaAtrasosEmDiasDeFalta', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHorario.AlterarDescontaAtrasosEmDiasDeFalta(const a_Objeto: String): TRecibo;

  var t_Modelo: THorarioAlterarDescontaAtrasosEmDiasDeFalta;

begin
  t_Modelo := THorarioAlterarDescontaAtrasosEmDiasDeFalta.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDescontaAtrasosEmDiasDeFalta(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIHorario.Excluir(const a_Objeto: THorarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HorarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHorario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: THorarioExcluir;

begin
  t_Modelo := THorarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
