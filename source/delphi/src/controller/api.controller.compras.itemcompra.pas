unit api.controller.compras.ItemCompra;

interface

  uses
    System.SysUtils,

    api.model.compras.ItemCompra,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIItemCompra = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TItemCompraNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TItemCompraAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TItemCompraExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIcompras.ItemCompra }

function TAPIItemCompra.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ITEMCOMPRANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ITEMCOMPRAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ITEMCOMPRAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIItemCompra.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TItemCompraNovo)
    then begin
       Result := Self.Novo(a_Param as TItemCompraNovo);
       Exit();
    end;

  if (a_param is TItemCompraAlterar)
    then begin
       Result := Self.Alterar(a_Param as TItemCompraAlterar);
       Exit();
    end;

  if (a_param is TItemCompraExcluir)
    then begin
       Result := Self.Excluir(a_Param as TItemCompraExcluir);
       Exit();
    end;


end;

function TAPIItemCompra.Novo(const a_Objeto: TItemCompraNovo): TRecibo;
begin
  Result := TDAO.callFunction('compras.api_ItemCompraNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemCompra.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemCompraNovo;

begin
  t_Modelo := TItemCompraNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIItemCompra.Alterar(const a_Objeto: TItemCompraAlterar): TRecibo;
begin
  Result := TDAO.callFunction('compras.api_ItemCompraAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemCompra.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemCompraAlterar;

begin
  t_Modelo := TItemCompraAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIItemCompra.Excluir(const a_Objeto: TItemCompraExcluir): TRecibo;
begin
  Result := TDAO.callFunction('compras.api_ItemCompraExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemCompra.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemCompraExcluir;

begin
  t_Modelo := TItemCompraExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
