unit api.controller.ns.configuracaotrabalhadorporcentrocusto;

interface

  uses
    System.SysUtils,

    api.model.ns.configuracaotrabalhadorporcentrocusto,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIconfiguracaotrabalhadorporcentrocusto = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TconfiguracaotrabalhadorporcentrocustoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TconfiguracaotrabalhadorporcentrocustoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TconfiguracaotrabalhadorporcentrocustoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.configuracaotrabalhadorporcentrocusto }

function TAPIconfiguracaotrabalhadorporcentrocusto.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONFIGURACAOTRABALHADORPORCENTROCUSTONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACAOTRABALHADORPORCENTROCUSTOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACAOTRABALHADORPORCENTROCUSTOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIconfiguracaotrabalhadorporcentrocusto.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TconfiguracaotrabalhadorporcentrocustoNovo)
    then begin
       Result := Self.Novo(a_Param as TconfiguracaotrabalhadorporcentrocustoNovo);
       Exit();
    end;

  if (a_param is TconfiguracaotrabalhadorporcentrocustoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TconfiguracaotrabalhadorporcentrocustoAlterar);
       Exit();
    end;

  if (a_param is TconfiguracaotrabalhadorporcentrocustoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TconfiguracaotrabalhadorporcentrocustoExcluir);
       Exit();
    end;


end;

function TAPIconfiguracaotrabalhadorporcentrocusto.Novo(const a_Objeto: TconfiguracaotrabalhadorporcentrocustoNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracaotrabalhadorporcentrocustoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracaotrabalhadorporcentrocusto.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracaotrabalhadorporcentrocustoNovo;

begin
  t_Modelo := TconfiguracaotrabalhadorporcentrocustoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIconfiguracaotrabalhadorporcentrocusto.Alterar(const a_Objeto: TconfiguracaotrabalhadorporcentrocustoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracaotrabalhadorporcentrocustoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracaotrabalhadorporcentrocusto.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracaotrabalhadorporcentrocustoAlterar;

begin
  t_Modelo := TconfiguracaotrabalhadorporcentrocustoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIconfiguracaotrabalhadorporcentrocusto.Excluir(const a_Objeto: TconfiguracaotrabalhadorporcentrocustoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracaotrabalhadorporcentrocustoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracaotrabalhadorporcentrocusto.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracaotrabalhadorporcentrocustoExcluir;

begin
  t_Modelo := TconfiguracaotrabalhadorporcentrocustoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
