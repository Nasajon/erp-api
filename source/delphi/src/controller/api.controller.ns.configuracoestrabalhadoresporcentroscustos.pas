unit api.controller.ns.configuracoestrabalhadoresporcentroscustos;

interface

  uses
    System.SysUtils,

    api.model.ns.configuracoestrabalhadoresporcentroscustos,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIconfiguracoestrabalhadoresporcentroscustos = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TconfiguracoestrabalhadoresporcentroscustosNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TconfiguracoestrabalhadoresporcentroscustosAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TconfiguracoestrabalhadoresporcentroscustosExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.configuracoestrabalhadoresporcentroscustos }

function TAPIconfiguracoestrabalhadoresporcentroscustos.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONFIGURACOESTRABALHADORESPORCENTROSCUSTOSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACOESTRABALHADORESPORCENTROSCUSTOSALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACOESTRABALHADORESPORCENTROSCUSTOSEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIconfiguracoestrabalhadoresporcentroscustos.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TconfiguracoestrabalhadoresporcentroscustosNovo)
    then begin
       Result := Self.Novo(a_Param as TconfiguracoestrabalhadoresporcentroscustosNovo);
       Exit();
    end;

  if (a_param is TconfiguracoestrabalhadoresporcentroscustosAlterar)
    then begin
       Result := Self.Alterar(a_Param as TconfiguracoestrabalhadoresporcentroscustosAlterar);
       Exit();
    end;

  if (a_param is TconfiguracoestrabalhadoresporcentroscustosExcluir)
    then begin
       Result := Self.Excluir(a_Param as TconfiguracoestrabalhadoresporcentroscustosExcluir);
       Exit();
    end;


end;

function TAPIconfiguracoestrabalhadoresporcentroscustos.Novo(const a_Objeto: TconfiguracoestrabalhadoresporcentroscustosNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracoestrabalhadoresporcentroscustosNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracoestrabalhadoresporcentroscustos.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracoestrabalhadoresporcentroscustosNovo;

begin
  t_Modelo := TconfiguracoestrabalhadoresporcentroscustosNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIconfiguracoestrabalhadoresporcentroscustos.Alterar(const a_Objeto: TconfiguracoestrabalhadoresporcentroscustosAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracoestrabalhadoresporcentroscustosAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracoestrabalhadoresporcentroscustos.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracoestrabalhadoresporcentroscustosAlterar;

begin
  t_Modelo := TconfiguracoestrabalhadoresporcentroscustosAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIconfiguracoestrabalhadoresporcentroscustos.Excluir(const a_Objeto: TconfiguracoestrabalhadoresporcentroscustosExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracoestrabalhadoresporcentroscustosExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracoestrabalhadoresporcentroscustos.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracoestrabalhadoresporcentroscustosExcluir;

begin
  t_Modelo := TconfiguracoestrabalhadoresporcentroscustosExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
