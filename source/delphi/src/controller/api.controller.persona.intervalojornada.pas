unit api.controller.persona.IntervaloJornada;

interface

  uses
    System.SysUtils,

    api.model.persona.IntervaloJornada,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIIntervaloJornada = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TIntervaloJornadaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TIntervaloJornadaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TIntervaloJornadaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.IntervaloJornada }

function TAPIIntervaloJornada.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'INTERVALOJORNADANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'INTERVALOJORNADAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'INTERVALOJORNADAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIIntervaloJornada.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TIntervaloJornadaNovo)
    then begin
       Result := Self.Novo(a_Param as TIntervaloJornadaNovo);
       Exit();
    end;

  if (a_param is TIntervaloJornadaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TIntervaloJornadaAlterar);
       Exit();
    end;

  if (a_param is TIntervaloJornadaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TIntervaloJornadaExcluir);
       Exit();
    end;


end;

function TAPIIntervaloJornada.Novo(const a_Objeto: TIntervaloJornadaNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_IntervaloJornadaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIIntervaloJornada.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TIntervaloJornadaNovo;

begin
  t_Modelo := TIntervaloJornadaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIIntervaloJornada.Alterar(const a_Objeto: TIntervaloJornadaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_IntervaloJornadaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIIntervaloJornada.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TIntervaloJornadaAlterar;

begin
  t_Modelo := TIntervaloJornadaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIIntervaloJornada.Excluir(const a_Objeto: TIntervaloJornadaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_IntervaloJornadaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIIntervaloJornada.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TIntervaloJornadaExcluir;

begin
  t_Modelo := TIntervaloJornadaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
