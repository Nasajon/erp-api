unit api.controller.servicos.ProjetoFuncao;

interface

  uses
    System.SysUtils,

    api.model.servicos.ProjetoFuncao,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIProjetoFuncao = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TProjetoFuncaoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TProjetoFuncaoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TProjetoFuncaoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.ProjetoFuncao }

function TAPIProjetoFuncao.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PROJETOFUNCAONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROJETOFUNCAOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROJETOFUNCAOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIProjetoFuncao.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TProjetoFuncaoNovo)
    then begin
       Result := Self.Novo(a_Param as TProjetoFuncaoNovo);
       Exit();
    end;

  if (a_param is TProjetoFuncaoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TProjetoFuncaoAlterar);
       Exit();
    end;

  if (a_param is TProjetoFuncaoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TProjetoFuncaoExcluir);
       Exit();
    end;


end;

function TAPIProjetoFuncao.Novo(const a_Objeto: TProjetoFuncaoNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ProjetoFuncaoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProjetoFuncao.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TProjetoFuncaoNovo;

begin
  t_Modelo := TProjetoFuncaoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProjetoFuncao.Alterar(const a_Objeto: TProjetoFuncaoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ProjetoFuncaoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProjetoFuncao.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TProjetoFuncaoAlterar;

begin
  t_Modelo := TProjetoFuncaoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProjetoFuncao.Excluir(const a_Objeto: TProjetoFuncaoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ProjetoFuncaoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProjetoFuncao.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TProjetoFuncaoExcluir;

begin
  t_Modelo := TProjetoFuncaoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
