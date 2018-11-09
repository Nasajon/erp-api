unit api.controller.ns.PendenciaAdministrativa;

interface

  uses
    System.SysUtils,

    api.model.ns.PendenciaAdministrativa,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIPendenciaAdministrativa = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TPendenciaAdministrativaNovo): TRecibo; overload;

        function Resolver(const a_Objeto: String): TRecibo; overload;
        function Resolver(const a_Objeto: TPendenciaAdministrativaResolver): TRecibo; overload;

        
    end;

implementation

{ TAPIns.PendenciaAdministrativa }

function TAPIPendenciaAdministrativa.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PENDENCIAADMINISTRATIVANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PENDENCIAADMINISTRATIVARESOLVER')
    then begin
       Result := Self.Resolver(a_Param);
       Exit();
    end;


end;

function TAPIPendenciaAdministrativa.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TPendenciaAdministrativaNovo)
    then begin
       Result := Self.Novo(a_Param as TPendenciaAdministrativaNovo);
       Exit();
    end;

  if (a_param is TPendenciaAdministrativaResolver)
    then begin
       Result := Self.Resolver(a_Param as TPendenciaAdministrativaResolver);
       Exit();
    end;


end;

function TAPIPendenciaAdministrativa.Novo(const a_Objeto: TPendenciaAdministrativaNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_PendenciaAdministrativaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPendenciaAdministrativa.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TPendenciaAdministrativaNovo;

begin
  t_Modelo := TPendenciaAdministrativaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIPendenciaAdministrativa.Resolver(const a_Objeto: TPendenciaAdministrativaResolver): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_PendenciaAdministrativaResolver', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPendenciaAdministrativa.Resolver(const a_Objeto: String): TRecibo;

  var t_Modelo: TPendenciaAdministrativaResolver;

begin
  t_Modelo := TPendenciaAdministrativaResolver.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Resolver(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
