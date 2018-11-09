unit api.controller.financas.Fatura;

interface

  uses
    System.SysUtils,

    api.model.financas.Fatura,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIFatura = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TFaturaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TFaturaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TFaturaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.Fatura }

function TAPIFatura.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'FATURANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FATURAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FATURAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIFatura.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TFaturaNovo)
    then begin
       Result := Self.Novo(a_Param as TFaturaNovo);
       Exit();
    end;

  if (a_param is TFaturaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TFaturaAlterar);
       Exit();
    end;

  if (a_param is TFaturaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TFaturaExcluir);
       Exit();
    end;


end;

function TAPIFatura.Novo(const a_Objeto: TFaturaNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_FaturaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFatura.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TFaturaNovo;

begin
  t_Modelo := TFaturaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFatura.Alterar(const a_Objeto: TFaturaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_FaturaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFatura.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TFaturaAlterar;

begin
  t_Modelo := TFaturaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFatura.Excluir(const a_Objeto: TFaturaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_FaturaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFatura.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TFaturaExcluir;

begin
  t_Modelo := TFaturaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
