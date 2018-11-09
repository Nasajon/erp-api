unit api.controller.estoque.CategoriaDeProdutos;

interface

  uses
    System.SysUtils,

    api.model.estoque.CategoriaDeProdutos,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPICategoriaDeProdutos = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TCategoriaDeProdutosNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TCategoriaDeProdutosAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TCategoriaDeProdutosExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIestoque.CategoriaDeProdutos }

function TAPICategoriaDeProdutos.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CATEGORIADEPRODUTOSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CATEGORIADEPRODUTOSALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CATEGORIADEPRODUTOSEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPICategoriaDeProdutos.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TCategoriaDeProdutosNovo)
    then begin
       Result := Self.Novo(a_Param as TCategoriaDeProdutosNovo);
       Exit();
    end;

  if (a_param is TCategoriaDeProdutosAlterar)
    then begin
       Result := Self.Alterar(a_Param as TCategoriaDeProdutosAlterar);
       Exit();
    end;

  if (a_param is TCategoriaDeProdutosExcluir)
    then begin
       Result := Self.Excluir(a_Param as TCategoriaDeProdutosExcluir);
       Exit();
    end;


end;

function TAPICategoriaDeProdutos.Novo(const a_Objeto: TCategoriaDeProdutosNovo): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_CategoriaDeProdutosNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICategoriaDeProdutos.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TCategoriaDeProdutosNovo;

begin
  t_Modelo := TCategoriaDeProdutosNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICategoriaDeProdutos.Alterar(const a_Objeto: TCategoriaDeProdutosAlterar): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_CategoriaDeProdutosAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICategoriaDeProdutos.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TCategoriaDeProdutosAlterar;

begin
  t_Modelo := TCategoriaDeProdutosAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICategoriaDeProdutos.Excluir(const a_Objeto: TCategoriaDeProdutosExcluir): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_CategoriaDeProdutosExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICategoriaDeProdutos.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TCategoriaDeProdutosExcluir;

begin
  t_Modelo := TCategoriaDeProdutosExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
