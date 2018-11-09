unit api.controller.servicos.SerieRPS;

interface

  uses
    System.SysUtils,

    api.model.servicos.SerieRPS,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPISerieRPS = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TSerieRPSNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TSerieRPSAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TSerieRPSExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.SerieRPS }

function TAPISerieRPS.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'SERIERPSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SERIERPSALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SERIERPSEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPISerieRPS.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TSerieRPSNovo)
    then begin
       Result := Self.Novo(a_Param as TSerieRPSNovo);
       Exit();
    end;

  if (a_param is TSerieRPSAlterar)
    then begin
       Result := Self.Alterar(a_Param as TSerieRPSAlterar);
       Exit();
    end;

  if (a_param is TSerieRPSExcluir)
    then begin
       Result := Self.Excluir(a_Param as TSerieRPSExcluir);
       Exit();
    end;


end;

function TAPISerieRPS.Novo(const a_Objeto: TSerieRPSNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_SerieRPSNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISerieRPS.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TSerieRPSNovo;

begin
  t_Modelo := TSerieRPSNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISerieRPS.Alterar(const a_Objeto: TSerieRPSAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_SerieRPSAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISerieRPS.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TSerieRPSAlterar;

begin
  t_Modelo := TSerieRPSAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISerieRPS.Excluir(const a_Objeto: TSerieRPSExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_SerieRPSExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISerieRPS.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TSerieRPSExcluir;

begin
  t_Modelo := TSerieRPSExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
