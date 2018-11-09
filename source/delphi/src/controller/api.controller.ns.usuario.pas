unit api.controller.ns.Usuario;

interface

  uses
    System.SysUtils,

    api.model.ns.Usuario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIUsuario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TUsuarioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TUsuarioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TUsuarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Usuario }

function TAPIUsuario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'USUARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'USUARIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'USUARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIUsuario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TUsuarioNovo)
    then begin
       Result := Self.Novo(a_Param as TUsuarioNovo);
       Exit();
    end;

  if (a_param is TUsuarioAlterar)
    then begin
       Result := Self.Alterar(a_Param as TUsuarioAlterar);
       Exit();
    end;

  if (a_param is TUsuarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TUsuarioExcluir);
       Exit();
    end;


end;

function TAPIUsuario.Novo(const a_Objeto: TUsuarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_UsuarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIUsuario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TUsuarioNovo;

begin
  t_Modelo := TUsuarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIUsuario.Alterar(const a_Objeto: TUsuarioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_UsuarioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIUsuario.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TUsuarioAlterar;

begin
  t_Modelo := TUsuarioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIUsuario.Excluir(const a_Objeto: TUsuarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_UsuarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIUsuario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TUsuarioExcluir;

begin
  t_Modelo := TUsuarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
