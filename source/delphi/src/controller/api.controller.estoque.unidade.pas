unit api.controller.estoque.Unidade;

interface

  uses
    System.SysUtils,

    api.model.estoque.Unidade,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIUnidade = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TUnidadeNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TUnidadeAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TUnidadeExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIestoque.Unidade }

function TAPIUnidade.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'UNIDADENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'UNIDADEALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'UNIDADEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIUnidade.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TUnidadeNovo)
    then begin
       Result := Self.Novo(a_Param as TUnidadeNovo);
       Exit();
    end;

  if (a_param is TUnidadeAlterar)
    then begin
       Result := Self.Alterar(a_Param as TUnidadeAlterar);
       Exit();
    end;

  if (a_param is TUnidadeExcluir)
    then begin
       Result := Self.Excluir(a_Param as TUnidadeExcluir);
       Exit();
    end;


end;

function TAPIUnidade.Novo(const a_Objeto: TUnidadeNovo): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_UnidadeNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIUnidade.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TUnidadeNovo;

begin
  t_Modelo := TUnidadeNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIUnidade.Alterar(const a_Objeto: TUnidadeAlterar): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_UnidadeAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIUnidade.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TUnidadeAlterar;

begin
  t_Modelo := TUnidadeAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIUnidade.Excluir(const a_Objeto: TUnidadeExcluir): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_UnidadeExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIUnidade.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TUnidadeExcluir;

begin
  t_Modelo := TUnidadeExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
