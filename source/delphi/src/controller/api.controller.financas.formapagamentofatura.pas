unit api.controller.financas.FormaPagamentoFatura;

interface

  uses
    System.SysUtils,

    api.model.financas.FormaPagamentoFatura,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIFormaPagamentoFatura = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TFormaPagamentoFaturaNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.FormaPagamentoFatura }

function TAPIFormaPagamentoFatura.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'FORMAPAGAMENTOFATURANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIFormaPagamentoFatura.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TFormaPagamentoFaturaNovo)
    then begin
       Result := Self.Novo(a_Param as TFormaPagamentoFaturaNovo);
       Exit();
    end;


end;

function TAPIFormaPagamentoFatura.Novo(const a_Objeto: TFormaPagamentoFaturaNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_FormaPagamentoFaturaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFormaPagamentoFatura.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TFormaPagamentoFaturaNovo;

begin
  t_Modelo := TFormaPagamentoFaturaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
