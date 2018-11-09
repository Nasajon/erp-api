unit api.controller.persona.Jornada;

interface

  uses
    System.SysUtils,

    api.model.persona.Jornada,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIJornada = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TJornadaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TJornadaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TJornadaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Jornada }

function TAPIJornada.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'JORNADANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'JORNADAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'JORNADAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIJornada.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TJornadaNovo)
    then begin
       Result := Self.Novo(a_Param as TJornadaNovo);
       Exit();
    end;

  if (a_param is TJornadaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TJornadaAlterar);
       Exit();
    end;

  if (a_param is TJornadaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TJornadaExcluir);
       Exit();
    end;


end;

function TAPIJornada.Novo(const a_Objeto: TJornadaNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_JornadaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIJornada.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TJornadaNovo;

begin
  t_Modelo := TJornadaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIJornada.Alterar(const a_Objeto: TJornadaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_JornadaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIJornada.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TJornadaAlterar;

begin
  t_Modelo := TJornadaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIJornada.Excluir(const a_Objeto: TJornadaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_JornadaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIJornada.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TJornadaExcluir;

begin
  t_Modelo := TJornadaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
