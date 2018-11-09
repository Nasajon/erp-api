unit api.controller.financas.LoteFatura_v2;

interface

  uses
    System.SysUtils,

    api.model.financas.LoteFatura_v2,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPILoteFatura_v2 = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TLoteFatura_v2Novo): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TLoteFatura_v2Excluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.LoteFatura_v2 }

function TAPILoteFatura_v2.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LOTEFATURA_V2NOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTEFATURA_V2EXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPILoteFatura_v2.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TLoteFatura_v2Novo)
    then begin
       Result := Self.Novo(a_Param as TLoteFatura_v2Novo);
       Exit();
    end;

  if (a_param is TLoteFatura_v2Excluir)
    then begin
       Result := Self.Excluir(a_Param as TLoteFatura_v2Excluir);
       Exit();
    end;


end;

function TAPILoteFatura_v2.Novo(const a_Objeto: TLoteFatura_v2Novo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_LoteFatura_v2Novo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILoteFatura_v2.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLoteFatura_v2Novo;

begin
  t_Modelo := TLoteFatura_v2Novo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILoteFatura_v2.Excluir(const a_Objeto: TLoteFatura_v2Excluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_LoteFatura_v2Excluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILoteFatura_v2.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TLoteFatura_v2Excluir;

begin
  t_Modelo := TLoteFatura_v2Excluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
