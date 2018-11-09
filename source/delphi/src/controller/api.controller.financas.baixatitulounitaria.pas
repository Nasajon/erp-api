unit api.controller.financas.BaixaTituloUnitaria;

interface

  uses
    System.SysUtils,

    api.model.financas.BaixaTituloUnitaria,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIBaixaTituloUnitaria = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function BaixarTitulo(const a_Objeto: String): TRecibo; overload;
        function BaixarTitulo(const a_Objeto: TBaixaTituloUnitariaBaixarTitulo): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.BaixaTituloUnitaria }

function TAPIBaixaTituloUnitaria.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'BAIXATITULOUNITARIABAIXARTITULO')
    then begin
       Result := Self.BaixarTitulo(a_Param);
       Exit();
    end;


end;

function TAPIBaixaTituloUnitaria.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TBaixaTituloUnitariaBaixarTitulo)
    then begin
       Result := Self.BaixarTitulo(a_Param as TBaixaTituloUnitariaBaixarTitulo);
       Exit();
    end;


end;

function TAPIBaixaTituloUnitaria.BaixarTitulo(const a_Objeto: TBaixaTituloUnitariaBaixarTitulo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_BaixaTituloUnitariaBaixarTitulo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIBaixaTituloUnitaria.BaixarTitulo(const a_Objeto: String): TRecibo;

  var t_Modelo: TBaixaTituloUnitariaBaixarTitulo;

begin
  t_Modelo := TBaixaTituloUnitariaBaixarTitulo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.BaixarTitulo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
