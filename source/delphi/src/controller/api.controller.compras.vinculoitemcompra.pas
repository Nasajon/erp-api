unit api.controller.compras.VinculoItemCompra;

interface

  uses
    System.SysUtils,

    api.model.compras.VinculoItemCompra,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIVinculoItemCompra = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TVinculoItemCompraNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TVinculoItemCompraAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TVinculoItemCompraExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIcompras.VinculoItemCompra }

function TAPIVinculoItemCompra.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'VINCULOITEMCOMPRANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'VINCULOITEMCOMPRAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'VINCULOITEMCOMPRAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIVinculoItemCompra.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TVinculoItemCompraNovo)
    then begin
       Result := Self.Novo(a_Param as TVinculoItemCompraNovo);
       Exit();
    end;

  if (a_param is TVinculoItemCompraAlterar)
    then begin
       Result := Self.Alterar(a_Param as TVinculoItemCompraAlterar);
       Exit();
    end;

  if (a_param is TVinculoItemCompraExcluir)
    then begin
       Result := Self.Excluir(a_Param as TVinculoItemCompraExcluir);
       Exit();
    end;


end;

function TAPIVinculoItemCompra.Novo(const a_Objeto: TVinculoItemCompraNovo): TRecibo;
begin
  Result := TDAO.callFunction('compras.api_VinculoItemCompraNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIVinculoItemCompra.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TVinculoItemCompraNovo;

begin
  t_Modelo := TVinculoItemCompraNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIVinculoItemCompra.Alterar(const a_Objeto: TVinculoItemCompraAlterar): TRecibo;
begin
  Result := TDAO.callFunction('compras.api_VinculoItemCompraAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIVinculoItemCompra.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TVinculoItemCompraAlterar;

begin
  t_Modelo := TVinculoItemCompraAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIVinculoItemCompra.Excluir(const a_Objeto: TVinculoItemCompraExcluir): TRecibo;
begin
  Result := TDAO.callFunction('compras.api_VinculoItemCompraExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIVinculoItemCompra.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TVinculoItemCompraExcluir;

begin
  t_Modelo := TVinculoItemCompraExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
