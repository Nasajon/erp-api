unit api.controller.persona.Funcionario;

interface

  uses
    System.SysUtils,

    api.model.persona.Funcionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TFuncionarioNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TFuncionarioAlterarDadosGerais): TRecibo; overload;

        function AlterarEstabelecimento(const a_Objeto: String): TRecibo; overload;
        function AlterarEstabelecimento(const a_Objeto: TFuncionarioAlterarEstabelecimento): TRecibo; overload;

        function AlterarDepartamento(const a_Objeto: String): TRecibo; overload;
        function AlterarDepartamento(const a_Objeto: TFuncionarioAlterarDepartamento): TRecibo; overload;

        function AlterarHorario(const a_Objeto: String): TRecibo; overload;
        function AlterarHorario(const a_Objeto: TFuncionarioAlterarHorario): TRecibo; overload;

        function AlterarSindicato(const a_Objeto: String): TRecibo; overload;
        function AlterarSindicato(const a_Objeto: TFuncionarioAlterarSindicato): TRecibo; overload;

        function AlterarLotacao(const a_Objeto: String): TRecibo; overload;
        function AlterarLotacao(const a_Objeto: TFuncionarioAlterarLotacao): TRecibo; overload;

        function AlterarCargoNivel(const a_Objeto: String): TRecibo; overload;
        function AlterarCargoNivel(const a_Objeto: TFuncionarioAlterarCargoNivel): TRecibo; overload;

        function AlterarDadosEndereco(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEndereco(const a_Objeto: TFuncionarioAlterarDadosEndereco): TRecibo; overload;

        function SolicitacaoAlteracaoEndereco(const a_Objeto: String): TRecibo; overload;
        function SolicitacaoAlteracaoEndereco(const a_Objeto: TFuncionarioSolicitacaoAlteracaoEndereco): TRecibo; overload;

        function AlterarDadosRecebimentoSalario(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosRecebimentoSalario(const a_Objeto: TFuncionarioAlterarDadosRecebimentoSalario): TRecibo; overload;

        function AlterarDadosRescisao(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosRescisao(const a_Objeto: TFuncionarioAlterarDadosRescisao): TRecibo; overload;

        function AlterarDadosReintegracao(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosReintegracao(const a_Objeto: TFuncionarioAlterarDadosReintegracao): TRecibo; overload;

        function AlterarDadosNascimento(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosNascimento(const a_Objeto: TFuncionarioAlterarDadosNascimento): TRecibo; overload;

        function AlterarDadosCarteiraTrabalho(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCarteiraTrabalho(const a_Objeto: TFuncionarioAlterarDadosCarteiraTrabalho): TRecibo; overload;

        function AlterarDadosNacionalidade(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosNacionalidade(const a_Objeto: TFuncionarioAlterarDadosNacionalidade): TRecibo; overload;

        function AlterarDadosFGTS(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosFGTS(const a_Objeto: TFuncionarioAlterarDadosFGTS): TRecibo; overload;

        function AlterarDadosRIC(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosRIC(const a_Objeto: TFuncionarioAlterarDadosRIC): TRecibo; overload;

        function AlterarDadosCarteiraIdentidade(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCarteiraIdentidade(const a_Objeto: TFuncionarioAlterarDadosCarteiraIdentidade): TRecibo; overload;

        function AlterarDadosOrdemClasse(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosOrdemClasse(const a_Objeto: TFuncionarioAlterarDadosOrdemClasse): TRecibo; overload;

        function AlterarDadosCarteiraHablilitacao(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCarteiraHablilitacao(const a_Objeto: TFuncionarioAlterarDadosCarteiraHablilitacao): TRecibo; overload;

        function AlterarDadosPassaporte(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosPassaporte(const a_Objeto: TFuncionarioAlterarDadosPassaporte): TRecibo; overload;

        function AlterarDadosTituloEleitor(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosTituloEleitor(const a_Objeto: TFuncionarioAlterarDadosTituloEleitor): TRecibo; overload;

        function AlterarDadosCertidao(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCertidao(const a_Objeto: TFuncionarioAlterarDadosCertidao): TRecibo; overload;

        function AlterarDadosCertificadoReservista(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCertificadoReservista(const a_Objeto: TFuncionarioAlterarDadosCertificadoReservista): TRecibo; overload;

        function AlterarDadosValeTransporte(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosValeTransporte(const a_Objeto: TFuncionarioAlterarDadosValeTransporte): TRecibo; overload;

        function AlterarDadosEmpresaAnterior(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEmpresaAnterior(const a_Objeto: TFuncionarioAlterarDadosEmpresaAnterior): TRecibo; overload;

        function AlterarDadosEmpresaCedente(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEmpresaCedente(const a_Objeto: TFuncionarioAlterarDadosEmpresaCedente): TRecibo; overload;

        function AlterarDadosEmpresaSucessora(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEmpresaSucessora(const a_Objeto: TFuncionarioAlterarDadosEmpresaSucessora): TRecibo; overload;

        function AlterarDadosDeficiencia(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosDeficiencia(const a_Objeto: TFuncionarioAlterarDadosDeficiencia): TRecibo; overload;

        function AlterarDadosEstrangeiro(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEstrangeiro(const a_Objeto: TFuncionarioAlterarDadosEstrangeiro): TRecibo; overload;

        function AlterarIdentidadeNasajon(const a_Objeto: String): TRecibo; overload;
        function AlterarIdentidadeNasajon(const a_Objeto: TFuncionarioAlterarIdentidadeNasajon): TRecibo; overload;

        function AlterarDadosRecebimentoOutrasEmpresas(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosRecebimentoOutrasEmpresas(const a_Objeto: TFuncionarioAlterarDadosRecebimentoOutrasEmpresas): TRecibo; overload;

        function AlterarDadosOutroVinculo(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosOutroVinculo(const a_Objeto: TFuncionarioAlterarDadosOutroVinculo): TRecibo; overload;

        function AlterarDadosJornada(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosJornada(const a_Objeto: TFuncionarioAlterarDadosJornada): TRecibo; overload;

        function AlterarSalario(const a_Objeto: String): TRecibo; overload;
        function AlterarSalario(const a_Objeto: TFuncionarioAlterarSalario): TRecibo; overload;

        function AlterarDadosPessoais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosPessoais(const a_Objeto: TFuncionarioAlterarDadosPessoais): TRecibo; overload;

        function AlterarMatriculaContribuinteIndividual(const a_Objeto: String): TRecibo; overload;
        function AlterarMatriculaContribuinteIndividual(const a_Objeto: TFuncionarioAlterarMatriculaContribuinteIndividual): TRecibo; overload;

        function AlterarDadosFerias(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosFerias(const a_Objeto: TFuncionarioAlterarDadosFerias): TRecibo; overload;

        function AlterarPercentualAdiantamento(const a_Objeto: String): TRecibo; overload;
        function AlterarPercentualAdiantamento(const a_Objeto: TFuncionarioAlterarPercentualAdiantamento): TRecibo; overload;

        function AlterarDadosProcessoIRRF(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosProcessoIRRF(const a_Objeto: TFuncionarioAlterarDadosProcessoIRRF): TRecibo; overload;

        function AlterarDadosProcessoINSS(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosProcessoINSS(const a_Objeto: TFuncionarioAlterarDadosProcessoINSS): TRecibo; overload;

        function AlterarDadosProcessoMenorAprendiz(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosProcessoMenorAprendiz(const a_Objeto: TFuncionarioAlterarDadosProcessoMenorAprendiz): TRecibo; overload;

        function AlterarTipoFuncionario(const a_Objeto: String): TRecibo; overload;
        function AlterarTipoFuncionario(const a_Objeto: TFuncionarioAlterarTipoFuncionario): TRecibo; overload;

        function AlterarAvalidador(const a_Objeto: String): TRecibo; overload;
        function AlterarAvalidador(const a_Objeto: TFuncionarioAlterarAvalidador): TRecibo; overload;

        function AlterarGestor(const a_Objeto: String): TRecibo; overload;
        function AlterarGestor(const a_Objeto: TFuncionarioAlterarGestor): TRecibo; overload;

        function AlterarFuncao(const a_Objeto: String): TRecibo; overload;
        function AlterarFuncao(const a_Objeto: TFuncionarioAlterarFuncao): TRecibo; overload;

        function AlterarSindicalizado(const a_Objeto: String): TRecibo; overload;
        function AlterarSindicalizado(const a_Objeto: TFuncionarioAlterarSindicalizado): TRecibo; overload;

        function AlterarDescontaINSS(const a_Objeto: String): TRecibo; overload;
        function AlterarDescontaINSS(const a_Objeto: TFuncionarioAlterarDescontaINSS): TRecibo; overload;

        function AlterarDataInicioAnuenio(const a_Objeto: String): TRecibo; overload;
        function AlterarDataInicioAnuenio(const a_Objeto: TFuncionarioAlterarDataInicioAnuenio): TRecibo; overload;

        function AlterarDataVencimentoAtestadoMedico(const a_Objeto: String): TRecibo; overload;
        function AlterarDataVencimentoAtestadoMedico(const a_Objeto: TFuncionarioAlterarDataVencimentoAtestadoMedico): TRecibo; overload;

        function AlterarAtividadeConcomitante(const a_Objeto: String): TRecibo; overload;
        function AlterarAtividadeConcomitante(const a_Objeto: TFuncionarioAlterarAtividadeConcomitante): TRecibo; overload;

        function AlterarAtestadoObito(const a_Objeto: String): TRecibo; overload;
        function AlterarAtestadoObito(const a_Objeto: TFuncionarioAlterarAtestadoObito): TRecibo; overload;

        function AlterarAcordoProrrogacao(const a_Objeto: String): TRecibo; overload;
        function AlterarAcordoProrrogacao(const a_Objeto: TFuncionarioAlterarAcordoProrrogacao): TRecibo; overload;

        function AlterarStatus(const a_Objeto: String): TRecibo; overload;
        function AlterarStatus(const a_Objeto: TFuncionarioAlterarStatus): TRecibo; overload;

        function AlterarObservacao(const a_Objeto: String): TRecibo; overload;
        function AlterarObservacao(const a_Objeto: TFuncionarioAlterarObservacao): TRecibo; overload;

        function AlterarFoto(const a_Objeto: String): TRecibo; overload;
        function AlterarFoto(const a_Objeto: TFuncionarioAlterarFoto): TRecibo; overload;

        function AlterarDadosContrato(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosContrato(const a_Objeto: TFuncionarioAlterarDadosContrato): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Funcionario }

function TAPIFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'FUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARESTABELECIMENTO')
    then begin
       Result := Self.AlterarEstabelecimento(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDEPARTAMENTO')
    then begin
       Result := Self.AlterarDepartamento(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARHORARIO')
    then begin
       Result := Self.AlterarHorario(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARSINDICATO')
    then begin
       Result := Self.AlterarSindicato(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARLOTACAO')
    then begin
       Result := Self.AlterarLotacao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARCARGONIVEL')
    then begin
       Result := Self.AlterarCargoNivel(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSENDERECO')
    then begin
       Result := Self.AlterarDadosEndereco(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOSOLICITACAOALTERACAOENDERECO')
    then begin
       Result := Self.SolicitacaoAlteracaoEndereco(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSRECEBIMENTOSALARIO')
    then begin
       Result := Self.AlterarDadosRecebimentoSalario(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSRESCISAO')
    then begin
       Result := Self.AlterarDadosRescisao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSREINTEGRACAO')
    then begin
       Result := Self.AlterarDadosReintegracao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSNASCIMENTO')
    then begin
       Result := Self.AlterarDadosNascimento(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSCARTEIRATRABALHO')
    then begin
       Result := Self.AlterarDadosCarteiraTrabalho(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSNACIONALIDADE')
    then begin
       Result := Self.AlterarDadosNacionalidade(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSFGTS')
    then begin
       Result := Self.AlterarDadosFGTS(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSRIC')
    then begin
       Result := Self.AlterarDadosRIC(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSCARTEIRAIDENTIDADE')
    then begin
       Result := Self.AlterarDadosCarteiraIdentidade(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSORDEMCLASSE')
    then begin
       Result := Self.AlterarDadosOrdemClasse(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSCARTEIRAHABLILITACAO')
    then begin
       Result := Self.AlterarDadosCarteiraHablilitacao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSPASSAPORTE')
    then begin
       Result := Self.AlterarDadosPassaporte(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSTITULOELEITOR')
    then begin
       Result := Self.AlterarDadosTituloEleitor(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSCERTIDAO')
    then begin
       Result := Self.AlterarDadosCertidao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSCERTIFICADORESERVISTA')
    then begin
       Result := Self.AlterarDadosCertificadoReservista(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSVALETRANSPORTE')
    then begin
       Result := Self.AlterarDadosValeTransporte(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSEMPRESAANTERIOR')
    then begin
       Result := Self.AlterarDadosEmpresaAnterior(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSEMPRESACEDENTE')
    then begin
       Result := Self.AlterarDadosEmpresaCedente(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSEMPRESASUCESSORA')
    then begin
       Result := Self.AlterarDadosEmpresaSucessora(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSDEFICIENCIA')
    then begin
       Result := Self.AlterarDadosDeficiencia(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSESTRANGEIRO')
    then begin
       Result := Self.AlterarDadosEstrangeiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARIDENTIDADENASAJON')
    then begin
       Result := Self.AlterarIdentidadeNasajon(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSRECEBIMENTOOUTRASEMPRESAS')
    then begin
       Result := Self.AlterarDadosRecebimentoOutrasEmpresas(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSOUTROVINCULO')
    then begin
       Result := Self.AlterarDadosOutroVinculo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSJORNADA')
    then begin
       Result := Self.AlterarDadosJornada(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARSALARIO')
    then begin
       Result := Self.AlterarSalario(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSPESSOAIS')
    then begin
       Result := Self.AlterarDadosPessoais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARMATRICULACONTRIBUINTEINDIVIDUAL')
    then begin
       Result := Self.AlterarMatriculaContribuinteIndividual(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSFERIAS')
    then begin
       Result := Self.AlterarDadosFerias(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARPERCENTUALADIANTAMENTO')
    then begin
       Result := Self.AlterarPercentualAdiantamento(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSPROCESSOIRRF')
    then begin
       Result := Self.AlterarDadosProcessoIRRF(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSPROCESSOINSS')
    then begin
       Result := Self.AlterarDadosProcessoINSS(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSPROCESSOMENORAPRENDIZ')
    then begin
       Result := Self.AlterarDadosProcessoMenorAprendiz(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARTIPOFUNCIONARIO')
    then begin
       Result := Self.AlterarTipoFuncionario(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARAVALIDADOR')
    then begin
       Result := Self.AlterarAvalidador(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARGESTOR')
    then begin
       Result := Self.AlterarGestor(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARFUNCAO')
    then begin
       Result := Self.AlterarFuncao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARSINDICALIZADO')
    then begin
       Result := Self.AlterarSindicalizado(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDESCONTAINSS')
    then begin
       Result := Self.AlterarDescontaINSS(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDATAINICIOANUENIO')
    then begin
       Result := Self.AlterarDataInicioAnuenio(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDATAVENCIMENTOATESTADOMEDICO')
    then begin
       Result := Self.AlterarDataVencimentoAtestadoMedico(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARATIVIDADECONCOMITANTE')
    then begin
       Result := Self.AlterarAtividadeConcomitante(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARATESTADOOBITO')
    then begin
       Result := Self.AlterarAtestadoObito(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARACORDOPRORROGACAO')
    then begin
       Result := Self.AlterarAcordoProrrogacao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARSTATUS')
    then begin
       Result := Self.AlterarStatus(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERAROBSERVACAO')
    then begin
       Result := Self.AlterarObservacao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARFOTO')
    then begin
       Result := Self.AlterarFoto(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOALTERARDADOSCONTRATO')
    then begin
       Result := Self.AlterarDadosContrato(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as TFuncionarioNovo);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TFuncionarioAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarEstabelecimento)
    then begin
       Result := Self.AlterarEstabelecimento(a_Param as TFuncionarioAlterarEstabelecimento);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDepartamento)
    then begin
       Result := Self.AlterarDepartamento(a_Param as TFuncionarioAlterarDepartamento);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarHorario)
    then begin
       Result := Self.AlterarHorario(a_Param as TFuncionarioAlterarHorario);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarSindicato)
    then begin
       Result := Self.AlterarSindicato(a_Param as TFuncionarioAlterarSindicato);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarLotacao)
    then begin
       Result := Self.AlterarLotacao(a_Param as TFuncionarioAlterarLotacao);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarCargoNivel)
    then begin
       Result := Self.AlterarCargoNivel(a_Param as TFuncionarioAlterarCargoNivel);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosEndereco)
    then begin
       Result := Self.AlterarDadosEndereco(a_Param as TFuncionarioAlterarDadosEndereco);
       Exit();
    end;

  if (a_param is TFuncionarioSolicitacaoAlteracaoEndereco)
    then begin
       Result := Self.SolicitacaoAlteracaoEndereco(a_Param as TFuncionarioSolicitacaoAlteracaoEndereco);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosRecebimentoSalario)
    then begin
       Result := Self.AlterarDadosRecebimentoSalario(a_Param as TFuncionarioAlterarDadosRecebimentoSalario);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosRescisao)
    then begin
       Result := Self.AlterarDadosRescisao(a_Param as TFuncionarioAlterarDadosRescisao);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosReintegracao)
    then begin
       Result := Self.AlterarDadosReintegracao(a_Param as TFuncionarioAlterarDadosReintegracao);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosNascimento)
    then begin
       Result := Self.AlterarDadosNascimento(a_Param as TFuncionarioAlterarDadosNascimento);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosCarteiraTrabalho)
    then begin
       Result := Self.AlterarDadosCarteiraTrabalho(a_Param as TFuncionarioAlterarDadosCarteiraTrabalho);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosNacionalidade)
    then begin
       Result := Self.AlterarDadosNacionalidade(a_Param as TFuncionarioAlterarDadosNacionalidade);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosFGTS)
    then begin
       Result := Self.AlterarDadosFGTS(a_Param as TFuncionarioAlterarDadosFGTS);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosRIC)
    then begin
       Result := Self.AlterarDadosRIC(a_Param as TFuncionarioAlterarDadosRIC);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosCarteiraIdentidade)
    then begin
       Result := Self.AlterarDadosCarteiraIdentidade(a_Param as TFuncionarioAlterarDadosCarteiraIdentidade);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosOrdemClasse)
    then begin
       Result := Self.AlterarDadosOrdemClasse(a_Param as TFuncionarioAlterarDadosOrdemClasse);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosCarteiraHablilitacao)
    then begin
       Result := Self.AlterarDadosCarteiraHablilitacao(a_Param as TFuncionarioAlterarDadosCarteiraHablilitacao);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosPassaporte)
    then begin
       Result := Self.AlterarDadosPassaporte(a_Param as TFuncionarioAlterarDadosPassaporte);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosTituloEleitor)
    then begin
       Result := Self.AlterarDadosTituloEleitor(a_Param as TFuncionarioAlterarDadosTituloEleitor);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosCertidao)
    then begin
       Result := Self.AlterarDadosCertidao(a_Param as TFuncionarioAlterarDadosCertidao);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosCertificadoReservista)
    then begin
       Result := Self.AlterarDadosCertificadoReservista(a_Param as TFuncionarioAlterarDadosCertificadoReservista);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosValeTransporte)
    then begin
       Result := Self.AlterarDadosValeTransporte(a_Param as TFuncionarioAlterarDadosValeTransporte);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosEmpresaAnterior)
    then begin
       Result := Self.AlterarDadosEmpresaAnterior(a_Param as TFuncionarioAlterarDadosEmpresaAnterior);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosEmpresaCedente)
    then begin
       Result := Self.AlterarDadosEmpresaCedente(a_Param as TFuncionarioAlterarDadosEmpresaCedente);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosEmpresaSucessora)
    then begin
       Result := Self.AlterarDadosEmpresaSucessora(a_Param as TFuncionarioAlterarDadosEmpresaSucessora);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosDeficiencia)
    then begin
       Result := Self.AlterarDadosDeficiencia(a_Param as TFuncionarioAlterarDadosDeficiencia);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosEstrangeiro)
    then begin
       Result := Self.AlterarDadosEstrangeiro(a_Param as TFuncionarioAlterarDadosEstrangeiro);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarIdentidadeNasajon)
    then begin
       Result := Self.AlterarIdentidadeNasajon(a_Param as TFuncionarioAlterarIdentidadeNasajon);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosRecebimentoOutrasEmpresas)
    then begin
       Result := Self.AlterarDadosRecebimentoOutrasEmpresas(a_Param as TFuncionarioAlterarDadosRecebimentoOutrasEmpresas);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosOutroVinculo)
    then begin
       Result := Self.AlterarDadosOutroVinculo(a_Param as TFuncionarioAlterarDadosOutroVinculo);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosJornada)
    then begin
       Result := Self.AlterarDadosJornada(a_Param as TFuncionarioAlterarDadosJornada);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarSalario)
    then begin
       Result := Self.AlterarSalario(a_Param as TFuncionarioAlterarSalario);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosPessoais)
    then begin
       Result := Self.AlterarDadosPessoais(a_Param as TFuncionarioAlterarDadosPessoais);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarMatriculaContribuinteIndividual)
    then begin
       Result := Self.AlterarMatriculaContribuinteIndividual(a_Param as TFuncionarioAlterarMatriculaContribuinteIndividual);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosFerias)
    then begin
       Result := Self.AlterarDadosFerias(a_Param as TFuncionarioAlterarDadosFerias);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarPercentualAdiantamento)
    then begin
       Result := Self.AlterarPercentualAdiantamento(a_Param as TFuncionarioAlterarPercentualAdiantamento);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosProcessoIRRF)
    then begin
       Result := Self.AlterarDadosProcessoIRRF(a_Param as TFuncionarioAlterarDadosProcessoIRRF);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosProcessoINSS)
    then begin
       Result := Self.AlterarDadosProcessoINSS(a_Param as TFuncionarioAlterarDadosProcessoINSS);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosProcessoMenorAprendiz)
    then begin
       Result := Self.AlterarDadosProcessoMenorAprendiz(a_Param as TFuncionarioAlterarDadosProcessoMenorAprendiz);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarTipoFuncionario)
    then begin
       Result := Self.AlterarTipoFuncionario(a_Param as TFuncionarioAlterarTipoFuncionario);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarAvalidador)
    then begin
       Result := Self.AlterarAvalidador(a_Param as TFuncionarioAlterarAvalidador);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarGestor)
    then begin
       Result := Self.AlterarGestor(a_Param as TFuncionarioAlterarGestor);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarFuncao)
    then begin
       Result := Self.AlterarFuncao(a_Param as TFuncionarioAlterarFuncao);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarSindicalizado)
    then begin
       Result := Self.AlterarSindicalizado(a_Param as TFuncionarioAlterarSindicalizado);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDescontaINSS)
    then begin
       Result := Self.AlterarDescontaINSS(a_Param as TFuncionarioAlterarDescontaINSS);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDataInicioAnuenio)
    then begin
       Result := Self.AlterarDataInicioAnuenio(a_Param as TFuncionarioAlterarDataInicioAnuenio);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDataVencimentoAtestadoMedico)
    then begin
       Result := Self.AlterarDataVencimentoAtestadoMedico(a_Param as TFuncionarioAlterarDataVencimentoAtestadoMedico);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarAtividadeConcomitante)
    then begin
       Result := Self.AlterarAtividadeConcomitante(a_Param as TFuncionarioAlterarAtividadeConcomitante);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarAtestadoObito)
    then begin
       Result := Self.AlterarAtestadoObito(a_Param as TFuncionarioAlterarAtestadoObito);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarAcordoProrrogacao)
    then begin
       Result := Self.AlterarAcordoProrrogacao(a_Param as TFuncionarioAlterarAcordoProrrogacao);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarStatus)
    then begin
       Result := Self.AlterarStatus(a_Param as TFuncionarioAlterarStatus);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarObservacao)
    then begin
       Result := Self.AlterarObservacao(a_Param as TFuncionarioAlterarObservacao);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarFoto)
    then begin
       Result := Self.AlterarFoto(a_Param as TFuncionarioAlterarFoto);
       Exit();
    end;

  if (a_param is TFuncionarioAlterarDadosContrato)
    then begin
       Result := Self.AlterarDadosContrato(a_Param as TFuncionarioAlterarDadosContrato);
       Exit();
    end;

  if (a_param is TFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TFuncionarioExcluir);
       Exit();
    end;


end;

function TAPIFuncionario.Novo(const a_Objeto: TFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioNovo;

begin
  t_Modelo := TFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosGerais(const a_Objeto: TFuncionarioAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosGerais;

begin
  t_Modelo := TFuncionarioAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarEstabelecimento(const a_Objeto: TFuncionarioAlterarEstabelecimento): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarEstabelecimento', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarEstabelecimento(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarEstabelecimento;

begin
  t_Modelo := TFuncionarioAlterarEstabelecimento.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarEstabelecimento(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDepartamento(const a_Objeto: TFuncionarioAlterarDepartamento): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDepartamento', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDepartamento(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDepartamento;

begin
  t_Modelo := TFuncionarioAlterarDepartamento.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDepartamento(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarHorario(const a_Objeto: TFuncionarioAlterarHorario): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarHorario', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarHorario(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarHorario;

begin
  t_Modelo := TFuncionarioAlterarHorario.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarHorario(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarSindicato(const a_Objeto: TFuncionarioAlterarSindicato): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarSindicato', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarSindicato(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarSindicato;

begin
  t_Modelo := TFuncionarioAlterarSindicato.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarSindicato(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarLotacao(const a_Objeto: TFuncionarioAlterarLotacao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarLotacao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarLotacao(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarLotacao;

begin
  t_Modelo := TFuncionarioAlterarLotacao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarLotacao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarCargoNivel(const a_Objeto: TFuncionarioAlterarCargoNivel): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarCargoNivel', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarCargoNivel(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarCargoNivel;

begin
  t_Modelo := TFuncionarioAlterarCargoNivel.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCargoNivel(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosEndereco(const a_Objeto: TFuncionarioAlterarDadosEndereco): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosEndereco', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosEndereco(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosEndereco;

begin
  t_Modelo := TFuncionarioAlterarDadosEndereco.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEndereco(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.SolicitacaoAlteracaoEndereco(const a_Objeto: TFuncionarioSolicitacaoAlteracaoEndereco): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioSolicitacaoAlteracaoEndereco', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.SolicitacaoAlteracaoEndereco(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioSolicitacaoAlteracaoEndereco;

begin
  t_Modelo := TFuncionarioSolicitacaoAlteracaoEndereco.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.SolicitacaoAlteracaoEndereco(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosRecebimentoSalario(const a_Objeto: TFuncionarioAlterarDadosRecebimentoSalario): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosRecebimentoSalario', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosRecebimentoSalario(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosRecebimentoSalario;

begin
  t_Modelo := TFuncionarioAlterarDadosRecebimentoSalario.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosRecebimentoSalario(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosRescisao(const a_Objeto: TFuncionarioAlterarDadosRescisao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosRescisao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosRescisao(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosRescisao;

begin
  t_Modelo := TFuncionarioAlterarDadosRescisao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosRescisao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosReintegracao(const a_Objeto: TFuncionarioAlterarDadosReintegracao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosReintegracao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosReintegracao(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosReintegracao;

begin
  t_Modelo := TFuncionarioAlterarDadosReintegracao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosReintegracao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosNascimento(const a_Objeto: TFuncionarioAlterarDadosNascimento): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosNascimento', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosNascimento(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosNascimento;

begin
  t_Modelo := TFuncionarioAlterarDadosNascimento.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosNascimento(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosCarteiraTrabalho(const a_Objeto: TFuncionarioAlterarDadosCarteiraTrabalho): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosCarteiraTrabalho', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosCarteiraTrabalho(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosCarteiraTrabalho;

begin
  t_Modelo := TFuncionarioAlterarDadosCarteiraTrabalho.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCarteiraTrabalho(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosNacionalidade(const a_Objeto: TFuncionarioAlterarDadosNacionalidade): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosNacionalidade', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosNacionalidade(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosNacionalidade;

begin
  t_Modelo := TFuncionarioAlterarDadosNacionalidade.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosNacionalidade(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosFGTS(const a_Objeto: TFuncionarioAlterarDadosFGTS): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosFGTS', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosFGTS(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosFGTS;

begin
  t_Modelo := TFuncionarioAlterarDadosFGTS.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosFGTS(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosRIC(const a_Objeto: TFuncionarioAlterarDadosRIC): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosRIC', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosRIC(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosRIC;

begin
  t_Modelo := TFuncionarioAlterarDadosRIC.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosRIC(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosCarteiraIdentidade(const a_Objeto: TFuncionarioAlterarDadosCarteiraIdentidade): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosCarteiraIdentidade', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosCarteiraIdentidade(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosCarteiraIdentidade;

begin
  t_Modelo := TFuncionarioAlterarDadosCarteiraIdentidade.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCarteiraIdentidade(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosOrdemClasse(const a_Objeto: TFuncionarioAlterarDadosOrdemClasse): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosOrdemClasse', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosOrdemClasse(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosOrdemClasse;

begin
  t_Modelo := TFuncionarioAlterarDadosOrdemClasse.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosOrdemClasse(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosCarteiraHablilitacao(const a_Objeto: TFuncionarioAlterarDadosCarteiraHablilitacao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosCarteiraHablilitacao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosCarteiraHablilitacao(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosCarteiraHablilitacao;

begin
  t_Modelo := TFuncionarioAlterarDadosCarteiraHablilitacao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCarteiraHablilitacao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosPassaporte(const a_Objeto: TFuncionarioAlterarDadosPassaporte): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosPassaporte', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosPassaporte(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosPassaporte;

begin
  t_Modelo := TFuncionarioAlterarDadosPassaporte.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosPassaporte(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosTituloEleitor(const a_Objeto: TFuncionarioAlterarDadosTituloEleitor): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosTituloEleitor', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosTituloEleitor(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosTituloEleitor;

begin
  t_Modelo := TFuncionarioAlterarDadosTituloEleitor.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosTituloEleitor(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosCertidao(const a_Objeto: TFuncionarioAlterarDadosCertidao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosCertidao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosCertidao(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosCertidao;

begin
  t_Modelo := TFuncionarioAlterarDadosCertidao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCertidao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosCertificadoReservista(const a_Objeto: TFuncionarioAlterarDadosCertificadoReservista): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosCertificadoReservista', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosCertificadoReservista(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosCertificadoReservista;

begin
  t_Modelo := TFuncionarioAlterarDadosCertificadoReservista.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCertificadoReservista(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosValeTransporte(const a_Objeto: TFuncionarioAlterarDadosValeTransporte): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosValeTransporte', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosValeTransporte(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosValeTransporte;

begin
  t_Modelo := TFuncionarioAlterarDadosValeTransporte.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosValeTransporte(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosEmpresaAnterior(const a_Objeto: TFuncionarioAlterarDadosEmpresaAnterior): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosEmpresaAnterior', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosEmpresaAnterior(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosEmpresaAnterior;

begin
  t_Modelo := TFuncionarioAlterarDadosEmpresaAnterior.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEmpresaAnterior(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosEmpresaCedente(const a_Objeto: TFuncionarioAlterarDadosEmpresaCedente): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosEmpresaCedente', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosEmpresaCedente(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosEmpresaCedente;

begin
  t_Modelo := TFuncionarioAlterarDadosEmpresaCedente.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEmpresaCedente(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosEmpresaSucessora(const a_Objeto: TFuncionarioAlterarDadosEmpresaSucessora): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosEmpresaSucessora', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosEmpresaSucessora(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosEmpresaSucessora;

begin
  t_Modelo := TFuncionarioAlterarDadosEmpresaSucessora.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEmpresaSucessora(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosDeficiencia(const a_Objeto: TFuncionarioAlterarDadosDeficiencia): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosDeficiencia', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosDeficiencia(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosDeficiencia;

begin
  t_Modelo := TFuncionarioAlterarDadosDeficiencia.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosDeficiencia(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosEstrangeiro(const a_Objeto: TFuncionarioAlterarDadosEstrangeiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosEstrangeiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosEstrangeiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosEstrangeiro;

begin
  t_Modelo := TFuncionarioAlterarDadosEstrangeiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEstrangeiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarIdentidadeNasajon(const a_Objeto: TFuncionarioAlterarIdentidadeNasajon): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarIdentidadeNasajon', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarIdentidadeNasajon(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarIdentidadeNasajon;

begin
  t_Modelo := TFuncionarioAlterarIdentidadeNasajon.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarIdentidadeNasajon(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosRecebimentoOutrasEmpresas(const a_Objeto: TFuncionarioAlterarDadosRecebimentoOutrasEmpresas): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosRecebimentoOutrasEmpresas', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosRecebimentoOutrasEmpresas(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosRecebimentoOutrasEmpresas;

begin
  t_Modelo := TFuncionarioAlterarDadosRecebimentoOutrasEmpresas.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosRecebimentoOutrasEmpresas(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosOutroVinculo(const a_Objeto: TFuncionarioAlterarDadosOutroVinculo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosOutroVinculo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosOutroVinculo(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosOutroVinculo;

begin
  t_Modelo := TFuncionarioAlterarDadosOutroVinculo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosOutroVinculo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosJornada(const a_Objeto: TFuncionarioAlterarDadosJornada): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosJornada', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosJornada(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosJornada;

begin
  t_Modelo := TFuncionarioAlterarDadosJornada.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosJornada(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarSalario(const a_Objeto: TFuncionarioAlterarSalario): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarSalario', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarSalario(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarSalario;

begin
  t_Modelo := TFuncionarioAlterarSalario.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarSalario(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosPessoais(const a_Objeto: TFuncionarioAlterarDadosPessoais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosPessoais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosPessoais(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosPessoais;

begin
  t_Modelo := TFuncionarioAlterarDadosPessoais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosPessoais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarMatriculaContribuinteIndividual(const a_Objeto: TFuncionarioAlterarMatriculaContribuinteIndividual): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarMatriculaContribuinteIndividual', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarMatriculaContribuinteIndividual(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarMatriculaContribuinteIndividual;

begin
  t_Modelo := TFuncionarioAlterarMatriculaContribuinteIndividual.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarMatriculaContribuinteIndividual(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosFerias(const a_Objeto: TFuncionarioAlterarDadosFerias): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosFerias', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosFerias(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosFerias;

begin
  t_Modelo := TFuncionarioAlterarDadosFerias.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosFerias(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarPercentualAdiantamento(const a_Objeto: TFuncionarioAlterarPercentualAdiantamento): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarPercentualAdiantamento', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarPercentualAdiantamento(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarPercentualAdiantamento;

begin
  t_Modelo := TFuncionarioAlterarPercentualAdiantamento.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarPercentualAdiantamento(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosProcessoIRRF(const a_Objeto: TFuncionarioAlterarDadosProcessoIRRF): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosProcessoIRRF', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosProcessoIRRF(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosProcessoIRRF;

begin
  t_Modelo := TFuncionarioAlterarDadosProcessoIRRF.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosProcessoIRRF(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosProcessoINSS(const a_Objeto: TFuncionarioAlterarDadosProcessoINSS): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosProcessoINSS', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosProcessoINSS(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosProcessoINSS;

begin
  t_Modelo := TFuncionarioAlterarDadosProcessoINSS.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosProcessoINSS(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosProcessoMenorAprendiz(const a_Objeto: TFuncionarioAlterarDadosProcessoMenorAprendiz): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosProcessoMenorAprendiz', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosProcessoMenorAprendiz(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosProcessoMenorAprendiz;

begin
  t_Modelo := TFuncionarioAlterarDadosProcessoMenorAprendiz.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosProcessoMenorAprendiz(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarTipoFuncionario(const a_Objeto: TFuncionarioAlterarTipoFuncionario): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarTipoFuncionario', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarTipoFuncionario(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarTipoFuncionario;

begin
  t_Modelo := TFuncionarioAlterarTipoFuncionario.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarTipoFuncionario(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarAvalidador(const a_Objeto: TFuncionarioAlterarAvalidador): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarAvalidador', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarAvalidador(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarAvalidador;

begin
  t_Modelo := TFuncionarioAlterarAvalidador.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarAvalidador(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarGestor(const a_Objeto: TFuncionarioAlterarGestor): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarGestor', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarGestor(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarGestor;

begin
  t_Modelo := TFuncionarioAlterarGestor.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarGestor(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarFuncao(const a_Objeto: TFuncionarioAlterarFuncao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarFuncao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarFuncao(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarFuncao;

begin
  t_Modelo := TFuncionarioAlterarFuncao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarFuncao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarSindicalizado(const a_Objeto: TFuncionarioAlterarSindicalizado): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarSindicalizado', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarSindicalizado(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarSindicalizado;

begin
  t_Modelo := TFuncionarioAlterarSindicalizado.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarSindicalizado(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDescontaINSS(const a_Objeto: TFuncionarioAlterarDescontaINSS): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDescontaINSS', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDescontaINSS(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDescontaINSS;

begin
  t_Modelo := TFuncionarioAlterarDescontaINSS.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDescontaINSS(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDataInicioAnuenio(const a_Objeto: TFuncionarioAlterarDataInicioAnuenio): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDataInicioAnuenio', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDataInicioAnuenio(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDataInicioAnuenio;

begin
  t_Modelo := TFuncionarioAlterarDataInicioAnuenio.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDataInicioAnuenio(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDataVencimentoAtestadoMedico(const a_Objeto: TFuncionarioAlterarDataVencimentoAtestadoMedico): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDataVencimentoAtestadoMedico', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDataVencimentoAtestadoMedico(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDataVencimentoAtestadoMedico;

begin
  t_Modelo := TFuncionarioAlterarDataVencimentoAtestadoMedico.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDataVencimentoAtestadoMedico(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarAtividadeConcomitante(const a_Objeto: TFuncionarioAlterarAtividadeConcomitante): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarAtividadeConcomitante', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarAtividadeConcomitante(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarAtividadeConcomitante;

begin
  t_Modelo := TFuncionarioAlterarAtividadeConcomitante.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarAtividadeConcomitante(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarAtestadoObito(const a_Objeto: TFuncionarioAlterarAtestadoObito): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarAtestadoObito', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarAtestadoObito(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarAtestadoObito;

begin
  t_Modelo := TFuncionarioAlterarAtestadoObito.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarAtestadoObito(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarAcordoProrrogacao(const a_Objeto: TFuncionarioAlterarAcordoProrrogacao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarAcordoProrrogacao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarAcordoProrrogacao(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarAcordoProrrogacao;

begin
  t_Modelo := TFuncionarioAlterarAcordoProrrogacao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarAcordoProrrogacao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarStatus(const a_Objeto: TFuncionarioAlterarStatus): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarStatus', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarStatus(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarStatus;

begin
  t_Modelo := TFuncionarioAlterarStatus.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarStatus(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarObservacao(const a_Objeto: TFuncionarioAlterarObservacao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarObservacao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarObservacao(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarObservacao;

begin
  t_Modelo := TFuncionarioAlterarObservacao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarObservacao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarFoto(const a_Objeto: TFuncionarioAlterarFoto): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarFoto', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarFoto(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarFoto;

begin
  t_Modelo := TFuncionarioAlterarFoto.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarFoto(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.AlterarDadosContrato(const a_Objeto: TFuncionarioAlterarDadosContrato): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioAlterarDadosContrato', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.AlterarDadosContrato(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioAlterarDadosContrato;

begin
  t_Modelo := TFuncionarioAlterarDadosContrato.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosContrato(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncionario.Excluir(const a_Objeto: TFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncionarioExcluir;

begin
  t_Modelo := TFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
