unit api.controller.financas.ParcelaFormaPagamentoRenegociacaoTitulos;

interface

  uses
    System.SysUtils,

    api.model.financas.ParcelaFormaPagamentoRenegociacaoTitulos,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIParcelaFormaPagamentoRenegociacaoTitulos = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TParcelaFormaPagamentoRenegociacaoTitulosNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.ParcelaFormaPagamentoRenegociacaoTitulos }

function TAPIParcelaFormaPagamentoRenegociacaoTitulos.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PARCELAFORMAPAGAMENTORENEGOCIACAOTITULOSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIParcelaFormaPagamentoRenegociacaoTitulos.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TParcelaFormaPagamentoRenegociacaoTitulosNovo)
    then begin
       Result := Self.Novo(a_Param as TParcelaFormaPagamentoRenegociacaoTitulosNovo);
       Exit();
    end;


end;

function TAPIParcelaFormaPagamentoRenegociacaoTitulos.Novo(const a_Objeto: TParcelaFormaPagamentoRenegociacaoTitulosNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ParcelaFormaPagamentoRenegociacaoTitulosNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIParcelaFormaPagamentoRenegociacaoTitulos.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TParcelaFormaPagamentoRenegociacaoTitulosNovo;

begin
  t_Modelo := TParcelaFormaPagamentoRenegociacaoTitulosNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
