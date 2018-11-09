unit api.controller.persona.TipoFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.TipoFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPITipoFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TTipoFuncionarioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TTipoFuncionarioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TTipoFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.TipoFuncionario }

function TAPITipoFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'TIPOFUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TIPOFUNCIONARIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TIPOFUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPITipoFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TTipoFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as TTipoFuncionarioNovo);
       Exit();
    end;

  if (a_param is TTipoFuncionarioAlterar)
    then begin
       Result := Self.Alterar(a_Param as TTipoFuncionarioAlterar);
       Exit();
    end;

  if (a_param is TTipoFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TTipoFuncionarioExcluir);
       Exit();
    end;


end;

function TAPITipoFuncionario.Novo(const a_Objeto: TTipoFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TipoFuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoFuncionarioNovo;

begin
  t_Modelo := TTipoFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITipoFuncionario.Alterar(const a_Objeto: TTipoFuncionarioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TipoFuncionarioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoFuncionario.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoFuncionarioAlterar;

begin
  t_Modelo := TTipoFuncionarioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITipoFuncionario.Excluir(const a_Objeto: TTipoFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TipoFuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoFuncionarioExcluir;

begin
  t_Modelo := TTipoFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
