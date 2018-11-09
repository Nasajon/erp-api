unit api.controller.ns.ContaAnual;

interface

  uses
    System.SysUtils,

    api.model.ns.ContaAnual,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIContaAnual = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TContaAnualNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TContaAnualAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TContaAnualExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.ContaAnual }

function TAPIContaAnual.execute(const a_api: String; const a_param: String): TRecibo;
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

function TAPIContaAnual.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TContaAnualNovo)
    then begin
       Result := Self.Novo(a_Param as TContaAnualNovo);
       Exit();
    end;

  if (a_param is TContaAnualAlterar)
    then begin
       Result := Self.Alterar(a_Param as TContaAnualAlterar);
       Exit();
    end;

  if (a_param is TContaAnualExcluir)
    then begin
       Result := Self.Excluir(a_Param as TContaAnualExcluir);
       Exit();
    end;


end;

function TAPIContaAnual.Novo(const a_Objeto: TContaAnualNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ContaAnualNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContaAnual.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TContaAnualNovo;

begin
  t_Modelo := TContaAnualNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContaAnual.Alterar(const a_Objeto: TContaAnualAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ContaAnualAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContaAnual.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TContaAnualAlterar;

begin
  t_Modelo := TContaAnualAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContaAnual.Excluir(const a_Objeto: TContaAnualExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ContaAnualExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContaAnual.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TContaAnualExcluir;

begin
  t_Modelo := TContaAnualExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
