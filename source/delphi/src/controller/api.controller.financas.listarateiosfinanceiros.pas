unit api.controller.financas.ListaRateiosFinanceiros;

interface

  uses
    System.SysUtils,

    api.model.financas.ListaRateiosFinanceiros,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIListaRateiosFinanceiros = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TListaRateiosFinanceirosNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.ListaRateiosFinanceiros }

function TAPIListaRateiosFinanceiros.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LISTARATEIOSFINANCEIROSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIListaRateiosFinanceiros.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TListaRateiosFinanceirosNovo)
    then begin
       Result := Self.Novo(a_Param as TListaRateiosFinanceirosNovo);
       Exit();
    end;


end;

function TAPIListaRateiosFinanceiros.Novo(const a_Objeto: TListaRateiosFinanceirosNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ListaRateiosFinanceirosNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIListaRateiosFinanceiros.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TListaRateiosFinanceirosNovo;

begin
  t_Modelo := TListaRateiosFinanceirosNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
