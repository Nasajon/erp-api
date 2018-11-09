unit api.controller.estoque.Operacao;

interface

  uses
    System.SysUtils,

    api.model.estoque.Operacao,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIOperacao = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TOperacaoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TOperacaoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TOperacaoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIestoque.Operacao }

function TAPIOperacao.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'OPERACAONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'OPERACAOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'OPERACAOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIOperacao.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TOperacaoNovo)
    then begin
       Result := Self.Novo(a_Param as TOperacaoNovo);
       Exit();
    end;

  if (a_param is TOperacaoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TOperacaoAlterar);
       Exit();
    end;

  if (a_param is TOperacaoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TOperacaoExcluir);
       Exit();
    end;


end;

function TAPIOperacao.Novo(const a_Objeto: TOperacaoNovo): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_OperacaoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIOperacao.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TOperacaoNovo;

begin
  t_Modelo := TOperacaoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIOperacao.Alterar(const a_Objeto: TOperacaoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_OperacaoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIOperacao.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TOperacaoAlterar;

begin
  t_Modelo := TOperacaoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIOperacao.Excluir(const a_Objeto: TOperacaoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_OperacaoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIOperacao.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TOperacaoExcluir;

begin
  t_Modelo := TOperacaoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
