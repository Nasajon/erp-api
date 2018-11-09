unit api.controller.ns.ElementoDeControle;

interface

  uses
    System.SysUtils,

    api.model.ns.ElementoDeControle,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIElementoDeControle = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TElementoDeControleNovo): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TElementoDeControleExcluir): TRecibo; overload;

        function AplicarValorNoRegistro(const a_Objeto: String): TRecibo; overload;
        function AplicarValorNoRegistro(const a_Objeto: TElementoDeControleAplicarValorNoRegistro): TRecibo; overload;

        
    end;

implementation

{ TAPIns.ElementoDeControle }

function TAPIElementoDeControle.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ELEMENTODECONTROLENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ELEMENTODECONTROLEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ELEMENTODECONTROLEAPLICARVALORNOREGISTRO')
    then begin
       Result := Self.AplicarValorNoRegistro(a_Param);
       Exit();
    end;


end;

function TAPIElementoDeControle.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TElementoDeControleNovo)
    then begin
       Result := Self.Novo(a_Param as TElementoDeControleNovo);
       Exit();
    end;

  if (a_param is TElementoDeControleExcluir)
    then begin
       Result := Self.Excluir(a_Param as TElementoDeControleExcluir);
       Exit();
    end;

  if (a_param is TElementoDeControleAplicarValorNoRegistro)
    then begin
       Result := Self.AplicarValorNoRegistro(a_Param as TElementoDeControleAplicarValorNoRegistro);
       Exit();
    end;


end;

function TAPIElementoDeControle.Novo(const a_Objeto: TElementoDeControleNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ElementoDeControleNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIElementoDeControle.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TElementoDeControleNovo;

begin
  t_Modelo := TElementoDeControleNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIElementoDeControle.Excluir(const a_Objeto: TElementoDeControleExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ElementoDeControleExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIElementoDeControle.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TElementoDeControleExcluir;

begin
  t_Modelo := TElementoDeControleExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIElementoDeControle.AplicarValorNoRegistro(const a_Objeto: TElementoDeControleAplicarValorNoRegistro): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ElementoDeControleAplicarValorNoRegistro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIElementoDeControle.AplicarValorNoRegistro(const a_Objeto: String): TRecibo;

  var t_Modelo: TElementoDeControleAplicarValorNoRegistro;

begin
  t_Modelo := TElementoDeControleAplicarValorNoRegistro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AplicarValorNoRegistro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
