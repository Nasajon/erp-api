unit api.controller.contabil.contaanual;

interface

  uses
    System.SysUtils,

    api.model.contabil.contaanual,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIcontaanual = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TcontaanualNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TcontaanualAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TcontaanualExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIcontabil.contaanual }

function TAPIcontaanual.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONTAANUALNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTAANUALALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTAANUALEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIcontaanual.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TcontaanualNovo)
    then begin
       Result := Self.Novo(a_Param as TcontaanualNovo);
       Exit();
    end;

  if (a_param is TcontaanualAlterar)
    then begin
       Result := Self.Alterar(a_Param as TcontaanualAlterar);
       Exit();
    end;

  if (a_param is TcontaanualExcluir)
    then begin
       Result := Self.Excluir(a_Param as TcontaanualExcluir);
       Exit();
    end;


end;

function TAPIcontaanual.Novo(const a_Objeto: TcontaanualNovo): TRecibo;
begin
  Result := TDAO.callFunction('contabil.api_contaanualNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIcontaanual.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TcontaanualNovo;

begin
  t_Modelo := TcontaanualNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIcontaanual.Alterar(const a_Objeto: TcontaanualAlterar): TRecibo;
begin
  Result := TDAO.callFunction('contabil.api_contaanualAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIcontaanual.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TcontaanualAlterar;

begin
  t_Modelo := TcontaanualAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIcontaanual.Excluir(const a_Objeto: TcontaanualExcluir): TRecibo;
begin
  Result := TDAO.callFunction('contabil.api_contaanualExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIcontaanual.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TcontaanualExcluir;

begin
  t_Modelo := TcontaanualExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
