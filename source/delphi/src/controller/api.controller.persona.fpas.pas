unit api.controller.persona.FPAS;

interface

  uses
    System.SysUtils,

    api.model.persona.FPAS,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIFPAS = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TFPASNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TFPASAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TFPASExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.FPAS }

function TAPIFPAS.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'FPASNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FPASALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FPASEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIFPAS.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TFPASNovo)
    then begin
       Result := Self.Novo(a_Param as TFPASNovo);
       Exit();
    end;

  if (a_param is TFPASAlterar)
    then begin
       Result := Self.Alterar(a_Param as TFPASAlterar);
       Exit();
    end;

  if (a_param is TFPASExcluir)
    then begin
       Result := Self.Excluir(a_Param as TFPASExcluir);
       Exit();
    end;


end;

function TAPIFPAS.Novo(const a_Objeto: TFPASNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FPASNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFPAS.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TFPASNovo;

begin
  t_Modelo := TFPASNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFPAS.Alterar(const a_Objeto: TFPASAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FPASAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFPAS.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TFPASAlterar;

begin
  t_Modelo := TFPASAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFPAS.Excluir(const a_Objeto: TFPASExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FPASExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFPAS.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TFPASExcluir;

begin
  t_Modelo := TFPASExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
