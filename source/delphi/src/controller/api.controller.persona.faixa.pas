unit api.controller.persona.Faixa;

interface

  uses
    System.SysUtils,

    api.model.persona.Faixa,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIFaixa = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TFaixaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TFaixaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TFaixaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Faixa }

function TAPIFaixa.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'FAIXANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FAIXAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FAIXAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIFaixa.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TFaixaNovo)
    then begin
       Result := Self.Novo(a_Param as TFaixaNovo);
       Exit();
    end;

  if (a_param is TFaixaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TFaixaAlterar);
       Exit();
    end;

  if (a_param is TFaixaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TFaixaExcluir);
       Exit();
    end;


end;

function TAPIFaixa.Novo(const a_Objeto: TFaixaNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FaixaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFaixa.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TFaixaNovo;

begin
  t_Modelo := TFaixaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFaixa.Alterar(const a_Objeto: TFaixaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FaixaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFaixa.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TFaixaAlterar;

begin
  t_Modelo := TFaixaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFaixa.Excluir(const a_Objeto: TFaixaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FaixaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFaixa.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TFaixaExcluir;

begin
  t_Modelo := TFaixaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
