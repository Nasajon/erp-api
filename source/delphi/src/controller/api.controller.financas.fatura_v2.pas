unit api.controller.financas.Fatura_v2;

interface

  uses
    System.SysUtils,

    api.model.financas.Fatura_v2,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIFatura_v2 = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TFatura_v2Novo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TFatura_v2Alterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TFatura_v2Excluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.Fatura_v2 }

function TAPIFatura_v2.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'FATURA_V2NOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FATURA_V2ALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FATURA_V2EXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIFatura_v2.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TFatura_v2Novo)
    then begin
       Result := Self.Novo(a_Param as TFatura_v2Novo);
       Exit();
    end;

  if (a_param is TFatura_v2Alterar)
    then begin
       Result := Self.Alterar(a_Param as TFatura_v2Alterar);
       Exit();
    end;

  if (a_param is TFatura_v2Excluir)
    then begin
       Result := Self.Excluir(a_Param as TFatura_v2Excluir);
       Exit();
    end;


end;

function TAPIFatura_v2.Novo(const a_Objeto: TFatura_v2Novo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_Fatura_v2Novo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFatura_v2.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TFatura_v2Novo;

begin
  t_Modelo := TFatura_v2Novo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFatura_v2.Alterar(const a_Objeto: TFatura_v2Alterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_Fatura_v2Alterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFatura_v2.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TFatura_v2Alterar;

begin
  t_Modelo := TFatura_v2Alterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFatura_v2.Excluir(const a_Objeto: TFatura_v2Excluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_Fatura_v2Excluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFatura_v2.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TFatura_v2Excluir;

begin
  t_Modelo := TFatura_v2Excluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
