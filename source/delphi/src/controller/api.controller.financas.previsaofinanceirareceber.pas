unit api.controller.financas.PrevisaoFinanceiraReceber;

interface

  uses
    System.SysUtils,

    api.model.financas.PrevisaoFinanceiraReceber,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIPrevisaoFinanceiraReceber = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TPrevisaoFinanceiraReceberNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TPrevisaoFinanceiraReceberAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TPrevisaoFinanceiraReceberExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.PrevisaoFinanceiraReceber }

function TAPIPrevisaoFinanceiraReceber.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PREVISAOFINANCEIRARECEBERNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PREVISAOFINANCEIRARECEBERALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PREVISAOFINANCEIRARECEBEREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIPrevisaoFinanceiraReceber.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TPrevisaoFinanceiraReceberNovo)
    then begin
       Result := Self.Novo(a_Param as TPrevisaoFinanceiraReceberNovo);
       Exit();
    end;

  if (a_param is TPrevisaoFinanceiraReceberAlterar)
    then begin
       Result := Self.Alterar(a_Param as TPrevisaoFinanceiraReceberAlterar);
       Exit();
    end;

  if (a_param is TPrevisaoFinanceiraReceberExcluir)
    then begin
       Result := Self.Excluir(a_Param as TPrevisaoFinanceiraReceberExcluir);
       Exit();
    end;


end;

function TAPIPrevisaoFinanceiraReceber.Novo(const a_Objeto: TPrevisaoFinanceiraReceberNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_PrevisaoFinanceiraReceberNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPrevisaoFinanceiraReceber.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TPrevisaoFinanceiraReceberNovo;

begin
  t_Modelo := TPrevisaoFinanceiraReceberNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIPrevisaoFinanceiraReceber.Alterar(const a_Objeto: TPrevisaoFinanceiraReceberAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_PrevisaoFinanceiraReceberAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPrevisaoFinanceiraReceber.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TPrevisaoFinanceiraReceberAlterar;

begin
  t_Modelo := TPrevisaoFinanceiraReceberAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIPrevisaoFinanceiraReceber.Excluir(const a_Objeto: TPrevisaoFinanceiraReceberExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_PrevisaoFinanceiraReceberExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPrevisaoFinanceiraReceber.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TPrevisaoFinanceiraReceberExcluir;

begin
  t_Modelo := TPrevisaoFinanceiraReceberExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
