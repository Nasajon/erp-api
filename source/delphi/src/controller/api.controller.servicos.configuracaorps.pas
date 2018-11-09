unit api.controller.servicos.ConfiguracaoRPS;

interface

  uses
    System.SysUtils,

    api.model.servicos.ConfiguracaoRPS,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIConfiguracaoRPS = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TConfiguracaoRPSNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TConfiguracaoRPSAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TConfiguracaoRPSExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.ConfiguracaoRPS }

function TAPIConfiguracaoRPS.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONFIGURACAORPSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACAORPSALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACAORPSEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIConfiguracaoRPS.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TConfiguracaoRPSNovo)
    then begin
       Result := Self.Novo(a_Param as TConfiguracaoRPSNovo);
       Exit();
    end;

  if (a_param is TConfiguracaoRPSAlterar)
    then begin
       Result := Self.Alterar(a_Param as TConfiguracaoRPSAlterar);
       Exit();
    end;

  if (a_param is TConfiguracaoRPSExcluir)
    then begin
       Result := Self.Excluir(a_Param as TConfiguracaoRPSExcluir);
       Exit();
    end;


end;

function TAPIConfiguracaoRPS.Novo(const a_Objeto: TConfiguracaoRPSNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ConfiguracaoRPSNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConfiguracaoRPS.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TConfiguracaoRPSNovo;

begin
  t_Modelo := TConfiguracaoRPSNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIConfiguracaoRPS.Alterar(const a_Objeto: TConfiguracaoRPSAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ConfiguracaoRPSAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConfiguracaoRPS.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TConfiguracaoRPSAlterar;

begin
  t_Modelo := TConfiguracaoRPSAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIConfiguracaoRPS.Excluir(const a_Objeto: TConfiguracaoRPSExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ConfiguracaoRPSExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConfiguracaoRPS.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TConfiguracaoRPSExcluir;

begin
  t_Modelo := TConfiguracaoRPSExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
