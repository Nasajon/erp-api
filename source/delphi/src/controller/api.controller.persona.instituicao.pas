unit api.controller.persona.Instituicao;

interface

  uses
    System.SysUtils,

    api.model.persona.Instituicao,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIInstituicao = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TInstituicaoNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TInstituicaoAlterarDadosGerais): TRecibo; overload;

        function AlterarInstituicaoPlanoSaude(const a_Objeto: String): TRecibo; overload;
        function AlterarInstituicaoPlanoSaude(const a_Objeto: TInstituicaoAlterarInstituicaoPlanoSaude): TRecibo; overload;

        function AlterarInstituicaoSaude(const a_Objeto: String): TRecibo; overload;
        function AlterarInstituicaoSaude(const a_Objeto: TInstituicaoAlterarInstituicaoSaude): TRecibo; overload;

        function AlterarTelefone(const a_Objeto: String): TRecibo; overload;
        function AlterarTelefone(const a_Objeto: TInstituicaoAlterarTelefone): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TInstituicaoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Instituicao }

function TAPIInstituicao.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'INSTITUICAONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'INSTITUICAOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'INSTITUICAOALTERARINSTITUICAOPLANOSAUDE')
    then begin
       Result := Self.AlterarInstituicaoPlanoSaude(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'INSTITUICAOALTERARINSTITUICAOSAUDE')
    then begin
       Result := Self.AlterarInstituicaoSaude(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'INSTITUICAOALTERARTELEFONE')
    then begin
       Result := Self.AlterarTelefone(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'INSTITUICAOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIInstituicao.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TInstituicaoNovo)
    then begin
       Result := Self.Novo(a_Param as TInstituicaoNovo);
       Exit();
    end;

  if (a_param is TInstituicaoAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TInstituicaoAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TInstituicaoAlterarInstituicaoPlanoSaude)
    then begin
       Result := Self.AlterarInstituicaoPlanoSaude(a_Param as TInstituicaoAlterarInstituicaoPlanoSaude);
       Exit();
    end;

  if (a_param is TInstituicaoAlterarInstituicaoSaude)
    then begin
       Result := Self.AlterarInstituicaoSaude(a_Param as TInstituicaoAlterarInstituicaoSaude);
       Exit();
    end;

  if (a_param is TInstituicaoAlterarTelefone)
    then begin
       Result := Self.AlterarTelefone(a_Param as TInstituicaoAlterarTelefone);
       Exit();
    end;

  if (a_param is TInstituicaoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TInstituicaoExcluir);
       Exit();
    end;


end;

function TAPIInstituicao.Novo(const a_Objeto: TInstituicaoNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_InstituicaoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIInstituicao.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TInstituicaoNovo;

begin
  t_Modelo := TInstituicaoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIInstituicao.AlterarDadosGerais(const a_Objeto: TInstituicaoAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_InstituicaoAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIInstituicao.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TInstituicaoAlterarDadosGerais;

begin
  t_Modelo := TInstituicaoAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIInstituicao.AlterarInstituicaoPlanoSaude(const a_Objeto: TInstituicaoAlterarInstituicaoPlanoSaude): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_InstituicaoAlterarInstituicaoPlanoSaude', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIInstituicao.AlterarInstituicaoPlanoSaude(const a_Objeto: String): TRecibo;

  var t_Modelo: TInstituicaoAlterarInstituicaoPlanoSaude;

begin
  t_Modelo := TInstituicaoAlterarInstituicaoPlanoSaude.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarInstituicaoPlanoSaude(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIInstituicao.AlterarInstituicaoSaude(const a_Objeto: TInstituicaoAlterarInstituicaoSaude): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_InstituicaoAlterarInstituicaoSaude', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIInstituicao.AlterarInstituicaoSaude(const a_Objeto: String): TRecibo;

  var t_Modelo: TInstituicaoAlterarInstituicaoSaude;

begin
  t_Modelo := TInstituicaoAlterarInstituicaoSaude.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarInstituicaoSaude(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIInstituicao.AlterarTelefone(const a_Objeto: TInstituicaoAlterarTelefone): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_InstituicaoAlterarTelefone', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIInstituicao.AlterarTelefone(const a_Objeto: String): TRecibo;

  var t_Modelo: TInstituicaoAlterarTelefone;

begin
  t_Modelo := TInstituicaoAlterarTelefone.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarTelefone(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIInstituicao.Excluir(const a_Objeto: TInstituicaoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_InstituicaoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIInstituicao.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TInstituicaoExcluir;

begin
  t_Modelo := TInstituicaoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
