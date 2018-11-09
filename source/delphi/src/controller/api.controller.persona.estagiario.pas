unit api.controller.persona.Estagiario;

interface

  uses
    System.SysUtils,

    api.model.persona.Estagiario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIEstagiario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TEstagiarioNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TEstagiarioAlterarDadosGerais): TRecibo; overload;

        function AlterarDadosEndereco(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEndereco(const a_Objeto: TEstagiarioAlterarDadosEndereco): TRecibo; overload;

        function AlterarDadosRecebimentoSalario(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosRecebimentoSalario(const a_Objeto: TEstagiarioAlterarDadosRecebimentoSalario): TRecibo; overload;

        function AlterarDadosNascimento(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosNascimento(const a_Objeto: TEstagiarioAlterarDadosNascimento): TRecibo; overload;

        function AlterarDadosCarteiraTrabalho(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCarteiraTrabalho(const a_Objeto: TEstagiarioAlterarDadosCarteiraTrabalho): TRecibo; overload;

        function AlterarDadosEstagio(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEstagio(const a_Objeto: TEstagiarioAlterarDadosEstagio): TRecibo; overload;

        function AlterarDadosNacionalidade(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosNacionalidade(const a_Objeto: TEstagiarioAlterarDadosNacionalidade): TRecibo; overload;

        function AlterarDadosRIC(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosRIC(const a_Objeto: TEstagiarioAlterarDadosRIC): TRecibo; overload;

        function AlterarDadosCarteiraIdentidade(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCarteiraIdentidade(const a_Objeto: TEstagiarioAlterarDadosCarteiraIdentidade): TRecibo; overload;

        function AlterarDadosOrdemClasse(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosOrdemClasse(const a_Objeto: TEstagiarioAlterarDadosOrdemClasse): TRecibo; overload;

        function AlterarDadosCarteiraHablilitacao(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCarteiraHablilitacao(const a_Objeto: TEstagiarioAlterarDadosCarteiraHablilitacao): TRecibo; overload;

        function AlterarDadosValeTransporte(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosValeTransporte(const a_Objeto: TEstagiarioAlterarDadosValeTransporte): TRecibo; overload;

        function AlterarDadosDeficiencia(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosDeficiencia(const a_Objeto: TEstagiarioAlterarDadosDeficiencia): TRecibo; overload;

        function AlterarDadosEstrangeiro(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEstrangeiro(const a_Objeto: TEstagiarioAlterarDadosEstrangeiro): TRecibo; overload;

        function AlterarIdentidadeNasajon(const a_Objeto: String): TRecibo; overload;
        function AlterarIdentidadeNasajon(const a_Objeto: TEstagiarioAlterarIdentidadeNasajon): TRecibo; overload;

        function AlterarDadosJornada(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosJornada(const a_Objeto: TEstagiarioAlterarDadosJornada): TRecibo; overload;

        function AlterarSalario(const a_Objeto: String): TRecibo; overload;
        function AlterarSalario(const a_Objeto: TEstagiarioAlterarSalario): TRecibo; overload;

        function AlterarDadosPessoais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosPessoais(const a_Objeto: TEstagiarioAlterarDadosPessoais): TRecibo; overload;

        function AlterarDadosFerias(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosFerias(const a_Objeto: TEstagiarioAlterarDadosFerias): TRecibo; overload;

        function AlterarPercentualAdiantamento(const a_Objeto: String): TRecibo; overload;
        function AlterarPercentualAdiantamento(const a_Objeto: TEstagiarioAlterarPercentualAdiantamento): TRecibo; overload;

        function AlterarAvalidador(const a_Objeto: String): TRecibo; overload;
        function AlterarAvalidador(const a_Objeto: TEstagiarioAlterarAvalidador): TRecibo; overload;

        function AlterarGestor(const a_Objeto: String): TRecibo; overload;
        function AlterarGestor(const a_Objeto: TEstagiarioAlterarGestor): TRecibo; overload;

        function AlterarDataVencimentoAtestadoMedico(const a_Objeto: String): TRecibo; overload;
        function AlterarDataVencimentoAtestadoMedico(const a_Objeto: TEstagiarioAlterarDataVencimentoAtestadoMedico): TRecibo; overload;

        function AlterarObservacao(const a_Objeto: String): TRecibo; overload;
        function AlterarObservacao(const a_Objeto: TEstagiarioAlterarObservacao): TRecibo; overload;

        function AlterarDadosAtividade(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosAtividade(const a_Objeto: TEstagiarioAlterarDadosAtividade): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TEstagiarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Estagiario }

function TAPIEstagiario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ESTAGIARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSENDERECO')
    then begin
       Result := Self.AlterarDadosEndereco(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSRECEBIMENTOSALARIO')
    then begin
       Result := Self.AlterarDadosRecebimentoSalario(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSNASCIMENTO')
    then begin
       Result := Self.AlterarDadosNascimento(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSCARTEIRATRABALHO')
    then begin
       Result := Self.AlterarDadosCarteiraTrabalho(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSESTAGIO')
    then begin
       Result := Self.AlterarDadosEstagio(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSNACIONALIDADE')
    then begin
       Result := Self.AlterarDadosNacionalidade(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSRIC')
    then begin
       Result := Self.AlterarDadosRIC(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSCARTEIRAIDENTIDADE')
    then begin
       Result := Self.AlterarDadosCarteiraIdentidade(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSORDEMCLASSE')
    then begin
       Result := Self.AlterarDadosOrdemClasse(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSCARTEIRAHABLILITACAO')
    then begin
       Result := Self.AlterarDadosCarteiraHablilitacao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSVALETRANSPORTE')
    then begin
       Result := Self.AlterarDadosValeTransporte(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSDEFICIENCIA')
    then begin
       Result := Self.AlterarDadosDeficiencia(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSESTRANGEIRO')
    then begin
       Result := Self.AlterarDadosEstrangeiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARIDENTIDADENASAJON')
    then begin
       Result := Self.AlterarIdentidadeNasajon(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSJORNADA')
    then begin
       Result := Self.AlterarDadosJornada(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARSALARIO')
    then begin
       Result := Self.AlterarSalario(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSPESSOAIS')
    then begin
       Result := Self.AlterarDadosPessoais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSFERIAS')
    then begin
       Result := Self.AlterarDadosFerias(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARPERCENTUALADIANTAMENTO')
    then begin
       Result := Self.AlterarPercentualAdiantamento(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARAVALIDADOR')
    then begin
       Result := Self.AlterarAvalidador(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARGESTOR')
    then begin
       Result := Self.AlterarGestor(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDATAVENCIMENTOATESTADOMEDICO')
    then begin
       Result := Self.AlterarDataVencimentoAtestadoMedico(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERAROBSERVACAO')
    then begin
       Result := Self.AlterarObservacao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOALTERARDADOSATIVIDADE')
    then begin
       Result := Self.AlterarDadosAtividade(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTAGIARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIEstagiario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TEstagiarioNovo)
    then begin
       Result := Self.Novo(a_Param as TEstagiarioNovo);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TEstagiarioAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosEndereco)
    then begin
       Result := Self.AlterarDadosEndereco(a_Param as TEstagiarioAlterarDadosEndereco);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosRecebimentoSalario)
    then begin
       Result := Self.AlterarDadosRecebimentoSalario(a_Param as TEstagiarioAlterarDadosRecebimentoSalario);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosNascimento)
    then begin
       Result := Self.AlterarDadosNascimento(a_Param as TEstagiarioAlterarDadosNascimento);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosCarteiraTrabalho)
    then begin
       Result := Self.AlterarDadosCarteiraTrabalho(a_Param as TEstagiarioAlterarDadosCarteiraTrabalho);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosEstagio)
    then begin
       Result := Self.AlterarDadosEstagio(a_Param as TEstagiarioAlterarDadosEstagio);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosNacionalidade)
    then begin
       Result := Self.AlterarDadosNacionalidade(a_Param as TEstagiarioAlterarDadosNacionalidade);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosRIC)
    then begin
       Result := Self.AlterarDadosRIC(a_Param as TEstagiarioAlterarDadosRIC);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosCarteiraIdentidade)
    then begin
       Result := Self.AlterarDadosCarteiraIdentidade(a_Param as TEstagiarioAlterarDadosCarteiraIdentidade);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosOrdemClasse)
    then begin
       Result := Self.AlterarDadosOrdemClasse(a_Param as TEstagiarioAlterarDadosOrdemClasse);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosCarteiraHablilitacao)
    then begin
       Result := Self.AlterarDadosCarteiraHablilitacao(a_Param as TEstagiarioAlterarDadosCarteiraHablilitacao);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosValeTransporte)
    then begin
       Result := Self.AlterarDadosValeTransporte(a_Param as TEstagiarioAlterarDadosValeTransporte);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosDeficiencia)
    then begin
       Result := Self.AlterarDadosDeficiencia(a_Param as TEstagiarioAlterarDadosDeficiencia);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosEstrangeiro)
    then begin
       Result := Self.AlterarDadosEstrangeiro(a_Param as TEstagiarioAlterarDadosEstrangeiro);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarIdentidadeNasajon)
    then begin
       Result := Self.AlterarIdentidadeNasajon(a_Param as TEstagiarioAlterarIdentidadeNasajon);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosJornada)
    then begin
       Result := Self.AlterarDadosJornada(a_Param as TEstagiarioAlterarDadosJornada);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarSalario)
    then begin
       Result := Self.AlterarSalario(a_Param as TEstagiarioAlterarSalario);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosPessoais)
    then begin
       Result := Self.AlterarDadosPessoais(a_Param as TEstagiarioAlterarDadosPessoais);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosFerias)
    then begin
       Result := Self.AlterarDadosFerias(a_Param as TEstagiarioAlterarDadosFerias);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarPercentualAdiantamento)
    then begin
       Result := Self.AlterarPercentualAdiantamento(a_Param as TEstagiarioAlterarPercentualAdiantamento);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarAvalidador)
    then begin
       Result := Self.AlterarAvalidador(a_Param as TEstagiarioAlterarAvalidador);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarGestor)
    then begin
       Result := Self.AlterarGestor(a_Param as TEstagiarioAlterarGestor);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDataVencimentoAtestadoMedico)
    then begin
       Result := Self.AlterarDataVencimentoAtestadoMedico(a_Param as TEstagiarioAlterarDataVencimentoAtestadoMedico);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarObservacao)
    then begin
       Result := Self.AlterarObservacao(a_Param as TEstagiarioAlterarObservacao);
       Exit();
    end;

  if (a_param is TEstagiarioAlterarDadosAtividade)
    then begin
       Result := Self.AlterarDadosAtividade(a_Param as TEstagiarioAlterarDadosAtividade);
       Exit();
    end;

  if (a_param is TEstagiarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TEstagiarioExcluir);
       Exit();
    end;


end;

function TAPIEstagiario.Novo(const a_Objeto: TEstagiarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioNovo;

begin
  t_Modelo := TEstagiarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosGerais(const a_Objeto: TEstagiarioAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosGerais;

begin
  t_Modelo := TEstagiarioAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosEndereco(const a_Objeto: TEstagiarioAlterarDadosEndereco): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosEndereco', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosEndereco(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosEndereco;

begin
  t_Modelo := TEstagiarioAlterarDadosEndereco.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEndereco(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosRecebimentoSalario(const a_Objeto: TEstagiarioAlterarDadosRecebimentoSalario): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosRecebimentoSalario', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosRecebimentoSalario(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosRecebimentoSalario;

begin
  t_Modelo := TEstagiarioAlterarDadosRecebimentoSalario.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosRecebimentoSalario(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosNascimento(const a_Objeto: TEstagiarioAlterarDadosNascimento): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosNascimento', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosNascimento(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosNascimento;

begin
  t_Modelo := TEstagiarioAlterarDadosNascimento.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosNascimento(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosCarteiraTrabalho(const a_Objeto: TEstagiarioAlterarDadosCarteiraTrabalho): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosCarteiraTrabalho', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosCarteiraTrabalho(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosCarteiraTrabalho;

begin
  t_Modelo := TEstagiarioAlterarDadosCarteiraTrabalho.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCarteiraTrabalho(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosEstagio(const a_Objeto: TEstagiarioAlterarDadosEstagio): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosEstagio', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosEstagio(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosEstagio;

begin
  t_Modelo := TEstagiarioAlterarDadosEstagio.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEstagio(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosNacionalidade(const a_Objeto: TEstagiarioAlterarDadosNacionalidade): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosNacionalidade', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosNacionalidade(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosNacionalidade;

begin
  t_Modelo := TEstagiarioAlterarDadosNacionalidade.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosNacionalidade(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosRIC(const a_Objeto: TEstagiarioAlterarDadosRIC): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosRIC', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosRIC(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosRIC;

begin
  t_Modelo := TEstagiarioAlterarDadosRIC.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosRIC(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosCarteiraIdentidade(const a_Objeto: TEstagiarioAlterarDadosCarteiraIdentidade): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosCarteiraIdentidade', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosCarteiraIdentidade(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosCarteiraIdentidade;

begin
  t_Modelo := TEstagiarioAlterarDadosCarteiraIdentidade.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCarteiraIdentidade(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosOrdemClasse(const a_Objeto: TEstagiarioAlterarDadosOrdemClasse): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosOrdemClasse', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosOrdemClasse(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosOrdemClasse;

begin
  t_Modelo := TEstagiarioAlterarDadosOrdemClasse.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosOrdemClasse(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosCarteiraHablilitacao(const a_Objeto: TEstagiarioAlterarDadosCarteiraHablilitacao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosCarteiraHablilitacao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosCarteiraHablilitacao(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosCarteiraHablilitacao;

begin
  t_Modelo := TEstagiarioAlterarDadosCarteiraHablilitacao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCarteiraHablilitacao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosValeTransporte(const a_Objeto: TEstagiarioAlterarDadosValeTransporte): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosValeTransporte', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosValeTransporte(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosValeTransporte;

begin
  t_Modelo := TEstagiarioAlterarDadosValeTransporte.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosValeTransporte(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosDeficiencia(const a_Objeto: TEstagiarioAlterarDadosDeficiencia): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosDeficiencia', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosDeficiencia(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosDeficiencia;

begin
  t_Modelo := TEstagiarioAlterarDadosDeficiencia.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosDeficiencia(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosEstrangeiro(const a_Objeto: TEstagiarioAlterarDadosEstrangeiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosEstrangeiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosEstrangeiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosEstrangeiro;

begin
  t_Modelo := TEstagiarioAlterarDadosEstrangeiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEstrangeiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarIdentidadeNasajon(const a_Objeto: TEstagiarioAlterarIdentidadeNasajon): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarIdentidadeNasajon', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarIdentidadeNasajon(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarIdentidadeNasajon;

begin
  t_Modelo := TEstagiarioAlterarIdentidadeNasajon.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarIdentidadeNasajon(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosJornada(const a_Objeto: TEstagiarioAlterarDadosJornada): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosJornada', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosJornada(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosJornada;

begin
  t_Modelo := TEstagiarioAlterarDadosJornada.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosJornada(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarSalario(const a_Objeto: TEstagiarioAlterarSalario): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarSalario', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarSalario(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarSalario;

begin
  t_Modelo := TEstagiarioAlterarSalario.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarSalario(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosPessoais(const a_Objeto: TEstagiarioAlterarDadosPessoais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosPessoais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosPessoais(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosPessoais;

begin
  t_Modelo := TEstagiarioAlterarDadosPessoais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosPessoais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosFerias(const a_Objeto: TEstagiarioAlterarDadosFerias): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosFerias', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosFerias(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosFerias;

begin
  t_Modelo := TEstagiarioAlterarDadosFerias.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosFerias(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarPercentualAdiantamento(const a_Objeto: TEstagiarioAlterarPercentualAdiantamento): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarPercentualAdiantamento', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarPercentualAdiantamento(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarPercentualAdiantamento;

begin
  t_Modelo := TEstagiarioAlterarPercentualAdiantamento.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPercentualAdiantamento(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarAvalidador(const a_Objeto: TEstagiarioAlterarAvalidador): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarAvalidador', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarAvalidador(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarAvalidador;

begin
  t_Modelo := TEstagiarioAlterarAvalidador.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarAvalidador(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarGestor(const a_Objeto: TEstagiarioAlterarGestor): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarGestor', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarGestor(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarGestor;

begin
  t_Modelo := TEstagiarioAlterarGestor.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarGestor(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDataVencimentoAtestadoMedico(const a_Objeto: TEstagiarioAlterarDataVencimentoAtestadoMedico): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDataVencimentoAtestadoMedico', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDataVencimentoAtestadoMedico(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDataVencimentoAtestadoMedico;

begin
  t_Modelo := TEstagiarioAlterarDataVencimentoAtestadoMedico.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDataVencimentoAtestadoMedico(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarObservacao(const a_Objeto: TEstagiarioAlterarObservacao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarObservacao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarObservacao(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarObservacao;

begin
  t_Modelo := TEstagiarioAlterarObservacao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarObservacao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.AlterarDadosAtividade(const a_Objeto: TEstagiarioAlterarDadosAtividade): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioAlterarDadosAtividade', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.AlterarDadosAtividade(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioAlterarDadosAtividade;

begin
  t_Modelo := TEstagiarioAlterarDadosAtividade.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosAtividade(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstagiario.Excluir(const a_Objeto: TEstagiarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EstagiarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstagiario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstagiarioExcluir;

begin
  t_Modelo := TEstagiarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
