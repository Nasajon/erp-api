unit api.controller.financas.TipoConta;

interface

  uses
    System.SysUtils,

    api.model.financas.TipoConta,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPITipoConta = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TTipoContaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TTipoContaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TTipoContaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.TipoConta }

function TAPITipoConta.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'TIPOCONTANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TIPOCONTAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TIPOCONTAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPITipoConta.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TTipoContaNovo)
    then begin
       Result := Self.Novo(a_Param as TTipoContaNovo);
       Exit();
    end;

  if (a_param is TTipoContaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TTipoContaAlterar);
       Exit();
    end;

  if (a_param is TTipoContaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TTipoContaExcluir);
       Exit();
    end;


end;

function TAPITipoConta.Novo(const a_Objeto: TTipoContaNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_TipoContaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoConta.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoContaNovo;

begin
  t_Modelo := TTipoContaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITipoConta.Alterar(const a_Objeto: TTipoContaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_TipoContaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoConta.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoContaAlterar;

begin
  t_Modelo := TTipoContaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITipoConta.Excluir(const a_Objeto: TTipoContaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_TipoContaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoConta.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoContaExcluir;

begin
  t_Modelo := TTipoContaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
