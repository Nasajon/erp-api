unit api.controller.estoque.LocalDeEstoque;

interface

  uses
    System.SysUtils,

    api.model.estoque.LocalDeEstoque,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPILocalDeEstoque = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TLocalDeEstoqueNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TLocalDeEstoqueAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TLocalDeEstoqueExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIestoque.LocalDeEstoque }

function TAPILocalDeEstoque.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LOCALDEESTOQUENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOCALDEESTOQUEALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOCALDEESTOQUEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPILocalDeEstoque.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TLocalDeEstoqueNovo)
    then begin
       Result := Self.Novo(a_Param as TLocalDeEstoqueNovo);
       Exit();
    end;

  if (a_param is TLocalDeEstoqueAlterar)
    then begin
       Result := Self.Alterar(a_Param as TLocalDeEstoqueAlterar);
       Exit();
    end;

  if (a_param is TLocalDeEstoqueExcluir)
    then begin
       Result := Self.Excluir(a_Param as TLocalDeEstoqueExcluir);
       Exit();
    end;


end;

function TAPILocalDeEstoque.Novo(const a_Objeto: TLocalDeEstoqueNovo): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_LocalDeEstoqueNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILocalDeEstoque.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLocalDeEstoqueNovo;

begin
  t_Modelo := TLocalDeEstoqueNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILocalDeEstoque.Alterar(const a_Objeto: TLocalDeEstoqueAlterar): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_LocalDeEstoqueAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILocalDeEstoque.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TLocalDeEstoqueAlterar;

begin
  t_Modelo := TLocalDeEstoqueAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILocalDeEstoque.Excluir(const a_Objeto: TLocalDeEstoqueExcluir): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_LocalDeEstoqueExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILocalDeEstoque.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TLocalDeEstoqueExcluir;

begin
  t_Modelo := TLocalDeEstoqueExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
