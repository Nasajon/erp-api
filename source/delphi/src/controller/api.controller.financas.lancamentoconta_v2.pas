unit api.controller.financas.LancamentoConta_v2;

interface

  uses
    System.SysUtils,

    api.model.financas.LancamentoConta_v2,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPILancamentoConta_v2 = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TLancamentoConta_v2Novo): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.LancamentoConta_v2 }

function TAPILancamentoConta_v2.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LANCAMENTOCONTA_V2NOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPILancamentoConta_v2.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TLancamentoConta_v2Novo)
    then begin
       Result := Self.Novo(a_Param as TLancamentoConta_v2Novo);
       Exit();
    end;


end;

function TAPILancamentoConta_v2.Novo(const a_Objeto: TLancamentoConta_v2Novo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_LancamentoConta_v2Novo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILancamentoConta_v2.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLancamentoConta_v2Novo;

begin
  t_Modelo := TLancamentoConta_v2Novo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
