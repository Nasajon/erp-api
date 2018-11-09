program nsjAPI;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  api.dao in '..\src\api.dao.pas',
  api.token in '..\src\api.token.pas',
  api.utils in '..\src\api.utils.pas',
  api.command in '..\src\command\api.command.pas',
  api.command.client in '..\src\command\api.command.client.pas',
  api.send in '..\src\api.send.pas' {$R *.res},
  api.controller.contabil.contaanual in '..\src\controller\api.controller.contabil.contaanual.pas',
  api.controller.contabil.lancamento in '..\src\controller\api.controller.contabil.lancamento.pas',
  api.controller.contabil.lote in '..\src\controller\api.controller.contabil.lote.pas',
  api.controller.contabil.lotelancamento in '..\src\controller\api.controller.contabil.lotelancamento.pas',
  api.controller.contabil.lotelancamento_v2 in '..\src\controller\api.controller.contabil.lotelancamento_v2.pas',
  api.controller.estoque.categoriadeprodutos in '..\src\controller\api.controller.estoque.categoriadeprodutos.pas',
  api.controller.estoque.localdeestoque in '..\src\controller\api.controller.estoque.localdeestoque.pas',
  api.controller.estoque.operacao in '..\src\controller\api.controller.estoque.operacao.pas',
  api.controller.estoque.produtoendereco in '..\src\controller\api.controller.estoque.produtoendereco.pas',
  api.controller.estoque.unidade in '..\src\controller\api.controller.estoque.unidade.pas',
  api.controller.financas.agencia in '..\src\controller\api.controller.financas.agencia.pas',
  api.controller.financas.baixatitulorenegociado in '..\src\controller\api.controller.financas.baixatitulorenegociado.pas',
  api.controller.financas.baixatitulounitaria in '..\src\controller\api.controller.financas.baixatitulounitaria.pas',
  api.controller.financas.banco in '..\src\controller\api.controller.financas.banco.pas',
  api.controller.financas.classificacaofinanceira in '..\src\controller\api.controller.financas.classificacaofinanceira.pas',
  api.controller.financas.conta in '..\src\controller\api.controller.financas.conta.pas',
  api.controller.financas.conta_v2 in '..\src\controller\api.controller.financas.conta_v2.pas',
  api.controller.financas.fatura in '..\src\controller\api.controller.financas.fatura.pas',
  api.controller.financas.fatura_v2 in '..\src\controller\api.controller.financas.fatura_v2.pas',
  api.controller.financas.formapagamentofatura in '..\src\controller\api.controller.financas.formapagamentofatura.pas',
  api.controller.financas.formapagamentorenegociacaotitulos in '..\src\controller\api.controller.financas.formapagamentorenegociacaotitulos.pas',
  api.controller.financas.itemfatura in '..\src\controller\api.controller.financas.itemfatura.pas',
  api.controller.financas.itemfatura_v2 in '..\src\controller\api.controller.financas.itemfatura_v2.pas',
  api.controller.financas.itemprestacaodeconta in '..\src\controller\api.controller.financas.itemprestacaodeconta.pas',
  api.controller.financas.lancamentoconta in '..\src\controller\api.controller.financas.lancamentoconta.pas',
  api.controller.financas.layoutimpressoracheque in '..\src\controller\api.controller.financas.layoutimpressoracheque.pas',
  api.controller.financas.lotefatura_v2 in '..\src\controller\api.controller.financas.lotefatura_v2.pas',
  api.controller.financas.lotesfatura in '..\src\controller\api.controller.financas.lotesfatura.pas',
  api.controller.financas.mensagemlotefatura in '..\src\controller\api.controller.financas.mensagemlotefatura.pas',
  api.controller.financas.parcelaformapagamentofatura in '..\src\controller\api.controller.financas.parcelaformapagamentofatura.pas',
  api.controller.financas.parcelaformapagamentorenegociacaotitulos in '..\src\controller\api.controller.financas.parcelaformapagamentorenegociacaotitulos.pas',
  api.controller.financas.prestacaodeconta in '..\src\controller\api.controller.financas.prestacaodeconta.pas',
  api.controller.financas.previsaofinanceirapagar in '..\src\controller\api.controller.financas.previsaofinanceirapagar.pas',
  api.controller.financas.previsaofinanceirareceber in '..\src\controller\api.controller.financas.previsaofinanceirareceber.pas',
  api.controller.financas.renegociacaotitulos in '..\src\controller\api.controller.financas.renegociacaotitulos.pas',
  api.controller.financas.tipoconta in '..\src\controller\api.controller.financas.tipoconta.pas',
  api.controller.financas.titulopagar in '..\src\controller\api.controller.financas.titulopagar.pas',
  api.controller.financas.tituloreceber in '..\src\controller\api.controller.financas.tituloreceber.pas',
  api.controller.ns.acessoestabelecimento in '..\src\controller\api.controller.ns.acessoestabelecimento.pas',
  api.controller.ns.cliente in '..\src\controller\api.controller.ns.cliente.pas',
  api.controller.ns.cnae in '..\src\controller\api.controller.ns.cnae.pas',
  api.controller.ns.configuracaocategoriaporclassfinan in '..\src\controller\api.controller.ns.configuracaocategoriaporclassfinan.pas',
  api.controller.ns.configuracaoordempagamento in '..\src\controller\api.controller.ns.configuracaoordempagamento.pas',
  api.controller.ns.configuracaoproxy in '..\src\controller\api.controller.ns.configuracaoproxy.pas',
  api.controller.ns.configuracaotrabalhadorporcentrocusto in '..\src\controller\api.controller.ns.configuracaotrabalhadorporcentrocusto.pas',
  api.controller.ns.configuracaotrabalhadorporprojeto in '..\src\controller\api.controller.ns.configuracaotrabalhadorporprojeto.pas',
  api.controller.ns.configuracoestrabalhadoresporcentroscustos in '..\src\controller\api.controller.ns.configuracoestrabalhadoresporcentroscustos.pas',
  api.controller.ns.conjunto in '..\src\controller\api.controller.ns.conjunto.pas',
  api.controller.ns.contaanual in '..\src\controller\api.controller.ns.contaanual.pas',
  api.controller.ns.contato in '..\src\controller\api.controller.ns.contato.pas',
  api.controller.ns.docfis in '..\src\controller\api.controller.ns.docfis.pas',
  api.controller.ns.empresa in '..\src\controller\api.controller.ns.empresa.pas',
  api.controller.ns.endereco in '..\src\controller\api.controller.ns.endereco.pas',
  api.controller.ns.estabelecimento in '..\src\controller\api.controller.ns.estabelecimento.pas',
  api.controller.ns.fornecedor in '..\src\controller\api.controller.ns.fornecedor.pas',
  api.controller.ns.grupodeusuario in '..\src\controller\api.controller.ns.grupodeusuario.pas',
  api.controller.ns.grupoempresarial in '..\src\controller\api.controller.ns.grupoempresarial.pas',
  api.controller.ns.municipio in '..\src\controller\api.controller.ns.municipio.pas',
  api.controller.ns.pais in '..\src\controller\api.controller.ns.pais.pas',
  api.controller.ns.perfilusuario in '..\src\controller\api.controller.ns.perfilusuario.pas',
  api.controller.ns.pessoa in '..\src\controller\api.controller.ns.pessoa.pas',
  api.controller.ns.socios in '..\src\controller\api.controller.ns.socios.pas',
  api.controller.ns.sociosparticipacoes in '..\src\controller\api.controller.ns.sociosparticipacoes.pas',
  api.controller.ns.solicitacao in '..\src\controller\api.controller.ns.solicitacao.pas',
  api.controller.ns.solicitacaoalteracaoendereco in '..\src\controller\api.controller.ns.solicitacaoalteracaoendereco.pas',
  api.controller.ns.telefone in '..\src\controller\api.controller.ns.telefone.pas',
  api.controller.ns.usuario in '..\src\controller\api.controller.ns.usuario.pas',
  api.controller.ns.vendedor in '..\src\controller\api.controller.ns.vendedor.pas',
  api.controller.persona.acordoprorrogacaohora in '..\src\controller\api.controller.persona.acordoprorrogacaohora.pas',
  api.controller.persona.afastamentofuncionario in '..\src\controller\api.controller.persona.afastamentofuncionario.pas',
  api.controller.persona.avisoferiasfuncionario in '..\src\controller\api.controller.persona.avisoferiasfuncionario.pas',
  api.controller.persona.cargo in '..\src\controller\api.controller.persona.cargo.pas',
  api.controller.persona.concessionariavaletransporte in '..\src\controller\api.controller.persona.concessionariavaletransporte.pas',
  api.controller.persona.contribuinteindividual in '..\src\controller\api.controller.persona.contribuinteindividual.pas',
  api.controller.persona.departamento in '..\src\controller\api.controller.persona.departamento.pas',
  api.controller.persona.dependentefuncionario in '..\src\controller\api.controller.persona.dependentefuncionario.pas',
  api.controller.persona.documentodependentefuncionario in '..\src\controller\api.controller.persona.documentodependentefuncionario.pas',
  api.controller.persona.documentofuncionario in '..\src\controller\api.controller.persona.documentofuncionario.pas',
  api.controller.persona.escalafolgafuncionario in '..\src\controller\api.controller.persona.escalafolgafuncionario.pas',
  api.controller.persona.estagiario in '..\src\controller\api.controller.persona.estagiario.pas',
  api.controller.persona.faixa in '..\src\controller\api.controller.persona.faixa.pas',
  api.controller.persona.faltafuncionario in '..\src\controller\api.controller.persona.faltafuncionario.pas',
  api.controller.persona.fpas in '..\src\controller\api.controller.persona.fpas.pas',
  api.controller.persona.funcionario in '..\src\controller\api.controller.persona.funcionario.pas',
  api.controller.persona.historicofuncionario in '..\src\controller\api.controller.persona.historicofuncionario.pas',
  api.controller.persona.horario in '..\src\controller\api.controller.persona.horario.pas',
  api.controller.persona.instituicao in '..\src\controller\api.controller.persona.instituicao.pas',
  api.controller.persona.intervalojornada in '..\src\controller\api.controller.persona.intervalojornada.pas',
  api.controller.persona.itemfaixa in '..\src\controller\api.controller.persona.itemfaixa.pas',
  api.controller.persona.jornada in '..\src\controller\api.controller.persona.jornada.pas',
  api.controller.persona.lotacao in '..\src\controller\api.controller.persona.lotacao.pas',
  api.controller.persona.movimentodepartamento in '..\src\controller\api.controller.persona.movimentodepartamento.pas',
  api.controller.persona.movimentoempresa in '..\src\controller\api.controller.persona.movimentoempresa.pas',
  api.controller.persona.movimentoestabelecimento in '..\src\controller\api.controller.persona.movimentoestabelecimento.pas',
  api.controller.persona.movimentofuncionario in '..\src\controller\api.controller.persona.movimentofuncionario.pas',
  api.controller.persona.movimentolotacao in '..\src\controller\api.controller.persona.movimentolotacao.pas',
  api.controller.persona.movimentosindicato in '..\src\controller\api.controller.persona.movimentosindicato.pas',
  api.controller.persona.naturezajuridica in '..\src\controller\api.controller.persona.naturezajuridica.pas',
  api.controller.persona.nivelcargo in '..\src\controller\api.controller.persona.nivelcargo.pas',
  api.controller.persona.processo in '..\src\controller\api.controller.persona.processo.pas',
  api.controller.persona.profissionalsaude in '..\src\controller\api.controller.persona.profissionalsaude.pas',
  api.controller.persona.promocaofuncionario in '..\src\controller\api.controller.persona.promocaofuncionario.pas',
  api.controller.persona.reajustesalarialfuncionario in '..\src\controller\api.controller.persona.reajustesalarialfuncionario.pas',
  api.controller.persona.reajustesindicato in '..\src\controller\api.controller.persona.reajustesindicato.pas',
  api.controller.persona.rubrica in '..\src\controller\api.controller.persona.rubrica.pas',
  api.controller.persona.sindicato in '..\src\controller\api.controller.persona.sindicato.pas',
  api.controller.persona.solicitacoes in '..\src\controller\api.controller.persona.solicitacoes.pas',
  api.controller.persona.tarifaconcessionariavaletransporte in '..\src\controller\api.controller.persona.tarifaconcessionariavaletransporte.pas',
  api.controller.persona.tarifavaletransportefuncionario in '..\src\controller\api.controller.persona.tarifavaletransportefuncionario.pas',
  api.controller.persona.tipodocumentocolaborador in '..\src\controller\api.controller.persona.tipodocumentocolaborador.pas',
  api.controller.persona.tipofuncionario in '..\src\controller\api.controller.persona.tipofuncionario.pas',
  api.controller.scritta.documentofiscal in '..\src\controller\api.controller.scritta.documentofiscal.pas',
  api.controller.scritta.itemlancamentofiscal in '..\src\controller\api.controller.scritta.itemlancamentofiscal.pas',
  api.controller.scritta.lancamentofiscal in '..\src\controller\api.controller.scritta.lancamentofiscal.pas',
  api.controller.servicos.cfopservico in '..\src\controller\api.controller.servicos.cfopservico.pas',
  api.controller.servicos.configuracaorps in '..\src\controller\api.controller.servicos.configuracaorps.pas',
  api.controller.servicos.contratolocacaoimovelpagar in '..\src\controller\api.controller.servicos.contratolocacaoimovelpagar.pas',
  api.controller.servicos.contratolocacaoimovelreceber in '..\src\controller\api.controller.servicos.contratolocacaoimovelreceber.pas',
  api.controller.servicos.contratoservicopadraopagar in '..\src\controller\api.controller.servicos.contratoservicopadraopagar.pas',
  api.controller.servicos.contratoservicopadraoreceber in '..\src\controller\api.controller.servicos.contratoservicopadraoreceber.pas',
  api.controller.servicos.itemcontratopagar in '..\src\controller\api.controller.servicos.itemcontratopagar.pas',
  api.controller.servicos.itemcontratoreceber in '..\src\controller\api.controller.servicos.itemcontratoreceber.pas',
  api.controller.servicos.itemrps in '..\src\controller\api.controller.servicos.itemrps.pas',
  api.controller.servicos.projeto in '..\src\controller\api.controller.servicos.projeto.pas',
  api.controller.servicos.projetohistorico in '..\src\controller\api.controller.servicos.projetohistorico.pas',
  api.controller.servicos.rps in '..\src\controller\api.controller.servicos.rps.pas',
  api.controller.servicos.rps_v2 in '..\src\controller\api.controller.servicos.rps_v2.pas',
  api.controller.servicos.serierps in '..\src\controller\api.controller.servicos.serierps.pas',
  api.controller.servicos.servico in '..\src\controller\api.controller.servicos.servico.pas',
  api.controller.servicos.tipoprojeto in '..\src\controller\api.controller.servicos.tipoprojeto.pas',
  api.controller.servicos.tiposervico in '..\src\controller\api.controller.servicos.tiposervico.pas',
  api.model.contabil.contaanual in '..\src\model\api.model.contabil.contaanual.pas',
  api.model.contabil.lancamento in '..\src\model\api.model.contabil.lancamento.pas',
  api.model.contabil.lote in '..\src\model\api.model.contabil.lote.pas',
  api.model.contabil.lotelancamento in '..\src\model\api.model.contabil.lotelancamento.pas',
  api.model.contabil.lotelancamento_v2 in '..\src\model\api.model.contabil.lotelancamento_v2.pas',
  api.model.estoque.categoriadeprodutos in '..\src\model\api.model.estoque.categoriadeprodutos.pas',
  api.model.estoque.localdeestoque in '..\src\model\api.model.estoque.localdeestoque.pas',
  api.model.estoque.operacao in '..\src\model\api.model.estoque.operacao.pas',
  api.model.estoque.produtoendereco in '..\src\model\api.model.estoque.produtoendereco.pas',
  api.model.estoque.unidade in '..\src\model\api.model.estoque.unidade.pas',
  api.model.financas.adiantamentosaldo in '..\src\model\api.model.financas.adiantamentosaldo.pas',
  api.model.financas.agencia in '..\src\model\api.model.financas.agencia.pas',
  api.model.financas.baixatitulorenegociado in '..\src\model\api.model.financas.baixatitulorenegociado.pas',
  api.model.financas.baixatitulounitaria in '..\src\model\api.model.financas.baixatitulounitaria.pas',
  api.model.financas.banco in '..\src\model\api.model.financas.banco.pas',
  api.model.financas.classificacaofinanceira in '..\src\model\api.model.financas.classificacaofinanceira.pas',
  api.model.financas.conta in '..\src\model\api.model.financas.conta.pas',
  api.model.financas.conta_v2 in '..\src\model\api.model.financas.conta_v2.pas',
  api.model.financas.fatura in '..\src\model\api.model.financas.fatura.pas',
  api.model.financas.fatura_v2 in '..\src\model\api.model.financas.fatura_v2.pas',
  api.model.financas.formapagamentofatura in '..\src\model\api.model.financas.formapagamentofatura.pas',
  api.model.financas.formapagamentofatura_v2 in '..\src\model\api.model.financas.formapagamentofatura_v2.pas',
  api.model.financas.formapagamentorenegociacaotitulos in '..\src\model\api.model.financas.formapagamentorenegociacaotitulos.pas',
  api.model.financas.informacaocartao in '..\src\model\api.model.financas.informacaocartao.pas',
  api.model.financas.itemfatura in '..\src\model\api.model.financas.itemfatura.pas',
  api.model.financas.itemfatura_v2 in '..\src\model\api.model.financas.itemfatura_v2.pas',
  api.model.financas.itemprestacaodeconta in '..\src\model\api.model.financas.itemprestacaodeconta.pas',
  api.model.financas.itemrateiofinanceiro in '..\src\model\api.model.financas.itemrateiofinanceiro.pas',
  api.model.financas.lancamentoconta in '..\src\model\api.model.financas.lancamentoconta.pas',
  api.model.financas.layoutcobranca in '..\src\model\api.model.financas.layoutcobranca.pas',
  api.model.financas.layoutimpressoracheque in '..\src\model\api.model.financas.layoutimpressoracheque.pas',
  api.model.financas.lotefatura_v2 in '..\src\model\api.model.financas.lotefatura_v2.pas',
  api.model.financas.lotesfatura in '..\src\model\api.model.financas.lotesfatura.pas',
  api.model.financas.mensagemlotefatura in '..\src\model\api.model.financas.mensagemlotefatura.pas',
  api.model.financas.mensagemlotefatura_v2 in '..\src\model\api.model.financas.mensagemlotefatura_v2.pas',
  api.model.financas.parcelaformapagamentofatura in '..\src\model\api.model.financas.parcelaformapagamentofatura.pas',
  api.model.financas.parcelaformapagamentorenegociacaotitulos in '..\src\model\api.model.financas.parcelaformapagamentorenegociacaotitulos.pas',
  api.model.financas.prestacaodeconta in '..\src\model\api.model.financas.prestacaodeconta.pas',
  api.model.financas.previsaofinanceirapagar in '..\src\model\api.model.financas.previsaofinanceirapagar.pas',
  api.model.financas.previsaofinanceirareceber in '..\src\model\api.model.financas.previsaofinanceirareceber.pas',
  api.model.financas.rateiopadrao in '..\src\model\api.model.financas.rateiopadrao.pas',
  api.model.financas.renegociacaotitulos in '..\src\model\api.model.financas.renegociacaotitulos.pas',
  api.model.financas.tipoconta in '..\src\model\api.model.financas.tipoconta.pas',
  api.model.financas.titulo in '..\src\model\api.model.financas.titulo.pas',
  api.model.financas.titulopagar in '..\src\model\api.model.financas.titulopagar.pas',
  api.model.financas.tituloreceber in '..\src\model\api.model.financas.tituloreceber.pas',
  api.model.financas.titulorenegociado in '..\src\model\api.model.financas.titulorenegociado.pas',
  api.model.financas.vendedortitulo in '..\src\model\api.model.financas.vendedortitulo.pas',
  api.model.ns.acessoestabelecimento in '..\src\model\api.model.ns.acessoestabelecimento.pas',
  api.model.ns.cliente in '..\src\model\api.model.ns.cliente.pas',
  api.model.ns.cnae in '..\src\model\api.model.ns.cnae.pas',
  api.model.ns.configuracaocategoriaporclassfinan in '..\src\model\api.model.ns.configuracaocategoriaporclassfinan.pas',
  api.model.ns.configuracaoordempagamento in '..\src\model\api.model.ns.configuracaoordempagamento.pas',
  api.model.ns.configuracaoproxy in '..\src\model\api.model.ns.configuracaoproxy.pas',
  api.model.ns.configuracaotrabalhadorporcentrocusto in '..\src\model\api.model.ns.configuracaotrabalhadorporcentrocusto.pas',
  api.model.ns.configuracaotrabalhadorporprojeto in '..\src\model\api.model.ns.configuracaotrabalhadorporprojeto.pas',
  api.model.ns.configuracoestrabalhadoresporcentroscustos in '..\src\model\api.model.ns.configuracoestrabalhadoresporcentroscustos.pas',
  api.model.ns.conjunto in '..\src\model\api.model.ns.conjunto.pas',
  api.model.ns.contaanual in '..\src\model\api.model.ns.contaanual.pas',
  api.model.ns.contato in '..\src\model\api.model.ns.contato.pas',
  api.model.ns.docfis in '..\src\model\api.model.ns.docfis.pas',
  api.model.ns.empresa in '..\src\model\api.model.ns.empresa.pas',
  api.model.ns.endereco in '..\src\model\api.model.ns.endereco.pas',
  api.model.ns.entidadecompartilhadora in '..\src\model\api.model.ns.entidadecompartilhadora.pas',
  api.model.ns.estabelecimento in '..\src\model\api.model.ns.estabelecimento.pas',
  api.model.ns.fornecedor in '..\src\model\api.model.ns.fornecedor.pas',
  api.model.ns.grupodeusuario in '..\src\model\api.model.ns.grupodeusuario.pas',
  api.model.ns.grupoempresarial in '..\src\model\api.model.ns.grupoempresarial.pas',
  api.model.ns.municipio in '..\src\model\api.model.ns.municipio.pas',
  api.model.ns.pagamento in '..\src\model\api.model.ns.pagamento.pas',
  api.model.ns.pagamentosemparcela in '..\src\model\api.model.ns.pagamentosemparcela.pas',
  api.model.ns.pais in '..\src\model\api.model.ns.pais.pas',
  api.model.ns.parcela in '..\src\model\api.model.ns.parcela.pas',
  api.model.ns.perfilusuario in '..\src\model\api.model.ns.perfilusuario.pas',
  api.model.ns.pessoa in '..\src\model\api.model.ns.pessoa.pas',
  api.model.ns.socios in '..\src\model\api.model.ns.socios.pas',
  api.model.ns.sociosparticipacoes in '..\src\model\api.model.ns.sociosparticipacoes.pas',
  api.model.ns.solicitacao in '..\src\model\api.model.ns.solicitacao.pas',
  api.model.ns.solicitacaoalteracaoendereco in '..\src\model\api.model.ns.solicitacaoalteracaoendereco.pas',
  api.model.ns.solicitacaohistorico in '..\src\model\api.model.ns.solicitacaohistorico.pas',
  api.model.ns.telefone in '..\src\model\api.model.ns.telefone.pas',
  api.model.ns.usuario in '..\src\model\api.model.ns.usuario.pas',
  api.model.ns.vendedor in '..\src\model\api.model.ns.vendedor.pas',
  api.model.persona.acordoprorrogacaohora in '..\src\model\api.model.persona.acordoprorrogacaohora.pas',
  api.model.persona.afastamentofuncionario in '..\src\model\api.model.persona.afastamentofuncionario.pas',
  api.model.persona.avisoferiasfuncionario in '..\src\model\api.model.persona.avisoferiasfuncionario.pas',
  api.model.persona.cargo in '..\src\model\api.model.persona.cargo.pas',
  api.model.persona.concessionariavaletransporte in '..\src\model\api.model.persona.concessionariavaletransporte.pas',
  api.model.persona.contribuinteindividual in '..\src\model\api.model.persona.contribuinteindividual.pas',
  api.model.persona.departamento in '..\src\model\api.model.persona.departamento.pas',
  api.model.persona.dependentefuncionario in '..\src\model\api.model.persona.dependentefuncionario.pas',
  api.model.persona.documentodependentefuncionario in '..\src\model\api.model.persona.documentodependentefuncionario.pas',
  api.model.persona.documentofuncionario in '..\src\model\api.model.persona.documentofuncionario.pas',
  api.model.persona.escalafolgafuncionario in '..\src\model\api.model.persona.escalafolgafuncionario.pas',
  api.model.persona.estagiario in '..\src\model\api.model.persona.estagiario.pas',
  api.model.persona.faixa in '..\src\model\api.model.persona.faixa.pas',
  api.model.persona.faltafuncionario in '..\src\model\api.model.persona.faltafuncionario.pas',
  api.model.persona.fpas in '..\src\model\api.model.persona.fpas.pas',
  api.model.persona.funcionario in '..\src\model\api.model.persona.funcionario.pas',
  api.model.persona.historicofuncionario in '..\src\model\api.model.persona.historicofuncionario.pas',
  api.model.persona.horario in '..\src\model\api.model.persona.horario.pas',
  api.model.persona.instituicao in '..\src\model\api.model.persona.instituicao.pas',
  api.model.persona.intervalojornada in '..\src\model\api.model.persona.intervalojornada.pas',
  api.model.persona.itemfaixa in '..\src\model\api.model.persona.itemfaixa.pas',
  api.model.persona.jornada in '..\src\model\api.model.persona.jornada.pas',
  api.model.persona.lotacao in '..\src\model\api.model.persona.lotacao.pas',
  api.model.persona.movimentodepartamento in '..\src\model\api.model.persona.movimentodepartamento.pas',
  api.model.persona.movimentoempresa in '..\src\model\api.model.persona.movimentoempresa.pas',
  api.model.persona.movimentoestabelecimento in '..\src\model\api.model.persona.movimentoestabelecimento.pas',
  api.model.persona.movimentofuncionario in '..\src\model\api.model.persona.movimentofuncionario.pas',
  api.model.persona.movimentolotacao in '..\src\model\api.model.persona.movimentolotacao.pas',
  api.model.persona.movimentosindicato in '..\src\model\api.model.persona.movimentosindicato.pas',
  api.model.persona.naturezajuridica in '..\src\model\api.model.persona.naturezajuridica.pas',
  api.model.persona.nivelcargo in '..\src\model\api.model.persona.nivelcargo.pas',
  api.model.persona.processo in '..\src\model\api.model.persona.processo.pas',
  api.model.persona.profissionalsaude in '..\src\model\api.model.persona.profissionalsaude.pas',
  api.model.persona.promocaofuncionario in '..\src\model\api.model.persona.promocaofuncionario.pas',
  api.model.persona.reajustesalarialfuncionario in '..\src\model\api.model.persona.reajustesalarialfuncionario.pas',
  api.model.persona.reajustesindicato in '..\src\model\api.model.persona.reajustesindicato.pas',
  api.model.persona.rubrica in '..\src\model\api.model.persona.rubrica.pas',
  api.model.persona.sindicato in '..\src\model\api.model.persona.sindicato.pas',
  api.model.persona.solicitacoes in '..\src\model\api.model.persona.solicitacoes.pas',
  api.model.persona.tarifaconcessionariavaletransporte in '..\src\model\api.model.persona.tarifaconcessionariavaletransporte.pas',
  api.model.persona.tarifavaletransportefuncionario in '..\src\model\api.model.persona.tarifavaletransportefuncionario.pas',
  api.model.persona.tipodocumentocolaborador in '..\src\model\api.model.persona.tipodocumentocolaborador.pas',
  api.model.persona.tipofuncionario in '..\src\model\api.model.persona.tipofuncionario.pas',
  api.model.scritta.documentofiscal in '..\src\model\api.model.scritta.documentofiscal.pas',
  api.model.scritta.itemlancamentofiscal in '..\src\model\api.model.scritta.itemlancamentofiscal.pas',
  api.model.scritta.lancamentofiscal in '..\src\model\api.model.scritta.lancamentofiscal.pas',
  api.model.servicos.cfopservico in '..\src\model\api.model.servicos.cfopservico.pas',
  api.model.servicos.configuracaorps in '..\src\model\api.model.servicos.configuracaorps.pas',
  api.model.servicos.contrato in '..\src\model\api.model.servicos.contrato.pas',
  api.model.servicos.contratolocacaoimovelpagar in '..\src\model\api.model.servicos.contratolocacaoimovelpagar.pas',
  api.model.servicos.contratolocacaoimovelreceber in '..\src\model\api.model.servicos.contratolocacaoimovelreceber.pas',
  api.model.servicos.contratoservicopadraopagar in '..\src\model\api.model.servicos.contratoservicopadraopagar.pas',
  api.model.servicos.contratoservicopadraoreceber in '..\src\model\api.model.servicos.contratoservicopadraoreceber.pas',
  api.model.servicos.emissaonfse in '..\src\model\api.model.servicos.emissaonfse.pas',
  api.model.servicos.itemcontrato in '..\src\model\api.model.servicos.itemcontrato.pas',
  api.model.servicos.itemcontratopagar in '..\src\model\api.model.servicos.itemcontratopagar.pas',
  api.model.servicos.itemcontratoreceber in '..\src\model\api.model.servicos.itemcontratoreceber.pas',
  api.model.servicos.itemrps in '..\src\model\api.model.servicos.itemrps.pas',
  api.model.servicos.projeto in '..\src\model\api.model.servicos.projeto.pas',
  api.model.servicos.projetohistorico in '..\src\model\api.model.servicos.projetohistorico.pas',
  api.model.servicos.rps in '..\src\model\api.model.servicos.rps.pas',
  api.model.servicos.rps_v2 in '..\src\model\api.model.servicos.rps_v2.pas',
  api.model.servicos.serierps in '..\src\model\api.model.servicos.serierps.pas',
  api.model.servicos.servico in '..\src\model\api.model.servicos.servico.pas',
  api.model.servicos.tipoprojeto in '..\src\model\api.model.servicos.tipoprojeto.pas',
  api.model.servicos.tiposervico in '..\src\model\api.model.servicos.tiposervico.pas',
  api.model.servicos.valorvariavelitemcontrato in '..\src\model\api.model.servicos.valorvariavelitemcontrato.pas',
  api.model.servicos.vendedorrps in '..\src\model\api.model.servicos.vendedorrps.pas',
  api.controller.persona.funcao in '..\src\controller\api.controller.persona.funcao.pas',
  api.controller.servicos.funcaodetalhe in '..\src\controller\api.controller.servicos.funcaodetalhe.pas',
  api.controller.servicos.funcao in '..\src\controller\api.controller.servicos.funcao.pas',
  api.model.persona.funcao in '..\src\model\api.model.persona.funcao.pas',
  api.model.servicos.funcaodetalhe in '..\src\model\api.model.servicos.funcaodetalhe.pas',
  api.model.servicos.funcao in '..\src\model\api.model.servicos.funcao.pas',
  api.controller.servicos.projetofuncaodetalhe in '..\src\controller\api.controller.servicos.projetofuncaodetalhe.pas',
  api.controller.servicos.projetofuncao in '..\src\controller\api.controller.servicos.projetofuncao.pas',
  api.model.servicos.projetofuncaodetalhe in '..\src\model\api.model.servicos.projetofuncaodetalhe.pas',
  api.model.servicos.projetofuncao in '..\src\model\api.model.servicos.projetofuncao.pas',
  api.controller.contabil.lotecontaanual in '..\src\controller\api.controller.contabil.lotecontaanual.pas',
  api.model.contabil.lotecontaanual in '..\src\model\api.model.contabil.lotecontaanual.pas',
  api.controller.financas.listarateiosfinanceiros in '..\src\controller\api.controller.financas.listarateiosfinanceiros.pas',
  api.model.financas.listarateiosfinanceiros in '..\src\model\api.model.financas.listarateiosfinanceiros.pas',
  api.controller.ns.localdeuso in '..\src\controller\api.controller.ns.localdeuso.pas',
  api.model.ns.localdeuso in '..\src\model\api.model.ns.localdeuso.pas',
  api.controller.compras.itemcompra in '..\src\controller\api.controller.compras.itemcompra.pas',
  api.model.compras.itemcompra in '..\src\model\api.model.compras.itemcompra.pas',
  api.model.servicos.impostos_itemrps in '..\src\model\api.model.servicos.impostos_itemrps.pas',
  api.model.servicos.impostos_rps in '..\src\model\api.model.servicos.impostos_rps.pas',
  api.model.servicos.impostos_tributo in '..\src\model\api.model.servicos.impostos_tributo.pas',
  api.model.ns.pendenciaadministrativa in '..\src\model\api.model.ns.pendenciaadministrativa.pas',
  api.controller.ns.pendenciaadministrativa in '..\src\controller\api.controller.ns.pendenciaadministrativa.pas',
  api.controller.servicos.objetoservico in '..\src\controller\api.controller.servicos.objetoservico.pas',
  api.model.servicos.objetoservico in '..\src\model\api.model.servicos.objetoservico.pas',
  api.model.servicos.categoriadeservicos in '..\src\model\api.model.servicos.categoriadeservicos.pas',
  api.controller.servicos.categoriadeservicos in '..\src\controller\api.controller.servicos.categoriadeservicos.pas',
  api.model.servicos.catalogodeoferta in '..\src\model\api.model.servicos.catalogodeoferta.pas',
  api.controller.servicos.catalogodeoferta in '..\src\controller\api.controller.servicos.catalogodeoferta.pas',
  api.model.servicos.servicocatalogo in '..\src\model\api.model.servicos.servicocatalogo.pas',
  api.controller.servicos.servicocatalogo in '..\src\controller\api.controller.servicos.servicocatalogo.pas',
  api.model.servicos.oferta in '..\src\model\api.model.servicos.oferta.pas',
  api.controller.servicos.oferta in '..\src\controller\api.controller.servicos.oferta.pas',
  api.model.servicos.ofertaitemfaturamento in '..\src\model\api.model.servicos.ofertaitemfaturamento.pas',
  api.controller.servicos.ofertaitemfaturamento in '..\src\controller\api.controller.servicos.ofertaitemfaturamento.pas',
  api.model.servicos.ativohistoricooferta in '..\src\model\api.model.servicos.ativohistoricooferta.pas',
  api.controller.servicos.ativohistoricooferta in '..\src\controller\api.controller.servicos.ativohistoricooferta.pas',
  api.model.servicos.ativohistoricoofertacomponente in '..\src\model\api.model.servicos.ativohistoricoofertacomponente.pas',
  api.controller.servicos.ativohistoricoofertacomponente in '..\src\controller\api.controller.servicos.ativohistoricoofertacomponente.pas',
  api.model.compras.vinculoitemcompra in '..\src\model\api.model.compras.vinculoitemcompra.pas',
  api.controller.compras.vinculoitemcompra in '..\src\controller\api.controller.compras.vinculoitemcompra.pas',
  api.model.financas.documentoajusterateio in '..\src\model\api.model.financas.documentoajusterateio.pas',
  api.controller.financas.documentoajusterateio in '..\src\controller\api.controller.financas.documentoajusterateio.pas',
  api.model.servicos.rps_v3 in '..\src\model\api.model.servicos.rps_v3.pas',
  api.model.servicos.itemrps_v3 in '..\src\model\api.model.servicos.itemrps_v3.pas',
  api.model.servicos.gerador_rps in '..\src\model\api.model.servicos.gerador_rps.pas',
  api.model.servicos.gerador_rps_cliente in '..\src\model\api.model.servicos.gerador_rps_cliente.pas',
  api.model.servicos.gerador_rps_item_faturamento in '..\src\model\api.model.servicos.gerador_rps_item_faturamento.pas',
  api.model.ns.documentofiscalns in '..\src\model\api.model.ns.documentofiscalns.pas',
  api.controller.ns.documentofiscalns in '..\src\controller\api.controller.ns.documentofiscalns.pas',
  api.controller.servicos.unidadesdecustos in '..\src\controller\api.controller.servicos.unidadesdecustos.pas',
  api.model.servicos.unidadesdecustos in '..\src\model\api.model.servicos.unidadesdecustos.pas',
  api.model.servicos.gerador_rps_v2 in '..\src\model\api.model.servicos.gerador_rps_v2.pas',
  api.model.servicos.gerador_rps_cliente_v2 in '..\src\model\api.model.servicos.gerador_rps_cliente_v2.pas',
  api.model.ns.elementodecontrole in '..\src\model\api.model.ns.elementodecontrole.pas',
  api.controller.ns.elementodecontrole in '..\src\controller\api.controller.ns.elementodecontrole.pas',
  api.model.ns.participante in '..\src\model\api.model.ns.participante.pas',
  api.controller.ns.participante in '..\src\controller\api.controller.ns.participante.pas',
  api.controller.financas.lancamentoconta_v2 in '..\src\controller\api.controller.financas.lancamentoconta_v2.pas',
  api.model.financas.lancamentoconta_v2 in '..\src\model\api.model.financas.lancamentoconta_v2.pas',
  api.controller.financas.itememprestimoprestacao in '..\src\controller\api.controller.financas.itememprestimoprestacao.pas',
  api.model.financas.itememprestimoprestacao in '..\src\model\api.model.financas.itememprestimoprestacao.pas',
  api.controller.crm.contratotecnico in '..\src\controller\api.controller.crm.contratotecnico.pas',
  api.controller.crm.contratotecnicoitem in '..\src\controller\api.controller.crm.contratotecnicoitem.pas',
  api.model.crm.contratotecnico in '..\src\model\api.model.crm.contratotecnico.pas',
  api.model.crm.contratotecnicoitem in '..\src\model\api.model.crm.contratotecnicoitem.pas' {$R *.res},
  api.controller.estoque.acordosfornecimentoprodutos in '..\src\controller\api.controller.estoque.acordosfornecimentoprodutos.pas',
  api.controller.estoque.acordosfornecimentoprodutositens in '..\src\controller\api.controller.estoque.acordosfornecimentoprodutositens.pas',
  api.model.estoque.acordosfornecimentoprodutos in '..\src\model\api.model.estoque.acordosfornecimentoprodutos.pas',
  api.model.estoque.acordosfornecimentoprodutositens in '..\src\model\api.model.estoque.acordosfornecimentoprodutositens.pas';

{$R *.res}

begin
  try

  except
    on E: System.SysUtils.Exception do
      System.Writeln(E.ClassName, ': ', E.Message);
  end;
end.
