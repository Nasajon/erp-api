unit api.controller.persona.ProfissionalSaude;

interface

  uses
    System.SysUtils,

    api.model.persona.ProfissionalSaude,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIProfissionalSaude = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TProfissionalSaudeNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TProfissionalSaudeAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TProfissionalSaudeExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.ProfissionalSaude }

function TAPIProfissionalSaude.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PROFISSIONALSAUDENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROFISSIONALSAUDEALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROFISSIONALSAUDEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIProfissionalSaude.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TProfissionalSaudeNovo)
    then begin
       Result := Self.Novo(a_Param as TProfissionalSaudeNovo);
       Exit();
    end;

  if (a_param is TProfissionalSaudeAlterar)
    then begin
       Result := Self.Alterar(a_Param as TProfissionalSaudeAlterar);
       Exit();
    end;

  if (a_param is TProfissionalSaudeExcluir)
    then begin
       Result := Self.Excluir(a_Param as TProfissionalSaudeExcluir);
       Exit();
    end;


end;

function TAPIProfissionalSaude.Novo(const a_Objeto: TProfissionalSaudeNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ProfissionalSaudeNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProfissionalSaude.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TProfissionalSaudeNovo;

begin
  t_Modelo := TProfissionalSaudeNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProfissionalSaude.Alterar(const a_Objeto: TProfissionalSaudeAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ProfissionalSaudeAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProfissionalSaude.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TProfissionalSaudeAlterar;

begin
  t_Modelo := TProfissionalSaudeAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProfissionalSaude.Excluir(const a_Objeto: TProfissionalSaudeExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ProfissionalSaudeExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProfissionalSaude.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TProfissionalSaudeExcluir;

begin
  t_Modelo := TProfissionalSaudeExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
