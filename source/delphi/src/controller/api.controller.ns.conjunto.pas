unit api.controller.ns.Conjunto;

interface

  uses
    System.SysUtils,

    api.model.ns.Conjunto,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIConjunto = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TConjuntoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TConjuntoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TConjuntoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Conjunto }

function TAPIConjunto.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONJUNTONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONJUNTOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONJUNTOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIConjunto.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TConjuntoNovo)
    then begin
       Result := Self.Novo(a_Param as TConjuntoNovo);
       Exit();
    end;

  if (a_param is TConjuntoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TConjuntoAlterar);
       Exit();
    end;

  if (a_param is TConjuntoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TConjuntoExcluir);
       Exit();
    end;


end;

function TAPIConjunto.Novo(const a_Objeto: TConjuntoNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ConjuntoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConjunto.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TConjuntoNovo;

begin
  t_Modelo := TConjuntoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIConjunto.Alterar(const a_Objeto: TConjuntoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ConjuntoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConjunto.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TConjuntoAlterar;

begin
  t_Modelo := TConjuntoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIConjunto.Excluir(const a_Objeto: TConjuntoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ConjuntoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConjunto.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TConjuntoExcluir;

begin
  t_Modelo := TConjuntoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
