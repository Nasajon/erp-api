unit api.controller.persona.AfastamentoFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.AfastamentoFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIAfastamentoFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TAfastamentoFuncionarioNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TAfastamentoFuncionarioAlterarDadosGerais): TRecibo; overload;

        function AlterarDadosMedicos(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosMedicos(const a_Objeto: TAfastamentoFuncionarioAlterarDadosMedicos): TRecibo; overload;

        function AlterarDadosSindicais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosSindicais(const a_Objeto: TAfastamentoFuncionarioAlterarDadosSindicais): TRecibo; overload;

        function AlterarDadosCessao(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCessao(const a_Objeto: TAfastamentoFuncionarioAlterarDadosCessao): TRecibo; overload;

        function AlterarDadosFerias(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosFerias(const a_Objeto: TAfastamentoFuncionarioAlterarDadosFerias): TRecibo; overload;

        function AlterarAfastamentoOriginal(const a_Objeto: String): TRecibo; overload;
        function AlterarAfastamentoOriginal(const a_Objeto: TAfastamentoFuncionarioAlterarAfastamentoOriginal): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TAfastamentoFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.AfastamentoFuncionario }

function TAPIAfastamentoFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'AFASTAMENTOFUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'AFASTAMENTOFUNCIONARIOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'AFASTAMENTOFUNCIONARIOALTERARDADOSMEDICOS')
    then begin
       Result := Self.AlterarDadosMedicos(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'AFASTAMENTOFUNCIONARIOALTERARDADOSSINDICAIS')
    then begin
       Result := Self.AlterarDadosSindicais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'AFASTAMENTOFUNCIONARIOALTERARDADOSCESSAO')
    then begin
       Result := Self.AlterarDadosCessao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'AFASTAMENTOFUNCIONARIOALTERARDADOSFERIAS')
    then begin
       Result := Self.AlterarDadosFerias(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'AFASTAMENTOFUNCIONARIOALTERARAFASTAMENTOORIGINAL')
    then begin
       Result := Self.AlterarAfastamentoOriginal(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'AFASTAMENTOFUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIAfastamentoFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TAfastamentoFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as TAfastamentoFuncionarioNovo);
       Exit();
    end;

  if (a_param is TAfastamentoFuncionarioAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TAfastamentoFuncionarioAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TAfastamentoFuncionarioAlterarDadosMedicos)
    then begin
       Result := Self.AlterarDadosMedicos(a_Param as TAfastamentoFuncionarioAlterarDadosMedicos);
       Exit();
    end;

  if (a_param is TAfastamentoFuncionarioAlterarDadosSindicais)
    then begin
       Result := Self.AlterarDadosSindicais(a_Param as TAfastamentoFuncionarioAlterarDadosSindicais);
       Exit();
    end;

  if (a_param is TAfastamentoFuncionarioAlterarDadosCessao)
    then begin
       Result := Self.AlterarDadosCessao(a_Param as TAfastamentoFuncionarioAlterarDadosCessao);
       Exit();
    end;

  if (a_param is TAfastamentoFuncionarioAlterarDadosFerias)
    then begin
       Result := Self.AlterarDadosFerias(a_Param as TAfastamentoFuncionarioAlterarDadosFerias);
       Exit();
    end;

  if (a_param is TAfastamentoFuncionarioAlterarAfastamentoOriginal)
    then begin
       Result := Self.AlterarAfastamentoOriginal(a_Param as TAfastamentoFuncionarioAlterarAfastamentoOriginal);
       Exit();
    end;

  if (a_param is TAfastamentoFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TAfastamentoFuncionarioExcluir);
       Exit();
    end;


end;

function TAPIAfastamentoFuncionario.Novo(const a_Objeto: TAfastamentoFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AfastamentoFuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAfastamentoFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TAfastamentoFuncionarioNovo;

begin
  t_Modelo := TAfastamentoFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAfastamentoFuncionario.AlterarDadosGerais(const a_Objeto: TAfastamentoFuncionarioAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AfastamentoFuncionarioAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAfastamentoFuncionario.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TAfastamentoFuncionarioAlterarDadosGerais;

begin
  t_Modelo := TAfastamentoFuncionarioAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAfastamentoFuncionario.AlterarDadosMedicos(const a_Objeto: TAfastamentoFuncionarioAlterarDadosMedicos): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AfastamentoFuncionarioAlterarDadosMedicos', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAfastamentoFuncionario.AlterarDadosMedicos(const a_Objeto: String): TRecibo;

  var t_Modelo: TAfastamentoFuncionarioAlterarDadosMedicos;

begin
  t_Modelo := TAfastamentoFuncionarioAlterarDadosMedicos.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosMedicos(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAfastamentoFuncionario.AlterarDadosSindicais(const a_Objeto: TAfastamentoFuncionarioAlterarDadosSindicais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AfastamentoFuncionarioAlterarDadosSindicais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAfastamentoFuncionario.AlterarDadosSindicais(const a_Objeto: String): TRecibo;

  var t_Modelo: TAfastamentoFuncionarioAlterarDadosSindicais;

begin
  t_Modelo := TAfastamentoFuncionarioAlterarDadosSindicais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosSindicais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAfastamentoFuncionario.AlterarDadosCessao(const a_Objeto: TAfastamentoFuncionarioAlterarDadosCessao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AfastamentoFuncionarioAlterarDadosCessao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAfastamentoFuncionario.AlterarDadosCessao(const a_Objeto: String): TRecibo;

  var t_Modelo: TAfastamentoFuncionarioAlterarDadosCessao;

begin
  t_Modelo := TAfastamentoFuncionarioAlterarDadosCessao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCessao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAfastamentoFuncionario.AlterarDadosFerias(const a_Objeto: TAfastamentoFuncionarioAlterarDadosFerias): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AfastamentoFuncionarioAlterarDadosFerias', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAfastamentoFuncionario.AlterarDadosFerias(const a_Objeto: String): TRecibo;

  var t_Modelo: TAfastamentoFuncionarioAlterarDadosFerias;

begin
  t_Modelo := TAfastamentoFuncionarioAlterarDadosFerias.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosFerias(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAfastamentoFuncionario.AlterarAfastamentoOriginal(const a_Objeto: TAfastamentoFuncionarioAlterarAfastamentoOriginal): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AfastamentoFuncionarioAlterarAfastamentoOriginal', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAfastamentoFuncionario.AlterarAfastamentoOriginal(const a_Objeto: String): TRecibo;

  var t_Modelo: TAfastamentoFuncionarioAlterarAfastamentoOriginal;

begin
  t_Modelo := TAfastamentoFuncionarioAlterarAfastamentoOriginal.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarAfastamentoOriginal(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAfastamentoFuncionario.Excluir(const a_Objeto: TAfastamentoFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AfastamentoFuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAfastamentoFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TAfastamentoFuncionarioExcluir;

begin
  t_Modelo := TAfastamentoFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
