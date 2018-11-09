unit api.controller.persona.DependenteFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.DependenteFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIDependenteFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TDependenteFuncionarioNovo): TRecibo; overload;

        function AlterarDadosPadrao(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosPadrao(const a_Objeto: TDependenteFuncionarioAlterarDadosPadrao): TRecibo; overload;

        function AlterarDadosCertidaoNascimento(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCertidaoNascimento(const a_Objeto: TDependenteFuncionarioAlterarDadosCertidaoNascimento): TRecibo; overload;

        function AlterarBeneficiarioSalarioFamilia(const a_Objeto: String): TRecibo; overload;
        function AlterarBeneficiarioSalarioFamilia(const a_Objeto: TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia): TRecibo; overload;

        function AlterarBeneficiarioPensaoAlimenticia(const a_Objeto: String): TRecibo; overload;
        function AlterarBeneficiarioPensaoAlimenticia(const a_Objeto: TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia): TRecibo; overload;

        function AlterarBeneficiarioPlanoSaude(const a_Objeto: String): TRecibo; overload;
        function AlterarBeneficiarioPlanoSaude(const a_Objeto: TDependenteFuncionarioAlterarBeneficiarioPlanoSaude): TRecibo; overload;

        function AlterarBeneficiarioImpostoRenda(const a_Objeto: String): TRecibo; overload;
        function AlterarBeneficiarioImpostoRenda(const a_Objeto: TDependenteFuncionarioAlterarBeneficiarioImpostoRenda): TRecibo; overload;

        function AlterarDadosSalarioFamilia(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosSalarioFamilia(const a_Objeto: TDependenteFuncionarioAlterarDadosSalarioFamilia): TRecibo; overload;

        function AlterarDataBaixaImpostoRenda(const a_Objeto: String): TRecibo; overload;
        function AlterarDataBaixaImpostoRenda(const a_Objeto: TDependenteFuncionarioAlterarDataBaixaImpostoRenda): TRecibo; overload;

        function AlterarDadosPensaoAlimenticia(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosPensaoAlimenticia(const a_Objeto: TDependenteFuncionarioAlterarDadosPensaoAlimenticia): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TDependenteFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.DependenteFuncionario }

function TAPIDependenteFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'DEPENDENTEFUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DEPENDENTEFUNCIONARIOALTERARDADOSPADRAO')
    then begin
       Result := Self.AlterarDadosPadrao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DEPENDENTEFUNCIONARIOALTERARDADOSCERTIDAONASCIMENTO')
    then begin
       Result := Self.AlterarDadosCertidaoNascimento(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DEPENDENTEFUNCIONARIOALTERARBENEFICIARIOSALARIOFAMILIA')
    then begin
       Result := Self.AlterarBeneficiarioSalarioFamilia(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DEPENDENTEFUNCIONARIOALTERARBENEFICIARIOPENSAOALIMENTICIA')
    then begin
       Result := Self.AlterarBeneficiarioPensaoAlimenticia(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DEPENDENTEFUNCIONARIOALTERARBENEFICIARIOPLANOSAUDE')
    then begin
       Result := Self.AlterarBeneficiarioPlanoSaude(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DEPENDENTEFUNCIONARIOALTERARBENEFICIARIOIMPOSTORENDA')
    then begin
       Result := Self.AlterarBeneficiarioImpostoRenda(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DEPENDENTEFUNCIONARIOALTERARDADOSSALARIOFAMILIA')
    then begin
       Result := Self.AlterarDadosSalarioFamilia(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DEPENDENTEFUNCIONARIOALTERARDATABAIXAIMPOSTORENDA')
    then begin
       Result := Self.AlterarDataBaixaImpostoRenda(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DEPENDENTEFUNCIONARIOALTERARDADOSPENSAOALIMENTICIA')
    then begin
       Result := Self.AlterarDadosPensaoAlimenticia(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DEPENDENTEFUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIDependenteFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TDependenteFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as TDependenteFuncionarioNovo);
       Exit();
    end;

  if (a_param is TDependenteFuncionarioAlterarDadosPadrao)
    then begin
       Result := Self.AlterarDadosPadrao(a_Param as TDependenteFuncionarioAlterarDadosPadrao);
       Exit();
    end;

  if (a_param is TDependenteFuncionarioAlterarDadosCertidaoNascimento)
    then begin
       Result := Self.AlterarDadosCertidaoNascimento(a_Param as TDependenteFuncionarioAlterarDadosCertidaoNascimento);
       Exit();
    end;

  if (a_param is TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia)
    then begin
       Result := Self.AlterarBeneficiarioSalarioFamilia(a_Param as TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia);
       Exit();
    end;

  if (a_param is TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia)
    then begin
       Result := Self.AlterarBeneficiarioPensaoAlimenticia(a_Param as TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia);
       Exit();
    end;

  if (a_param is TDependenteFuncionarioAlterarBeneficiarioPlanoSaude)
    then begin
       Result := Self.AlterarBeneficiarioPlanoSaude(a_Param as TDependenteFuncionarioAlterarBeneficiarioPlanoSaude);
       Exit();
    end;

  if (a_param is TDependenteFuncionarioAlterarBeneficiarioImpostoRenda)
    then begin
       Result := Self.AlterarBeneficiarioImpostoRenda(a_Param as TDependenteFuncionarioAlterarBeneficiarioImpostoRenda);
       Exit();
    end;

  if (a_param is TDependenteFuncionarioAlterarDadosSalarioFamilia)
    then begin
       Result := Self.AlterarDadosSalarioFamilia(a_Param as TDependenteFuncionarioAlterarDadosSalarioFamilia);
       Exit();
    end;

  if (a_param is TDependenteFuncionarioAlterarDataBaixaImpostoRenda)
    then begin
       Result := Self.AlterarDataBaixaImpostoRenda(a_Param as TDependenteFuncionarioAlterarDataBaixaImpostoRenda);
       Exit();
    end;

  if (a_param is TDependenteFuncionarioAlterarDadosPensaoAlimenticia)
    then begin
       Result := Self.AlterarDadosPensaoAlimenticia(a_Param as TDependenteFuncionarioAlterarDadosPensaoAlimenticia);
       Exit();
    end;

  if (a_param is TDependenteFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TDependenteFuncionarioExcluir);
       Exit();
    end;


end;

function TAPIDependenteFuncionario.Novo(const a_Objeto: TDependenteFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DependenteFuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDependenteFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TDependenteFuncionarioNovo;

begin
  t_Modelo := TDependenteFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDependenteFuncionario.AlterarDadosPadrao(const a_Objeto: TDependenteFuncionarioAlterarDadosPadrao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DependenteFuncionarioAlterarDadosPadrao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDependenteFuncionario.AlterarDadosPadrao(const a_Objeto: String): TRecibo;

  var t_Modelo: TDependenteFuncionarioAlterarDadosPadrao;

begin
  t_Modelo := TDependenteFuncionarioAlterarDadosPadrao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosPadrao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDependenteFuncionario.AlterarDadosCertidaoNascimento(const a_Objeto: TDependenteFuncionarioAlterarDadosCertidaoNascimento): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DependenteFuncionarioAlterarDadosCertidaoNascimento', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDependenteFuncionario.AlterarDadosCertidaoNascimento(const a_Objeto: String): TRecibo;

  var t_Modelo: TDependenteFuncionarioAlterarDadosCertidaoNascimento;

begin
  t_Modelo := TDependenteFuncionarioAlterarDadosCertidaoNascimento.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCertidaoNascimento(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDependenteFuncionario.AlterarBeneficiarioSalarioFamilia(const a_Objeto: TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DependenteFuncionarioAlterarBeneficiarioSalarioFamilia', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDependenteFuncionario.AlterarBeneficiarioSalarioFamilia(const a_Objeto: String): TRecibo;

  var t_Modelo: TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia;

begin
  t_Modelo := TDependenteFuncionarioAlterarBeneficiarioSalarioFamilia.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarBeneficiarioSalarioFamilia(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDependenteFuncionario.AlterarBeneficiarioPensaoAlimenticia(const a_Objeto: TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDependenteFuncionario.AlterarBeneficiarioPensaoAlimenticia(const a_Objeto: String): TRecibo;

  var t_Modelo: TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia;

begin
  t_Modelo := TDependenteFuncionarioAlterarBeneficiarioPensaoAlimenticia.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarBeneficiarioPensaoAlimenticia(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDependenteFuncionario.AlterarBeneficiarioPlanoSaude(const a_Objeto: TDependenteFuncionarioAlterarBeneficiarioPlanoSaude): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DependenteFuncionarioAlterarBeneficiarioPlanoSaude', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDependenteFuncionario.AlterarBeneficiarioPlanoSaude(const a_Objeto: String): TRecibo;

  var t_Modelo: TDependenteFuncionarioAlterarBeneficiarioPlanoSaude;

begin
  t_Modelo := TDependenteFuncionarioAlterarBeneficiarioPlanoSaude.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarBeneficiarioPlanoSaude(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDependenteFuncionario.AlterarBeneficiarioImpostoRenda(const a_Objeto: TDependenteFuncionarioAlterarBeneficiarioImpostoRenda): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DependenteFuncionarioAlterarBeneficiarioImpostoRenda', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDependenteFuncionario.AlterarBeneficiarioImpostoRenda(const a_Objeto: String): TRecibo;

  var t_Modelo: TDependenteFuncionarioAlterarBeneficiarioImpostoRenda;

begin
  t_Modelo := TDependenteFuncionarioAlterarBeneficiarioImpostoRenda.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarBeneficiarioImpostoRenda(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDependenteFuncionario.AlterarDadosSalarioFamilia(const a_Objeto: TDependenteFuncionarioAlterarDadosSalarioFamilia): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DependenteFuncionarioAlterarDadosSalarioFamilia', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDependenteFuncionario.AlterarDadosSalarioFamilia(const a_Objeto: String): TRecibo;

  var t_Modelo: TDependenteFuncionarioAlterarDadosSalarioFamilia;

begin
  t_Modelo := TDependenteFuncionarioAlterarDadosSalarioFamilia.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosSalarioFamilia(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDependenteFuncionario.AlterarDataBaixaImpostoRenda(const a_Objeto: TDependenteFuncionarioAlterarDataBaixaImpostoRenda): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DependenteFuncionarioAlterarDataBaixaImpostoRenda', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDependenteFuncionario.AlterarDataBaixaImpostoRenda(const a_Objeto: String): TRecibo;

  var t_Modelo: TDependenteFuncionarioAlterarDataBaixaImpostoRenda;

begin
  t_Modelo := TDependenteFuncionarioAlterarDataBaixaImpostoRenda.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDataBaixaImpostoRenda(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDependenteFuncionario.AlterarDadosPensaoAlimenticia(const a_Objeto: TDependenteFuncionarioAlterarDadosPensaoAlimenticia): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DependenteFuncionarioAlterarDadosPensaoAlimenticia', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDependenteFuncionario.AlterarDadosPensaoAlimenticia(const a_Objeto: String): TRecibo;

  var t_Modelo: TDependenteFuncionarioAlterarDadosPensaoAlimenticia;

begin
  t_Modelo := TDependenteFuncionarioAlterarDadosPensaoAlimenticia.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosPensaoAlimenticia(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDependenteFuncionario.Excluir(const a_Objeto: TDependenteFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DependenteFuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDependenteFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TDependenteFuncionarioExcluir;

begin
  t_Modelo := TDependenteFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
