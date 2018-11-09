unit api.controller.financas.ItemPrestacaoDeConta;

interface

  uses
    System.SysUtils,

    api.model.financas.ItemPrestacaoDeConta,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIItemPrestacaoDeConta = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TItemPrestacaoDeContaNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.ItemPrestacaoDeConta }

function TAPIItemPrestacaoDeConta.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ITEMPRESTACAODECONTANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIItemPrestacaoDeConta.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TItemPrestacaoDeContaNovo)
    then begin
       Result := Self.Novo(a_Param as TItemPrestacaoDeContaNovo);
       Exit();
    end;


end;

function TAPIItemPrestacaoDeConta.Novo(const a_Objeto: TItemPrestacaoDeContaNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ItemPrestacaoDeContaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemPrestacaoDeConta.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemPrestacaoDeContaNovo;

begin
  t_Modelo := TItemPrestacaoDeContaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
