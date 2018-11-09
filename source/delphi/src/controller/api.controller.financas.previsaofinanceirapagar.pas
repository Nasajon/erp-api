unit api.controller.financas.PrevisaoFinanceiraPagar;

interface

  uses
    System.SysUtils,

    api.model.financas.PrevisaoFinanceiraPagar,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIPrevisaoFinanceiraPagar = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TPrevisaoFinanceiraPagarNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TPrevisaoFinanceiraPagarAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TPrevisaoFinanceiraPagarExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.PrevisaoFinanceiraPagar }

function TAPIPrevisaoFinanceiraPagar.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PREVISAOFINANCEIRAPAGARNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PREVISAOFINANCEIRAPAGARALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PREVISAOFINANCEIRAPAGAREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIPrevisaoFinanceiraPagar.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TPrevisaoFinanceiraPagarNovo)
    then begin
       Result := Self.Novo(a_Param as TPrevisaoFinanceiraPagarNovo);
       Exit();
    end;

  if (a_param is TPrevisaoFinanceiraPagarAlterar)
    then begin
       Result := Self.Alterar(a_Param as TPrevisaoFinanceiraPagarAlterar);
       Exit();
    end;

  if (a_param is TPrevisaoFinanceiraPagarExcluir)
    then begin
       Result := Self.Excluir(a_Param as TPrevisaoFinanceiraPagarExcluir);
       Exit();
    end;


end;

function TAPIPrevisaoFinanceiraPagar.Novo(const a_Objeto: TPrevisaoFinanceiraPagarNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_PrevisaoFinanceiraPagarNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPrevisaoFinanceiraPagar.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TPrevisaoFinanceiraPagarNovo;

begin
  t_Modelo := TPrevisaoFinanceiraPagarNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIPrevisaoFinanceiraPagar.Alterar(const a_Objeto: TPrevisaoFinanceiraPagarAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_PrevisaoFinanceiraPagarAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPrevisaoFinanceiraPagar.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TPrevisaoFinanceiraPagarAlterar;

begin
  t_Modelo := TPrevisaoFinanceiraPagarAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIPrevisaoFinanceiraPagar.Excluir(const a_Objeto: TPrevisaoFinanceiraPagarExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_PrevisaoFinanceiraPagarExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPrevisaoFinanceiraPagar.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TPrevisaoFinanceiraPagarExcluir;

begin
  t_Modelo := TPrevisaoFinanceiraPagarExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
