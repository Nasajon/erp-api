unit api.controller.persona.ReajusteSalarialFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.ReajusteSalarialFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIReajusteSalarialFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TReajusteSalarialFuncionarioNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TReajusteSalarialFuncionarioAlterarDadosGerais): TRecibo; overload;

        function AlterarReajusteSindical(const a_Objeto: String): TRecibo; overload;
        function AlterarReajusteSindical(const a_Objeto: TReajusteSalarialFuncionarioAlterarReajusteSindical): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TReajusteSalarialFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.ReajusteSalarialFuncionario }

function TAPIReajusteSalarialFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'REAJUSTESALARIALFUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'REAJUSTESALARIALFUNCIONARIOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'REAJUSTESALARIALFUNCIONARIOALTERARREAJUSTESINDICAL')
    then begin
       Result := Self.AlterarReajusteSindical(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'REAJUSTESALARIALFUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIReajusteSalarialFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TReajusteSalarialFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as TReajusteSalarialFuncionarioNovo);
       Exit();
    end;

  if (a_param is TReajusteSalarialFuncionarioAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TReajusteSalarialFuncionarioAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TReajusteSalarialFuncionarioAlterarReajusteSindical)
    then begin
       Result := Self.AlterarReajusteSindical(a_Param as TReajusteSalarialFuncionarioAlterarReajusteSindical);
       Exit();
    end;

  if (a_param is TReajusteSalarialFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TReajusteSalarialFuncionarioExcluir);
       Exit();
    end;


end;

function TAPIReajusteSalarialFuncionario.Novo(const a_Objeto: TReajusteSalarialFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ReajusteSalarialFuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIReajusteSalarialFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TReajusteSalarialFuncionarioNovo;

begin
  t_Modelo := TReajusteSalarialFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIReajusteSalarialFuncionario.AlterarDadosGerais(const a_Objeto: TReajusteSalarialFuncionarioAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ReajusteSalarialFuncionarioAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIReajusteSalarialFuncionario.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TReajusteSalarialFuncionarioAlterarDadosGerais;

begin
  t_Modelo := TReajusteSalarialFuncionarioAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIReajusteSalarialFuncionario.AlterarReajusteSindical(const a_Objeto: TReajusteSalarialFuncionarioAlterarReajusteSindical): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ReajusteSalarialFuncionarioAlterarReajusteSindical', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIReajusteSalarialFuncionario.AlterarReajusteSindical(const a_Objeto: String): TRecibo;

  var t_Modelo: TReajusteSalarialFuncionarioAlterarReajusteSindical;

begin
  t_Modelo := TReajusteSalarialFuncionarioAlterarReajusteSindical.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarReajusteSindical(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIReajusteSalarialFuncionario.Excluir(const a_Objeto: TReajusteSalarialFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ReajusteSalarialFuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIReajusteSalarialFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TReajusteSalarialFuncionarioExcluir;

begin
  t_Modelo := TReajusteSalarialFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
