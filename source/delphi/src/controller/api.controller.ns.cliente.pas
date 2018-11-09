unit api.controller.ns.Cliente;

interface

  uses
    System.SysUtils,

    api.model.ns.Cliente,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPICliente = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TClienteNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TClienteAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TClienteExcluir): TRecibo; overload;

        function Novo_v2(const a_Objeto: String): TRecibo; overload;
        function Novo_v2(const a_Objeto: TClienteNovo_v2): TRecibo; overload;

        function Alterar_v2(const a_Objeto: String): TRecibo; overload;
        function Alterar_v2(const a_Objeto: TClienteAlterar_v2): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Cliente }

function TAPICliente.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CLIENTENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CLIENTEALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CLIENTEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CLIENTENOVO_V2')
    then begin
       Result := Self.Novo_v2(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CLIENTEALTERAR_V2')
    then begin
       Result := Self.Alterar_v2(a_Param);
       Exit();
    end;


end;

function TAPICliente.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TClienteNovo)
    then begin
       Result := Self.Novo(a_Param as TClienteNovo);
       Exit();
    end;

  if (a_param is TClienteAlterar)
    then begin
       Result := Self.Alterar(a_Param as TClienteAlterar);
       Exit();
    end;

  if (a_param is TClienteExcluir)
    then begin
       Result := Self.Excluir(a_Param as TClienteExcluir);
       Exit();
    end;

  if (a_param is TClienteNovo_v2)
    then begin
       Result := Self.Novo_v2(a_Param as TClienteNovo_v2);
       Exit();
    end;

  if (a_param is TClienteAlterar_v2)
    then begin
       Result := Self.Alterar_v2(a_Param as TClienteAlterar_v2);
       Exit();
    end;


end;

function TAPICliente.Novo(const a_Objeto: TClienteNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ClienteNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICliente.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TClienteNovo;

begin
  t_Modelo := TClienteNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICliente.Alterar(const a_Objeto: TClienteAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ClienteAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICliente.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TClienteAlterar;

begin
  t_Modelo := TClienteAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICliente.Excluir(const a_Objeto: TClienteExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ClienteExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICliente.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TClienteExcluir;

begin
  t_Modelo := TClienteExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICliente.Novo_v2(const a_Objeto: TClienteNovo_v2): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ClienteNovo_v2', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICliente.Novo_v2(const a_Objeto: String): TRecibo;

  var t_Modelo: TClienteNovo_v2;

begin
  t_Modelo := TClienteNovo_v2.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo_v2(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICliente.Alterar_v2(const a_Objeto: TClienteAlterar_v2): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ClienteAlterar_v2', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICliente.Alterar_v2(const a_Objeto: String): TRecibo;

  var t_Modelo: TClienteAlterar_v2;

begin
  t_Modelo := TClienteAlterar_v2.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar_v2(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
