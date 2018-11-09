unit api.controller.financas.Conta;

interface

  uses
    System.SysUtils,

    api.model.financas.Conta,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIConta = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TContaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TContaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TContaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.Conta }

function TAPIConta.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONTANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIConta.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TContaNovo)
    then begin
       Result := Self.Novo(a_Param as TContaNovo);
       Exit();
    end;

  if (a_param is TContaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TContaAlterar);
       Exit();
    end;

  if (a_param is TContaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TContaExcluir);
       Exit();
    end;


end;

function TAPIConta.Novo(const a_Objeto: TContaNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ContaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConta.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TContaNovo;

begin
  t_Modelo := TContaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIConta.Alterar(const a_Objeto: TContaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ContaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConta.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TContaAlterar;

begin
  t_Modelo := TContaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIConta.Excluir(const a_Objeto: TContaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ContaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConta.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TContaExcluir;

begin
  t_Modelo := TContaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
