unit api.controller.ns.PerfilUsuario;

interface

  uses
    System.SysUtils,

    api.model.ns.PerfilUsuario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIPerfilUsuario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TPerfilUsuarioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TPerfilUsuarioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TPerfilUsuarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.PerfilUsuario }

function TAPIPerfilUsuario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PERFILUSUARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PERFILUSUARIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PERFILUSUARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIPerfilUsuario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TPerfilUsuarioNovo)
    then begin
       Result := Self.Novo(a_Param as TPerfilUsuarioNovo);
       Exit();
    end;

  if (a_param is TPerfilUsuarioAlterar)
    then begin
       Result := Self.Alterar(a_Param as TPerfilUsuarioAlterar);
       Exit();
    end;

  if (a_param is TPerfilUsuarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TPerfilUsuarioExcluir);
       Exit();
    end;


end;

function TAPIPerfilUsuario.Novo(const a_Objeto: TPerfilUsuarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_PerfilUsuarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPerfilUsuario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TPerfilUsuarioNovo;

begin
  t_Modelo := TPerfilUsuarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIPerfilUsuario.Alterar(const a_Objeto: TPerfilUsuarioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_PerfilUsuarioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPerfilUsuario.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TPerfilUsuarioAlterar;

begin
  t_Modelo := TPerfilUsuarioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIPerfilUsuario.Excluir(const a_Objeto: TPerfilUsuarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_PerfilUsuarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPerfilUsuario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TPerfilUsuarioExcluir;

begin
  t_Modelo := TPerfilUsuarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
