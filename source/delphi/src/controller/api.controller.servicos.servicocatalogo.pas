unit api.controller.servicos.ServicoCatalogo;

interface

  uses
    System.SysUtils,

    api.model.servicos.ServicoCatalogo,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIServicoCatalogo = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TServicoCatalogoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TServicoCatalogoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TServicoCatalogoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.ServicoCatalogo }

function TAPIServicoCatalogo.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'SERVICOCATALOGONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SERVICOCATALOGOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SERVICOCATALOGOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIServicoCatalogo.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TServicoCatalogoNovo)
    then begin
       Result := Self.Novo(a_Param as TServicoCatalogoNovo);
       Exit();
    end;

  if (a_param is TServicoCatalogoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TServicoCatalogoAlterar);
       Exit();
    end;

  if (a_param is TServicoCatalogoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TServicoCatalogoExcluir);
       Exit();
    end;


end;

function TAPIServicoCatalogo.Novo(const a_Objeto: TServicoCatalogoNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ServicoCatalogoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIServicoCatalogo.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TServicoCatalogoNovo;

begin
  t_Modelo := TServicoCatalogoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIServicoCatalogo.Alterar(const a_Objeto: TServicoCatalogoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ServicoCatalogoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIServicoCatalogo.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TServicoCatalogoAlterar;

begin
  t_Modelo := TServicoCatalogoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIServicoCatalogo.Excluir(const a_Objeto: TServicoCatalogoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ServicoCatalogoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIServicoCatalogo.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TServicoCatalogoExcluir;

begin
  t_Modelo := TServicoCatalogoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
