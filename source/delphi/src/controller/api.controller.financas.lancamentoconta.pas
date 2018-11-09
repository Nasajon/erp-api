unit api.controller.financas.LancamentoConta;

interface

  uses
    System.SysUtils,

    api.model.financas.LancamentoConta,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPILancamentoConta = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TLancamentoContaNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.LancamentoConta }

function TAPILancamentoConta.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LANCAMENTOCONTANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPILancamentoConta.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TLancamentoContaNovo)
    then begin
       Result := Self.Novo(a_Param as TLancamentoContaNovo);
       Exit();
    end;


end;

function TAPILancamentoConta.Novo(const a_Objeto: TLancamentoContaNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_LancamentoContaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILancamentoConta.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLancamentoContaNovo;

begin
  t_Modelo := TLancamentoContaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
