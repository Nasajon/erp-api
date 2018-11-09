unit api.controller.ns.ConfiguracaoProxy;

interface

  uses
    System.SysUtils,

    api.model.ns.ConfiguracaoProxy,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIConfiguracaoProxy = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TConfiguracaoProxyNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TConfiguracaoProxyAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TConfiguracaoProxyExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.ConfiguracaoProxy }

function TAPIConfiguracaoProxy.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONFIGURACAOPROXYNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACAOPROXYALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACAOPROXYEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIConfiguracaoProxy.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TConfiguracaoProxyNovo)
    then begin
       Result := Self.Novo(a_Param as TConfiguracaoProxyNovo);
       Exit();
    end;

  if (a_param is TConfiguracaoProxyAlterar)
    then begin
       Result := Self.Alterar(a_Param as TConfiguracaoProxyAlterar);
       Exit();
    end;

  if (a_param is TConfiguracaoProxyExcluir)
    then begin
       Result := Self.Excluir(a_Param as TConfiguracaoProxyExcluir);
       Exit();
    end;


end;

function TAPIConfiguracaoProxy.Novo(const a_Objeto: TConfiguracaoProxyNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ConfiguracaoProxyNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConfiguracaoProxy.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TConfiguracaoProxyNovo;

begin
  t_Modelo := TConfiguracaoProxyNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIConfiguracaoProxy.Alterar(const a_Objeto: TConfiguracaoProxyAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ConfiguracaoProxyAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConfiguracaoProxy.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TConfiguracaoProxyAlterar;

begin
  t_Modelo := TConfiguracaoProxyAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIConfiguracaoProxy.Excluir(const a_Objeto: TConfiguracaoProxyExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ConfiguracaoProxyExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConfiguracaoProxy.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TConfiguracaoProxyExcluir;

begin
  t_Modelo := TConfiguracaoProxyExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
