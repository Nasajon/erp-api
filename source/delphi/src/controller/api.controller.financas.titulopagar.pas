unit api.controller.financas.TituloPagar;

interface

  uses
    System.SysUtils,

    api.model.financas.TituloPagar,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPITituloPagar = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TTituloPagarNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TTituloPagarAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TTituloPagarExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.TituloPagar }

function TAPITituloPagar.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'TITULOPAGARNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TITULOPAGARALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TITULOPAGAREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPITituloPagar.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TTituloPagarNovo)
    then begin
       Result := Self.Novo(a_Param as TTituloPagarNovo);
       Exit();
    end;

  if (a_param is TTituloPagarAlterar)
    then begin
       Result := Self.Alterar(a_Param as TTituloPagarAlterar);
       Exit();
    end;

  if (a_param is TTituloPagarExcluir)
    then begin
       Result := Self.Excluir(a_Param as TTituloPagarExcluir);
       Exit();
    end;


end;

function TAPITituloPagar.Novo(const a_Objeto: TTituloPagarNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_TituloPagarNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITituloPagar.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TTituloPagarNovo;

begin
  t_Modelo := TTituloPagarNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITituloPagar.Alterar(const a_Objeto: TTituloPagarAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_TituloPagarAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITituloPagar.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TTituloPagarAlterar;

begin
  t_Modelo := TTituloPagarAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITituloPagar.Excluir(const a_Objeto: TTituloPagarExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_TituloPagarExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITituloPagar.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TTituloPagarExcluir;

begin
  t_Modelo := TTituloPagarExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
