unit api.controller.ns.Vendedor;

interface

  uses
    System.SysUtils,

    api.model.ns.Vendedor,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIVendedor = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TVendedorNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TVendedorAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TVendedorExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Vendedor }

function TAPIVendedor.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'VENDEDORNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'VENDEDORALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'VENDEDOREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIVendedor.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TVendedorNovo)
    then begin
       Result := Self.Novo(a_Param as TVendedorNovo);
       Exit();
    end;

  if (a_param is TVendedorAlterar)
    then begin
       Result := Self.Alterar(a_Param as TVendedorAlterar);
       Exit();
    end;

  if (a_param is TVendedorExcluir)
    then begin
       Result := Self.Excluir(a_Param as TVendedorExcluir);
       Exit();
    end;


end;

function TAPIVendedor.Novo(const a_Objeto: TVendedorNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_VendedorNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIVendedor.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TVendedorNovo;

begin
  t_Modelo := TVendedorNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIVendedor.Alterar(const a_Objeto: TVendedorAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_VendedorAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIVendedor.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TVendedorAlterar;

begin
  t_Modelo := TVendedorAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIVendedor.Excluir(const a_Objeto: TVendedorExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_VendedorExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIVendedor.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TVendedorExcluir;

begin
  t_Modelo := TVendedorExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
