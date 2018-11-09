unit api.command.client;

interface

  uses
    System.Generics.Collections,
    System.SysUtils,

    api.controller.ns.acessoestabelecimento,
    api.controller.ns.Cliente,
    api.controller.ns.CNAE,
    api.controller.ns.configuracaocategoriaporclassfinan,
    api.controller.ns.configuracaoordempagamento,
    api.controller.ns.ConfiguracaoProxy,
    api.controller.ns.configuracaotrabalhadorporprojeto,
    api.controller.ns.configuracaotrabalhadorporcentrocusto,
    api.controller.ns.Conjunto,
    api.controller.ns.Contato,
    api.controller.ns.DocFis,
    api.controller.ns.DocumentoFiscalNs,
    api.controller.ns.ElementoDeControle,
    api.controller.ns.Empresa,
    api.controller.ns.Endereco,
    api.controller.ns.Estabelecimento,
    api.controller.ns.Fornecedor,
    api.controller.ns.GrupoDeUsuario,
    api.controller.ns.GrupoEmpresarial,
    api.controller.ns.LocalDeUso,
    api.controller.ns.Municipio,
    api.controller.ns.Pais,
    api.controller.ns.Participante,
    api.controller.ns.PendenciaAdministrativa,
    api.controller.ns.PerfilUsuario,
    api.controller.ns.pessoa,
    api.controller.ns.Socios,
    api.controller.ns.SociosParticipacoes,
    api.controller.ns.SolicitacaoAlteracaoEndereco,
    api.controller.ns.Telefone,
    api.controller.ns.Usuario,
    api.controller.ns.Vendedor,
    api.controller.persona.AcordoProrrogacaoHora,
    api.controller.persona.AfastamentoFuncionario,
    api.controller.persona.AvisoFeriasFuncionario,
    api.controller.persona.Cargo,
    api.controller.persona.ConcessionariaValeTransporte,
    api.controller.persona.Contribuinteindividual,
    api.controller.persona.Departamento,
    api.controller.persona.DependenteFuncionario,
    api.controller.persona.DocumentoDependenteFuncionario,
    api.controller.persona.DocumentoFuncionario,
    api.controller.persona.Solicitacoes,
    api.controller.persona.EscalaFolgaFuncionario,
    api.controller.persona.Estagiario,
    api.controller.persona.Faixa,
    api.controller.persona.FaltaFuncionario,
    api.controller.persona.FPAS,
    api.controller.persona.Funcao,
    api.controller.persona.Funcionario,
    api.controller.persona.HistoricoFuncionario,
    api.controller.persona.Horario,
    api.controller.persona.Instituicao,
    api.controller.persona.IntervaloJornada,
    api.controller.persona.ItemFaixa,
    api.controller.persona.Jornada,
    api.controller.persona.Lotacao,
    api.controller.persona.MovimentoDepartamento,
    api.controller.persona.MovimentoEmpresa,
    api.controller.persona.MovimentoEstabelecimento,
    api.controller.persona.MovimentoFuncionario,
    api.controller.persona.MovimentoLotacao,
    api.controller.persona.MovimentoSindicato,
    api.controller.persona.NaturezaJuridica,
    api.controller.persona.NivelCargo,
    api.controller.persona.Processo,
    api.controller.persona.ProfissionalSaude,
    api.controller.persona.PromocaoFuncionario,
    api.controller.persona.ReajusteSalarialFuncionario,
    api.controller.persona.ReajusteSindicato,
    api.controller.persona.Rubrica,
    api.controller.persona.Sindicato,
    api.controller.persona.TarifaConcessionariaValeTransporte,
    api.controller.persona.TarifaValeTransporteFuncionario,
    api.controller.persona.TipoDocumentoColaborador,
    api.controller.persona.TipoFuncionario,
    api.controller.contabil.contaanual,
    api.controller.contabil.lancamento,
    api.controller.contabil.lote,
    api.controller.contabil.lotecontaanual,
    api.controller.contabil.lotelancamento,
    api.controller.contabil.lotelancamento_v2,
    api.controller.scritta.DocumentoFiscal,
    api.controller.scritta.ItemLancamentoFiscal,
    api.controller.scritta.LancamentoFiscal,
    api.controller.estoque.AcordosFornecimentoProdutos,
    api.controller.estoque.AcordosFornecimentoProdutosItens,
    api.controller.estoque.CategoriaDeProdutos,
    api.controller.estoque.LocalDeEstoque,
    api.controller.estoque.Operacao,
    api.controller.estoque.ProdutoEndereco,
    api.controller.estoque.Unidade,
    api.controller.financas.Agencia,
    api.controller.financas.BaixaTituloRenegociado,
    api.controller.financas.BaixaTituloUnitaria,
    api.controller.financas.Banco,
    api.controller.financas.ClassificacaoFinanceira,
    api.controller.financas.Conta,
    api.controller.financas.Conta_v2,
    api.controller.financas.DocumentoAjusteRateio,
    api.controller.financas.Fatura,
    api.controller.financas.Fatura_v2,
    api.controller.financas.FormaPagamentoFatura,
    api.controller.financas.FormaPagamentoRenegociacaoTitulos,
    api.controller.financas.ItemEmprestimoPrestacao,
    api.controller.financas.ItemFatura,
    api.controller.financas.ItemFatura_v2,
    api.controller.financas.ItemPrestacaoDeConta,
    api.controller.financas.LancamentoConta,
    api.controller.financas.LancamentoConta_v2,
    api.controller.financas.LayoutImpressoraCheque,
    api.controller.financas.ListaRateiosFinanceiros,
    api.controller.financas.LotesFatura,
    api.controller.financas.LoteFatura_v2,
    api.controller.financas.MensagemLoteFatura,
    api.controller.financas.ParcelaFormaPagamentoFatura,
    api.controller.financas.ParcelaFormaPagamentoRenegociacaoTitulos,
    api.controller.financas.PrestacaoDeConta,
    api.controller.financas.PrevisaoFinanceiraPagar,
    api.controller.financas.PrevisaoFinanceiraReceber,
    api.controller.financas.RenegociacaoTitulos,
    api.controller.financas.TipoConta,
    api.controller.financas.TituloPagar,
    api.controller.financas.TituloReceber,
    api.controller.servicos.AtivoHistoricoOferta,
    api.controller.servicos.AtivoHistoricoOfertaComponente,
    api.controller.servicos.CatalogoDeOferta,
    api.controller.servicos.CategoriaDeServicos,
    api.controller.servicos.CFOPServico,
    api.controller.servicos.ConfiguracaoRPS,
    api.controller.servicos.ContratoLocacaoImovelPagar,
    api.controller.servicos.ContratoLocacaoImovelReceber,
    api.controller.servicos.ContratoServicoPadraoPagar,
    api.controller.servicos.ContratoServicoPadraoReceber,
    api.controller.servicos.ProjetoFuncao,
    api.controller.servicos.ProjetoFuncaoDetalhe,
    api.controller.servicos.ItemContratoPagar,
    api.controller.servicos.ItemContratoReceber,
    api.controller.servicos.ItemRPS,
    api.controller.servicos.ObjetoServico,
    api.controller.servicos.Oferta,
    api.controller.servicos.OfertaItemFaturamento,
    api.controller.Servicos.Projeto,
    api.controller.Servicos.ProjetoHistorico,
    api.controller.servicos.RPS,
    api.controller.servicos.RPS_v2,
    api.controller.servicos.SerieRPS,
    api.controller.servicos.Servico,
    api.controller.servicos.TipoProjeto,
    api.controller.servicos.TipoServico,
    api.controller.servicos.unidadesdecustos,
    api.controller.crm.ContratoTecnico,
    api.controller.crm.ContratoTecnicoItem,
    api.controller.compras.ItemCompra,
    api.controller.compras.VinculoItemCompra,
    // uses

    api.command,
  	api.model.recibo;

  type
    TCommandClientAPI = class(TInterfacedObject, ICommandAPI)

      private

        var m_map: TDictionary<String, ICommandAPI>;

        var m_controller_acessoestabelecimento: TAPIacessoestabelecimento;
        var m_controller_Cliente: TAPICliente;
        var m_controller_CNAE: TAPICNAE;
        var m_controller_configuracaocategoriaporclassfinan: TAPIconfiguracaocategoriaporclassfinan;
        var m_controller_configuracaoordempagamento: TAPIconfiguracaoordempagamento;
        var m_controller_ConfiguracaoProxy: TAPIConfiguracaoProxy;
        var m_controller_configuracaotrabalhadorporprojeto: TAPIconfiguracaotrabalhadorporprojeto;
        var m_controller_configuracaotrabalhadorporcentrocusto: TAPIconfiguracaotrabalhadorporcentrocusto;
        var m_controller_Conjunto: TAPIConjunto;
        var m_controller_Contato: TAPIContato;
        var m_controller_DocFis: TAPIDocFis;
        var m_controller_DocumentoFiscalNs: TAPIDocumentoFiscalNs;
        var m_controller_ElementoDeControle: TAPIElementoDeControle;
        var m_controller_Empresa: TAPIEmpresa;
        var m_controller_Endereco: TAPIEndereco;
        var m_controller_Estabelecimento: TAPIEstabelecimento;
        var m_controller_Fornecedor: TAPIFornecedor;
        var m_controller_GrupoDeUsuario: TAPIGrupoDeUsuario;
        var m_controller_GrupoEmpresarial: TAPIGrupoEmpresarial;
        var m_controller_LocalDeUso: TAPILocalDeUso;
        var m_controller_Municipio: TAPIMunicipio;
        var m_controller_Pais: TAPIPais;
        var m_controller_Participante: TAPIParticipante;
        var m_controller_PendenciaAdministrativa: TAPIPendenciaAdministrativa;
        var m_controller_PerfilUsuario: TAPIPerfilUsuario;
        var m_controller_pessoa: TAPIpessoa;
        var m_controller_Socios: TAPISocios;
        var m_controller_SociosParticipacoes: TAPISociosParticipacoes;
        var m_controller_SolicitacaoAlteracaoEndereco: TAPISolicitacaoAlteracaoEndereco;
        var m_controller_Telefone: TAPITelefone;
        var m_controller_Usuario: TAPIUsuario;
        var m_controller_Vendedor: TAPIVendedor;
        var m_controller_AcordoProrrogacaoHora: TAPIAcordoProrrogacaoHora;
        var m_controller_AfastamentoFuncionario: TAPIAfastamentoFuncionario;
        var m_controller_AvisoFeriasFuncionario: TAPIAvisoFeriasFuncionario;
        var m_controller_Cargo: TAPICargo;
        var m_controller_ConcessionariaValeTransporte: TAPIConcessionariaValeTransporte;
        var m_controller_Contribuinteindividual: TAPIContribuinteindividual;
        var m_controller_Departamento: TAPIDepartamento;
        var m_controller_DependenteFuncionario: TAPIDependenteFuncionario;
        var m_controller_DocumentoDependenteFuncionario: TAPIDocumentoDependenteFuncionario;
        var m_controller_DocumentoFuncionario: TAPIDocumentoFuncionario;
        var m_controller_Solicitacoes: TAPISolicitacoes;
        var m_controller_EscalaFolgaFuncionario: TAPIEscalaFolgaFuncionario;
        var m_controller_Estagiario: TAPIEstagiario;
        var m_controller_Faixa: TAPIFaixa;
        var m_controller_FaltaFuncionario: TAPIFaltaFuncionario;
        var m_controller_FPAS: TAPIFPAS;
        var m_controller_Funcao: TAPIFuncao;
        var m_controller_Funcionario: TAPIFuncionario;
        var m_controller_HistoricoFuncionario: TAPIHistoricoFuncionario;
        var m_controller_Horario: TAPIHorario;
        var m_controller_Instituicao: TAPIInstituicao;
        var m_controller_IntervaloJornada: TAPIIntervaloJornada;
        var m_controller_ItemFaixa: TAPIItemFaixa;
        var m_controller_Jornada: TAPIJornada;
        var m_controller_Lotacao: TAPILotacao;
        var m_controller_MovimentoDepartamento: TAPIMovimentoDepartamento;
        var m_controller_MovimentoEmpresa: TAPIMovimentoEmpresa;
        var m_controller_MovimentoEstabelecimento: TAPIMovimentoEstabelecimento;
        var m_controller_MovimentoFuncionario: TAPIMovimentoFuncionario;
        var m_controller_MovimentoLotacao: TAPIMovimentoLotacao;
        var m_controller_MovimentoSindicato: TAPIMovimentoSindicato;
        var m_controller_NaturezaJuridica: TAPINaturezaJuridica;
        var m_controller_NivelCargo: TAPINivelCargo;
        var m_controller_Processo: TAPIProcesso;
        var m_controller_ProfissionalSaude: TAPIProfissionalSaude;
        var m_controller_PromocaoFuncionario: TAPIPromocaoFuncionario;
        var m_controller_ReajusteSalarialFuncionario: TAPIReajusteSalarialFuncionario;
        var m_controller_ReajusteSindicato: TAPIReajusteSindicato;
        var m_controller_Rubrica: TAPIRubrica;
        var m_controller_Sindicato: TAPISindicato;
        var m_controller_TarifaConcessionariaValeTransporte: TAPITarifaConcessionariaValeTransporte;
        var m_controller_TarifaValeTransporteFuncionario: TAPITarifaValeTransporteFuncionario;
        var m_controller_TipoDocumentoColaborador: TAPITipoDocumentoColaborador;
        var m_controller_TipoFuncionario: TAPITipoFuncionario;
        var m_controller_contaanual: TAPIcontaanual;
        var m_controller_lancamento: TAPIlancamento;
        var m_controller_lote: TAPIlote;
        var m_controller_lotecontaanual: TAPIlotecontaanual;
        var m_controller_lotelancamento: TAPIlotelancamento;
        var m_controller_lotelancamento_v2: TAPIlotelancamento_v2;
        var m_controller_DocumentoFiscal: TAPIDocumentoFiscal;
        var m_controller_ItemLancamentoFiscal: TAPIItemLancamentoFiscal;
        var m_controller_LancamentoFiscal: TAPILancamentoFiscal;
        var m_controller_AcordosFornecimentoProdutos: TAPIAcordosFornecimentoProdutos;
        var m_controller_AcordosFornecimentoProdutosItens: TAPIAcordosFornecimentoProdutosItens;
        var m_controller_CategoriaDeProdutos: TAPICategoriaDeProdutos;
        var m_controller_LocalDeEstoque: TAPILocalDeEstoque;
        var m_controller_Operacao: TAPIOperacao;
        var m_controller_ProdutoEndereco: TAPIProdutoEndereco;
        var m_controller_Unidade: TAPIUnidade;
        var m_controller_Agencia: TAPIAgencia;
        var m_controller_BaixaTituloRenegociado: TAPIBaixaTituloRenegociado;
        var m_controller_BaixaTituloUnitaria: TAPIBaixaTituloUnitaria;
        var m_controller_Banco: TAPIBanco;
        var m_controller_ClassificacaoFinanceira: TAPIClassificacaoFinanceira;
        var m_controller_Conta: TAPIConta;
        var m_controller_Conta_v2: TAPIConta_v2;
        var m_controller_DocumentoAjusteRateio: TAPIDocumentoAjusteRateio;
        var m_controller_Fatura: TAPIFatura;
        var m_controller_Fatura_v2: TAPIFatura_v2;
        var m_controller_FormaPagamentoFatura: TAPIFormaPagamentoFatura;
        var m_controller_FormaPagamentoRenegociacaoTitulos: TAPIFormaPagamentoRenegociacaoTitulos;
        var m_controller_ItemEmprestimoPrestacao: TAPIItemEmprestimoPrestacao;
        var m_controller_ItemFatura: TAPIItemFatura;
        var m_controller_ItemFatura_v2: TAPIItemFatura_v2;
        var m_controller_ItemPrestacaoDeConta: TAPIItemPrestacaoDeConta;
        var m_controller_LancamentoConta: TAPILancamentoConta;
        var m_controller_LancamentoConta_v2: TAPILancamentoConta_v2;
        var m_controller_LayoutImpressoraCheque: TAPILayoutImpressoraCheque;
        var m_controller_ListaRateiosFinanceiros: TAPIListaRateiosFinanceiros;
        var m_controller_LotesFatura: TAPILotesFatura;
        var m_controller_LoteFatura_v2: TAPILoteFatura_v2;
        var m_controller_MensagemLoteFatura: TAPIMensagemLoteFatura;
        var m_controller_ParcelaFormaPagamentoFatura: TAPIParcelaFormaPagamentoFatura;
        var m_controller_ParcelaFormaPagamentoRenegociacaoTitulos: TAPIParcelaFormaPagamentoRenegociacaoTitulos;
        var m_controller_PrestacaoDeConta: TAPIPrestacaoDeConta;
        var m_controller_PrevisaoFinanceiraPagar: TAPIPrevisaoFinanceiraPagar;
        var m_controller_PrevisaoFinanceiraReceber: TAPIPrevisaoFinanceiraReceber;
        var m_controller_RenegociacaoTitulos: TAPIRenegociacaoTitulos;
        var m_controller_TipoConta: TAPITipoConta;
        var m_controller_TituloPagar: TAPITituloPagar;
        var m_controller_TituloReceber: TAPITituloReceber;
        var m_controller_AtivoHistoricoOferta: TAPIAtivoHistoricoOferta;
        var m_controller_AtivoHistoricoOfertaComponente: TAPIAtivoHistoricoOfertaComponente;
        var m_controller_CatalogoDeOferta: TAPICatalogoDeOferta;
        var m_controller_CategoriaDeServicos: TAPICategoriaDeServicos;
        var m_controller_CFOPServico: TAPICFOPServico;
        var m_controller_ConfiguracaoRPS: TAPIConfiguracaoRPS;
        var m_controller_ContratoLocacaoImovelPagar: TAPIContratoLocacaoImovelPagar;
        var m_controller_ContratoLocacaoImovelReceber: TAPIContratoLocacaoImovelReceber;
        var m_controller_ContratoServicoPadraoPagar: TAPIContratoServicoPadraoPagar;
        var m_controller_ContratoServicoPadraoReceber: TAPIContratoServicoPadraoReceber;
        var m_controller_ProjetoFuncao: TAPIProjetoFuncao;
        var m_controller_ProjetoFuncaoDetalhe: TAPIProjetoFuncaoDetalhe;
        var m_controller_ItemContratoPagar: TAPIItemContratoPagar;
        var m_controller_ItemContratoReceber: TAPIItemContratoReceber;
        var m_controller_ItemRPS: TAPIItemRPS;
        var m_controller_ObjetoServico: TAPIObjetoServico;
        var m_controller_Oferta: TAPIOferta;
        var m_controller_OfertaItemFaturamento: TAPIOfertaItemFaturamento;
        var m_controller_Projeto: TAPIProjeto;
        var m_controller_ProjetoHistorico: TAPIProjetoHistorico;
        var m_controller_RPS: TAPIRPS;
        var m_controller_RPS_v2: TAPIRPS_v2;
        var m_controller_SerieRPS: TAPISerieRPS;
        var m_controller_Servico: TAPIServico;
        var m_controller_TipoProjeto: TAPITipoProjeto;
        var m_controller_TipoServico: TAPITipoServico;
        var m_controller_unidadesdecustos: TAPIunidadesdecustos;
        var m_controller_ContratoTecnico: TAPIContratoTecnico;
        var m_controller_ContratoTecnicoItem: TAPIContratoTecnicoItem;
        var m_controller_ItemCompra: TAPIItemCompra;
        var m_controller_VinculoItemCompra: TAPIVinculoItemCompra;
      	// var

        function getacessoestabelecimento(): TAPIacessoestabelecimento;
        function getCliente(): TAPICliente;
        function getCNAE(): TAPICNAE;
        function getconfiguracaocategoriaporclassfinan(): TAPIconfiguracaocategoriaporclassfinan;
        function getconfiguracaoordempagamento(): TAPIconfiguracaoordempagamento;
        function getConfiguracaoProxy(): TAPIConfiguracaoProxy;
        function getconfiguracaotrabalhadorporprojeto(): TAPIconfiguracaotrabalhadorporprojeto;
        function getconfiguracaotrabalhadorporcentrocusto(): TAPIconfiguracaotrabalhadorporcentrocusto;
        function getConjunto(): TAPIConjunto;
        function getContato(): TAPIContato;
        function getDocFis(): TAPIDocFis;
        function getDocumentoFiscalNs(): TAPIDocumentoFiscalNs;
        function getElementoDeControle(): TAPIElementoDeControle;
        function getEmpresa(): TAPIEmpresa;
        function getEndereco(): TAPIEndereco;
        function getEstabelecimento(): TAPIEstabelecimento;
        function getFornecedor(): TAPIFornecedor;
        function getGrupoDeUsuario(): TAPIGrupoDeUsuario;
        function getGrupoEmpresarial(): TAPIGrupoEmpresarial;
        function getLocalDeUso(): TAPILocalDeUso;
        function getMunicipio(): TAPIMunicipio;
        function getPais(): TAPIPais;
        function getParticipante(): TAPIParticipante;
        function getPendenciaAdministrativa(): TAPIPendenciaAdministrativa;
        function getPerfilUsuario(): TAPIPerfilUsuario;
        function getpessoa(): TAPIpessoa;
        function getSocios(): TAPISocios;
        function getSociosParticipacoes(): TAPISociosParticipacoes;
        function getSolicitacaoAlteracaoEndereco(): TAPISolicitacaoAlteracaoEndereco;
        function getTelefone(): TAPITelefone;
        function getUsuario(): TAPIUsuario;
        function getVendedor(): TAPIVendedor;
        function getAcordoProrrogacaoHora(): TAPIAcordoProrrogacaoHora;
        function getAfastamentoFuncionario(): TAPIAfastamentoFuncionario;
        function getAvisoFeriasFuncionario(): TAPIAvisoFeriasFuncionario;
        function getCargo(): TAPICargo;
        function getConcessionariaValeTransporte(): TAPIConcessionariaValeTransporte;
        function getContribuinteindividual(): TAPIContribuinteindividual;
        function getDepartamento(): TAPIDepartamento;
        function getDependenteFuncionario(): TAPIDependenteFuncionario;
        function getDocumentoDependenteFuncionario(): TAPIDocumentoDependenteFuncionario;
        function getDocumentoFuncionario(): TAPIDocumentoFuncionario;
        function getSolicitacoes(): TAPISolicitacoes;
        function getEscalaFolgaFuncionario(): TAPIEscalaFolgaFuncionario;
        function getEstagiario(): TAPIEstagiario;
        function getFaixa(): TAPIFaixa;
        function getFaltaFuncionario(): TAPIFaltaFuncionario;
        function getFPAS(): TAPIFPAS;
        function getFuncao(): TAPIFuncao;
        function getFuncionario(): TAPIFuncionario;
        function getHistoricoFuncionario(): TAPIHistoricoFuncionario;
        function getHorario(): TAPIHorario;
        function getInstituicao(): TAPIInstituicao;
        function getIntervaloJornada(): TAPIIntervaloJornada;
        function getItemFaixa(): TAPIItemFaixa;
        function getJornada(): TAPIJornada;
        function getLotacao(): TAPILotacao;
        function getMovimentoDepartamento(): TAPIMovimentoDepartamento;
        function getMovimentoEmpresa(): TAPIMovimentoEmpresa;
        function getMovimentoEstabelecimento(): TAPIMovimentoEstabelecimento;
        function getMovimentoFuncionario(): TAPIMovimentoFuncionario;
        function getMovimentoLotacao(): TAPIMovimentoLotacao;
        function getMovimentoSindicato(): TAPIMovimentoSindicato;
        function getNaturezaJuridica(): TAPINaturezaJuridica;
        function getNivelCargo(): TAPINivelCargo;
        function getProcesso(): TAPIProcesso;
        function getProfissionalSaude(): TAPIProfissionalSaude;
        function getPromocaoFuncionario(): TAPIPromocaoFuncionario;
        function getReajusteSalarialFuncionario(): TAPIReajusteSalarialFuncionario;
        function getReajusteSindicato(): TAPIReajusteSindicato;
        function getRubrica(): TAPIRubrica;
        function getSindicato(): TAPISindicato;
        function getTarifaConcessionariaValeTransporte(): TAPITarifaConcessionariaValeTransporte;
        function getTarifaValeTransporteFuncionario(): TAPITarifaValeTransporteFuncionario;
        function getTipoDocumentoColaborador(): TAPITipoDocumentoColaborador;
        function getTipoFuncionario(): TAPITipoFuncionario;
        function getcontaanual(): TAPIcontaanual;
        function getlancamento(): TAPIlancamento;
        function getlote(): TAPIlote;
        function getlotecontaanual(): TAPIlotecontaanual;
        function getlotelancamento(): TAPIlotelancamento;
        function getlotelancamento_v2(): TAPIlotelancamento_v2;
        function getDocumentoFiscal(): TAPIDocumentoFiscal;
        function getItemLancamentoFiscal(): TAPIItemLancamentoFiscal;
        function getLancamentoFiscal(): TAPILancamentoFiscal;
        function getAcordosFornecimentoProdutos(): TAPIAcordosFornecimentoProdutos;
        function getAcordosFornecimentoProdutosItens(): TAPIAcordosFornecimentoProdutosItens;
        function getCategoriaDeProdutos(): TAPICategoriaDeProdutos;
        function getLocalDeEstoque(): TAPILocalDeEstoque;
        function getOperacao(): TAPIOperacao;
        function getProdutoEndereco(): TAPIProdutoEndereco;
        function getUnidade(): TAPIUnidade;
        function getAgencia(): TAPIAgencia;
        function getBaixaTituloRenegociado(): TAPIBaixaTituloRenegociado;
        function getBaixaTituloUnitaria(): TAPIBaixaTituloUnitaria;
        function getBanco(): TAPIBanco;
        function getClassificacaoFinanceira(): TAPIClassificacaoFinanceira;
        function getConta(): TAPIConta;
        function getConta_v2(): TAPIConta_v2;
        function getDocumentoAjusteRateio(): TAPIDocumentoAjusteRateio;
        function getFatura(): TAPIFatura;
        function getFatura_v2(): TAPIFatura_v2;
        function getFormaPagamentoFatura(): TAPIFormaPagamentoFatura;
        function getFormaPagamentoRenegociacaoTitulos(): TAPIFormaPagamentoRenegociacaoTitulos;
        function getItemEmprestimoPrestacao(): TAPIItemEmprestimoPrestacao;
        function getItemFatura(): TAPIItemFatura;
        function getItemFatura_v2(): TAPIItemFatura_v2;
        function getItemPrestacaoDeConta(): TAPIItemPrestacaoDeConta;
        function getLancamentoConta(): TAPILancamentoConta;
        function getLancamentoConta_v2(): TAPILancamentoConta_v2;
        function getLayoutImpressoraCheque(): TAPILayoutImpressoraCheque;
        function getListaRateiosFinanceiros(): TAPIListaRateiosFinanceiros;
        function getLotesFatura(): TAPILotesFatura;
        function getLoteFatura_v2(): TAPILoteFatura_v2;
        function getMensagemLoteFatura(): TAPIMensagemLoteFatura;
        function getParcelaFormaPagamentoFatura(): TAPIParcelaFormaPagamentoFatura;
        function getParcelaFormaPagamentoRenegociacaoTitulos(): TAPIParcelaFormaPagamentoRenegociacaoTitulos;
        function getPrestacaoDeConta(): TAPIPrestacaoDeConta;
        function getPrevisaoFinanceiraPagar(): TAPIPrevisaoFinanceiraPagar;
        function getPrevisaoFinanceiraReceber(): TAPIPrevisaoFinanceiraReceber;
        function getRenegociacaoTitulos(): TAPIRenegociacaoTitulos;
        function getTipoConta(): TAPITipoConta;
        function getTituloPagar(): TAPITituloPagar;
        function getTituloReceber(): TAPITituloReceber;
        function getAtivoHistoricoOferta(): TAPIAtivoHistoricoOferta;
        function getAtivoHistoricoOfertaComponente(): TAPIAtivoHistoricoOfertaComponente;
        function getCatalogoDeOferta(): TAPICatalogoDeOferta;
        function getCategoriaDeServicos(): TAPICategoriaDeServicos;
        function getCFOPServico(): TAPICFOPServico;
        function getConfiguracaoRPS(): TAPIConfiguracaoRPS;
        function getContratoLocacaoImovelPagar(): TAPIContratoLocacaoImovelPagar;
        function getContratoLocacaoImovelReceber(): TAPIContratoLocacaoImovelReceber;
        function getContratoServicoPadraoPagar(): TAPIContratoServicoPadraoPagar;
        function getContratoServicoPadraoReceber(): TAPIContratoServicoPadraoReceber;
        function getProjetoFuncao(): TAPIProjetoFuncao;
        function getProjetoFuncaoDetalhe(): TAPIProjetoFuncaoDetalhe;
        function getItemContratoPagar(): TAPIItemContratoPagar;
        function getItemContratoReceber(): TAPIItemContratoReceber;
        function getItemRPS(): TAPIItemRPS;
        function getObjetoServico(): TAPIObjetoServico;
        function getOferta(): TAPIOferta;
        function getOfertaItemFaturamento(): TAPIOfertaItemFaturamento;
        function getProjeto(): TAPIProjeto;
        function getProjetoHistorico(): TAPIProjetoHistorico;
        function getRPS(): TAPIRPS;
        function getRPS_v2(): TAPIRPS_v2;
        function getSerieRPS(): TAPISerieRPS;
        function getServico(): TAPIServico;
        function getTipoProjeto(): TAPITipoProjeto;
        function getTipoServico(): TAPITipoServico;
        function getunidadesdecustos(): TAPIunidadesdecustos;
        function getContratoTecnico(): TAPIContratoTecnico;
        function getContratoTecnicoItem(): TAPIContratoTecnicoItem;
        function getItemCompra(): TAPIItemCompra;
        function getVinculoItemCompra(): TAPIVinculoItemCompra;
      	// get      	

      public

        constructor Create(); overload;
        destructor Destroy(); override;

      	function execute(const a_api: String; const a_param: String): TRecibo; overload;
      	function execute(const a_param: TObject): TRecibo; overload;      	

    end;

implementation

constructor TCommandClientAPI.Create; 
begin
  inherited;

  Self.m_map := TDictionary<String, ICommandAPI>.Create(); 

  Self.m_map.Add('ACESSOESTABELECIMENTONOVO', Self.getacessoestabelecimento());
  Self.m_map.Add('ACESSOESTABELECIMENTOEXCLUIR', Self.getacessoestabelecimento());
  Self.m_map.Add('CLIENTENOVO', Self.getCliente());
  Self.m_map.Add('CLIENTEALTERAR', Self.getCliente());
  Self.m_map.Add('CLIENTEEXCLUIR', Self.getCliente());
  Self.m_map.Add('CLIENTENOVO_V2', Self.getCliente());
  Self.m_map.Add('CLIENTEALTERAR_V2', Self.getCliente());
  Self.m_map.Add('CNAENOVO', Self.getCNAE());
  Self.m_map.Add('CNAEALTERAR', Self.getCNAE());
  Self.m_map.Add('CNAEEXCLUIR', Self.getCNAE());
  Self.m_map.Add('CONFIGURACAOCATEGORIAPORCLASSFINANNOVO', Self.getconfiguracaocategoriaporclassfinan());
  Self.m_map.Add('CONFIGURACAOCATEGORIAPORCLASSFINANALTERAR', Self.getconfiguracaocategoriaporclassfinan());
  Self.m_map.Add('CONFIGURACAOCATEGORIAPORCLASSFINANEXCLUIR', Self.getconfiguracaocategoriaporclassfinan());
  Self.m_map.Add('CONFIGURACAOORDEMPAGAMENTONOVO', Self.getconfiguracaoordempagamento());
  Self.m_map.Add('CONFIGURACAOORDEMPAGAMENTOALTERAR', Self.getconfiguracaoordempagamento());
  Self.m_map.Add('CONFIGURACAOORDEMPAGAMENTOEXCLUIR', Self.getconfiguracaoordempagamento());
  Self.m_map.Add('CONFIGURACAOPROXYNOVO', Self.getConfiguracaoProxy());
  Self.m_map.Add('CONFIGURACAOPROXYALTERAR', Self.getConfiguracaoProxy());
  Self.m_map.Add('CONFIGURACAOPROXYEXCLUIR', Self.getConfiguracaoProxy());
  Self.m_map.Add('CONFIGURACAOTRABALHADORPORPROJETONOVO', Self.getconfiguracaotrabalhadorporprojeto());
  Self.m_map.Add('CONFIGURACAOTRABALHADORPORPROJETOALTERAR', Self.getconfiguracaotrabalhadorporprojeto());
  Self.m_map.Add('CONFIGURACAOTRABALHADORPORPROJETOEXCLUIR', Self.getconfiguracaotrabalhadorporprojeto());
  Self.m_map.Add('CONFIGURACAOTRABALHADORPORCENTROCUSTONOVO', Self.getconfiguracaotrabalhadorporcentrocusto());
  Self.m_map.Add('CONFIGURACAOTRABALHADORPORCENTROCUSTOALTERAR', Self.getconfiguracaotrabalhadorporcentrocusto());
  Self.m_map.Add('CONFIGURACAOTRABALHADORPORCENTROCUSTOEXCLUIR', Self.getconfiguracaotrabalhadorporcentrocusto());
  Self.m_map.Add('CONJUNTONOVO', Self.getConjunto());
  Self.m_map.Add('CONJUNTOALTERAR', Self.getConjunto());
  Self.m_map.Add('CONJUNTOEXCLUIR', Self.getConjunto());
  Self.m_map.Add('CONTATONOVO', Self.getContato());
  Self.m_map.Add('CONTATOALTERAR', Self.getContato());
  Self.m_map.Add('CONTATOEXCLUIR', Self.getContato());
  Self.m_map.Add('DOCFISPROCESSARXML', Self.getDocFis());
  Self.m_map.Add('DOCUMENTOFISCALNSEXCLUIR', Self.getDocumentoFiscalNs());
  Self.m_map.Add('ELEMENTODECONTROLENOVO', Self.getElementoDeControle());
  Self.m_map.Add('ELEMENTODECONTROLEEXCLUIR', Self.getElementoDeControle());
  Self.m_map.Add('ELEMENTODECONTROLEAPLICARVALORNOREGISTRO', Self.getElementoDeControle());
  Self.m_map.Add('EMPRESANOVO', Self.getEmpresa());
  Self.m_map.Add('EMPRESAALTERARDADOSGERAIS', Self.getEmpresa());
  Self.m_map.Add('EMPRESAALTERARDADOSFOLHA', Self.getEmpresa());
  Self.m_map.Add('EMPRESAALTERARDADOSCONTATO', Self.getEmpresa());
  Self.m_map.Add('EMPRESAALTERARDADOSFOLHAEMPRESAPUBLICA', Self.getEmpresa());
  Self.m_map.Add('EMPRESAALTERARDADOSFOLHAEMPRESAFILANTROPICA', Self.getEmpresa());
  Self.m_map.Add('EMPRESAINATIVAREMPRESA', Self.getEmpresa());
  Self.m_map.Add('EMPRESAEXCLUIR', Self.getEmpresa());
  Self.m_map.Add('ENDERECOEXCLUIR', Self.getEndereco());
  Self.m_map.Add('ESTABELECIMENTONOVO', Self.getEstabelecimento());
  Self.m_map.Add('ESTABELECIMENTOALTERARDADOSGERAIS', Self.getEstabelecimento());
  Self.m_map.Add('ESTABELECIMENTOALTERARDADOSFOLHA', Self.getEstabelecimento());
  Self.m_map.Add('ESTABELECIMENTOALTERARDADOSENDERECO', Self.getEstabelecimento());
  Self.m_map.Add('ESTABELECIMENTOALTERARDADOSREPRESENTANTE', Self.getEstabelecimento());
  Self.m_map.Add('ESTABELECIMENTOEXCLUIR', Self.getEstabelecimento());
  Self.m_map.Add('ESTABELECIMENTOEXCLUIR_V2', Self.getEstabelecimento());
  Self.m_map.Add('FORNECEDORNOVO', Self.getFornecedor());
  Self.m_map.Add('FORNECEDORALTERAR', Self.getFornecedor());
  Self.m_map.Add('FORNECEDOREXCLUIR', Self.getFornecedor());
  Self.m_map.Add('GRUPODEUSUARIONOVO', Self.getGrupoDeUsuario());
  Self.m_map.Add('GRUPODEUSUARIOALTERAR', Self.getGrupoDeUsuario());
  Self.m_map.Add('GRUPODEUSUARIOEXCLUIR', Self.getGrupoDeUsuario());
  Self.m_map.Add('GRUPOEMPRESARIALNOVO', Self.getGrupoEmpresarial());
  Self.m_map.Add('GRUPOEMPRESARIALALTERAR', Self.getGrupoEmpresarial());
  Self.m_map.Add('GRUPOEMPRESARIALEXCLUIR', Self.getGrupoEmpresarial());
  Self.m_map.Add('LOCALDEUSONOVO', Self.getLocalDeUso());
  Self.m_map.Add('LOCALDEUSOALTERAR', Self.getLocalDeUso());
  Self.m_map.Add('LOCALDEUSOEXCLUIR', Self.getLocalDeUso());
  Self.m_map.Add('MUNICIPIONOVO', Self.getMunicipio());
  Self.m_map.Add('MUNICIPIOALTERAR', Self.getMunicipio());
  Self.m_map.Add('MUNICIPIOEXCLUIR', Self.getMunicipio());
  Self.m_map.Add('PAISNOVO', Self.getPais());
  Self.m_map.Add('PAISALTERAR', Self.getPais());
  Self.m_map.Add('PAISEXCLUIR', Self.getPais());
  Self.m_map.Add('PARTICIPANTERECUPERAR', Self.getParticipante());
  Self.m_map.Add('PENDENCIAADMINISTRATIVANOVO', Self.getPendenciaAdministrativa());
  Self.m_map.Add('PENDENCIAADMINISTRATIVARESOLVER', Self.getPendenciaAdministrativa());
  Self.m_map.Add('PERFILUSUARIONOVO', Self.getPerfilUsuario());
  Self.m_map.Add('PERFILUSUARIOALTERAR', Self.getPerfilUsuario());
  Self.m_map.Add('PERFILUSUARIOEXCLUIR', Self.getPerfilUsuario());
  Self.m_map.Add('PESSOANOVO', Self.getpessoa());
  Self.m_map.Add('PESSOAALTERAR', Self.getpessoa());
  Self.m_map.Add('PESSOAEXCLUIR', Self.getpessoa());
  Self.m_map.Add('SOCIOSNOVO', Self.getSocios());
  Self.m_map.Add('SOCIOSALTERAR', Self.getSocios());
  Self.m_map.Add('SOCIOSEXCLUIR', Self.getSocios());
  Self.m_map.Add('SOCIOSPARTICIPACOESNOVO', Self.getSociosParticipacoes());
  Self.m_map.Add('SOCIOSPARTICIPACOESALTERAR', Self.getSociosParticipacoes());
  Self.m_map.Add('SOCIOSPARTICIPACOESEXCLUIR', Self.getSociosParticipacoes());
  Self.m_map.Add('SOLICITACAOALTERACAOENDERECONOVO', Self.getSolicitacaoAlteracaoEndereco());
  Self.m_map.Add('TELEFONENOVO', Self.getTelefone());
  Self.m_map.Add('TELEFONEALTERAR', Self.getTelefone());
  Self.m_map.Add('TELEFONEEXCLUIR', Self.getTelefone());
  Self.m_map.Add('USUARIONOVO', Self.getUsuario());
  Self.m_map.Add('USUARIOALTERAR', Self.getUsuario());
  Self.m_map.Add('USUARIOEXCLUIR', Self.getUsuario());
  Self.m_map.Add('VENDEDORNOVO', Self.getVendedor());
  Self.m_map.Add('VENDEDORALTERAR', Self.getVendedor());
  Self.m_map.Add('VENDEDOREXCLUIR', Self.getVendedor());
  Self.m_map.Add('ACORDOPRORROGACAOHORANOVO', Self.getAcordoProrrogacaoHora());
  Self.m_map.Add('ACORDOPRORROGACAOHORAALTERAR', Self.getAcordoProrrogacaoHora());
  Self.m_map.Add('ACORDOPRORROGACAOHORAEXCLUIR', Self.getAcordoProrrogacaoHora());
  Self.m_map.Add('AFASTAMENTOFUNCIONARIONOVO', Self.getAfastamentoFuncionario());
  Self.m_map.Add('AFASTAMENTOFUNCIONARIOALTERARDADOSGERAIS', Self.getAfastamentoFuncionario());
  Self.m_map.Add('AFASTAMENTOFUNCIONARIOALTERARDADOSMEDICOS', Self.getAfastamentoFuncionario());
  Self.m_map.Add('AFASTAMENTOFUNCIONARIOALTERARDADOSSINDICAIS', Self.getAfastamentoFuncionario());
  Self.m_map.Add('AFASTAMENTOFUNCIONARIOALTERARDADOSCESSAO', Self.getAfastamentoFuncionario());
  Self.m_map.Add('AFASTAMENTOFUNCIONARIOALTERARDADOSFERIAS', Self.getAfastamentoFuncionario());
  Self.m_map.Add('AFASTAMENTOFUNCIONARIOALTERARAFASTAMENTOORIGINAL', Self.getAfastamentoFuncionario());
  Self.m_map.Add('AFASTAMENTOFUNCIONARIOEXCLUIR', Self.getAfastamentoFuncionario());
  Self.m_map.Add('AVISOFERIASFUNCIONARIONOVO', Self.getAvisoFeriasFuncionario());
  Self.m_map.Add('AVISOFERIASFUNCIONARIOALTERAR', Self.getAvisoFeriasFuncionario());
  Self.m_map.Add('AVISOFERIASFUNCIONARIOEXCLUIR', Self.getAvisoFeriasFuncionario());
  Self.m_map.Add('CARGONOVO', Self.getCargo());
  Self.m_map.Add('CARGOALTERARDADOSGERAIS', Self.getCargo());
  Self.m_map.Add('CARGOALTERARDADOSSUGESTAO', Self.getCargo());
  Self.m_map.Add('CARGOALTERARDADOSCOMPLEMENTARES', Self.getCargo());
  Self.m_map.Add('CARGOALTERARDADOSMERCADO', Self.getCargo());
  Self.m_map.Add('CARGOEXCLUIR', Self.getCargo());
  Self.m_map.Add('CONCESSIONARIAVALETRANSPORTENOVO', Self.getConcessionariaValeTransporte());
  Self.m_map.Add('CONCESSIONARIAVALETRANSPORTEALTERAR', Self.getConcessionariaValeTransporte());
  Self.m_map.Add('CONCESSIONARIAVALETRANSPORTEEXCLUIR', Self.getConcessionariaValeTransporte());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALNOVO', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSGERAIS', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSENDERECO', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSRECEBIMENTOSALARIO', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSTERMINO', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARPERCENTUALISS', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDATAOPCAOFGTS', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSTRANSPORTADORES', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSNASCIMENTO', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSCARTEIRATRABALHO', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSNACIONALIDADE', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSRIC', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSCARTEIRAIDENTIDADE', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSORDEMCLASSE', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSCARTEIRAHABLILITACAO', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSDEFICIENCIA', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSESTRANGEIRO', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARIDENTIDADENASAJON', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSJORNADA', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARSALARIO', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARDADOSPESSOAIS', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARMATRICULAFUNCIONARIO', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARAVALIDADOR', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARGESTOR', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERARATIVIDADECONCOMITANTE', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALALTERAROBSERVACAO', Self.getContribuinteindividual());
  Self.m_map.Add('CONTRIBUINTEINDIVIDUALEXCLUIR', Self.getContribuinteindividual());
  Self.m_map.Add('DEPARTAMENTONOVO', Self.getDepartamento());
  Self.m_map.Add('DEPARTAMENTOALTERAR', Self.getDepartamento());
  Self.m_map.Add('DEPARTAMENTOEXCLUIR', Self.getDepartamento());
  Self.m_map.Add('DEPENDENTEFUNCIONARIONOVO', Self.getDependenteFuncionario());
  Self.m_map.Add('DEPENDENTEFUNCIONARIOALTERARDADOSPADRAO', Self.getDependenteFuncionario());
  Self.m_map.Add('DEPENDENTEFUNCIONARIOALTERARDADOSCERTIDAONASCIMENTO', Self.getDependenteFuncionario());
  Self.m_map.Add('DEPENDENTEFUNCIONARIOALTERARBENEFICIARIOSALARIOFAMILIA', Self.getDependenteFuncionario());
  Self.m_map.Add('DEPENDENTEFUNCIONARIOALTERARBENEFICIARIOPENSAOALIMENTICIA', Self.getDependenteFuncionario());
  Self.m_map.Add('DEPENDENTEFUNCIONARIOALTERARBENEFICIARIOPLANOSAUDE', Self.getDependenteFuncionario());
  Self.m_map.Add('DEPENDENTEFUNCIONARIOALTERARBENEFICIARIOIMPOSTORENDA', Self.getDependenteFuncionario());
  Self.m_map.Add('DEPENDENTEFUNCIONARIOALTERARDADOSSALARIOFAMILIA', Self.getDependenteFuncionario());
  Self.m_map.Add('DEPENDENTEFUNCIONARIOALTERARDATABAIXAIMPOSTORENDA', Self.getDependenteFuncionario());
  Self.m_map.Add('DEPENDENTEFUNCIONARIOALTERARDADOSPENSAOALIMENTICIA', Self.getDependenteFuncionario());
  Self.m_map.Add('DEPENDENTEFUNCIONARIOEXCLUIR', Self.getDependenteFuncionario());
  Self.m_map.Add('DOCUMENTODEPENDENTEFUNCIONARIONOVO', Self.getDocumentoDependenteFuncionario());
  Self.m_map.Add('DOCUMENTODEPENDENTEFUNCIONARIOALTERAR', Self.getDocumentoDependenteFuncionario());
  Self.m_map.Add('DOCUMENTODEPENDENTEFUNCIONARIOEXCLUIR', Self.getDocumentoDependenteFuncionario());
  Self.m_map.Add('DOCUMENTOFUNCIONARIONOVO', Self.getDocumentoFuncionario());
  Self.m_map.Add('DOCUMENTOFUNCIONARIOALTERAR', Self.getDocumentoFuncionario());
  Self.m_map.Add('DOCUMENTOFUNCIONARIOEXCLUIR', Self.getDocumentoFuncionario());
  Self.m_map.Add('SOLICITACOESALTERACAOENDERECO', Self.getSolicitacoes());
  Self.m_map.Add('ESCALAFOLGAFUNCIONARIONOVO', Self.getEscalaFolgaFuncionario());
  Self.m_map.Add('ESCALAFOLGAFUNCIONARIOALTERAR', Self.getEscalaFolgaFuncionario());
  Self.m_map.Add('ESCALAFOLGAFUNCIONARIOEXCLUIR', Self.getEscalaFolgaFuncionario());
  Self.m_map.Add('ESTAGIARIONOVO', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSGERAIS', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSENDERECO', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSRECEBIMENTOSALARIO', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSNASCIMENTO', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSCARTEIRATRABALHO', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSESTAGIO', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSNACIONALIDADE', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSRIC', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSCARTEIRAIDENTIDADE', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSORDEMCLASSE', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSCARTEIRAHABLILITACAO', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSVALETRANSPORTE', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSDEFICIENCIA', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSESTRANGEIRO', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARIDENTIDADENASAJON', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSJORNADA', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARSALARIO', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSPESSOAIS', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSFERIAS', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARPERCENTUALADIANTAMENTO', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARAVALIDADOR', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARGESTOR', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDATAVENCIMENTOATESTADOMEDICO', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERAROBSERVACAO', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOALTERARDADOSATIVIDADE', Self.getEstagiario());
  Self.m_map.Add('ESTAGIARIOEXCLUIR', Self.getEstagiario());
  Self.m_map.Add('FAIXANOVO', Self.getFaixa());
  Self.m_map.Add('FAIXAALTERAR', Self.getFaixa());
  Self.m_map.Add('FAIXAEXCLUIR', Self.getFaixa());
  Self.m_map.Add('FALTAFUNCIONARIONOVO', Self.getFaltaFuncionario());
  Self.m_map.Add('FALTAFUNCIONARIOALTERAR', Self.getFaltaFuncionario());
  Self.m_map.Add('FALTAFUNCIONARIOEXCLUIR', Self.getFaltaFuncionario());
  Self.m_map.Add('FPASNOVO', Self.getFPAS());
  Self.m_map.Add('FPASALTERAR', Self.getFPAS());
  Self.m_map.Add('FPASEXCLUIR', Self.getFPAS());
  Self.m_map.Add('FUNCAONOVO', Self.getFuncao());
  Self.m_map.Add('FUNCAOALTERAR', Self.getFuncao());
  Self.m_map.Add('FUNCAOEXCLUIR', Self.getFuncao());
  Self.m_map.Add('FUNCIONARIONOVO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSGERAIS', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARESTABELECIMENTO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDEPARTAMENTO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARHORARIO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARSINDICATO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARLOTACAO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARCARGONIVEL', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSENDERECO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOSOLICITACAOALTERACAOENDERECO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSRECEBIMENTOSALARIO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSRESCISAO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSREINTEGRACAO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSNASCIMENTO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSCARTEIRATRABALHO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSNACIONALIDADE', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSFGTS', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSRIC', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSCARTEIRAIDENTIDADE', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSORDEMCLASSE', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSCARTEIRAHABLILITACAO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSPASSAPORTE', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSTITULOELEITOR', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSCERTIDAO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSCERTIFICADORESERVISTA', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSVALETRANSPORTE', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSEMPRESAANTERIOR', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSEMPRESACEDENTE', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSEMPRESASUCESSORA', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSDEFICIENCIA', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSESTRANGEIRO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARIDENTIDADENASAJON', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSRECEBIMENTOOUTRASEMPRESAS', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSOUTROVINCULO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSJORNADA', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARSALARIO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSPESSOAIS', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARMATRICULACONTRIBUINTEINDIVIDUAL', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSFERIAS', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARPERCENTUALADIANTAMENTO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSPROCESSOIRRF', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSPROCESSOINSS', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSPROCESSOMENORAPRENDIZ', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARTIPOFUNCIONARIO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARAVALIDADOR', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARGESTOR', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARFUNCAO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARSINDICALIZADO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDESCONTAINSS', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDATAINICIOANUENIO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDATAVENCIMENTOATESTADOMEDICO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARATIVIDADECONCOMITANTE', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARATESTADOOBITO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARACORDOPRORROGACAO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARSTATUS', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERAROBSERVACAO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARFOTO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOALTERARDADOSCONTRATO', Self.getFuncionario());
  Self.m_map.Add('FUNCIONARIOEXCLUIR', Self.getFuncionario());
  Self.m_map.Add('HISTORICOFUNCIONARIONOVO', Self.getHistoricoFuncionario());
  Self.m_map.Add('HISTORICOFUNCIONARIOALTERAR', Self.getHistoricoFuncionario());
  Self.m_map.Add('HISTORICOFUNCIONARIOEXCLUIR', Self.getHistoricoFuncionario());
  Self.m_map.Add('HORARIONOVODADOSPADRAO', Self.getHorario());
  Self.m_map.Add('HORARIONOVODADOSOUTROS', Self.getHorario());
  Self.m_map.Add('HORARIONOVODADOSESCALA', Self.getHorario());
  Self.m_map.Add('HORARIOALTERARDADOSPADRAO', Self.getHorario());
  Self.m_map.Add('HORARIOALTERARDADOSOUTROS', Self.getHorario());
  Self.m_map.Add('HORARIOALTERARDADOSESCALA', Self.getHorario());
  Self.m_map.Add('HORARIOALTERARFOLGAFIXA', Self.getHorario());
  Self.m_map.Add('HORARIOALTERARFOLGAEXTRA', Self.getHorario());
  Self.m_map.Add('HORARIOALTERARDESCONTAATRASOSEMDIASDEFALTA', Self.getHorario());
  Self.m_map.Add('HORARIOEXCLUIR', Self.getHorario());
  Self.m_map.Add('INSTITUICAONOVO', Self.getInstituicao());
  Self.m_map.Add('INSTITUICAOALTERARDADOSGERAIS', Self.getInstituicao());
  Self.m_map.Add('INSTITUICAOALTERARINSTITUICAOPLANOSAUDE', Self.getInstituicao());
  Self.m_map.Add('INSTITUICAOALTERARINSTITUICAOSAUDE', Self.getInstituicao());
  Self.m_map.Add('INSTITUICAOALTERARTELEFONE', Self.getInstituicao());
  Self.m_map.Add('INSTITUICAOEXCLUIR', Self.getInstituicao());
  Self.m_map.Add('INTERVALOJORNADANOVO', Self.getIntervaloJornada());
  Self.m_map.Add('INTERVALOJORNADAALTERAR', Self.getIntervaloJornada());
  Self.m_map.Add('INTERVALOJORNADAEXCLUIR', Self.getIntervaloJornada());
  Self.m_map.Add('ITEMFAIXANOVO', Self.getItemFaixa());
  Self.m_map.Add('ITEMFAIXAALTERAR', Self.getItemFaixa());
  Self.m_map.Add('ITEMFAIXAEXCLUIR', Self.getItemFaixa());
  Self.m_map.Add('JORNADANOVO', Self.getJornada());
  Self.m_map.Add('JORNADAALTERAR', Self.getJornada());
  Self.m_map.Add('JORNADAEXCLUIR', Self.getJornada());
  Self.m_map.Add('LOTACAONOVO', Self.getLotacao());
  Self.m_map.Add('LOTACAOALTERARDADOSGERAIS', Self.getLotacao());
  Self.m_map.Add('LOTACAOALTERARTIPOLOTACAOESTABELECIMENTO', Self.getLotacao());
  Self.m_map.Add('LOTACAOALTERARTIPOLOTACAOOBRAESTABELECIMENTO', Self.getLotacao());
  Self.m_map.Add('LOTACAOALTERARTIPOLOTACAOTOMADOR', Self.getLotacao());
  Self.m_map.Add('LOTACAOALTERARTIPOLOTACAOOBRATOMADOR', Self.getLotacao());
  Self.m_map.Add('LOTACAOALTERARENDERECODIFERENTEDOVINCULO', Self.getLotacao());
  Self.m_map.Add('LOTACAOALTERARDADOSENDERECODIFERENTEDOVINCULO', Self.getLotacao());
  Self.m_map.Add('LOTACAOALTERARPROCESSOTERCEIROS', Self.getLotacao());
  Self.m_map.Add('LOTACAOALTERAROUTRASENTIDADESDIFERENTEDOVINCULO', Self.getLotacao());
  Self.m_map.Add('LOTACAOALTERARDADOSOUTRASENTIDADESDIFERENTEDOVINCULO', Self.getLotacao());
  Self.m_map.Add('LOTACAOEXCLUIR', Self.getLotacao());
  Self.m_map.Add('MOVIMENTODEPARTAMENTONOVO', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARDADOSGERAIS', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARCALCULARNAFOLHA', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARCALCULARNASFERIAS', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARCALCULARNODECIMOTERCEIRO', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARCALCULARNOADIANTAMENTODEDECIMOTERCEIRO', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARCALCULARNOADIANTAMENTODEFOLHA', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARCALCULARNOPPLR', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARCALCULARNAFOLHACORRETIVA', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARCALCULARNARESCISAO', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARCALCULARNOCOMPLEMENTODEDECIMOTERCEIRO', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARPERIODOSEMPRE', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARPERIODOPROXIMOCALCULO', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARPERIODOMENSAL', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARPERIODOSEMANAL', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARPERIODOENTREDATAS', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOALTERARPERIODOENTREMESANO', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTODEPARTAMENTOEXCLUIR', Self.getMovimentoDepartamento());
  Self.m_map.Add('MOVIMENTOEMPRESANOVO', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARDADOSGERAIS', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARCALCULARNAFOLHA', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARCALCULARNASFERIAS', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARCALCULARNODECIMOTERCEIRO', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARCALCULARNOADIANTAMENTODEDECIMOTERCEIRO', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARCALCULARNOADIANTAMENTODEFOLHA', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARCALCULARNOPPLR', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARCALCULARNAFOLHACORRETIVA', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARCALCULARNARESCISAO', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARCALCULARNOCOMPLEMENTODEDECIMOTERCEIRO', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARPERIODOSEMPRE', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARPERIODOPROXIMOCALCULO', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARPERIODOMENSAL', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARPERIODOSEMANAL', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARPERIODOENTREDATAS', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAALTERARPERIODOENTREMESANO', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOEMPRESAEXCLUIR', Self.getMovimentoEmpresa());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTONOVO', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARDADOSGERAIS', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARCALCULARNAFOLHA', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARCALCULARNASFERIAS', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARCALCULARNODECIMOTERCEIRO', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARCALCULARNOADIANTAMENTODEDECIMOTERCEIRO', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARCALCULARNOADIANTAMENTODEFOLHA', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARCALCULARNOPPLR', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARCALCULARNAFOLHACORRETIVA', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARCALCULARNARESCISAO', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARCALCULARNOCOMPLEMENTODEDECIMOTERCEIRO', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARPERIODOSEMPRE', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARPERIODOPROXIMOCALCULO', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARPERIODOMENSAL', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARPERIODOSEMANAL', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARPERIODOENTREDATAS', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOALTERARPERIODOENTREMESANO', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOESTABELECIMENTOEXCLUIR', Self.getMovimentoEstabelecimento());
  Self.m_map.Add('MOVIMENTOFUNCIONARIONOVO', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARDADOSGERAIS', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARCALCULARNAFOLHA', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARCALCULARNASFERIAS', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARCALCULARNODECIMOTERCEIRO', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARCALCULARNOADIANTAMENTO13', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARCALCULARNOADIANTAMENTODEFOLHA', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARCALCULARNOPPLR', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARCALCULARNAFOLHACORRETIVA', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARCALCULARNARESCISAO', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARCALCULARNOCOMPLEMENTO13', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARPERIODOSEMPRE', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARPERIODOPROXIMOCALCULO', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARPERIODOMENSAL', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARPERIODOSEMANAL', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARPERIODOENTREDATAS', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOALTERARPERIODOENTREMESANO', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOFUNCIONARIOEXCLUIR', Self.getMovimentoFuncionario());
  Self.m_map.Add('MOVIMENTOLOTACAONOVO', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARDADOSGERAIS', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARCALCULARNAFOLHA', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARCALCULARNASFERIAS', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARCALCULARNODECIMOTERCEIRO', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARCALCULARNOADIANTAMENTODEDECIMOTERCEIRO', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARCALCULARNOADIANTAMENTODEFOLHA', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARCALCULARNOPPLR', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARCALCULARNAFOLHACORRETIVA', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARCALCULARNARESCISAO', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARCALCULARNOCOMPLEMENTODEDECIMOTERCEIRO', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARPERIODOSEMPRE', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARPERIODOPROXIMOCALCULO', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARPERIODOMENSAL', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARPERIODOSEMANAL', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARPERIODOENTREDATAS', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOALTERARPERIODOENTREMESANO', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOLOTACAOEXCLUIR', Self.getMovimentoLotacao());
  Self.m_map.Add('MOVIMENTOSINDICATONOVO', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARDADOSGERAIS', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARCALCULARNAFOLHA', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARCALCULARNASFERIAS', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARCALCULARNODECIMOTERCEIRO', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARCALCULARNOADIANTAMENTODEDECIMOTERCEIRO', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARCALCULARNOADIANTAMENTODEFOLHA', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARCALCULARNOPPLR', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARCALCULARNAFOLHACORRETIVA', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARCALCULARNARESCISAO', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARCALCULARNOCOMPLEMENTODEDECIMOTERCEIRO', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARPERIODOSEMPRE', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARPERIODOPROXIMOCALCULO', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARPERIODOMENSAL', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARPERIODOSEMANAL', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARPERIODOENTREDATAS', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOALTERARPERIODOENTREMESANO', Self.getMovimentoSindicato());
  Self.m_map.Add('MOVIMENTOSINDICATOEXCLUIR', Self.getMovimentoSindicato());
  Self.m_map.Add('NATUREZAJURIDICANOVO', Self.getNaturezaJuridica());
  Self.m_map.Add('NATUREZAJURIDICAALTERAR', Self.getNaturezaJuridica());
  Self.m_map.Add('NATUREZAJURIDICAEXCLUIR', Self.getNaturezaJuridica());
  Self.m_map.Add('NIVELCARGONOVO', Self.getNivelCargo());
  Self.m_map.Add('NIVELCARGOALTERARDADOSGERAIS', Self.getNivelCargo());
  Self.m_map.Add('NIVELCARGOALTERARDADOSANTERIORES', Self.getNivelCargo());
  Self.m_map.Add('NIVELCARGOEXCLUIR', Self.getNivelCargo());
  Self.m_map.Add('PROCESSONOVO', Self.getProcesso());
  Self.m_map.Add('PROCESSOALTERARDADOSGERAIS', Self.getProcesso());
  Self.m_map.Add('PROCESSOALTERARDADOSDECISAO', Self.getProcesso());
  Self.m_map.Add('PROCESSOEXCLUIR', Self.getProcesso());
  Self.m_map.Add('PROFISSIONALSAUDENOVO', Self.getProfissionalSaude());
  Self.m_map.Add('PROFISSIONALSAUDEALTERAR', Self.getProfissionalSaude());
  Self.m_map.Add('PROFISSIONALSAUDEEXCLUIR', Self.getProfissionalSaude());
  Self.m_map.Add('PROMOCAOFUNCIONARIONOVA', Self.getPromocaoFuncionario());
  Self.m_map.Add('REAJUSTESALARIALFUNCIONARIONOVO', Self.getReajusteSalarialFuncionario());
  Self.m_map.Add('REAJUSTESALARIALFUNCIONARIOALTERARDADOSGERAIS', Self.getReajusteSalarialFuncionario());
  Self.m_map.Add('REAJUSTESALARIALFUNCIONARIOALTERARREAJUSTESINDICAL', Self.getReajusteSalarialFuncionario());
  Self.m_map.Add('REAJUSTESALARIALFUNCIONARIOEXCLUIR', Self.getReajusteSalarialFuncionario());
  Self.m_map.Add('REAJUSTESINDICATONOVO', Self.getReajusteSindicato());
  Self.m_map.Add('REAJUSTESINDICATOALTERAR', Self.getReajusteSindicato());
  Self.m_map.Add('REAJUSTESINDICATOEXCLUIR', Self.getReajusteSindicato());
  Self.m_map.Add('RUBRICANOVO', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARDADOSGERAIS', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARDADOSFORMULAAVANCADA', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARDADOSFORMULABASICA', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARCODIGOHOMOLOGNET', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARCODIGOESOCIAL', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARINCIDENCIAS', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARDADOSFAIXA', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARINSTITUICAO', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARDADOSANUENIO', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARDADOSPISO', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARDADOSMEDIA', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARDADOSLIMITE', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARVALORINTEGRALBASEVALORDIA', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARVALORINTEGRALBASEVALORHORA', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARVALORINTEGRALBASESINDICAL', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARVALORINTEGRALBASESALARIOFAMILIA', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARPROPORCAONOSCALCULOS', Self.getRubrica());
  Self.m_map.Add('RUBRICAALTERARCOMPARACOMTARIFAVT', Self.getRubrica());
  Self.m_map.Add('RUBRICAEXCLUIR', Self.getRubrica());
  Self.m_map.Add('SINDICATONOVO', Self.getSindicato());
  Self.m_map.Add('SINDICATOALTERARDADOSGERAIS', Self.getSindicato());
  Self.m_map.Add('SINDICATOALTERARDADOSENDERECO', Self.getSindicato());
  Self.m_map.Add('SINDICATOALTERARDADOSCONTATO', Self.getSindicato());
  Self.m_map.Add('SINDICATOALTERARDADOSOUTRASENTIDADES', Self.getSindicato());
  Self.m_map.Add('SINDICATOALTERARDADOSCALCULOFERIAS', Self.getSindicato());
  Self.m_map.Add('SINDICATOALTERARDADOSCALCULODECIMOTERCEIRO', Self.getSindicato());
  Self.m_map.Add('SINDICATOALTERARDADOSCALCULORESCISAO', Self.getSindicato());
  Self.m_map.Add('SINDICATOALTERARDADOSCALCULODISSIDIO', Self.getSindicato());
  Self.m_map.Add('SINDICATOALTERARDADOSCALCULOMATERNIDADE', Self.getSindicato());
  Self.m_map.Add('SINDICATOALTERARDADOSCALCULOANUENIO', Self.getSindicato());
  Self.m_map.Add('SINDICATOEXCLUIR', Self.getSindicato());
  Self.m_map.Add('TARIFACONCESSIONARIAVALETRANSPORTENOVO', Self.getTarifaConcessionariaValeTransporte());
  Self.m_map.Add('TARIFACONCESSIONARIAVALETRANSPORTEALTERARVALOR', Self.getTarifaConcessionariaValeTransporte());
  Self.m_map.Add('TARIFACONCESSIONARIAVALETRANSPORTEALTERARCODIGOEXTERNO', Self.getTarifaConcessionariaValeTransporte());
  Self.m_map.Add('TARIFACONCESSIONARIAVALETRANSPORTEEXCLUIR', Self.getTarifaConcessionariaValeTransporte());
  Self.m_map.Add('TARIFAVALETRANSPORTEFUNCIONARIONOVO', Self.getTarifaValeTransporteFuncionario());
  Self.m_map.Add('TARIFAVALETRANSPORTEFUNCIONARIOALTERAR', Self.getTarifaValeTransporteFuncionario());
  Self.m_map.Add('TARIFAVALETRANSPORTEFUNCIONARIOEXCLUIR', Self.getTarifaValeTransporteFuncionario());
  Self.m_map.Add('TIPODOCUMENTOCOLABORADORNOVO', Self.getTipoDocumentoColaborador());
  Self.m_map.Add('TIPODOCUMENTOCOLABORADORALTERAR', Self.getTipoDocumentoColaborador());
  Self.m_map.Add('TIPODOCUMENTOCOLABORADOREXCLUIR', Self.getTipoDocumentoColaborador());
  Self.m_map.Add('TIPOFUNCIONARIONOVO', Self.getTipoFuncionario());
  Self.m_map.Add('TIPOFUNCIONARIOALTERAR', Self.getTipoFuncionario());
  Self.m_map.Add('TIPOFUNCIONARIOEXCLUIR', Self.getTipoFuncionario());
  Self.m_map.Add('CONTAANUALNOVO', Self.getcontaanual());
  Self.m_map.Add('CONTAANUALALTERAR', Self.getcontaanual());
  Self.m_map.Add('CONTAANUALEXCLUIR', Self.getcontaanual());
  Self.m_map.Add('LANCAMENTONOVO', Self.getlancamento());
  Self.m_map.Add('LANCAMENTOALTERAR', Self.getlancamento());
  Self.m_map.Add('LANCAMENTOEXCLUIR', Self.getlancamento());
  Self.m_map.Add('LOTENOVO', Self.getlote());
  Self.m_map.Add('LOTEEXCLUIR', Self.getlote());
  Self.m_map.Add('LOTECONTAANUALNOVO', Self.getlotecontaanual());
  Self.m_map.Add('LOTELANCAMENTONOVO', Self.getlotelancamento());
  Self.m_map.Add('LOTELANCAMENTOEXCLUIR', Self.getlotelancamento());
  Self.m_map.Add('LOTELANCAMENTO_V2NOVO', Self.getlotelancamento_v2());
  Self.m_map.Add('LOTELANCAMENTO_V2ALTERAR', Self.getlotelancamento_v2());
  Self.m_map.Add('LOTELANCAMENTO_V2EXCLUIR', Self.getlotelancamento_v2());
  Self.m_map.Add('DOCUMENTOFISCALCANCELAR', Self.getDocumentoFiscal());
  Self.m_map.Add('ITEMLANCAMENTOFISCALNOVO', Self.getItemLancamentoFiscal());
  Self.m_map.Add('LANCAMENTOFISCALNOVO', Self.getLancamentoFiscal());
  Self.m_map.Add('LANCAMENTOFISCALCANCELAR', Self.getLancamentoFiscal());
  Self.m_map.Add('ACORDOSFORNECIMENTOPRODUTOSNOVO', Self.getAcordosFornecimentoProdutos());
  Self.m_map.Add('ACORDOSFORNECIMENTOPRODUTOSITENSNOVO', Self.getAcordosFornecimentoProdutosItens());
  Self.m_map.Add('CATEGORIADEPRODUTOSNOVO', Self.getCategoriaDeProdutos());
  Self.m_map.Add('CATEGORIADEPRODUTOSALTERAR', Self.getCategoriaDeProdutos());
  Self.m_map.Add('CATEGORIADEPRODUTOSEXCLUIR', Self.getCategoriaDeProdutos());
  Self.m_map.Add('LOCALDEESTOQUENOVO', Self.getLocalDeEstoque());
  Self.m_map.Add('LOCALDEESTOQUEALTERAR', Self.getLocalDeEstoque());
  Self.m_map.Add('LOCALDEESTOQUEEXCLUIR', Self.getLocalDeEstoque());
  Self.m_map.Add('OPERACAONOVO', Self.getOperacao());
  Self.m_map.Add('OPERACAOALTERAR', Self.getOperacao());
  Self.m_map.Add('OPERACAOEXCLUIR', Self.getOperacao());
  Self.m_map.Add('PRODUTOENDERECONOVO', Self.getProdutoEndereco());
  Self.m_map.Add('PRODUTOENDERECOALTERAR', Self.getProdutoEndereco());
  Self.m_map.Add('PRODUTOENDERECOEXCLUIR', Self.getProdutoEndereco());
  Self.m_map.Add('UNIDADENOVO', Self.getUnidade());
  Self.m_map.Add('UNIDADEALTERAR', Self.getUnidade());
  Self.m_map.Add('UNIDADEEXCLUIR', Self.getUnidade());
  Self.m_map.Add('AGENCIANOVO', Self.getAgencia());
  Self.m_map.Add('AGENCIAALTERARDADOSGERAIS', Self.getAgencia());
  Self.m_map.Add('AGENCIAALTERARDADOSENDERECO', Self.getAgencia());
  Self.m_map.Add('AGENCIAEXCLUIR', Self.getAgencia());
  Self.m_map.Add('BAIXATITULORENEGOCIADONOVO', Self.getBaixaTituloRenegociado());
  Self.m_map.Add('BAIXATITULORENEGOCIADOEXCLUIR', Self.getBaixaTituloRenegociado());
  Self.m_map.Add('BAIXATITULOUNITARIABAIXARTITULO', Self.getBaixaTituloUnitaria());
  Self.m_map.Add('BANCONOVO', Self.getBanco());
  Self.m_map.Add('BANCOALTERAR', Self.getBanco());
  Self.m_map.Add('BANCOEXCLUIR', Self.getBanco());
  Self.m_map.Add('CLASSIFICACAOFINANCEIRANOVO', Self.getClassificacaoFinanceira());
  Self.m_map.Add('CLASSIFICACAOFINANCEIRAALTERAR', Self.getClassificacaoFinanceira());
  Self.m_map.Add('CLASSIFICACAOFINANCEIRAEXCLUIR', Self.getClassificacaoFinanceira());
  Self.m_map.Add('CONTANOVO', Self.getConta());
  Self.m_map.Add('CONTAALTERAR', Self.getConta());
  Self.m_map.Add('CONTAEXCLUIR', Self.getConta());
  Self.m_map.Add('CONTA_V2NOVO', Self.getConta_v2());
  Self.m_map.Add('CONTA_V2ALTERAR', Self.getConta_v2());
  Self.m_map.Add('CONTA_V2EXCLUIR', Self.getConta_v2());
  Self.m_map.Add('DOCUMENTOAJUSTERATEIONOVO', Self.getDocumentoAjusteRateio());
  Self.m_map.Add('DOCUMENTOAJUSTERATEIOALTERAR', Self.getDocumentoAjusteRateio());
  Self.m_map.Add('DOCUMENTOAJUSTERATEIOEXCLUIR', Self.getDocumentoAjusteRateio());
  Self.m_map.Add('FATURANOVO', Self.getFatura());
  Self.m_map.Add('FATURAALTERAR', Self.getFatura());
  Self.m_map.Add('FATURAEXCLUIR', Self.getFatura());
  Self.m_map.Add('FATURA_V2NOVO', Self.getFatura_v2());
  Self.m_map.Add('FATURA_V2ALTERAR', Self.getFatura_v2());
  Self.m_map.Add('FATURA_V2EXCLUIR', Self.getFatura_v2());
  Self.m_map.Add('FORMAPAGAMENTOFATURANOVO', Self.getFormaPagamentoFatura());
  Self.m_map.Add('FORMAPAGAMENTORENEGOCIACAOTITULOSNOVO', Self.getFormaPagamentoRenegociacaoTitulos());
  Self.m_map.Add('ITEMEMPRESTIMOPRESTACAONOVO', Self.getItemEmprestimoPrestacao());
  Self.m_map.Add('ITEMFATURANOVO', Self.getItemFatura());
  Self.m_map.Add('ITEMFATURAEXCLUIR', Self.getItemFatura());
  Self.m_map.Add('ITEMFATURA_V2NOVO', Self.getItemFatura_v2());
  Self.m_map.Add('ITEMFATURA_V2EXCLUIR', Self.getItemFatura_v2());
  Self.m_map.Add('ITEMPRESTACAODECONTANOVO', Self.getItemPrestacaoDeConta());
  Self.m_map.Add('LANCAMENTOCONTANOVO', Self.getLancamentoConta());
  Self.m_map.Add('LANCAMENTOCONTA_V2NOVO', Self.getLancamentoConta_v2());
  Self.m_map.Add('LAYOUTIMPRESSORACHEQUENOVO', Self.getLayoutImpressoraCheque());
  Self.m_map.Add('LAYOUTIMPRESSORACHEQUEALTERAR', Self.getLayoutImpressoraCheque());
  Self.m_map.Add('LAYOUTIMPRESSORACHEQUEEXCLUIR', Self.getLayoutImpressoraCheque());
  Self.m_map.Add('LISTARATEIOSFINANCEIROSNOVO', Self.getListaRateiosFinanceiros());
  Self.m_map.Add('LOTESFATURANOVO', Self.getLotesFatura());
  Self.m_map.Add('LOTESFATURAEXCLUIR', Self.getLotesFatura());
  Self.m_map.Add('LOTEFATURA_V2NOVO', Self.getLoteFatura_v2());
  Self.m_map.Add('LOTEFATURA_V2EXCLUIR', Self.getLoteFatura_v2());
  Self.m_map.Add('MENSAGEMLOTEFATURANOVO', Self.getMensagemLoteFatura());
  Self.m_map.Add('PARCELAFORMAPAGAMENTOFATURANOVO', Self.getParcelaFormaPagamentoFatura());
  Self.m_map.Add('PARCELAFORMAPAGAMENTORENEGOCIACAOTITULOSNOVO', Self.getParcelaFormaPagamentoRenegociacaoTitulos());
  Self.m_map.Add('PRESTACAODECONTANOVO', Self.getPrestacaoDeConta());
  Self.m_map.Add('PRESTACAODECONTAALTERAR', Self.getPrestacaoDeConta());
  Self.m_map.Add('PRESTACAODECONTAEXCLUIR', Self.getPrestacaoDeConta());
  Self.m_map.Add('PREVISAOFINANCEIRAPAGARNOVO', Self.getPrevisaoFinanceiraPagar());
  Self.m_map.Add('PREVISAOFINANCEIRAPAGARALTERAR', Self.getPrevisaoFinanceiraPagar());
  Self.m_map.Add('PREVISAOFINANCEIRAPAGAREXCLUIR', Self.getPrevisaoFinanceiraPagar());
  Self.m_map.Add('PREVISAOFINANCEIRARECEBERNOVO', Self.getPrevisaoFinanceiraReceber());
  Self.m_map.Add('PREVISAOFINANCEIRARECEBERALTERAR', Self.getPrevisaoFinanceiraReceber());
  Self.m_map.Add('PREVISAOFINANCEIRARECEBEREXCLUIR', Self.getPrevisaoFinanceiraReceber());
  Self.m_map.Add('RENEGOCIACAOTITULOSNOVO', Self.getRenegociacaoTitulos());
  Self.m_map.Add('RENEGOCIACAOTITULOSALTERAR', Self.getRenegociacaoTitulos());
  Self.m_map.Add('RENEGOCIACAOTITULOSEXCLUIR', Self.getRenegociacaoTitulos());
  Self.m_map.Add('TIPOCONTANOVO', Self.getTipoConta());
  Self.m_map.Add('TIPOCONTAALTERAR', Self.getTipoConta());
  Self.m_map.Add('TIPOCONTAEXCLUIR', Self.getTipoConta());
  Self.m_map.Add('TITULOPAGARNOVO', Self.getTituloPagar());
  Self.m_map.Add('TITULOPAGARALTERAR', Self.getTituloPagar());
  Self.m_map.Add('TITULOPAGAREXCLUIR', Self.getTituloPagar());
  Self.m_map.Add('TITULORECEBERNOVO', Self.getTituloReceber());
  Self.m_map.Add('TITULORECEBERALTERAR', Self.getTituloReceber());
  Self.m_map.Add('TITULORECEBEREXCLUIR', Self.getTituloReceber());
  Self.m_map.Add('ATIVOHISTORICOOFERTANOVO', Self.getAtivoHistoricoOferta());
  Self.m_map.Add('ATIVOHISTORICOOFERTAALTERAR', Self.getAtivoHistoricoOferta());
  Self.m_map.Add('ATIVOHISTORICOOFERTAEXCLUIR', Self.getAtivoHistoricoOferta());
  Self.m_map.Add('ATIVOHISTORICOOFERTACOMPONENTENOVO', Self.getAtivoHistoricoOfertaComponente());
  Self.m_map.Add('ATIVOHISTORICOOFERTACOMPONENTEALTERAR', Self.getAtivoHistoricoOfertaComponente());
  Self.m_map.Add('ATIVOHISTORICOOFERTACOMPONENTEEXCLUIR', Self.getAtivoHistoricoOfertaComponente());
  Self.m_map.Add('CATALOGODEOFERTANOVO', Self.getCatalogoDeOferta());
  Self.m_map.Add('CATALOGODEOFERTAALTERAR', Self.getCatalogoDeOferta());
  Self.m_map.Add('CATALOGODEOFERTAEXCLUIR', Self.getCatalogoDeOferta());
  Self.m_map.Add('CATEGORIADESERVICOSNOVO', Self.getCategoriaDeServicos());
  Self.m_map.Add('CATEGORIADESERVICOSALTERAR', Self.getCategoriaDeServicos());
  Self.m_map.Add('CATEGORIADESERVICOSEXCLUIR', Self.getCategoriaDeServicos());
  Self.m_map.Add('CFOPSERVICONOVO', Self.getCFOPServico());
  Self.m_map.Add('CFOPSERVICOALTERAR', Self.getCFOPServico());
  Self.m_map.Add('CFOPSERVICOEXCLUIR', Self.getCFOPServico());
  Self.m_map.Add('CONFIGURACAORPSNOVO', Self.getConfiguracaoRPS());
  Self.m_map.Add('CONFIGURACAORPSALTERAR', Self.getConfiguracaoRPS());
  Self.m_map.Add('CONFIGURACAORPSEXCLUIR', Self.getConfiguracaoRPS());
  Self.m_map.Add('CONTRATOLOCACAOIMOVELPAGARNOVO', Self.getContratoLocacaoImovelPagar());
  Self.m_map.Add('CONTRATOLOCACAOIMOVELPAGAREXCLUIR', Self.getContratoLocacaoImovelPagar());
  Self.m_map.Add('CONTRATOLOCACAOIMOVELRECEBERNOVO', Self.getContratoLocacaoImovelReceber());
  Self.m_map.Add('CONTRATOLOCACAOIMOVELRECEBEREXCLUIR', Self.getContratoLocacaoImovelReceber());
  Self.m_map.Add('CONTRATOSERVICOPADRAOPAGARNOVO', Self.getContratoServicoPadraoPagar());
  Self.m_map.Add('CONTRATOSERVICOPADRAOPAGARNOVO_IMPORTACAO', Self.getContratoServicoPadraoPagar());
  Self.m_map.Add('CONTRATOSERVICOPADRAOPAGAREXCLUIR', Self.getContratoServicoPadraoPagar());
  Self.m_map.Add('CONTRATOSERVICOPADRAORECEBERNOVO', Self.getContratoServicoPadraoReceber());
  Self.m_map.Add('CONTRATOSERVICOPADRAORECEBERNOVO_IMPORTACAO', Self.getContratoServicoPadraoReceber());
  Self.m_map.Add('CONTRATOSERVICOPADRAORECEBEREXCLUIR', Self.getContratoServicoPadraoReceber());
  Self.m_map.Add('PROJETOFUNCAONOVO', Self.getProjetoFuncao());
  Self.m_map.Add('PROJETOFUNCAOALTERAR', Self.getProjetoFuncao());
  Self.m_map.Add('PROJETOFUNCAOEXCLUIR', Self.getProjetoFuncao());
  Self.m_map.Add('PROJETOFUNCAODETALHENOVOAGRUPADOR', Self.getProjetoFuncaoDetalhe());
  Self.m_map.Add('PROJETOFUNCAODETALHENOVOEPI', Self.getProjetoFuncaoDetalhe());
  Self.m_map.Add('PROJETOFUNCAODETALHENOVOFORMACAOSALARIAL', Self.getProjetoFuncaoDetalhe());
  Self.m_map.Add('PROJETOFUNCAODETALHENOVOBENEFICIO', Self.getProjetoFuncaoDetalhe());
  Self.m_map.Add('PROJETOFUNCAODETALHEDELETEBYFUNCAO', Self.getProjetoFuncaoDetalhe());
  Self.m_map.Add('ITEMCONTRATOPAGARNOVO', Self.getItemContratoPagar());
  Self.m_map.Add('ITEMCONTRATOPAGARNOVO_IMPORTACAO', Self.getItemContratoPagar());
  Self.m_map.Add('ITEMCONTRATOPAGAREXCLUIR', Self.getItemContratoPagar());
  Self.m_map.Add('ITEMCONTRATORECEBERNOVO', Self.getItemContratoReceber());
  Self.m_map.Add('ITEMCONTRATORECEBERNOVO_IMPORTACAO', Self.getItemContratoReceber());
  Self.m_map.Add('ITEMCONTRATORECEBEREXCLUIR', Self.getItemContratoReceber());
  Self.m_map.Add('ITEMRPSNOVO', Self.getItemRPS());
  Self.m_map.Add('OBJETOSERVICONOVO', Self.getObjetoServico());
  Self.m_map.Add('OBJETOSERVICOALTERAR', Self.getObjetoServico());
  Self.m_map.Add('OBJETOSERVICOEXCLUIR', Self.getObjetoServico());
  Self.m_map.Add('OFERTANOVO', Self.getOferta());
  Self.m_map.Add('OFERTAALTERAR', Self.getOferta());
  Self.m_map.Add('OFERTAEXCLUIR', Self.getOferta());
  Self.m_map.Add('OFERTAITEMFATURAMENTONOVO', Self.getOfertaItemFaturamento());
  Self.m_map.Add('OFERTAITEMFATURAMENTOALTERAR', Self.getOfertaItemFaturamento());
  Self.m_map.Add('OFERTAITEMFATURAMENTOEXCLUIR', Self.getOfertaItemFaturamento());
  Self.m_map.Add('PROJETONOVO', Self.getProjeto());
  Self.m_map.Add('PROJETOALTERAR', Self.getProjeto());
  Self.m_map.Add('PROJETOEXCLUIR', Self.getProjeto());
  Self.m_map.Add('PROJETOHISTORICONOVO', Self.getProjetoHistorico());
  Self.m_map.Add('RPSNOVO', Self.getRPS());
  Self.m_map.Add('RPSEXCLUIR', Self.getRPS());
  Self.m_map.Add('RPSVISUALIZAR', Self.getRPS());
  Self.m_map.Add('RPS_V2NOVO', Self.getRPS_v2());
  Self.m_map.Add('RPS_V2ALTERAR', Self.getRPS_v2());
  Self.m_map.Add('RPS_V2EXCLUIR', Self.getRPS_v2());
  Self.m_map.Add('SERIERPSNOVO', Self.getSerieRPS());
  Self.m_map.Add('SERIERPSALTERAR', Self.getSerieRPS());
  Self.m_map.Add('SERIERPSEXCLUIR', Self.getSerieRPS());
  Self.m_map.Add('SERVICONOVO', Self.getServico());
  Self.m_map.Add('SERVICOALTERAR', Self.getServico());
  Self.m_map.Add('SERVICOEXCLUIR', Self.getServico());
  Self.m_map.Add('TIPOPROJETONOVO', Self.getTipoProjeto());
  Self.m_map.Add('TIPOPROJETOALTERAR', Self.getTipoProjeto());
  Self.m_map.Add('TIPOPROJETOEXCLUIR', Self.getTipoProjeto());
  Self.m_map.Add('TIPOSERVICONOVO', Self.getTipoServico());
  Self.m_map.Add('TIPOSERVICOALTERAR', Self.getTipoServico());
  Self.m_map.Add('TIPOSERVICOEXCLUIR', Self.getTipoServico());
  Self.m_map.Add('UNIDADESDECUSTOSNOVO', Self.getunidadesdecustos());
  Self.m_map.Add('UNIDADESDECUSTOSALTERAR', Self.getunidadesdecustos());
  Self.m_map.Add('UNIDADESDECUSTOSEXCLUIR', Self.getunidadesdecustos());
  Self.m_map.Add('CONTRATOTECNICONOVO', Self.getContratoTecnico());
  Self.m_map.Add('CONTRATOTECNICOITEMNOVO', Self.getContratoTecnicoItem());
  Self.m_map.Add('ITEMCOMPRANOVO', Self.getItemCompra());
  Self.m_map.Add('ITEMCOMPRAALTERAR', Self.getItemCompra());
  Self.m_map.Add('ITEMCOMPRAEXCLUIR', Self.getItemCompra());
  Self.m_map.Add('VINCULOITEMCOMPRANOVO', Self.getVinculoItemCompra());
  Self.m_map.Add('VINCULOITEMCOMPRAALTERAR', Self.getVinculoItemCompra());
  Self.m_map.Add('VINCULOITEMCOMPRAEXCLUIR', Self.getVinculoItemCompra());
// map
end;

destructor TCommandClientAPI.Destroy();
begin
  Self.m_map.Free();
  inherited;
end;

function TCommandClientAPI.execute(const a_api: String; const a_param: String): TRecibo; 

  var t_text: String;

begin
  t_text := UpperCase(a_api);
  Result := Self.m_map.Items[t_text].execute(a_api, a_param);
end;

function TCommandClientAPI.execute(const a_param: TObject): TRecibo; 

  var t_text: String;

begin
  t_text := UpperCase(Copy(a_param.ClassName, 2, Length(a_param.ClassName)));
  Result := Self.m_map.Items[t_text].execute(a_param);
end;


function TCommandClientAPI.getacessoestabelecimento(): TAPIacessoestabelecimento;
begin
  if not Assigned(Self.m_controller_acessoestabelecimento)
    then begin
      Self.m_controller_acessoestabelecimento := TAPIacessoestabelecimento.Create();
    end;
  Result := Self.m_controller_acessoestabelecimento;
end;

function TCommandClientAPI.getCliente(): TAPICliente;
begin
  if not Assigned(Self.m_controller_Cliente)
    then begin
      Self.m_controller_Cliente := TAPICliente.Create();
    end;
  Result := Self.m_controller_Cliente;
end;

function TCommandClientAPI.getCNAE(): TAPICNAE;
begin
  if not Assigned(Self.m_controller_CNAE)
    then begin
      Self.m_controller_CNAE := TAPICNAE.Create();
    end;
  Result := Self.m_controller_CNAE;
end;

function TCommandClientAPI.getconfiguracaocategoriaporclassfinan(): TAPIconfiguracaocategoriaporclassfinan;
begin
  if not Assigned(Self.m_controller_configuracaocategoriaporclassfinan)
    then begin
      Self.m_controller_configuracaocategoriaporclassfinan := TAPIconfiguracaocategoriaporclassfinan.Create();
    end;
  Result := Self.m_controller_configuracaocategoriaporclassfinan;
end;

function TCommandClientAPI.getconfiguracaoordempagamento(): TAPIconfiguracaoordempagamento;
begin
  if not Assigned(Self.m_controller_configuracaoordempagamento)
    then begin
      Self.m_controller_configuracaoordempagamento := TAPIconfiguracaoordempagamento.Create();
    end;
  Result := Self.m_controller_configuracaoordempagamento;
end;

function TCommandClientAPI.getConfiguracaoProxy(): TAPIConfiguracaoProxy;
begin
  if not Assigned(Self.m_controller_ConfiguracaoProxy)
    then begin
      Self.m_controller_ConfiguracaoProxy := TAPIConfiguracaoProxy.Create();
    end;
  Result := Self.m_controller_ConfiguracaoProxy;
end;

function TCommandClientAPI.getconfiguracaotrabalhadorporprojeto(): TAPIconfiguracaotrabalhadorporprojeto;
begin
  if not Assigned(Self.m_controller_configuracaotrabalhadorporprojeto)
    then begin
      Self.m_controller_configuracaotrabalhadorporprojeto := TAPIconfiguracaotrabalhadorporprojeto.Create();
    end;
  Result := Self.m_controller_configuracaotrabalhadorporprojeto;
end;

function TCommandClientAPI.getconfiguracaotrabalhadorporcentrocusto(): TAPIconfiguracaotrabalhadorporcentrocusto;
begin
  if not Assigned(Self.m_controller_configuracaotrabalhadorporcentrocusto)
    then begin
      Self.m_controller_configuracaotrabalhadorporcentrocusto := TAPIconfiguracaotrabalhadorporcentrocusto.Create();
    end;
  Result := Self.m_controller_configuracaotrabalhadorporcentrocusto;
end;

function TCommandClientAPI.getConjunto(): TAPIConjunto;
begin
  if not Assigned(Self.m_controller_Conjunto)
    then begin
      Self.m_controller_Conjunto := TAPIConjunto.Create();
    end;
  Result := Self.m_controller_Conjunto;
end;

function TCommandClientAPI.getContato(): TAPIContato;
begin
  if not Assigned(Self.m_controller_Contato)
    then begin
      Self.m_controller_Contato := TAPIContato.Create();
    end;
  Result := Self.m_controller_Contato;
end;

function TCommandClientAPI.getDocFis(): TAPIDocFis;
begin
  if not Assigned(Self.m_controller_DocFis)
    then begin
      Self.m_controller_DocFis := TAPIDocFis.Create();
    end;
  Result := Self.m_controller_DocFis;
end;

function TCommandClientAPI.getDocumentoFiscalNs(): TAPIDocumentoFiscalNs;
begin
  if not Assigned(Self.m_controller_DocumentoFiscalNs)
    then begin
      Self.m_controller_DocumentoFiscalNs := TAPIDocumentoFiscalNs.Create();
    end;
  Result := Self.m_controller_DocumentoFiscalNs;
end;

function TCommandClientAPI.getElementoDeControle(): TAPIElementoDeControle;
begin
  if not Assigned(Self.m_controller_ElementoDeControle)
    then begin
      Self.m_controller_ElementoDeControle := TAPIElementoDeControle.Create();
    end;
  Result := Self.m_controller_ElementoDeControle;
end;

function TCommandClientAPI.getEmpresa(): TAPIEmpresa;
begin
  if not Assigned(Self.m_controller_Empresa)
    then begin
      Self.m_controller_Empresa := TAPIEmpresa.Create();
    end;
  Result := Self.m_controller_Empresa;
end;

function TCommandClientAPI.getEndereco(): TAPIEndereco;
begin
  if not Assigned(Self.m_controller_Endereco)
    then begin
      Self.m_controller_Endereco := TAPIEndereco.Create();
    end;
  Result := Self.m_controller_Endereco;
end;

function TCommandClientAPI.getEstabelecimento(): TAPIEstabelecimento;
begin
  if not Assigned(Self.m_controller_Estabelecimento)
    then begin
      Self.m_controller_Estabelecimento := TAPIEstabelecimento.Create();
    end;
  Result := Self.m_controller_Estabelecimento;
end;

function TCommandClientAPI.getFornecedor(): TAPIFornecedor;
begin
  if not Assigned(Self.m_controller_Fornecedor)
    then begin
      Self.m_controller_Fornecedor := TAPIFornecedor.Create();
    end;
  Result := Self.m_controller_Fornecedor;
end;

function TCommandClientAPI.getGrupoDeUsuario(): TAPIGrupoDeUsuario;
begin
  if not Assigned(Self.m_controller_GrupoDeUsuario)
    then begin
      Self.m_controller_GrupoDeUsuario := TAPIGrupoDeUsuario.Create();
    end;
  Result := Self.m_controller_GrupoDeUsuario;
end;

function TCommandClientAPI.getGrupoEmpresarial(): TAPIGrupoEmpresarial;
begin
  if not Assigned(Self.m_controller_GrupoEmpresarial)
    then begin
      Self.m_controller_GrupoEmpresarial := TAPIGrupoEmpresarial.Create();
    end;
  Result := Self.m_controller_GrupoEmpresarial;
end;

function TCommandClientAPI.getLocalDeUso(): TAPILocalDeUso;
begin
  if not Assigned(Self.m_controller_LocalDeUso)
    then begin
      Self.m_controller_LocalDeUso := TAPILocalDeUso.Create();
    end;
  Result := Self.m_controller_LocalDeUso;
end;

function TCommandClientAPI.getMunicipio(): TAPIMunicipio;
begin
  if not Assigned(Self.m_controller_Municipio)
    then begin
      Self.m_controller_Municipio := TAPIMunicipio.Create();
    end;
  Result := Self.m_controller_Municipio;
end;

function TCommandClientAPI.getPais(): TAPIPais;
begin
  if not Assigned(Self.m_controller_Pais)
    then begin
      Self.m_controller_Pais := TAPIPais.Create();
    end;
  Result := Self.m_controller_Pais;
end;

function TCommandClientAPI.getParticipante(): TAPIParticipante;
begin
  if not Assigned(Self.m_controller_Participante)
    then begin
      Self.m_controller_Participante := TAPIParticipante.Create();
    end;
  Result := Self.m_controller_Participante;
end;

function TCommandClientAPI.getPendenciaAdministrativa(): TAPIPendenciaAdministrativa;
begin
  if not Assigned(Self.m_controller_PendenciaAdministrativa)
    then begin
      Self.m_controller_PendenciaAdministrativa := TAPIPendenciaAdministrativa.Create();
    end;
  Result := Self.m_controller_PendenciaAdministrativa;
end;

function TCommandClientAPI.getPerfilUsuario(): TAPIPerfilUsuario;
begin
  if not Assigned(Self.m_controller_PerfilUsuario)
    then begin
      Self.m_controller_PerfilUsuario := TAPIPerfilUsuario.Create();
    end;
  Result := Self.m_controller_PerfilUsuario;
end;

function TCommandClientAPI.getpessoa(): TAPIpessoa;
begin
  if not Assigned(Self.m_controller_pessoa)
    then begin
      Self.m_controller_pessoa := TAPIpessoa.Create();
    end;
  Result := Self.m_controller_pessoa;
end;

function TCommandClientAPI.getSocios(): TAPISocios;
begin
  if not Assigned(Self.m_controller_Socios)
    then begin
      Self.m_controller_Socios := TAPISocios.Create();
    end;
  Result := Self.m_controller_Socios;
end;

function TCommandClientAPI.getSociosParticipacoes(): TAPISociosParticipacoes;
begin
  if not Assigned(Self.m_controller_SociosParticipacoes)
    then begin
      Self.m_controller_SociosParticipacoes := TAPISociosParticipacoes.Create();
    end;
  Result := Self.m_controller_SociosParticipacoes;
end;

function TCommandClientAPI.getSolicitacaoAlteracaoEndereco(): TAPISolicitacaoAlteracaoEndereco;
begin
  if not Assigned(Self.m_controller_SolicitacaoAlteracaoEndereco)
    then begin
      Self.m_controller_SolicitacaoAlteracaoEndereco := TAPISolicitacaoAlteracaoEndereco.Create();
    end;
  Result := Self.m_controller_SolicitacaoAlteracaoEndereco;
end;

function TCommandClientAPI.getTelefone(): TAPITelefone;
begin
  if not Assigned(Self.m_controller_Telefone)
    then begin
      Self.m_controller_Telefone := TAPITelefone.Create();
    end;
  Result := Self.m_controller_Telefone;
end;

function TCommandClientAPI.getUsuario(): TAPIUsuario;
begin
  if not Assigned(Self.m_controller_Usuario)
    then begin
      Self.m_controller_Usuario := TAPIUsuario.Create();
    end;
  Result := Self.m_controller_Usuario;
end;

function TCommandClientAPI.getVendedor(): TAPIVendedor;
begin
  if not Assigned(Self.m_controller_Vendedor)
    then begin
      Self.m_controller_Vendedor := TAPIVendedor.Create();
    end;
  Result := Self.m_controller_Vendedor;
end;

function TCommandClientAPI.getAcordoProrrogacaoHora(): TAPIAcordoProrrogacaoHora;
begin
  if not Assigned(Self.m_controller_AcordoProrrogacaoHora)
    then begin
      Self.m_controller_AcordoProrrogacaoHora := TAPIAcordoProrrogacaoHora.Create();
    end;
  Result := Self.m_controller_AcordoProrrogacaoHora;
end;

function TCommandClientAPI.getAfastamentoFuncionario(): TAPIAfastamentoFuncionario;
begin
  if not Assigned(Self.m_controller_AfastamentoFuncionario)
    then begin
      Self.m_controller_AfastamentoFuncionario := TAPIAfastamentoFuncionario.Create();
    end;
  Result := Self.m_controller_AfastamentoFuncionario;
end;

function TCommandClientAPI.getAvisoFeriasFuncionario(): TAPIAvisoFeriasFuncionario;
begin
  if not Assigned(Self.m_controller_AvisoFeriasFuncionario)
    then begin
      Self.m_controller_AvisoFeriasFuncionario := TAPIAvisoFeriasFuncionario.Create();
    end;
  Result := Self.m_controller_AvisoFeriasFuncionario;
end;

function TCommandClientAPI.getCargo(): TAPICargo;
begin
  if not Assigned(Self.m_controller_Cargo)
    then begin
      Self.m_controller_Cargo := TAPICargo.Create();
    end;
  Result := Self.m_controller_Cargo;
end;

function TCommandClientAPI.getConcessionariaValeTransporte(): TAPIConcessionariaValeTransporte;
begin
  if not Assigned(Self.m_controller_ConcessionariaValeTransporte)
    then begin
      Self.m_controller_ConcessionariaValeTransporte := TAPIConcessionariaValeTransporte.Create();
    end;
  Result := Self.m_controller_ConcessionariaValeTransporte;
end;

function TCommandClientAPI.getContribuinteindividual(): TAPIContribuinteindividual;
begin
  if not Assigned(Self.m_controller_Contribuinteindividual)
    then begin
      Self.m_controller_Contribuinteindividual := TAPIContribuinteindividual.Create();
    end;
  Result := Self.m_controller_Contribuinteindividual;
end;

function TCommandClientAPI.getDepartamento(): TAPIDepartamento;
begin
  if not Assigned(Self.m_controller_Departamento)
    then begin
      Self.m_controller_Departamento := TAPIDepartamento.Create();
    end;
  Result := Self.m_controller_Departamento;
end;

function TCommandClientAPI.getDependenteFuncionario(): TAPIDependenteFuncionario;
begin
  if not Assigned(Self.m_controller_DependenteFuncionario)
    then begin
      Self.m_controller_DependenteFuncionario := TAPIDependenteFuncionario.Create();
    end;
  Result := Self.m_controller_DependenteFuncionario;
end;

function TCommandClientAPI.getDocumentoDependenteFuncionario(): TAPIDocumentoDependenteFuncionario;
begin
  if not Assigned(Self.m_controller_DocumentoDependenteFuncionario)
    then begin
      Self.m_controller_DocumentoDependenteFuncionario := TAPIDocumentoDependenteFuncionario.Create();
    end;
  Result := Self.m_controller_DocumentoDependenteFuncionario;
end;

function TCommandClientAPI.getDocumentoFuncionario(): TAPIDocumentoFuncionario;
begin
  if not Assigned(Self.m_controller_DocumentoFuncionario)
    then begin
      Self.m_controller_DocumentoFuncionario := TAPIDocumentoFuncionario.Create();
    end;
  Result := Self.m_controller_DocumentoFuncionario;
end;

function TCommandClientAPI.getSolicitacoes(): TAPISolicitacoes;
begin
  if not Assigned(Self.m_controller_Solicitacoes)
    then begin
      Self.m_controller_Solicitacoes := TAPISolicitacoes.Create();
    end;
  Result := Self.m_controller_Solicitacoes;
end;

function TCommandClientAPI.getEscalaFolgaFuncionario(): TAPIEscalaFolgaFuncionario;
begin
  if not Assigned(Self.m_controller_EscalaFolgaFuncionario)
    then begin
      Self.m_controller_EscalaFolgaFuncionario := TAPIEscalaFolgaFuncionario.Create();
    end;
  Result := Self.m_controller_EscalaFolgaFuncionario;
end;

function TCommandClientAPI.getEstagiario(): TAPIEstagiario;
begin
  if not Assigned(Self.m_controller_Estagiario)
    then begin
      Self.m_controller_Estagiario := TAPIEstagiario.Create();
    end;
  Result := Self.m_controller_Estagiario;
end;

function TCommandClientAPI.getFaixa(): TAPIFaixa;
begin
  if not Assigned(Self.m_controller_Faixa)
    then begin
      Self.m_controller_Faixa := TAPIFaixa.Create();
    end;
  Result := Self.m_controller_Faixa;
end;

function TCommandClientAPI.getFaltaFuncionario(): TAPIFaltaFuncionario;
begin
  if not Assigned(Self.m_controller_FaltaFuncionario)
    then begin
      Self.m_controller_FaltaFuncionario := TAPIFaltaFuncionario.Create();
    end;
  Result := Self.m_controller_FaltaFuncionario;
end;

function TCommandClientAPI.getFPAS(): TAPIFPAS;
begin
  if not Assigned(Self.m_controller_FPAS)
    then begin
      Self.m_controller_FPAS := TAPIFPAS.Create();
    end;
  Result := Self.m_controller_FPAS;
end;

function TCommandClientAPI.getFuncao(): TAPIFuncao;
begin
  if not Assigned(Self.m_controller_Funcao)
    then begin
      Self.m_controller_Funcao := TAPIFuncao.Create();
    end;
  Result := Self.m_controller_Funcao;
end;

function TCommandClientAPI.getFuncionario(): TAPIFuncionario;
begin
  if not Assigned(Self.m_controller_Funcionario)
    then begin
      Self.m_controller_Funcionario := TAPIFuncionario.Create();
    end;
  Result := Self.m_controller_Funcionario;
end;

function TCommandClientAPI.getHistoricoFuncionario(): TAPIHistoricoFuncionario;
begin
  if not Assigned(Self.m_controller_HistoricoFuncionario)
    then begin
      Self.m_controller_HistoricoFuncionario := TAPIHistoricoFuncionario.Create();
    end;
  Result := Self.m_controller_HistoricoFuncionario;
end;

function TCommandClientAPI.getHorario(): TAPIHorario;
begin
  if not Assigned(Self.m_controller_Horario)
    then begin
      Self.m_controller_Horario := TAPIHorario.Create();
    end;
  Result := Self.m_controller_Horario;
end;

function TCommandClientAPI.getInstituicao(): TAPIInstituicao;
begin
  if not Assigned(Self.m_controller_Instituicao)
    then begin
      Self.m_controller_Instituicao := TAPIInstituicao.Create();
    end;
  Result := Self.m_controller_Instituicao;
end;

function TCommandClientAPI.getIntervaloJornada(): TAPIIntervaloJornada;
begin
  if not Assigned(Self.m_controller_IntervaloJornada)
    then begin
      Self.m_controller_IntervaloJornada := TAPIIntervaloJornada.Create();
    end;
  Result := Self.m_controller_IntervaloJornada;
end;

function TCommandClientAPI.getItemFaixa(): TAPIItemFaixa;
begin
  if not Assigned(Self.m_controller_ItemFaixa)
    then begin
      Self.m_controller_ItemFaixa := TAPIItemFaixa.Create();
    end;
  Result := Self.m_controller_ItemFaixa;
end;

function TCommandClientAPI.getJornada(): TAPIJornada;
begin
  if not Assigned(Self.m_controller_Jornada)
    then begin
      Self.m_controller_Jornada := TAPIJornada.Create();
    end;
  Result := Self.m_controller_Jornada;
end;

function TCommandClientAPI.getLotacao(): TAPILotacao;
begin
  if not Assigned(Self.m_controller_Lotacao)
    then begin
      Self.m_controller_Lotacao := TAPILotacao.Create();
    end;
  Result := Self.m_controller_Lotacao;
end;

function TCommandClientAPI.getMovimentoDepartamento(): TAPIMovimentoDepartamento;
begin
  if not Assigned(Self.m_controller_MovimentoDepartamento)
    then begin
      Self.m_controller_MovimentoDepartamento := TAPIMovimentoDepartamento.Create();
    end;
  Result := Self.m_controller_MovimentoDepartamento;
end;

function TCommandClientAPI.getMovimentoEmpresa(): TAPIMovimentoEmpresa;
begin
  if not Assigned(Self.m_controller_MovimentoEmpresa)
    then begin
      Self.m_controller_MovimentoEmpresa := TAPIMovimentoEmpresa.Create();
    end;
  Result := Self.m_controller_MovimentoEmpresa;
end;

function TCommandClientAPI.getMovimentoEstabelecimento(): TAPIMovimentoEstabelecimento;
begin
  if not Assigned(Self.m_controller_MovimentoEstabelecimento)
    then begin
      Self.m_controller_MovimentoEstabelecimento := TAPIMovimentoEstabelecimento.Create();
    end;
  Result := Self.m_controller_MovimentoEstabelecimento;
end;

function TCommandClientAPI.getMovimentoFuncionario(): TAPIMovimentoFuncionario;
begin
  if not Assigned(Self.m_controller_MovimentoFuncionario)
    then begin
      Self.m_controller_MovimentoFuncionario := TAPIMovimentoFuncionario.Create();
    end;
  Result := Self.m_controller_MovimentoFuncionario;
end;

function TCommandClientAPI.getMovimentoLotacao(): TAPIMovimentoLotacao;
begin
  if not Assigned(Self.m_controller_MovimentoLotacao)
    then begin
      Self.m_controller_MovimentoLotacao := TAPIMovimentoLotacao.Create();
    end;
  Result := Self.m_controller_MovimentoLotacao;
end;

function TCommandClientAPI.getMovimentoSindicato(): TAPIMovimentoSindicato;
begin
  if not Assigned(Self.m_controller_MovimentoSindicato)
    then begin
      Self.m_controller_MovimentoSindicato := TAPIMovimentoSindicato.Create();
    end;
  Result := Self.m_controller_MovimentoSindicato;
end;

function TCommandClientAPI.getNaturezaJuridica(): TAPINaturezaJuridica;
begin
  if not Assigned(Self.m_controller_NaturezaJuridica)
    then begin
      Self.m_controller_NaturezaJuridica := TAPINaturezaJuridica.Create();
    end;
  Result := Self.m_controller_NaturezaJuridica;
end;

function TCommandClientAPI.getNivelCargo(): TAPINivelCargo;
begin
  if not Assigned(Self.m_controller_NivelCargo)
    then begin
      Self.m_controller_NivelCargo := TAPINivelCargo.Create();
    end;
  Result := Self.m_controller_NivelCargo;
end;

function TCommandClientAPI.getProcesso(): TAPIProcesso;
begin
  if not Assigned(Self.m_controller_Processo)
    then begin
      Self.m_controller_Processo := TAPIProcesso.Create();
    end;
  Result := Self.m_controller_Processo;
end;

function TCommandClientAPI.getProfissionalSaude(): TAPIProfissionalSaude;
begin
  if not Assigned(Self.m_controller_ProfissionalSaude)
    then begin
      Self.m_controller_ProfissionalSaude := TAPIProfissionalSaude.Create();
    end;
  Result := Self.m_controller_ProfissionalSaude;
end;

function TCommandClientAPI.getPromocaoFuncionario(): TAPIPromocaoFuncionario;
begin
  if not Assigned(Self.m_controller_PromocaoFuncionario)
    then begin
      Self.m_controller_PromocaoFuncionario := TAPIPromocaoFuncionario.Create();
    end;
  Result := Self.m_controller_PromocaoFuncionario;
end;

function TCommandClientAPI.getReajusteSalarialFuncionario(): TAPIReajusteSalarialFuncionario;
begin
  if not Assigned(Self.m_controller_ReajusteSalarialFuncionario)
    then begin
      Self.m_controller_ReajusteSalarialFuncionario := TAPIReajusteSalarialFuncionario.Create();
    end;
  Result := Self.m_controller_ReajusteSalarialFuncionario;
end;

function TCommandClientAPI.getReajusteSindicato(): TAPIReajusteSindicato;
begin
  if not Assigned(Self.m_controller_ReajusteSindicato)
    then begin
      Self.m_controller_ReajusteSindicato := TAPIReajusteSindicato.Create();
    end;
  Result := Self.m_controller_ReajusteSindicato;
end;

function TCommandClientAPI.getRubrica(): TAPIRubrica;
begin
  if not Assigned(Self.m_controller_Rubrica)
    then begin
      Self.m_controller_Rubrica := TAPIRubrica.Create();
    end;
  Result := Self.m_controller_Rubrica;
end;

function TCommandClientAPI.getSindicato(): TAPISindicato;
begin
  if not Assigned(Self.m_controller_Sindicato)
    then begin
      Self.m_controller_Sindicato := TAPISindicato.Create();
    end;
  Result := Self.m_controller_Sindicato;
end;

function TCommandClientAPI.getTarifaConcessionariaValeTransporte(): TAPITarifaConcessionariaValeTransporte;
begin
  if not Assigned(Self.m_controller_TarifaConcessionariaValeTransporte)
    then begin
      Self.m_controller_TarifaConcessionariaValeTransporte := TAPITarifaConcessionariaValeTransporte.Create();
    end;
  Result := Self.m_controller_TarifaConcessionariaValeTransporte;
end;

function TCommandClientAPI.getTarifaValeTransporteFuncionario(): TAPITarifaValeTransporteFuncionario;
begin
  if not Assigned(Self.m_controller_TarifaValeTransporteFuncionario)
    then begin
      Self.m_controller_TarifaValeTransporteFuncionario := TAPITarifaValeTransporteFuncionario.Create();
    end;
  Result := Self.m_controller_TarifaValeTransporteFuncionario;
end;

function TCommandClientAPI.getTipoDocumentoColaborador(): TAPITipoDocumentoColaborador;
begin
  if not Assigned(Self.m_controller_TipoDocumentoColaborador)
    then begin
      Self.m_controller_TipoDocumentoColaborador := TAPITipoDocumentoColaborador.Create();
    end;
  Result := Self.m_controller_TipoDocumentoColaborador;
end;

function TCommandClientAPI.getTipoFuncionario(): TAPITipoFuncionario;
begin
  if not Assigned(Self.m_controller_TipoFuncionario)
    then begin
      Self.m_controller_TipoFuncionario := TAPITipoFuncionario.Create();
    end;
  Result := Self.m_controller_TipoFuncionario;
end;

function TCommandClientAPI.getcontaanual(): TAPIcontaanual;
begin
  if not Assigned(Self.m_controller_contaanual)
    then begin
      Self.m_controller_contaanual := TAPIcontaanual.Create();
    end;
  Result := Self.m_controller_contaanual;
end;

function TCommandClientAPI.getlancamento(): TAPIlancamento;
begin
  if not Assigned(Self.m_controller_lancamento)
    then begin
      Self.m_controller_lancamento := TAPIlancamento.Create();
    end;
  Result := Self.m_controller_lancamento;
end;

function TCommandClientAPI.getlote(): TAPIlote;
begin
  if not Assigned(Self.m_controller_lote)
    then begin
      Self.m_controller_lote := TAPIlote.Create();
    end;
  Result := Self.m_controller_lote;
end;

function TCommandClientAPI.getlotecontaanual(): TAPIlotecontaanual;
begin
  if not Assigned(Self.m_controller_lotecontaanual)
    then begin
      Self.m_controller_lotecontaanual := TAPIlotecontaanual.Create();
    end;
  Result := Self.m_controller_lotecontaanual;
end;

function TCommandClientAPI.getlotelancamento(): TAPIlotelancamento;
begin
  if not Assigned(Self.m_controller_lotelancamento)
    then begin
      Self.m_controller_lotelancamento := TAPIlotelancamento.Create();
    end;
  Result := Self.m_controller_lotelancamento;
end;

function TCommandClientAPI.getlotelancamento_v2(): TAPIlotelancamento_v2;
begin
  if not Assigned(Self.m_controller_lotelancamento_v2)
    then begin
      Self.m_controller_lotelancamento_v2 := TAPIlotelancamento_v2.Create();
    end;
  Result := Self.m_controller_lotelancamento_v2;
end;

function TCommandClientAPI.getDocumentoFiscal(): TAPIDocumentoFiscal;
begin
  if not Assigned(Self.m_controller_DocumentoFiscal)
    then begin
      Self.m_controller_DocumentoFiscal := TAPIDocumentoFiscal.Create();
    end;
  Result := Self.m_controller_DocumentoFiscal;
end;

function TCommandClientAPI.getItemLancamentoFiscal(): TAPIItemLancamentoFiscal;
begin
  if not Assigned(Self.m_controller_ItemLancamentoFiscal)
    then begin
      Self.m_controller_ItemLancamentoFiscal := TAPIItemLancamentoFiscal.Create();
    end;
  Result := Self.m_controller_ItemLancamentoFiscal;
end;

function TCommandClientAPI.getLancamentoFiscal(): TAPILancamentoFiscal;
begin
  if not Assigned(Self.m_controller_LancamentoFiscal)
    then begin
      Self.m_controller_LancamentoFiscal := TAPILancamentoFiscal.Create();
    end;
  Result := Self.m_controller_LancamentoFiscal;
end;

function TCommandClientAPI.getAcordosFornecimentoProdutos(): TAPIAcordosFornecimentoProdutos;
begin
  if not Assigned(Self.m_controller_AcordosFornecimentoProdutos)
    then begin
      Self.m_controller_AcordosFornecimentoProdutos := TAPIAcordosFornecimentoProdutos.Create();
    end;
  Result := Self.m_controller_AcordosFornecimentoProdutos;
end;

function TCommandClientAPI.getAcordosFornecimentoProdutosItens(): TAPIAcordosFornecimentoProdutosItens;
begin
  if not Assigned(Self.m_controller_AcordosFornecimentoProdutosItens)
    then begin
      Self.m_controller_AcordosFornecimentoProdutosItens := TAPIAcordosFornecimentoProdutosItens.Create();
    end;
  Result := Self.m_controller_AcordosFornecimentoProdutosItens;
end;

function TCommandClientAPI.getCategoriaDeProdutos(): TAPICategoriaDeProdutos;
begin
  if not Assigned(Self.m_controller_CategoriaDeProdutos)
    then begin
      Self.m_controller_CategoriaDeProdutos := TAPICategoriaDeProdutos.Create();
    end;
  Result := Self.m_controller_CategoriaDeProdutos;
end;

function TCommandClientAPI.getLocalDeEstoque(): TAPILocalDeEstoque;
begin
  if not Assigned(Self.m_controller_LocalDeEstoque)
    then begin
      Self.m_controller_LocalDeEstoque := TAPILocalDeEstoque.Create();
    end;
  Result := Self.m_controller_LocalDeEstoque;
end;

function TCommandClientAPI.getOperacao(): TAPIOperacao;
begin
  if not Assigned(Self.m_controller_Operacao)
    then begin
      Self.m_controller_Operacao := TAPIOperacao.Create();
    end;
  Result := Self.m_controller_Operacao;
end;

function TCommandClientAPI.getProdutoEndereco(): TAPIProdutoEndereco;
begin
  if not Assigned(Self.m_controller_ProdutoEndereco)
    then begin
      Self.m_controller_ProdutoEndereco := TAPIProdutoEndereco.Create();
    end;
  Result := Self.m_controller_ProdutoEndereco;
end;

function TCommandClientAPI.getUnidade(): TAPIUnidade;
begin
  if not Assigned(Self.m_controller_Unidade)
    then begin
      Self.m_controller_Unidade := TAPIUnidade.Create();
    end;
  Result := Self.m_controller_Unidade;
end;

function TCommandClientAPI.getAgencia(): TAPIAgencia;
begin
  if not Assigned(Self.m_controller_Agencia)
    then begin
      Self.m_controller_Agencia := TAPIAgencia.Create();
    end;
  Result := Self.m_controller_Agencia;
end;

function TCommandClientAPI.getBaixaTituloRenegociado(): TAPIBaixaTituloRenegociado;
begin
  if not Assigned(Self.m_controller_BaixaTituloRenegociado)
    then begin
      Self.m_controller_BaixaTituloRenegociado := TAPIBaixaTituloRenegociado.Create();
    end;
  Result := Self.m_controller_BaixaTituloRenegociado;
end;

function TCommandClientAPI.getBaixaTituloUnitaria(): TAPIBaixaTituloUnitaria;
begin
  if not Assigned(Self.m_controller_BaixaTituloUnitaria)
    then begin
      Self.m_controller_BaixaTituloUnitaria := TAPIBaixaTituloUnitaria.Create();
    end;
  Result := Self.m_controller_BaixaTituloUnitaria;
end;

function TCommandClientAPI.getBanco(): TAPIBanco;
begin
  if not Assigned(Self.m_controller_Banco)
    then begin
      Self.m_controller_Banco := TAPIBanco.Create();
    end;
  Result := Self.m_controller_Banco;
end;

function TCommandClientAPI.getClassificacaoFinanceira(): TAPIClassificacaoFinanceira;
begin
  if not Assigned(Self.m_controller_ClassificacaoFinanceira)
    then begin
      Self.m_controller_ClassificacaoFinanceira := TAPIClassificacaoFinanceira.Create();
    end;
  Result := Self.m_controller_ClassificacaoFinanceira;
end;

function TCommandClientAPI.getConta(): TAPIConta;
begin
  if not Assigned(Self.m_controller_Conta)
    then begin
      Self.m_controller_Conta := TAPIConta.Create();
    end;
  Result := Self.m_controller_Conta;
end;

function TCommandClientAPI.getConta_v2(): TAPIConta_v2;
begin
  if not Assigned(Self.m_controller_Conta_v2)
    then begin
      Self.m_controller_Conta_v2 := TAPIConta_v2.Create();
    end;
  Result := Self.m_controller_Conta_v2;
end;

function TCommandClientAPI.getDocumentoAjusteRateio(): TAPIDocumentoAjusteRateio;
begin
  if not Assigned(Self.m_controller_DocumentoAjusteRateio)
    then begin
      Self.m_controller_DocumentoAjusteRateio := TAPIDocumentoAjusteRateio.Create();
    end;
  Result := Self.m_controller_DocumentoAjusteRateio;
end;

function TCommandClientAPI.getFatura(): TAPIFatura;
begin
  if not Assigned(Self.m_controller_Fatura)
    then begin
      Self.m_controller_Fatura := TAPIFatura.Create();
    end;
  Result := Self.m_controller_Fatura;
end;

function TCommandClientAPI.getFatura_v2(): TAPIFatura_v2;
begin
  if not Assigned(Self.m_controller_Fatura_v2)
    then begin
      Self.m_controller_Fatura_v2 := TAPIFatura_v2.Create();
    end;
  Result := Self.m_controller_Fatura_v2;
end;

function TCommandClientAPI.getFormaPagamentoFatura(): TAPIFormaPagamentoFatura;
begin
  if not Assigned(Self.m_controller_FormaPagamentoFatura)
    then begin
      Self.m_controller_FormaPagamentoFatura := TAPIFormaPagamentoFatura.Create();
    end;
  Result := Self.m_controller_FormaPagamentoFatura;
end;

function TCommandClientAPI.getFormaPagamentoRenegociacaoTitulos(): TAPIFormaPagamentoRenegociacaoTitulos;
begin
  if not Assigned(Self.m_controller_FormaPagamentoRenegociacaoTitulos)
    then begin
      Self.m_controller_FormaPagamentoRenegociacaoTitulos := TAPIFormaPagamentoRenegociacaoTitulos.Create();
    end;
  Result := Self.m_controller_FormaPagamentoRenegociacaoTitulos;
end;

function TCommandClientAPI.getItemEmprestimoPrestacao(): TAPIItemEmprestimoPrestacao;
begin
  if not Assigned(Self.m_controller_ItemEmprestimoPrestacao)
    then begin
      Self.m_controller_ItemEmprestimoPrestacao := TAPIItemEmprestimoPrestacao.Create();
    end;
  Result := Self.m_controller_ItemEmprestimoPrestacao;
end;

function TCommandClientAPI.getItemFatura(): TAPIItemFatura;
begin
  if not Assigned(Self.m_controller_ItemFatura)
    then begin
      Self.m_controller_ItemFatura := TAPIItemFatura.Create();
    end;
  Result := Self.m_controller_ItemFatura;
end;

function TCommandClientAPI.getItemFatura_v2(): TAPIItemFatura_v2;
begin
  if not Assigned(Self.m_controller_ItemFatura_v2)
    then begin
      Self.m_controller_ItemFatura_v2 := TAPIItemFatura_v2.Create();
    end;
  Result := Self.m_controller_ItemFatura_v2;
end;

function TCommandClientAPI.getItemPrestacaoDeConta(): TAPIItemPrestacaoDeConta;
begin
  if not Assigned(Self.m_controller_ItemPrestacaoDeConta)
    then begin
      Self.m_controller_ItemPrestacaoDeConta := TAPIItemPrestacaoDeConta.Create();
    end;
  Result := Self.m_controller_ItemPrestacaoDeConta;
end;

function TCommandClientAPI.getLancamentoConta(): TAPILancamentoConta;
begin
  if not Assigned(Self.m_controller_LancamentoConta)
    then begin
      Self.m_controller_LancamentoConta := TAPILancamentoConta.Create();
    end;
  Result := Self.m_controller_LancamentoConta;
end;

function TCommandClientAPI.getLancamentoConta_v2(): TAPILancamentoConta_v2;
begin
  if not Assigned(Self.m_controller_LancamentoConta_v2)
    then begin
      Self.m_controller_LancamentoConta_v2 := TAPILancamentoConta_v2.Create();
    end;
  Result := Self.m_controller_LancamentoConta_v2;
end;

function TCommandClientAPI.getLayoutImpressoraCheque(): TAPILayoutImpressoraCheque;
begin
  if not Assigned(Self.m_controller_LayoutImpressoraCheque)
    then begin
      Self.m_controller_LayoutImpressoraCheque := TAPILayoutImpressoraCheque.Create();
    end;
  Result := Self.m_controller_LayoutImpressoraCheque;
end;

function TCommandClientAPI.getListaRateiosFinanceiros(): TAPIListaRateiosFinanceiros;
begin
  if not Assigned(Self.m_controller_ListaRateiosFinanceiros)
    then begin
      Self.m_controller_ListaRateiosFinanceiros := TAPIListaRateiosFinanceiros.Create();
    end;
  Result := Self.m_controller_ListaRateiosFinanceiros;
end;

function TCommandClientAPI.getLotesFatura(): TAPILotesFatura;
begin
  if not Assigned(Self.m_controller_LotesFatura)
    then begin
      Self.m_controller_LotesFatura := TAPILotesFatura.Create();
    end;
  Result := Self.m_controller_LotesFatura;
end;

function TCommandClientAPI.getLoteFatura_v2(): TAPILoteFatura_v2;
begin
  if not Assigned(Self.m_controller_LoteFatura_v2)
    then begin
      Self.m_controller_LoteFatura_v2 := TAPILoteFatura_v2.Create();
    end;
  Result := Self.m_controller_LoteFatura_v2;
end;

function TCommandClientAPI.getMensagemLoteFatura(): TAPIMensagemLoteFatura;
begin
  if not Assigned(Self.m_controller_MensagemLoteFatura)
    then begin
      Self.m_controller_MensagemLoteFatura := TAPIMensagemLoteFatura.Create();
    end;
  Result := Self.m_controller_MensagemLoteFatura;
end;

function TCommandClientAPI.getParcelaFormaPagamentoFatura(): TAPIParcelaFormaPagamentoFatura;
begin
  if not Assigned(Self.m_controller_ParcelaFormaPagamentoFatura)
    then begin
      Self.m_controller_ParcelaFormaPagamentoFatura := TAPIParcelaFormaPagamentoFatura.Create();
    end;
  Result := Self.m_controller_ParcelaFormaPagamentoFatura;
end;

function TCommandClientAPI.getParcelaFormaPagamentoRenegociacaoTitulos(): TAPIParcelaFormaPagamentoRenegociacaoTitulos;
begin
  if not Assigned(Self.m_controller_ParcelaFormaPagamentoRenegociacaoTitulos)
    then begin
      Self.m_controller_ParcelaFormaPagamentoRenegociacaoTitulos := TAPIParcelaFormaPagamentoRenegociacaoTitulos.Create();
    end;
  Result := Self.m_controller_ParcelaFormaPagamentoRenegociacaoTitulos;
end;

function TCommandClientAPI.getPrestacaoDeConta(): TAPIPrestacaoDeConta;
begin
  if not Assigned(Self.m_controller_PrestacaoDeConta)
    then begin
      Self.m_controller_PrestacaoDeConta := TAPIPrestacaoDeConta.Create();
    end;
  Result := Self.m_controller_PrestacaoDeConta;
end;

function TCommandClientAPI.getPrevisaoFinanceiraPagar(): TAPIPrevisaoFinanceiraPagar;
begin
  if not Assigned(Self.m_controller_PrevisaoFinanceiraPagar)
    then begin
      Self.m_controller_PrevisaoFinanceiraPagar := TAPIPrevisaoFinanceiraPagar.Create();
    end;
  Result := Self.m_controller_PrevisaoFinanceiraPagar;
end;

function TCommandClientAPI.getPrevisaoFinanceiraReceber(): TAPIPrevisaoFinanceiraReceber;
begin
  if not Assigned(Self.m_controller_PrevisaoFinanceiraReceber)
    then begin
      Self.m_controller_PrevisaoFinanceiraReceber := TAPIPrevisaoFinanceiraReceber.Create();
    end;
  Result := Self.m_controller_PrevisaoFinanceiraReceber;
end;

function TCommandClientAPI.getRenegociacaoTitulos(): TAPIRenegociacaoTitulos;
begin
  if not Assigned(Self.m_controller_RenegociacaoTitulos)
    then begin
      Self.m_controller_RenegociacaoTitulos := TAPIRenegociacaoTitulos.Create();
    end;
  Result := Self.m_controller_RenegociacaoTitulos;
end;

function TCommandClientAPI.getTipoConta(): TAPITipoConta;
begin
  if not Assigned(Self.m_controller_TipoConta)
    then begin
      Self.m_controller_TipoConta := TAPITipoConta.Create();
    end;
  Result := Self.m_controller_TipoConta;
end;

function TCommandClientAPI.getTituloPagar(): TAPITituloPagar;
begin
  if not Assigned(Self.m_controller_TituloPagar)
    then begin
      Self.m_controller_TituloPagar := TAPITituloPagar.Create();
    end;
  Result := Self.m_controller_TituloPagar;
end;

function TCommandClientAPI.getTituloReceber(): TAPITituloReceber;
begin
  if not Assigned(Self.m_controller_TituloReceber)
    then begin
      Self.m_controller_TituloReceber := TAPITituloReceber.Create();
    end;
  Result := Self.m_controller_TituloReceber;
end;

function TCommandClientAPI.getAtivoHistoricoOferta(): TAPIAtivoHistoricoOferta;
begin
  if not Assigned(Self.m_controller_AtivoHistoricoOferta)
    then begin
      Self.m_controller_AtivoHistoricoOferta := TAPIAtivoHistoricoOferta.Create();
    end;
  Result := Self.m_controller_AtivoHistoricoOferta;
end;

function TCommandClientAPI.getAtivoHistoricoOfertaComponente(): TAPIAtivoHistoricoOfertaComponente;
begin
  if not Assigned(Self.m_controller_AtivoHistoricoOfertaComponente)
    then begin
      Self.m_controller_AtivoHistoricoOfertaComponente := TAPIAtivoHistoricoOfertaComponente.Create();
    end;
  Result := Self.m_controller_AtivoHistoricoOfertaComponente;
end;

function TCommandClientAPI.getCatalogoDeOferta(): TAPICatalogoDeOferta;
begin
  if not Assigned(Self.m_controller_CatalogoDeOferta)
    then begin
      Self.m_controller_CatalogoDeOferta := TAPICatalogoDeOferta.Create();
    end;
  Result := Self.m_controller_CatalogoDeOferta;
end;

function TCommandClientAPI.getCategoriaDeServicos(): TAPICategoriaDeServicos;
begin
  if not Assigned(Self.m_controller_CategoriaDeServicos)
    then begin
      Self.m_controller_CategoriaDeServicos := TAPICategoriaDeServicos.Create();
    end;
  Result := Self.m_controller_CategoriaDeServicos;
end;

function TCommandClientAPI.getCFOPServico(): TAPICFOPServico;
begin
  if not Assigned(Self.m_controller_CFOPServico)
    then begin
      Self.m_controller_CFOPServico := TAPICFOPServico.Create();
    end;
  Result := Self.m_controller_CFOPServico;
end;

function TCommandClientAPI.getConfiguracaoRPS(): TAPIConfiguracaoRPS;
begin
  if not Assigned(Self.m_controller_ConfiguracaoRPS)
    then begin
      Self.m_controller_ConfiguracaoRPS := TAPIConfiguracaoRPS.Create();
    end;
  Result := Self.m_controller_ConfiguracaoRPS;
end;

function TCommandClientAPI.getContratoLocacaoImovelPagar(): TAPIContratoLocacaoImovelPagar;
begin
  if not Assigned(Self.m_controller_ContratoLocacaoImovelPagar)
    then begin
      Self.m_controller_ContratoLocacaoImovelPagar := TAPIContratoLocacaoImovelPagar.Create();
    end;
  Result := Self.m_controller_ContratoLocacaoImovelPagar;
end;

function TCommandClientAPI.getContratoLocacaoImovelReceber(): TAPIContratoLocacaoImovelReceber;
begin
  if not Assigned(Self.m_controller_ContratoLocacaoImovelReceber)
    then begin
      Self.m_controller_ContratoLocacaoImovelReceber := TAPIContratoLocacaoImovelReceber.Create();
    end;
  Result := Self.m_controller_ContratoLocacaoImovelReceber;
end;

function TCommandClientAPI.getContratoServicoPadraoPagar(): TAPIContratoServicoPadraoPagar;
begin
  if not Assigned(Self.m_controller_ContratoServicoPadraoPagar)
    then begin
      Self.m_controller_ContratoServicoPadraoPagar := TAPIContratoServicoPadraoPagar.Create();
    end;
  Result := Self.m_controller_ContratoServicoPadraoPagar;
end;

function TCommandClientAPI.getContratoServicoPadraoReceber(): TAPIContratoServicoPadraoReceber;
begin
  if not Assigned(Self.m_controller_ContratoServicoPadraoReceber)
    then begin
      Self.m_controller_ContratoServicoPadraoReceber := TAPIContratoServicoPadraoReceber.Create();
    end;
  Result := Self.m_controller_ContratoServicoPadraoReceber;
end;

function TCommandClientAPI.getProjetoFuncao(): TAPIProjetoFuncao;
begin
  if not Assigned(Self.m_controller_ProjetoFuncao)
    then begin
      Self.m_controller_ProjetoFuncao := TAPIProjetoFuncao.Create();
    end;
  Result := Self.m_controller_ProjetoFuncao;
end;

function TCommandClientAPI.getProjetoFuncaoDetalhe(): TAPIProjetoFuncaoDetalhe;
begin
  if not Assigned(Self.m_controller_ProjetoFuncaoDetalhe)
    then begin
      Self.m_controller_ProjetoFuncaoDetalhe := TAPIProjetoFuncaoDetalhe.Create();
    end;
  Result := Self.m_controller_ProjetoFuncaoDetalhe;
end;

function TCommandClientAPI.getItemContratoPagar(): TAPIItemContratoPagar;
begin
  if not Assigned(Self.m_controller_ItemContratoPagar)
    then begin
      Self.m_controller_ItemContratoPagar := TAPIItemContratoPagar.Create();
    end;
  Result := Self.m_controller_ItemContratoPagar;
end;

function TCommandClientAPI.getItemContratoReceber(): TAPIItemContratoReceber;
begin
  if not Assigned(Self.m_controller_ItemContratoReceber)
    then begin
      Self.m_controller_ItemContratoReceber := TAPIItemContratoReceber.Create();
    end;
  Result := Self.m_controller_ItemContratoReceber;
end;

function TCommandClientAPI.getItemRPS(): TAPIItemRPS;
begin
  if not Assigned(Self.m_controller_ItemRPS)
    then begin
      Self.m_controller_ItemRPS := TAPIItemRPS.Create();
    end;
  Result := Self.m_controller_ItemRPS;
end;

function TCommandClientAPI.getObjetoServico(): TAPIObjetoServico;
begin
  if not Assigned(Self.m_controller_ObjetoServico)
    then begin
      Self.m_controller_ObjetoServico := TAPIObjetoServico.Create();
    end;
  Result := Self.m_controller_ObjetoServico;
end;

function TCommandClientAPI.getOferta(): TAPIOferta;
begin
  if not Assigned(Self.m_controller_Oferta)
    then begin
      Self.m_controller_Oferta := TAPIOferta.Create();
    end;
  Result := Self.m_controller_Oferta;
end;

function TCommandClientAPI.getOfertaItemFaturamento(): TAPIOfertaItemFaturamento;
begin
  if not Assigned(Self.m_controller_OfertaItemFaturamento)
    then begin
      Self.m_controller_OfertaItemFaturamento := TAPIOfertaItemFaturamento.Create();
    end;
  Result := Self.m_controller_OfertaItemFaturamento;
end;

function TCommandClientAPI.getProjeto(): TAPIProjeto;
begin
  if not Assigned(Self.m_controller_Projeto)
    then begin
      Self.m_controller_Projeto := TAPIProjeto.Create();
    end;
  Result := Self.m_controller_Projeto;
end;

function TCommandClientAPI.getProjetoHistorico(): TAPIProjetoHistorico;
begin
  if not Assigned(Self.m_controller_ProjetoHistorico)
    then begin
      Self.m_controller_ProjetoHistorico := TAPIProjetoHistorico.Create();
    end;
  Result := Self.m_controller_ProjetoHistorico;
end;

function TCommandClientAPI.getRPS(): TAPIRPS;
begin
  if not Assigned(Self.m_controller_RPS)
    then begin
      Self.m_controller_RPS := TAPIRPS.Create();
    end;
  Result := Self.m_controller_RPS;
end;

function TCommandClientAPI.getRPS_v2(): TAPIRPS_v2;
begin
  if not Assigned(Self.m_controller_RPS_v2)
    then begin
      Self.m_controller_RPS_v2 := TAPIRPS_v2.Create();
    end;
  Result := Self.m_controller_RPS_v2;
end;

function TCommandClientAPI.getSerieRPS(): TAPISerieRPS;
begin
  if not Assigned(Self.m_controller_SerieRPS)
    then begin
      Self.m_controller_SerieRPS := TAPISerieRPS.Create();
    end;
  Result := Self.m_controller_SerieRPS;
end;

function TCommandClientAPI.getServico(): TAPIServico;
begin
  if not Assigned(Self.m_controller_Servico)
    then begin
      Self.m_controller_Servico := TAPIServico.Create();
    end;
  Result := Self.m_controller_Servico;
end;

function TCommandClientAPI.getTipoProjeto(): TAPITipoProjeto;
begin
  if not Assigned(Self.m_controller_TipoProjeto)
    then begin
      Self.m_controller_TipoProjeto := TAPITipoProjeto.Create();
    end;
  Result := Self.m_controller_TipoProjeto;
end;

function TCommandClientAPI.getTipoServico(): TAPITipoServico;
begin
  if not Assigned(Self.m_controller_TipoServico)
    then begin
      Self.m_controller_TipoServico := TAPITipoServico.Create();
    end;
  Result := Self.m_controller_TipoServico;
end;

function TCommandClientAPI.getunidadesdecustos(): TAPIunidadesdecustos;
begin
  if not Assigned(Self.m_controller_unidadesdecustos)
    then begin
      Self.m_controller_unidadesdecustos := TAPIunidadesdecustos.Create();
    end;
  Result := Self.m_controller_unidadesdecustos;
end;

function TCommandClientAPI.getContratoTecnico(): TAPIContratoTecnico;
begin
  if not Assigned(Self.m_controller_ContratoTecnico)
    then begin
      Self.m_controller_ContratoTecnico := TAPIContratoTecnico.Create();
    end;
  Result := Self.m_controller_ContratoTecnico;
end;

function TCommandClientAPI.getContratoTecnicoItem(): TAPIContratoTecnicoItem;
begin
  if not Assigned(Self.m_controller_ContratoTecnicoItem)
    then begin
      Self.m_controller_ContratoTecnicoItem := TAPIContratoTecnicoItem.Create();
    end;
  Result := Self.m_controller_ContratoTecnicoItem;
end;

function TCommandClientAPI.getItemCompra(): TAPIItemCompra;
begin
  if not Assigned(Self.m_controller_ItemCompra)
    then begin
      Self.m_controller_ItemCompra := TAPIItemCompra.Create();
    end;
  Result := Self.m_controller_ItemCompra;
end;

function TCommandClientAPI.getVinculoItemCompra(): TAPIVinculoItemCompra;
begin
  if not Assigned(Self.m_controller_VinculoItemCompra)
    then begin
      Self.m_controller_VinculoItemCompra := TAPIVinculoItemCompra.Create();
    end;
  Result := Self.m_controller_VinculoItemCompra;
end;
// get_imp

end.
