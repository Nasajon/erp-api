unit api.controller.financas.ParcelaFormaPagamentoFatura;

interface

  uses
    System.SysUtils,

    api.model.financas.ParcelaFormaPagamentoFatura,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIParcelaFormaPagamentoFatura = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TParcelaFormaPagamentoFaturaNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.ParcelaFormaPagamentoFatura }

function TAPIParcelaFormaPagamentoFatura.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PARCELAFORMAPAGAMENTOFATURANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIParcelaFormaPagamentoFatura.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TParcelaFormaPagamentoFaturaNovo)
    then begin
       Result := Self.Novo(a_Param as TParcelaFormaPagamentoFaturaNovo);
       Exit();
    end;


end;

function TAPIParcelaFormaPagamentoFatura.Novo(const a_Objeto: TParcelaFormaPagamentoFaturaNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ParcelaFormaPagamentoFaturaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIParcelaFormaPagamentoFatura.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TParcelaFormaPagamentoFaturaNovo;

begin
  t_Modelo := TParcelaFormaPagamentoFaturaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
