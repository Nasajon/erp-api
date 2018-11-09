unit api.controller.servicos.Funcao;

interface

  uses
    System.SysUtils,

    api.model.servicos.Funcao,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIFuncao = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TFuncaoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TFuncaoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TFuncaoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.Funcao }

function TAPIFuncao.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'FUNCAONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCAOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCAOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIFuncao.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TFuncaoNovo)
    then begin
       Result := Self.Novo(a_Param as TFuncaoNovo);
       Exit();
    end;

  if (a_param is TFuncaoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TFuncaoAlterar);
       Exit();
    end;

  if (a_param is TFuncaoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TFuncaoExcluir);
       Exit();
    end;


end;

function TAPIFuncao.Novo(const a_Objeto: TFuncaoNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_FuncaoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncao.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncaoNovo;

begin
  t_Modelo := TFuncaoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncao.Alterar(const a_Objeto: TFuncaoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_FuncaoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncao.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncaoAlterar;

begin
  t_Modelo := TFuncaoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncao.Excluir(const a_Objeto: TFuncaoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_FuncaoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncao.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncaoExcluir;

begin
  t_Modelo := TFuncaoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
