unit api.controller.persona.HistoricoFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.HistoricoFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIHistoricoFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: THistoricoFuncionarioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: THistoricoFuncionarioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: THistoricoFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.HistoricoFuncionario }

function TAPIHistoricoFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'HISTORICOFUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'HISTORICOFUNCIONARIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'HISTORICOFUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIHistoricoFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is THistoricoFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as THistoricoFuncionarioNovo);
       Exit();
    end;

  if (a_param is THistoricoFuncionarioAlterar)
    then begin
       Result := Self.Alterar(a_Param as THistoricoFuncionarioAlterar);
       Exit();
    end;

  if (a_param is THistoricoFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as THistoricoFuncionarioExcluir);
       Exit();
    end;


end;

function TAPIHistoricoFuncionario.Novo(const a_Objeto: THistoricoFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HistoricoFuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHistoricoFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: THistoricoFuncionarioNovo;

begin
  t_Modelo := THistoricoFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIHistoricoFuncionario.Alterar(const a_Objeto: THistoricoFuncionarioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HistoricoFuncionarioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHistoricoFuncionario.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: THistoricoFuncionarioAlterar;

begin
  t_Modelo := THistoricoFuncionarioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIHistoricoFuncionario.Excluir(const a_Objeto: THistoricoFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_HistoricoFuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIHistoricoFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: THistoricoFuncionarioExcluir;

begin
  t_Modelo := THistoricoFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
