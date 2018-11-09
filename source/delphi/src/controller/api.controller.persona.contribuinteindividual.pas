unit api.controller.persona.Contribuinteindividual;

interface

  uses
    System.SysUtils,

    api.model.persona.Contribuinteindividual,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIContribuinteindividual = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TContribuinteindividualNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TContribuinteindividualAlterarDadosGerais): TRecibo; overload;

        function AlterarDadosEndereco(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEndereco(const a_Objeto: TContribuinteindividualAlterarDadosEndereco): TRecibo; overload;

        function AlterarDadosRecebimentoSalario(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosRecebimentoSalario(const a_Objeto: TContribuinteindividualAlterarDadosRecebimentoSalario): TRecibo; overload;

        function AlterarDadosTermino(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosTermino(const a_Objeto: TContribuinteindividualAlterarDadosTermino): TRecibo; overload;

        function AlterarPercentualISS(const a_Objeto: String): TRecibo; overload;
        function AlterarPercentualISS(const a_Objeto: TContribuinteindividualAlterarPercentualISS): TRecibo; overload;

        function AlterarDataOpcaoFGTS(const a_Objeto: String): TRecibo; overload;
        function AlterarDataOpcaoFGTS(const a_Objeto: TContribuinteindividualAlterarDataOpcaoFGTS): TRecibo; overload;

        function AlterarDadosTransportadores(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosTransportadores(const a_Objeto: TContribuinteindividualAlterarDadosTransportadores): TRecibo; overload;

        function AlterarDadosNascimento(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosNascimento(const a_Objeto: TContribuinteindividualAlterarDadosNascimento): TRecibo; overload;

        function AlterarDadosCarteiraTrabalho(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCarteiraTrabalho(const a_Objeto: TContribuinteindividualAlterarDadosCarteiraTrabalho): TRecibo; overload;

        function AlterarDadosNacionalidade(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosNacionalidade(const a_Objeto: TContribuinteindividualAlterarDadosNacionalidade): TRecibo; overload;

        function AlterarDadosRIC(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosRIC(const a_Objeto: TContribuinteindividualAlterarDadosRIC): TRecibo; overload;

        function AlterarDadosCarteiraIdentidade(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCarteiraIdentidade(const a_Objeto: TContribuinteindividualAlterarDadosCarteiraIdentidade): TRecibo; overload;

        function AlterarDadosOrdemClasse(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosOrdemClasse(const a_Objeto: TContribuinteindividualAlterarDadosOrdemClasse): TRecibo; overload;

        function AlterarDadosCarteiraHablilitacao(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCarteiraHablilitacao(const a_Objeto: TContribuinteindividualAlterarDadosCarteiraHablilitacao): TRecibo; overload;

        function AlterarDadosDeficiencia(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosDeficiencia(const a_Objeto: TContribuinteindividualAlterarDadosDeficiencia): TRecibo; overload;

        function AlterarDadosEstrangeiro(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEstrangeiro(const a_Objeto: TContribuinteindividualAlterarDadosEstrangeiro): TRecibo; overload;

        function AlterarIdentidadeNasajon(const a_Objeto: String): TRecibo; overload;
        function AlterarIdentidadeNasajon(const a_Objeto: TContribuinteindividualAlterarIdentidadeNasajon): TRecibo; overload;

        function AlterarDadosJornada(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosJornada(const a_Objeto: TContribuinteindividualAlterarDadosJornada): TRecibo; overload;

        function AlterarSalario(const a_Objeto: String): TRecibo; overload;
        function AlterarSalario(const a_Objeto: TContribuinteindividualAlterarSalario): TRecibo; overload;

        function AlterarDadosPessoais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosPessoais(const a_Objeto: TContribuinteindividualAlterarDadosPessoais): TRecibo; overload;

        function AlterarMatriculaFuncionario(const a_Objeto: String): TRecibo; overload;
        function AlterarMatriculaFuncionario(const a_Objeto: TContribuinteindividualAlterarMatriculaFuncionario): TRecibo; overload;

        function AlterarAvalidador(const a_Objeto: String): TRecibo; overload;
        function AlterarAvalidador(const a_Objeto: TContribuinteindividualAlterarAvalidador): TRecibo; overload;

        function AlterarGestor(const a_Objeto: String): TRecibo; overload;
        function AlterarGestor(const a_Objeto: TContribuinteindividualAlterarGestor): TRecibo; overload;

        function AlterarAtividadeConcomitante(const a_Objeto: String): TRecibo; overload;
        function AlterarAtividadeConcomitante(const a_Objeto: TContribuinteindividualAlterarAtividadeConcomitante): TRecibo; overload;

        function AlterarObservacao(const a_Objeto: String): TRecibo; overload;
        function AlterarObservacao(const a_Objeto: TContribuinteindividualAlterarObservacao): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TContribuinteindividualExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Contribuinteindividual }

function TAPIContribuinteindividual.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSENDERECO')
    then begin
       Result := Self.AlterarDadosEndereco(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSRECEBIMENTOSALARIO')
    then begin
       Result := Self.AlterarDadosRecebimentoSalario(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSTERMINO')
    then begin
       Result := Self.AlterarDadosTermino(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARPERCENTUALISS')
    then begin
       Result := Self.AlterarPercentualISS(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDATAOPCAOFGTS')
    then begin
       Result := Self.AlterarDataOpcaoFGTS(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSTRANSPORTADORES')
    then begin
       Result := Self.AlterarDadosTransportadores(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSNASCIMENTO')
    then begin
       Result := Self.AlterarDadosNascimento(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSCARTEIRATRABALHO')
    then begin
       Result := Self.AlterarDadosCarteiraTrabalho(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSNACIONALIDADE')
    then begin
       Result := Self.AlterarDadosNacionalidade(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSRIC')
    then begin
       Result := Self.AlterarDadosRIC(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSCARTEIRAIDENTIDADE')
    then begin
       Result := Self.AlterarDadosCarteiraIdentidade(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSORDEMCLASSE')
    then begin
       Result := Self.AlterarDadosOrdemClasse(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSCARTEIRAHABLILITACAO')
    then begin
       Result := Self.AlterarDadosCarteiraHablilitacao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSDEFICIENCIA')
    then begin
       Result := Self.AlterarDadosDeficiencia(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSESTRANGEIRO')
    then begin
       Result := Self.AlterarDadosEstrangeiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARIDENTIDADENASAJON')
    then begin
       Result := Self.AlterarIdentidadeNasajon(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSJORNADA')
    then begin
       Result := Self.AlterarDadosJornada(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARSALARIO')
    then begin
       Result := Self.AlterarSalario(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARDADOSPESSOAIS')
    then begin
       Result := Self.AlterarDadosPessoais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARMATRICULAFUNCIONARIO')
    then begin
       Result := Self.AlterarMatriculaFuncionario(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARAVALIDADOR')
    then begin
       Result := Self.AlterarAvalidador(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARGESTOR')
    then begin
       Result := Self.AlterarGestor(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERARATIVIDADECONCOMITANTE')
    then begin
       Result := Self.AlterarAtividadeConcomitante(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALALTERAROBSERVACAO')
    then begin
       Result := Self.AlterarObservacao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRIBUINTEINDIVIDUALEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIContribuinteindividual.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TContribuinteindividualNovo)
    then begin
       Result := Self.Novo(a_Param as TContribuinteindividualNovo);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TContribuinteindividualAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosEndereco)
    then begin
       Result := Self.AlterarDadosEndereco(a_Param as TContribuinteindividualAlterarDadosEndereco);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosRecebimentoSalario)
    then begin
       Result := Self.AlterarDadosRecebimentoSalario(a_Param as TContribuinteindividualAlterarDadosRecebimentoSalario);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosTermino)
    then begin
       Result := Self.AlterarDadosTermino(a_Param as TContribuinteindividualAlterarDadosTermino);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarPercentualISS)
    then begin
       Result := Self.AlterarPercentualISS(a_Param as TContribuinteindividualAlterarPercentualISS);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDataOpcaoFGTS)
    then begin
       Result := Self.AlterarDataOpcaoFGTS(a_Param as TContribuinteindividualAlterarDataOpcaoFGTS);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosTransportadores)
    then begin
       Result := Self.AlterarDadosTransportadores(a_Param as TContribuinteindividualAlterarDadosTransportadores);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosNascimento)
    then begin
       Result := Self.AlterarDadosNascimento(a_Param as TContribuinteindividualAlterarDadosNascimento);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosCarteiraTrabalho)
    then begin
       Result := Self.AlterarDadosCarteiraTrabalho(a_Param as TContribuinteindividualAlterarDadosCarteiraTrabalho);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosNacionalidade)
    then begin
       Result := Self.AlterarDadosNacionalidade(a_Param as TContribuinteindividualAlterarDadosNacionalidade);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosRIC)
    then begin
       Result := Self.AlterarDadosRIC(a_Param as TContribuinteindividualAlterarDadosRIC);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosCarteiraIdentidade)
    then begin
       Result := Self.AlterarDadosCarteiraIdentidade(a_Param as TContribuinteindividualAlterarDadosCarteiraIdentidade);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosOrdemClasse)
    then begin
       Result := Self.AlterarDadosOrdemClasse(a_Param as TContribuinteindividualAlterarDadosOrdemClasse);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosCarteiraHablilitacao)
    then begin
       Result := Self.AlterarDadosCarteiraHablilitacao(a_Param as TContribuinteindividualAlterarDadosCarteiraHablilitacao);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosDeficiencia)
    then begin
       Result := Self.AlterarDadosDeficiencia(a_Param as TContribuinteindividualAlterarDadosDeficiencia);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosEstrangeiro)
    then begin
       Result := Self.AlterarDadosEstrangeiro(a_Param as TContribuinteindividualAlterarDadosEstrangeiro);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarIdentidadeNasajon)
    then begin
       Result := Self.AlterarIdentidadeNasajon(a_Param as TContribuinteindividualAlterarIdentidadeNasajon);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosJornada)
    then begin
       Result := Self.AlterarDadosJornada(a_Param as TContribuinteindividualAlterarDadosJornada);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarSalario)
    then begin
       Result := Self.AlterarSalario(a_Param as TContribuinteindividualAlterarSalario);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarDadosPessoais)
    then begin
       Result := Self.AlterarDadosPessoais(a_Param as TContribuinteindividualAlterarDadosPessoais);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarMatriculaFuncionario)
    then begin
       Result := Self.AlterarMatriculaFuncionario(a_Param as TContribuinteindividualAlterarMatriculaFuncionario);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarAvalidador)
    then begin
       Result := Self.AlterarAvalidador(a_Param as TContribuinteindividualAlterarAvalidador);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarGestor)
    then begin
       Result := Self.AlterarGestor(a_Param as TContribuinteindividualAlterarGestor);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarAtividadeConcomitante)
    then begin
       Result := Self.AlterarAtividadeConcomitante(a_Param as TContribuinteindividualAlterarAtividadeConcomitante);
       Exit();
    end;

  if (a_param is TContribuinteindividualAlterarObservacao)
    then begin
       Result := Self.AlterarObservacao(a_Param as TContribuinteindividualAlterarObservacao);
       Exit();
    end;

  if (a_param is TContribuinteindividualExcluir)
    then begin
       Result := Self.Excluir(a_Param as TContribuinteindividualExcluir);
       Exit();
    end;


end;

function TAPIContribuinteindividual.Novo(const a_Objeto: TContribuinteindividualNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualNovo;

begin
  t_Modelo := TContribuinteindividualNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosGerais(const a_Objeto: TContribuinteindividualAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosGerais;

begin
  t_Modelo := TContribuinteindividualAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosEndereco(const a_Objeto: TContribuinteindividualAlterarDadosEndereco): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosEndereco', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosEndereco(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosEndereco;

begin
  t_Modelo := TContribuinteindividualAlterarDadosEndereco.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEndereco(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosRecebimentoSalario(const a_Objeto: TContribuinteindividualAlterarDadosRecebimentoSalario): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosRecebimentoSalario', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosRecebimentoSalario(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosRecebimentoSalario;

begin
  t_Modelo := TContribuinteindividualAlterarDadosRecebimentoSalario.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosRecebimentoSalario(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosTermino(const a_Objeto: TContribuinteindividualAlterarDadosTermino): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosTermino', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosTermino(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosTermino;

begin
  t_Modelo := TContribuinteindividualAlterarDadosTermino.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosTermino(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarPercentualISS(const a_Objeto: TContribuinteindividualAlterarPercentualISS): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarPercentualISS', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarPercentualISS(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarPercentualISS;

begin
  t_Modelo := TContribuinteindividualAlterarPercentualISS.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPercentualISS(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDataOpcaoFGTS(const a_Objeto: TContribuinteindividualAlterarDataOpcaoFGTS): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDataOpcaoFGTS', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDataOpcaoFGTS(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDataOpcaoFGTS;

begin
  t_Modelo := TContribuinteindividualAlterarDataOpcaoFGTS.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDataOpcaoFGTS(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosTransportadores(const a_Objeto: TContribuinteindividualAlterarDadosTransportadores): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosTransportadores', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosTransportadores(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosTransportadores;

begin
  t_Modelo := TContribuinteindividualAlterarDadosTransportadores.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosTransportadores(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosNascimento(const a_Objeto: TContribuinteindividualAlterarDadosNascimento): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosNascimento', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosNascimento(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosNascimento;

begin
  t_Modelo := TContribuinteindividualAlterarDadosNascimento.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosNascimento(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosCarteiraTrabalho(const a_Objeto: TContribuinteindividualAlterarDadosCarteiraTrabalho): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosCarteiraTrabalho', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosCarteiraTrabalho(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosCarteiraTrabalho;

begin
  t_Modelo := TContribuinteindividualAlterarDadosCarteiraTrabalho.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCarteiraTrabalho(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosNacionalidade(const a_Objeto: TContribuinteindividualAlterarDadosNacionalidade): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosNacionalidade', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosNacionalidade(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosNacionalidade;

begin
  t_Modelo := TContribuinteindividualAlterarDadosNacionalidade.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosNacionalidade(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosRIC(const a_Objeto: TContribuinteindividualAlterarDadosRIC): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosRIC', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosRIC(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosRIC;

begin
  t_Modelo := TContribuinteindividualAlterarDadosRIC.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosRIC(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosCarteiraIdentidade(const a_Objeto: TContribuinteindividualAlterarDadosCarteiraIdentidade): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosCarteiraIdentidade', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosCarteiraIdentidade(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosCarteiraIdentidade;

begin
  t_Modelo := TContribuinteindividualAlterarDadosCarteiraIdentidade.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCarteiraIdentidade(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosOrdemClasse(const a_Objeto: TContribuinteindividualAlterarDadosOrdemClasse): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosOrdemClasse', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosOrdemClasse(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosOrdemClasse;

begin
  t_Modelo := TContribuinteindividualAlterarDadosOrdemClasse.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosOrdemClasse(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosCarteiraHablilitacao(const a_Objeto: TContribuinteindividualAlterarDadosCarteiraHablilitacao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosCarteiraHablilitacao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosCarteiraHablilitacao(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosCarteiraHablilitacao;

begin
  t_Modelo := TContribuinteindividualAlterarDadosCarteiraHablilitacao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCarteiraHablilitacao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosDeficiencia(const a_Objeto: TContribuinteindividualAlterarDadosDeficiencia): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosDeficiencia', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosDeficiencia(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosDeficiencia;

begin
  t_Modelo := TContribuinteindividualAlterarDadosDeficiencia.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosDeficiencia(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosEstrangeiro(const a_Objeto: TContribuinteindividualAlterarDadosEstrangeiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosEstrangeiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosEstrangeiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosEstrangeiro;

begin
  t_Modelo := TContribuinteindividualAlterarDadosEstrangeiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEstrangeiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarIdentidadeNasajon(const a_Objeto: TContribuinteindividualAlterarIdentidadeNasajon): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarIdentidadeNasajon', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarIdentidadeNasajon(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarIdentidadeNasajon;

begin
  t_Modelo := TContribuinteindividualAlterarIdentidadeNasajon.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarIdentidadeNasajon(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosJornada(const a_Objeto: TContribuinteindividualAlterarDadosJornada): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosJornada', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosJornada(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosJornada;

begin
  t_Modelo := TContribuinteindividualAlterarDadosJornada.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosJornada(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarSalario(const a_Objeto: TContribuinteindividualAlterarSalario): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarSalario', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarSalario(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarSalario;

begin
  t_Modelo := TContribuinteindividualAlterarSalario.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarSalario(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarDadosPessoais(const a_Objeto: TContribuinteindividualAlterarDadosPessoais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarDadosPessoais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarDadosPessoais(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarDadosPessoais;

begin
  t_Modelo := TContribuinteindividualAlterarDadosPessoais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosPessoais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarMatriculaFuncionario(const a_Objeto: TContribuinteindividualAlterarMatriculaFuncionario): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarMatriculaFuncionario', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarMatriculaFuncionario(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarMatriculaFuncionario;

begin
  t_Modelo := TContribuinteindividualAlterarMatriculaFuncionario.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarMatriculaFuncionario(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarAvalidador(const a_Objeto: TContribuinteindividualAlterarAvalidador): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarAvalidador', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarAvalidador(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarAvalidador;

begin
  t_Modelo := TContribuinteindividualAlterarAvalidador.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarAvalidador(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarGestor(const a_Objeto: TContribuinteindividualAlterarGestor): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarGestor', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarGestor(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarGestor;

begin
  t_Modelo := TContribuinteindividualAlterarGestor.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarGestor(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarAtividadeConcomitante(const a_Objeto: TContribuinteindividualAlterarAtividadeConcomitante): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarAtividadeConcomitante', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarAtividadeConcomitante(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarAtividadeConcomitante;

begin
  t_Modelo := TContribuinteindividualAlterarAtividadeConcomitante.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarAtividadeConcomitante(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.AlterarObservacao(const a_Objeto: TContribuinteindividualAlterarObservacao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualAlterarObservacao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.AlterarObservacao(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualAlterarObservacao;

begin
  t_Modelo := TContribuinteindividualAlterarObservacao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarObservacao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContribuinteindividual.Excluir(const a_Objeto: TContribuinteindividualExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ContribuinteindividualExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContribuinteindividual.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TContribuinteindividualExcluir;

begin
  t_Modelo := TContribuinteindividualExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
