unit api.controller.ns.configuracaotrabalhadorporprojeto;

interface

  uses
    System.SysUtils,

    api.model.ns.configuracaotrabalhadorporprojeto,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIconfiguracaotrabalhadorporprojeto = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TconfiguracaotrabalhadorporprojetoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TconfiguracaotrabalhadorporprojetoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TconfiguracaotrabalhadorporprojetoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.configuracaotrabalhadorporprojeto }

function TAPIconfiguracaotrabalhadorporprojeto.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONFIGURACAOTRABALHADORPORPROJETONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACAOTRABALHADORPORPROJETOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACAOTRABALHADORPORPROJETOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIconfiguracaotrabalhadorporprojeto.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TconfiguracaotrabalhadorporprojetoNovo)
    then begin
       Result := Self.Novo(a_Param as TconfiguracaotrabalhadorporprojetoNovo);
       Exit();
    end;

  if (a_param is TconfiguracaotrabalhadorporprojetoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TconfiguracaotrabalhadorporprojetoAlterar);
       Exit();
    end;

  if (a_param is TconfiguracaotrabalhadorporprojetoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TconfiguracaotrabalhadorporprojetoExcluir);
       Exit();
    end;


end;

function TAPIconfiguracaotrabalhadorporprojeto.Novo(const a_Objeto: TconfiguracaotrabalhadorporprojetoNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracaotrabalhadorporprojetoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracaotrabalhadorporprojeto.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracaotrabalhadorporprojetoNovo;

begin
  t_Modelo := TconfiguracaotrabalhadorporprojetoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIconfiguracaotrabalhadorporprojeto.Alterar(const a_Objeto: TconfiguracaotrabalhadorporprojetoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracaotrabalhadorporprojetoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracaotrabalhadorporprojeto.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracaotrabalhadorporprojetoAlterar;

begin
  t_Modelo := TconfiguracaotrabalhadorporprojetoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIconfiguracaotrabalhadorporprojeto.Excluir(const a_Objeto: TconfiguracaotrabalhadorporprojetoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracaotrabalhadorporprojetoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracaotrabalhadorporprojeto.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracaotrabalhadorporprojetoExcluir;

begin
  t_Modelo := TconfiguracaotrabalhadorporprojetoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
