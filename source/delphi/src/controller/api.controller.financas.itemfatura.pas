unit api.controller.financas.ItemFatura;

interface

  uses
    System.SysUtils,

    api.model.financas.ItemFatura,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIItemFatura = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TItemFaturaNovo): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TItemFaturaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.ItemFatura }

function TAPIItemFatura.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ITEMFATURANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ITEMFATURAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIItemFatura.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TItemFaturaNovo)
    then begin
       Result := Self.Novo(a_Param as TItemFaturaNovo);
       Exit();
    end;

  if (a_param is TItemFaturaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TItemFaturaExcluir);
       Exit();
    end;


end;

function TAPIItemFatura.Novo(const a_Objeto: TItemFaturaNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ItemFaturaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemFatura.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemFaturaNovo;

begin
  t_Modelo := TItemFaturaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIItemFatura.Excluir(const a_Objeto: TItemFaturaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ItemFaturaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemFatura.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemFaturaExcluir;

begin
  t_Modelo := TItemFaturaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
