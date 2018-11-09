unit api.controller.financas.ClassificacaoFinanceira;

interface

  uses
    System.SysUtils,

    api.model.financas.ClassificacaoFinanceira,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIClassificacaoFinanceira = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TClassificacaoFinanceiraNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TClassificacaoFinanceiraAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TClassificacaoFinanceiraExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.ClassificacaoFinanceira }

function TAPIClassificacaoFinanceira.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CLASSIFICACAOFINANCEIRANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CLASSIFICACAOFINANCEIRAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CLASSIFICACAOFINANCEIRAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIClassificacaoFinanceira.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TClassificacaoFinanceiraNovo)
    then begin
       Result := Self.Novo(a_Param as TClassificacaoFinanceiraNovo);
       Exit();
    end;

  if (a_param is TClassificacaoFinanceiraAlterar)
    then begin
       Result := Self.Alterar(a_Param as TClassificacaoFinanceiraAlterar);
       Exit();
    end;

  if (a_param is TClassificacaoFinanceiraExcluir)
    then begin
       Result := Self.Excluir(a_Param as TClassificacaoFinanceiraExcluir);
       Exit();
    end;


end;

function TAPIClassificacaoFinanceira.Novo(const a_Objeto: TClassificacaoFinanceiraNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ClassificacaoFinanceiraNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIClassificacaoFinanceira.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TClassificacaoFinanceiraNovo;

begin
  t_Modelo := TClassificacaoFinanceiraNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIClassificacaoFinanceira.Alterar(const a_Objeto: TClassificacaoFinanceiraAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ClassificacaoFinanceiraAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIClassificacaoFinanceira.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TClassificacaoFinanceiraAlterar;

begin
  t_Modelo := TClassificacaoFinanceiraAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIClassificacaoFinanceira.Excluir(const a_Objeto: TClassificacaoFinanceiraExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ClassificacaoFinanceiraExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIClassificacaoFinanceira.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TClassificacaoFinanceiraExcluir;

begin
  t_Modelo := TClassificacaoFinanceiraExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
