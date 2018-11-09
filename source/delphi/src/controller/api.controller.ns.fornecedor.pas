unit api.controller.ns.Fornecedor;

interface

  uses
    System.SysUtils,

    api.model.ns.Fornecedor,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIFornecedor = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TFornecedorNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TFornecedorAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TFornecedorExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Fornecedor }

function TAPIFornecedor.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'FORNECEDORNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FORNECEDORALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FORNECEDOREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIFornecedor.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TFornecedorNovo)
    then begin
       Result := Self.Novo(a_Param as TFornecedorNovo);
       Exit();
    end;

  if (a_param is TFornecedorAlterar)
    then begin
       Result := Self.Alterar(a_Param as TFornecedorAlterar);
       Exit();
    end;

  if (a_param is TFornecedorExcluir)
    then begin
       Result := Self.Excluir(a_Param as TFornecedorExcluir);
       Exit();
    end;


end;

function TAPIFornecedor.Novo(const a_Objeto: TFornecedorNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_FornecedorNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFornecedor.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TFornecedorNovo;

begin
  t_Modelo := TFornecedorNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFornecedor.Alterar(const a_Objeto: TFornecedorAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_FornecedorAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFornecedor.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TFornecedorAlterar;

begin
  t_Modelo := TFornecedorAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFornecedor.Excluir(const a_Objeto: TFornecedorExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_FornecedorExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFornecedor.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TFornecedorExcluir;

begin
  t_Modelo := TFornecedorExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
