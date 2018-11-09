unit api.controller.scritta.ItemLancamentoFiscal;

interface

  uses
    System.SysUtils,

    api.model.scritta.ItemLancamentoFiscal,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIItemLancamentoFiscal = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TItemLancamentoFiscalNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIscritta.ItemLancamentoFiscal }

function TAPIItemLancamentoFiscal.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ITEMLANCAMENTOFISCALNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIItemLancamentoFiscal.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TItemLancamentoFiscalNovo)
    then begin
       Result := Self.Novo(a_Param as TItemLancamentoFiscalNovo);
       Exit();
    end;


end;

function TAPIItemLancamentoFiscal.Novo(const a_Objeto: TItemLancamentoFiscalNovo): TRecibo;
begin
  Result := TDAO.callFunction('scritta.api_ItemLancamentoFiscalNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemLancamentoFiscal.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemLancamentoFiscalNovo;

begin
  t_Modelo := TItemLancamentoFiscalNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
