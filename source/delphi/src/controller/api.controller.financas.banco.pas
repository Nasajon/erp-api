unit api.controller.financas.Banco;

interface

  uses
    System.SysUtils,

    api.model.financas.Banco,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIBanco = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TBancoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TBancoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TBancoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.Banco }

function TAPIBanco.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'BANCONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'BANCOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'BANCOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIBanco.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TBancoNovo)
    then begin
       Result := Self.Novo(a_Param as TBancoNovo);
       Exit();
    end;

  if (a_param is TBancoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TBancoAlterar);
       Exit();
    end;

  if (a_param is TBancoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TBancoExcluir);
       Exit();
    end;


end;

function TAPIBanco.Novo(const a_Objeto: TBancoNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_BancoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIBanco.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TBancoNovo;

begin
  t_Modelo := TBancoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIBanco.Alterar(const a_Objeto: TBancoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_BancoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIBanco.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TBancoAlterar;

begin
  t_Modelo := TBancoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIBanco.Excluir(const a_Objeto: TBancoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_BancoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIBanco.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TBancoExcluir;

begin
  t_Modelo := TBancoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
