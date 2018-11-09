unit api.controller.ns.Pais;

interface

  uses
    System.SysUtils,

    api.model.ns.Pais,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIPais = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TPaisNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TPaisAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TPaisExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Pais }

function TAPIPais.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PAISNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PAISALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PAISEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIPais.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TPaisNovo)
    then begin
       Result := Self.Novo(a_Param as TPaisNovo);
       Exit();
    end;

  if (a_param is TPaisAlterar)
    then begin
       Result := Self.Alterar(a_Param as TPaisAlterar);
       Exit();
    end;

  if (a_param is TPaisExcluir)
    then begin
       Result := Self.Excluir(a_Param as TPaisExcluir);
       Exit();
    end;


end;

function TAPIPais.Novo(const a_Objeto: TPaisNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_PaisNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPais.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TPaisNovo;

begin
  t_Modelo := TPaisNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIPais.Alterar(const a_Objeto: TPaisAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_PaisAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPais.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TPaisAlterar;

begin
  t_Modelo := TPaisAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIPais.Excluir(const a_Objeto: TPaisExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_PaisExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPais.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TPaisExcluir;

begin
  t_Modelo := TPaisExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
