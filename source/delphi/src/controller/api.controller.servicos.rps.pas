unit api.controller.servicos.RPS;

interface

  uses
    System.SysUtils,

    api.model.servicos.RPS,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIRPS = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TRPSNovo): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TRPSExcluir): TRecibo; overload;

        function Visualizar(const a_Objeto: String): TRecibo; overload;
        function Visualizar(const a_Objeto: TRPSVisualizar): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.RPS }

function TAPIRPS.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'RPSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RPSEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RPSVISUALIZAR')
    then begin
       Result := Self.Visualizar(a_Param);
       Exit();
    end;


end;

function TAPIRPS.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TRPSNovo)
    then begin
       Result := Self.Novo(a_Param as TRPSNovo);
       Exit();
    end;

  if (a_param is TRPSExcluir)
    then begin
       Result := Self.Excluir(a_Param as TRPSExcluir);
       Exit();
    end;

  if (a_param is TRPSVisualizar)
    then begin
       Result := Self.Visualizar(a_Param as TRPSVisualizar);
       Exit();
    end;


end;

function TAPIRPS.Novo(const a_Objeto: TRPSNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_RPSNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRPS.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TRPSNovo;

begin
  t_Modelo := TRPSNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRPS.Excluir(const a_Objeto: TRPSExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_RPSExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRPS.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TRPSExcluir;

begin
  t_Modelo := TRPSExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRPS.Visualizar(const a_Objeto: TRPSVisualizar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_RPSVisualizar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRPS.Visualizar(const a_Objeto: String): TRecibo;

  var t_Modelo: TRPSVisualizar;

begin
  t_Modelo := TRPSVisualizar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Visualizar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
