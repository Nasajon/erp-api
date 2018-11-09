unit api.controller.ns.GrupoDeUsuario;

interface

  uses
    System.SysUtils,

    api.model.ns.GrupoDeUsuario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIGrupoDeUsuario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TGrupoDeUsuarioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TGrupoDeUsuarioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TGrupoDeUsuarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.GrupoDeUsuario }

function TAPIGrupoDeUsuario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'GRUPODEUSUARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'GRUPODEUSUARIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'GRUPODEUSUARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIGrupoDeUsuario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TGrupoDeUsuarioNovo)
    then begin
       Result := Self.Novo(a_Param as TGrupoDeUsuarioNovo);
       Exit();
    end;

  if (a_param is TGrupoDeUsuarioAlterar)
    then begin
       Result := Self.Alterar(a_Param as TGrupoDeUsuarioAlterar);
       Exit();
    end;

  if (a_param is TGrupoDeUsuarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TGrupoDeUsuarioExcluir);
       Exit();
    end;


end;

function TAPIGrupoDeUsuario.Novo(const a_Objeto: TGrupoDeUsuarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_GrupoDeUsuarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIGrupoDeUsuario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TGrupoDeUsuarioNovo;

begin
  t_Modelo := TGrupoDeUsuarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIGrupoDeUsuario.Alterar(const a_Objeto: TGrupoDeUsuarioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_GrupoDeUsuarioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIGrupoDeUsuario.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TGrupoDeUsuarioAlterar;

begin
  t_Modelo := TGrupoDeUsuarioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIGrupoDeUsuario.Excluir(const a_Objeto: TGrupoDeUsuarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_GrupoDeUsuarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIGrupoDeUsuario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TGrupoDeUsuarioExcluir;

begin
  t_Modelo := TGrupoDeUsuarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
