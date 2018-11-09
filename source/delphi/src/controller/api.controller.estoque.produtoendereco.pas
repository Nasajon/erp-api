unit api.controller.estoque.ProdutoEndereco;

interface

  uses
    System.SysUtils,

    api.model.estoque.ProdutoEndereco,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIProdutoEndereco = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TProdutoEnderecoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TProdutoEnderecoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TProdutoEnderecoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIestoque.ProdutoEndereco }

function TAPIProdutoEndereco.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PRODUTOENDERECONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PRODUTOENDERECOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PRODUTOENDERECOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIProdutoEndereco.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TProdutoEnderecoNovo)
    then begin
       Result := Self.Novo(a_Param as TProdutoEnderecoNovo);
       Exit();
    end;

  if (a_param is TProdutoEnderecoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TProdutoEnderecoAlterar);
       Exit();
    end;

  if (a_param is TProdutoEnderecoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TProdutoEnderecoExcluir);
       Exit();
    end;


end;

function TAPIProdutoEndereco.Novo(const a_Objeto: TProdutoEnderecoNovo): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_ProdutoEnderecoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProdutoEndereco.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TProdutoEnderecoNovo;

begin
  t_Modelo := TProdutoEnderecoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProdutoEndereco.Alterar(const a_Objeto: TProdutoEnderecoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_ProdutoEnderecoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProdutoEndereco.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TProdutoEnderecoAlterar;

begin
  t_Modelo := TProdutoEnderecoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProdutoEndereco.Excluir(const a_Objeto: TProdutoEnderecoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_ProdutoEnderecoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProdutoEndereco.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TProdutoEnderecoExcluir;

begin
  t_Modelo := TProdutoEnderecoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
