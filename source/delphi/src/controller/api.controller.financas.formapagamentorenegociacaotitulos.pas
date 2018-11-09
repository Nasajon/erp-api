unit api.controller.financas.FormaPagamentoRenegociacaoTitulos;

interface

  uses
    System.SysUtils,

    api.model.financas.FormaPagamentoRenegociacaoTitulos,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIFormaPagamentoRenegociacaoTitulos = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TFormaPagamentoRenegociacaoTitulosNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.FormaPagamentoRenegociacaoTitulos }

function TAPIFormaPagamentoRenegociacaoTitulos.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'FORMAPAGAMENTORENEGOCIACAOTITULOSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIFormaPagamentoRenegociacaoTitulos.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TFormaPagamentoRenegociacaoTitulosNovo)
    then begin
       Result := Self.Novo(a_Param as TFormaPagamentoRenegociacaoTitulosNovo);
       Exit();
    end;


end;

function TAPIFormaPagamentoRenegociacaoTitulos.Novo(const a_Objeto: TFormaPagamentoRenegociacaoTitulosNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_FormaPagamentoRenegociacaoTitulosNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFormaPagamentoRenegociacaoTitulos.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TFormaPagamentoRenegociacaoTitulosNovo;

begin
  t_Modelo := TFormaPagamentoRenegociacaoTitulosNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
