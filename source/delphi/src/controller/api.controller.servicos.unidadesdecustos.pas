unit api.controller.servicos.unidadesdecustos;

interface

  uses
    System.SysUtils,

    api.model.servicos.unidadesdecustos,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIunidadesdecustos = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TunidadesdecustosNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TunidadesdecustosAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TunidadesdecustosExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.unidadesdecustos }

function TAPIunidadesdecustos.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'UNIDADESDECUSTOSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'UNIDADESDECUSTOSALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'UNIDADESDECUSTOSEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIunidadesdecustos.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TunidadesdecustosNovo)
    then begin
       Result := Self.Novo(a_Param as TunidadesdecustosNovo);
       Exit();
    end;

  if (a_param is TunidadesdecustosAlterar)
    then begin
       Result := Self.Alterar(a_Param as TunidadesdecustosAlterar);
       Exit();
    end;

  if (a_param is TunidadesdecustosExcluir)
    then begin
       Result := Self.Excluir(a_Param as TunidadesdecustosExcluir);
       Exit();
    end;


end;

function TAPIunidadesdecustos.Novo(const a_Objeto: TunidadesdecustosNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_unidadesdecustosNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIunidadesdecustos.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TunidadesdecustosNovo;

begin
  t_Modelo := TunidadesdecustosNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIunidadesdecustos.Alterar(const a_Objeto: TunidadesdecustosAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_unidadesdecustosAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIunidadesdecustos.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TunidadesdecustosAlterar;

begin
  t_Modelo := TunidadesdecustosAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIunidadesdecustos.Excluir(const a_Objeto: TunidadesdecustosExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_unidadesdecustosExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIunidadesdecustos.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TunidadesdecustosExcluir;

begin
  t_Modelo := TunidadesdecustosExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
