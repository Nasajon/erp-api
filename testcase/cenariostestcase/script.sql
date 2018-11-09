-- Integratto 2 - Inicio do Script do Banco de Dados
  
  
select ns.desativar_trigger('TRG_ProcessamentoRastro');  
SET check_function_bodies = false;  
SET client_min_messages = warning;  
  
  
-- Passo 01 - Inserts de cada cenario  
  
START TRANSACTION;
-- Script 00001 - Cenario basico.sql  
  

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'WIN1252';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = agente, pg_catalog;

INSERT INTO workers VALUES ('e44d50d7-f2e3-474b-8404-bcb3a47ffe53', 2, 'Correio', '2016-03-01 14:41:01.833');
INSERT INTO workers VALUES ('1cae1745-70b0-47e1-8424-db8c6510ef4f', 3, 'Solicitação', '2016-03-01 14:41:01.833');
INSERT INTO workers VALUES ('446da5e9-986d-436d-8e41-b67627587be2', 4, 'Marcação', '2016-03-01 14:41:01.833');
INSERT INTO workers VALUES ('56217306-c083-438a-ae08-0abf1e87c906', 5, 'API', '2016-03-01 14:41:01.833');
INSERT INTO workers VALUES ('ec9565e4-3884-477e-a984-06bcf38aa3c7', 7, 'Sync', '2016-03-01 14:41:01.833');
INSERT INTO workers VALUES ('28b4bd16-81b2-4abb-a8de-43eb29c7706f', 8, 'Ponto Saldo', '2016-03-01 14:41:01.833');
INSERT INTO workers VALUES ('064a7aed-f8d6-41b4-a936-cc8d26fdb6a7', 9, 'Falta', '2016-03-01 14:41:01.833');

SET search_path = ns, pg_catalog;

INSERT INTO tenants VALUES (1, 'Primeiro grupo empresarial do TestCase', 'NSJTC01', '2016-03-01 15:41:01.257');

INSERT INTO gruposempresariais VALUES ('NSJTC01', 'Primeiro grupo empresarial do TestCase', NULL, 'beaa64b8-8e18-4905-b68f-32d8c923ebff', false, 1, '2016-03-01 15:41:01.257');

SET search_path = ns, pg_catalog;

INSERT INTO empresas VALUES ('NSJTC01', NULL, 0, '27915735', '000100', NULL, 'Nasajon Sistemas SA', '#.#.#.##.####', '#.#.#.##.####', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'beaa64b8-8e18-4905-b68f-32d8c923ebff', NULL, NULL, 'eb6ec0ea-28bc-4c0c-a8e2-eceb3ab14b65', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');

SET search_path = ns, pg_catalog;

INSERT INTO estabelecimentos VALUES ('NSJTC01', 'Nasajon Sistemas SA', 0, '27915735', '000100', '           ', NULL, NULL, '466760', '82448209', 'Nasajon Sistemas SA', NULL, NULL, 'AV', 'Rio Branco', '45', 'Sala 1801', 'Centro da Cidade', '20090908', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3304557', NULL, NULL, NULL, NULL, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:51:30.653');

INSERT INTO gruposdeusuarios VALUES ('9ca44501-722f-45f9-be4d-002574d8e60a', 'MESTRE', 'Mestre', '2016-03-01 14:41:01.833');

SET search_path = nsview, pg_catalog;

INSERT INTO views VALUES ('ce05cbe5-1ba9-49c4-8591-000abaec6d7f', 'nsview', 'vw_dados_funcionarios', 'Dados dos Funcionários', 'Dados dos Funcionários', 1, 0, NULL, 'CREATE OR REPLACE VIEW nsview.vw_dados_funcionarios 
\nAS
\nSELECT empresa.codigo AS "Empresa",
\n    empresa.razaosocial AS "Razão Social da Empresa",
\n    empresa.raizcnpj AS "Raiz CNPJ da Empresa",
\n    empresa.ordemcnpj AS "Ordem CNPJ da Empresa",
\n    empresa.cpf AS "CPF da Empresa",
\n    estabelecimento.codigo AS "Estabelecimento",
\n    estabelecimento.nomefantasia AS "Nome Fantasia do Estabelecimento",
\n    estabelecimento.descricao AS "Descrição do Estabelecimento",
\n    estabelecimento.raizcnpj AS "Raiz CNPJ do Estabelecimento",
\n    estabelecimento.ordemcnpj AS "Ordem CNPJ do Estabelecimento",
\n    estabelecimento.caepf AS "CAEPF do Estabelecimento",
\n    estabelecimento.cpf AS "CPF do Estabelecimento",
\n    estabelecimento.tipologradouro AS "Tipo Logradouro do Estabelecimento",
\n    estabelecimento.logradouro AS "Logradouro do Estabelecimento",
\n    estabelecimento.numero AS "Nr. do Estabelecimento",
\n    estabelecimento.complemento AS "Complemento do Estabelecimento",
\n    estabelecimento.bairro AS "Bairro do Estabelecimento",
\n    estabelecimento.cep AS "Cep do Estabelecimento",
\n    estabelecimento.cidade AS "Cidade do Estabelecimento",
\n    estabelecimento.ibge AS "Ibge do Estabelecimento",
\n    lotacao.codigo AS "Lotação",
\n    lotacao.nome AS "Nome da Lotação",
\n    departamento.codigo AS "Departamento",
\n    departamento.nome AS "Nome do Departamento",
\n    funcionario.codigo AS "Funcionário",
\n    funcionario.nome AS "Nome do Funcionário",
\n    funcionario.cpf AS "Cpf do Funcionário",
\n    funcionario.numeroctps AS "Nr. Ctps do Funcionário",
\n    funcionario.seriectps AS "Série Ctps do Funcionário",
\n    funcionario.ufctps AS "Uf Ctps do Funcionário",
\n    funcionario.dataexpedicaoctps AS "Data CTPS",
\n    funcionario.nomepai AS "Nome Pai do Funcionário",
\n    funcionario.nomemae AS "Nome Mãe do Funcionário",
\n    funcionario.numeroric AS "Nr. Ric do Funcionário",
\n    funcionario.orgaoemissorric AS "Orgão Emis. Ric do Func.",
\n    funcionario.dataexpedicaoric AS "Data Exped. Ric do Func.",
\n    funcionario.ufric AS "Uf Ric do Funcionário",
\n    funcionario.cidaderic AS "Cidade Ric do Funcionário",
\n    funcionario.datarescisao AS "Data Rescisão do Funcionário",
\n    funcionario.numerorg AS "Nr. RG do Funcionário",
\n    funcionario.orgaoemissorrg AS "Orgão emis. RG do Func.",
\n    funcionario.dataexpedicaorg AS "Data Exped. RG do Func.",
\n    funcionario.ufrg AS "Uf RG do Funcionário",
\n    funcionario.nis AS "Nis do Funcionário",
\n    funcionario.numerote AS "Nr. TE do Funcionário",
\n    funcionario.zonate AS "Zona TE do Funcionário",
\n    funcionario.secaote AS "Seção TE do Funcionário",
\n    funcionario.ufte AS "UF TE do Funcionário",
\n    funcionario.paisemissaopassaporte AS "País Emis. Passaporte do Func.",
\n    funcionario.numeropassaporte AS "Nr. Passaporte do Func.",
\n    funcionario.orgaoemissorpassaporte AS "Orgão Emis. Passap. do Func.",
\n    funcionario.ufpassaporte AS "Uf Passap. do Func.",
\n    funcionario.dataexpedicaopassaporte AS "Data Exped. Passap. do Func.",
\n    funcionario.datavalidadepassaporte AS "Data Validade Passap. do Func.",
\n    funcionario.tipocertidao AS "Tipo Certidão do Func.",
\n    funcionario.numerocertidao AS "Nr. Certidão do Func.",
\n    funcionario.livrocertidao AS "Livro Certidão do Func.",
\n    funcionario.folhacertidao AS "Folha Certidão do Func.",
\n    funcionario.dataexpedicaocertidao AS "Data Certidão do Func.",
\n    funcionario.cidadecertidao AS "Cidade Certidão do Func.",
\n    funcionario.ufcertidao AS "Uf Certidão do Func.",
\n    funcionario.cartoriocertidao AS "Cartório Certidão do Func.",
\n    funcionario.datanascimento AS "Data Nascimento do Func.",
\n    funcionario.ufnascimento AS "Uf Nascimento do Func.",
\n    funcionario.cidadenascimento AS "Cidade de Nasc. do Func.",
\n    funcionario.municipionascimento AS "Munic. de Nasc. do Func.",
\n    funcionario.paisnascimento AS "País de Nasc. do Func.",
\n    funcionario.paisnacionalidade AS "País do Funcionário",
\n    funcionario.datanaturalizacao AS "Data Naturalização do Func.",
\n    funcionario.numeronaturalizacao AS "Nr. Naturalização do Func.",
\n    funcionario.sexo AS "Sexo do Funcionário",
\n    funcionario.estadocivil AS "Estado civil do Func.",
\n    funcionario.raca AS "Raça do Funcionário",
\n    funcionario.grauinstrucao AS "Grau de Instrução do Func.",
\n    funcionario.dataadmissao AS "Data de admissão do Func.",
\n    funcionario.salariofixo AS "Salário Fixo do Funcionário",
\n    funcionario.tipologradouro AS "Tipo do Logradouro do Func.",
\n    funcionario.municipioresidencia AS "Munic. de Residência do Func.",
\n    funcionario.paisresidencia AS "País de Residênc. do Func.",
\n    funcionario.logradouro AS "Logradouro do Funcionário",
\n    funcionario.numero AS "Nr. do Funcionário",
\n    funcionario.complemento AS "Complemento do Funcionário",
\n    funcionario.bairro AS "Bairro do Funcionário",
\n    funcionario.cidade AS "Cidade do Funcionário",
\n    funcionario.cep AS "Cep do Funcionário",
\n    funcionario.telefone AS "Telefone do Funcionário",
\n    funcionario.email AS "Email do Funcionário",
\n    funcionario.dddtel AS "DDD telefone do Funcionário",
\n    funcionario.quantidademediahorassemanais AS "Qtd Md. Horas Semanais do Func.",
\n    funcionario.diasexperienciacontrato AS "Dias Expe. de Contrato do Func.",
\n    funcionario.diasprorrogacaocontrato AS "Dias Prorrog. de Contrato do Func.",
\n    funcionario.numerocontasalario AS "Nr. Conta Sal. do Func.",
\n    funcionario.numerocontasalariodv AS "Dig. Verif. Conta Sal. do Func.",
\n    dependentefuncionario.codigo AS "Dependente",
\n    dependentefuncionario.nome AS "Nome do Dependente",
\n    dependentefuncionario.tipoparentesco AS "Tipo Parentesco do Dependente",
\n    dependentefuncionario.salariofamilia AS "Salário Família do Dependente",
\n    dependentefuncionario.datanascimento AS "Data Nascimento do Dependente",
\n    dependentefuncionario.impostorenda AS "Imposto de Renda do Dependente",
\n    dependentefuncionario.cpf AS "Cpf do Dependente",
\n    dependentefuncionario.cartoriocertidao AS "Cartório Certidão do Depend.",
\n    dependentefuncionario.numeroregistrocertidao AS "Nr. Registro Cert. do Depend.",
\n    dependentefuncionario.numerolivrocertidao AS "Nr. Livro da Cert. do Depend.",
\n    dependentefuncionario.numerofolhacertidao AS "Nr. Folha da Cert. do Depend.",
\n    dependentefuncionario.dataentregacertidao AS "Data Entrega da Cert. do Depend.",
\n    dependentefuncionario.databaixacertidao AS "Data de Baixa do Depend.",
\n    dependentefuncionario.cidadenascimento AS "Cidade de Nascimento do Depend.",
\n    agencia.codigo AS "Agência",
\n    agencia.numero AS "Nr. End. da Agência",
\n    agencia.digitoverificador AS "Dígito Verific. da Agência",
\n    agencia.nome AS "Nome da Agência",
\n    agencia.cidade AS "Cidade da Agência",
\n    agencia.estado AS "Estado da Agência",
\n    agencia.agencianumero AS "Nr. da Agência",
\n    banco.codigo AS "Banco",
\n    banco.nome AS "Nome do Banco",
\n    banco.numero AS "Nr. do Banco",
\n    nivelcargo.codigo AS "Nível Cargo",
\n    cargo.codigo AS "Cargo",
\n    cargo.nome AS "Nome do Cargo",
\n    cargo.descricao AS "Descrição do Cargo",
\n    cbo.cbo AS "Cbo",
\n    cbo.descricao AS "Descrição do Cbo",
\n    sindicato.codigo AS "Sindicato",
\n    sindicato.nome AS "Nome do Sindicato"
\nFROM persona.trabalhadores funcionario
\n     JOIN ns.empresas empresa ON empresa.empresa = funcionario.empresa
\n     JOIN ns.estabelecimentos estabelecimento ON
\n         estabelecimento.estabelecimento = funcionario.estabelecimento
\n     JOIN persona.lotacoes lotacao ON lotacao.lotacao = funcionario.lotacao
\n     JOIN persona.departamentos departamento ON departamento.departamento =
\n         funcionario.departamento
\n     LEFT JOIN persona.niveiscargos nivelcargo ON nivelcargo.nivelcargo =
\n         funcionario.nivelcargo
\n     LEFT JOIN persona.cargos cargo ON cargo.cargo = nivelcargo.cargo
\n     LEFT JOIN persona.cbos cbo ON cbo.cbo::text = funcionario.cbo::text
\n     LEFT JOIN persona.dependentestrabalhadores dependentefuncionario ON
\n         dependentefuncionario.trabalhador = funcionario.trabalhador
\n     LEFT JOIN financas.agencias agencia ON funcionario.agencia = agencia.agencia
\n     LEFT JOIN financas.bancos banco ON agencia.banco = banco.banco
\n     LEFT JOIN persona.sindicatos sindicato ON funcionario.sindicato =
\n         sindicato.sindicato
\nORDER BY empresa.codigo, estabelecimento.codigo, funcionario.codigo;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('33d18e0d-a3d6-49a9-895c-ae584f91bd18', 'nsview', 'vw_centro_de_custo_financeiro', 'Listagem de Centro de Custo', 'Listagem de Centro de Custo', 4, 0, NULL, 'CREATE VIEW nsview.vw_centro_de_custo_financeiro 
\nAS
\nSELECT cc.centrocusto AS "Ident. do CCusto",
\n    cc.codigo AS "Centro de Custo",
\n    cc.descricao AS "Descrição do CCusto",
\n    cc.codigocontabil AS "Código Contábil do CCusto",
\n    cc.resumo AS "Resumo do CCusto",
\n    cc.paiid AS "Pai do CCusto",
\n    cc.grupoempresarial AS "Grupo Empresarial do CCusto"
\nFROM financas.centroscustos cc
\n     JOIN nsview.vw_grupo_empresarial ge ON ge."Ident. do Grupo Emp." =
\n         cc.grupoempresarial;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('d1814eb2-379b-4ea9-bdbb-6da39f10f194', 'nsview', 'vw_saldos_de_produtos', 'vw_saldos_de_produtos', 'vw_saldos_de_produtos', 6, 1, NULL, 'CREATE VIEW nsview.vw_saldos_de_produtos 
\nAS
\nSELECT l.nome AS "Nome do Local de Estoque",
\n    l.codigo AS "Local de Estoque",
\n    i.especificacao AS "Descrição do Produto",
\n    i.item AS "Item",
\n    e.codigo AS "Estabelecimento",
\n    sum(s.saidas) AS "Saídas",
\n    sum(s.entradas) AS "Entradas",
\n    sum(s.entradas) - sum(s.saidas) AS "Saldo",
\n    (i.item::text || '' - ''::text) || i.especificacao::text AS
\n        "Código e Nome do Produto",
\n    (l.nome::text || '' - ''::text) || l.codigo::text AS "Código e Nome do Local"
\nFROM estoque.saldoslocaisdeestoques s
\n     JOIN estoque.itens i ON s.item = i.id
\n     JOIN estoque.locaisdeestoques l ON s.localdeestoque = l.localdeestoque
\n     JOIN ns.estabelecimentos e ON s.estabelecimento = e.estabelecimento
\nGROUP BY l.nome, l.codigo, i.item, i.especificacao, e.codigo;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('906a265e-af8e-4f46-8ef5-a3bc0a010c63', 'nsview', 'vw_grupo_empresarial', 'Listagem de Grupos Empresariais', 'Listagem de Grupos Empresariais', 0, 0, NULL, 'CREATE VIEW nsview.vw_grupo_empresarial 
\nAS
\nSELECT gruposempresariais.grupoempresarial AS "Ident. do Grupo Emp.",
\n    gruposempresariais.codigo AS "Grupo Empresarial",
\n    gruposempresariais.descricao AS "Descrição do Grupo Emp."
\nFROM ns.gruposempresariais;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('34fd5dfd-e2ab-4ba8-ba86-cd955517d25a', 'nsview', 'vw_projeto', 'Listagem de Projetos', 'Listagem de Projetos', 4, 2, NULL, 'CREATE OR REPLACE VIEW nsview.vw_projeto 
\nAS
\nSELECT p.projeto AS "Ident. do Projeto",
\n    p.codigo AS "Projeto",
\n    p.nome AS "Nome do Projeto",
\n    p.finalizado AS "Projeto Finalizado?",
\n    p.datainicio AS "Data Início do Projeto",
\n    p.datafim AS "Data Fim do Projeto",
\n    p.grupoempresarial AS "Grupo Empresarial do Projeto"
\nFROM financas.projetos p
\n     JOIN nsview.vw_grupo_empresarial ge ON ge."Ident. do Grupo Emp." =
\n         p.grupoempresarial;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('f865e8f9-424a-44b7-ae06-4f5f45180755', 'nsview', 'vw_faturamento_nfse', 'Faturamento de NFS-e', 'Faturamento de NFS-e', 7, 1, NULL, 'CREATE OR REPLACE VIEW nsview.vw_faturamento_nfse 
\nAS
\nSELECT df_docfis.id AS "Identificador NFS-e",
\n    df_docfis.documentorateado AS "Identificador Documento Rateado",
\n    date_part(''month''::text, df_docfis.emissao) AS "Número do Mês",
\n        CASE date_part(''month''::text, df_docfis.emissao)
\n            WHEN 1 THEN ''Janeiro''::text
\n            WHEN 2 THEN ''Fevereiro''::text
\n            WHEN 3 THEN ''Março''::text
\n            WHEN 4 THEN ''Abril''::text
\n            WHEN 5 THEN ''Maio''::text
\n            WHEN 6 THEN ''Junho''::text
\n            WHEN 7 THEN ''Julho''::text
\n            WHEN 8 THEN ''Agosto''::text
\n            WHEN 9 THEN ''Setembro''::text
\n            WHEN 10 THEN ''Outubro''::text
\n            WHEN 11 THEN ''Novembro''::text
\n            WHEN 12 THEN ''Dezembro''::text
\n            ELSE NULL::text
\n        END AS "Nome do Mês",
\n    estabelecimentos.codigo AS "Estabelecimento",
\n    estabelecimentos.nomefantasia AS "Nome do Estabelecimento",
\n        CASE df_docfis.origem
\n            WHEN 0 THEN ''Manual''::text
\n            WHEN 1 THEN ''Ordem de Serviço''::text
\n            WHEN 2 THEN ''Contrato''::text
\n            ELSE NULL::text
\n        END AS "Origem do RPS",
\n    df_docfis.rps AS "Número RPS",
\n    df_docfis.numero AS "Número NFS-e",
\n    df_docfis.emissao AS "Data de Emissão",
\n    pessoas.pessoa AS "Cliente",
\n    pessoas.nome AS "Nome do Cliente",
\n        CASE COALESCE(char_length(desformata_documento(pessoas.cnpj)::text), 0)
\n            WHEN 0 THEN to_char(desformata_documento(pessoas.cpf)::bigint,
\n                ''000"."000"."000"-"00''::text)
\n            WHEN 11 THEN to_char(desformata_documento(pessoas.cnpj)::bigint,
\n                ''000"."000"."000"-"00''::text)
\n            ELSE to_char(desformata_documento(pessoas.cnpj)::bigint,
\n                ''00"."000"."000"/"0000"-"00''::text)
\n        END::character varying(20) AS "Documento do Cliente",
\n    municipios.uf AS "UF Município Cliente",
\n    municipios.nome AS "Nome Município Cliente",
\n    replace(df_docfis.discriminacaoservicos, ''|''::text, chr(13) || chr(10)) AS
\n        "Discriminação dos Serviços",
\n    df_docfis.valor AS "Valor NFS-e",
\n    df_docfis.cfopservico AS "Código do CFOP",
\n    cfop.descricao AS "Descrição do CFOP",
\n    df_docfis.deducaoiss AS "Deduções ISS",
\n    COALESCE(df_docfis.baseiss, 0::numeric) AS "Base ISS",
\n    COALESCE(df_docfis.iss, 0::numeric) AS "Perc. Alíquota ISS",
\n    COALESCE(df_docfis.valoriss, 0::numeric) AS "Valor ISS",
\n    COALESCE(df_docfis.valorir, 0::numeric) AS "Valor IRRF",
\n    COALESCE(df_docfis.valorinss, 0::numeric) AS "Valor INSS",
\n    COALESCE(df_docfis.valorpis, 0::numeric) AS "Valor PIS",
\n    COALESCE(df_docfis.valorcofins, 0::numeric) AS "Valor COFINS",
\n    COALESCE(df_docfis.valorcsll, 0::numeric) AS "Valor CSLL",
\n    pessoas.inscricaomunicipal AS "Inscrição Municipal",
\n    df_docfis.valor - (COALESCE(df_docfis.valoriss, 0::numeric) +
\n        COALESCE(df_docfis.valorir, 0::numeric) + COALESCE(df_docfis.valorinss, 0::numeric) + COALESCE(df_docfis.valorpis, 0::numeric) + COALESCE(df_docfis.valorcofins, 0::numeric) + COALESCE(df_docfis.valorcsll, 0::numeric)) AS "Valor Líquido",
\n        CASE
\n            WHEN df_docfis.tipo_retencao_iss = 0 THEN
\n                COALESCE(df_docfis.valoriss, 0::numeric)
\n            ELSE 0::numeric
\n        END AS "ISS Retido"
\nFROM ns.df_docfis
\n     JOIN ns.pessoas ON pessoas.id = df_docfis.id_pessoa
\n     JOIN ns.enderecos ON enderecos.id_pessoa = pessoas.id AND
\n         enderecos.tipoendereco = 0
\n     JOIN ns.municipios ON municipios.ibge::text = enderecos.ibge::text
\n     JOIN ns.cfop ON cfop.id = df_docfis.id_cfop
\n     JOIN ns.estabelecimentos ON estabelecimentos.estabelecimento =
\n         df_docfis.id_estabelecimento
\nWHERE df_docfis.statusrps = ANY (ARRAY[4, 6])
\nORDER BY df_docfis.emissao, df_docfis.numero; ', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('b487a0a1-cdea-4c26-9c13-ac111d77b4c7', 'nsview', 'vw_faturamento_nfse_rateiofinanceiro', 'Faturamento de NFS-e - Rateio Financeiro', 'Faturamento de NFS-e - Rateio Financeiro', 7, 1, NULL, 'CREATE OR REPLACE VIEW nsview.vw_faturamento_nfse_rateiofinanceiro 
\nSELECT vw_faturamento_nfse."Identificador NFS-e",
\n    vw_faturamento_nfse."Número do Mês",
\n    vw_faturamento_nfse."Nome do Mês",
\n    vw_faturamento_nfse."Estabelecimento",
\n    vw_faturamento_nfse."Nome do Estabelecimento",
\n    vw_faturamento_nfse."Origem do RPS",
\n    vw_faturamento_nfse."Número RPS",
\n    vw_faturamento_nfse."Número NFS-e",
\n    vw_faturamento_nfse."Data de Emissão",
\n    vw_faturamento_nfse."Cliente",
\n    vw_faturamento_nfse."Nome do Cliente",
\n    vw_faturamento_nfse."Documento do Cliente",
\n    vw_faturamento_nfse."UF Município Cliente",
\n    vw_faturamento_nfse."Nome Município Cliente",
\n    vw_faturamento_nfse."Discriminação dos Serviços",
\n    vw_faturamento_nfse."Valor NFS-e",
\n    vw_faturamento_nfse."Código do CFOP",
\n    vw_faturamento_nfse."Descrição do CFOP",
\n    vw_faturamento_nfse."Deduções ISS",
\n    vw_faturamento_nfse."Base ISS",
\n    vw_faturamento_nfse."Perc. Alíquota ISS",
\n    vw_faturamento_nfse."Valor ISS",
\n    vw_faturamento_nfse."Valor IRRF",
\n    vw_faturamento_nfse."Valor INSS",
\n    vw_faturamento_nfse."Valor PIS",
\n    vw_faturamento_nfse."Valor COFINS",
\n    vw_faturamento_nfse."Valor CSLL",
\n    classificacoesfinanceiras.codigo AS "Classificação Financeira",
\n    classificacoesfinanceiras.descricao AS "Nome Classificação Financeira",
\n    centroscustos.codigo AS "Centro de Custo",
\n    centroscustos.descricao AS "Nome Centro de Custo",
\n    projetos.codigo AS "Projeto",
\n    projetos.nome AS "Nome Projeto",
\n    (rateiosfinanceiros.valor / vw_faturamento_nfse."Valor NFS-e"::double
\n        precision * 100::double precision)::numeric(20,2) AS "Perc. Valor NFS-e",
\n    rateiosfinanceiros.valor AS "Valor Rateio"
\nFROM nsview.vw_faturamento_nfse
\n     JOIN financas.documentosrateados ON documentosrateados.documentorateado =
\n         vw_faturamento_nfse."Identificador Documento Rateado"
\n     JOIN financas.rateiosfinanceiros ON rateiosfinanceiros.documentorateado =
\n         documentosrateados.documentorateado
\n     LEFT JOIN financas.classificacoesfinanceiras ON
\n         classificacoesfinanceiras.classificacaofinanceira = rateiosfinanceiros.classificacaofinanceira
\n     LEFT JOIN financas.centroscustos ON centroscustos.centrocusto =
\n         rateiosfinanceiros.centrocusto
\n     LEFT JOIN financas.projetos ON projetos.projeto = rateiosfinanceiros.projeto
\nORDER BY vw_faturamento_nfse."Data de Emissão",
\n    vw_faturamento_nfse."Número NFS-e", classificacoesfinanceiras.codigo, centroscustos.codigo, projetos.codigo;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('0d719e48-4ff0-4004-95a9-45bb6ba28342', 'nsview', 'vw_faturamento_nfse_servicos', 'Faturamento de NFS-e - Serviços', 'Faturamento de NFS-e - Serviços', 7, 1, NULL, 'CREATE OR REPLACE VIEW nsview.vw_faturamento_nfse_servicos 
\nAS
\nSELECT vw_faturamento_nfse."Identificador NFS-e",
\n    vw_faturamento_nfse."Número do Mês",
\n    vw_faturamento_nfse."Nome do Mês",
\n    vw_faturamento_nfse."Estabelecimento",
\n    vw_faturamento_nfse."Nome do Estabelecimento",
\n    vw_faturamento_nfse."Origem do RPS",
\n    vw_faturamento_nfse."Número RPS",
\n    vw_faturamento_nfse."Número NFS-e",
\n    vw_faturamento_nfse."Data de Emissão",
\n    vw_faturamento_nfse."Cliente",
\n    vw_faturamento_nfse."Nome do Cliente",
\n    vw_faturamento_nfse."Documento do Cliente",
\n    vw_faturamento_nfse."UF Município Cliente",
\n    vw_faturamento_nfse."Nome Município Cliente",
\n    vw_faturamento_nfse."Discriminação dos Serviços",
\n    vw_faturamento_nfse."Valor NFS-e",
\n    vw_faturamento_nfse."Código do CFOP",
\n    vw_faturamento_nfse."Descrição do CFOP",
\n    vw_faturamento_nfse."Deduções ISS",
\n    vw_faturamento_nfse."Base ISS",
\n    vw_faturamento_nfse."Perc. Alíquota ISS",
\n    vw_faturamento_nfse."Valor ISS",
\n    vw_faturamento_nfse."Valor IRRF",
\n    vw_faturamento_nfse."Valor INSS",
\n    vw_faturamento_nfse."Valor PIS",
\n    vw_faturamento_nfse."Valor COFINS",
\n    vw_faturamento_nfse."Valor CSLL",
\n    df_servicos.id AS "Identificador Item NFS-e",
\n    servicos.servico AS "Código Item Faturamento",
\n    servicos.descricao AS "Descrição Item Faturamento",
\n    df_servicos.descricao AS "Descrição Serviço",
\n    df_servicos.quantidade AS "Quantidade Serviço",
\n    df_servicos.valor AS "Valor Serviço",
\n        CASE
\n            WHEN df_servicos.retem_iss THEN '' Sim''::text
\n            ELSE '' Não''::text
\n        END AS "ISS Tributado no Item?",
\n    COALESCE(df_servicos.valor_iss, 0::numeric) AS "Valor ISS do Item",
\n        CASE
\n            WHEN df_servicos.retem_irrf THEN '' Sim''::text
\n            ELSE '' Não''::text
\n        END AS "IRRF Tributado no Item?",
\n    COALESCE(df_servicos.valor_irrf, 0::numeric) AS "Valor IRRF do Item",
\n        CASE
\n            WHEN df_servicos.retem_inss THEN '' Sim''::text
\n            ELSE '' Não''::text
\n        END AS "INSS Tributado no Item?",
\n    COALESCE(df_servicos.valor_inss, 0::numeric) AS "Valor INSS do Item",
\n        CASE
\n            WHEN df_servicos.retem_pis THEN '' Sim''::text
\n            ELSE '' Não''::text
\n        END AS "PIS Tributado no Item?",
\n    COALESCE(df_servicos.valor_pis, 0::numeric) AS "Valor PIS do Item",
\n        CASE
\n            WHEN df_servicos.retem_cofins THEN '' Sim''::text
\n            ELSE '' Não''::text
\n        END AS "COFINS Tributado no Item?",
\n    COALESCE(df_servicos.valor_cofins, 0::numeric) AS "Valor COFINS do Item",
\n        CASE
\n            WHEN df_servicos.retem_csll THEN '' Sim''::text
\n            ELSE '' Não''::text
\n        END AS "CSLL Tributado no Item?",
\n    COALESCE(df_servicos.valor_csll, 0::numeric) AS "Valor CSLL do Item"
\nFROM nsview.vw_faturamento_nfse
\n     JOIN ns.df_servicos ON df_servicos.id_docfis =
\n         vw_faturamento_nfse."Identificador NFS-e"
\n     JOIN servicos.servicos ON servicos.id = df_servicos.id_servico
\nORDER BY vw_faturamento_nfse."Data de Emissão",
\n    vw_faturamento_nfse."Número NFS-e", df_servicos.descricao;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('616d0ca3-cddb-4e2f-8f37-cb3c488ef84a', 'nsview', 'vw_movimentacao_centro_de_custo', 'Movimentação dos Centros de Custo', 'Movimentação dos Centros de Custo', 2, 0, NULL, 'CREATE OR REPLACE VIEW nsview.vw_movimentacao_centro_de_custo 
\nAS
\n WITH RECURSIVE saldocentrodecusto(empresa, estabelecimento, centrodecusto,
\n     nome, data, ano, mes, dia, totaldebito, totalcredito, totaldebitoantestransf, totalcreditoantestransf, centrodecustomae, conta) AS (
\nSELECT ca.empresa,
\n            est_1.estabelecimento,
\n            ca.codigo AS centrodecusto,
\n            ca.nome,
\n            s_1.data,
\n            s_1.ano,
\n            s_1.mes,
\n            s_1.dia,
\n            s_1.totaldebito,
\n            s_1.totalcredito,
\n            s_1.totaldebitoantestransf,
\n            s_1.totalcreditoantestransf,
\n            ca.centrodecustomae,
\n            s_1.conta
\nFROM contabil.saldos s_1
\n             JOIN contabil.vwcentrodecustoanalitico ca ON s_1.centrodecusto =
\n                 ca.centrodecusto AND s_1.ano = ca.ano
\n             JOIN ns.estabelecimentos est_1 ON ca.empresa = est_1.empresa AND
\n                 s_1.estabelecimento = est_1.estabelecimento
\nWHERE s_1.centrodecusto IS NOT NULL
\nUNION ALL
\nSELECT c_1.empresa,
\n            s_1.estabelecimento,
\n            c_1.codigo AS centrodecusto,
\n            c_1.nome,
\n            s_1.data,
\n            s_1.ano,
\n            s_1.mes,
\n            s_1.dia,
\n            s_1.totaldebito,
\n            s_1.totalcredito,
\n            s_1.totaldebitoantestransf,
\n            s_1.totalcreditoantestransf,
\n            c_1.centrodecustomae,
\n            s_1.conta
\nFROM contabil.vwcentrodecusto c_1
\n             JOIN saldocentrodecusto s_1 ON c_1.centrodecusto =
\n                 s_1.centrodecustomae AND c_1.ano = s_1.ano AND c_1.empresa = s_1.empresa
\n        )
\n    SELECT s.centrodecusto AS "Centro de Custo",
\n    s.nome AS "Nome do Centro de Custo",
\n    c.codigo AS "Conta",
\n    c.nome AS "Nome da Conta",
\n    s.data AS "Data",
\n    sum(s.totaldebitoantestransf) AS "Débito (Antes do Enc.)",
\n    sum(s.totalcreditoantestransf) AS "Crédito (Antes do Enc.)",
\n    sum(s.totalcreditoantestransf - s.totaldebitoantestransf) AS
\n        "Movimentação (Antes do Enc.)",
\n    sum(s.totaldebito) AS "Débito",
\n    sum(s.totalcredito) AS "Crédito",
\n    sum(s.totalcredito - s.totaldebito) AS "Movimentação",
\n    to_char(s.data::timestamp with time zone, ''YYYY/MM''::text) AS "Ano/Mês",
\n    s.ano AS "Ano",
\n    lpad(s.mes::text, 2, ''0''::text) AS "Mês",
\n    s.dia AS "Dia",
\n    to_char(s.data::timestamp with time zone, ''YYYY/Q''::text) || ''T''::text AS
\n        "Ano/Trimestre",
\n    date_part(''QUARTER''::text, s.data) || ''T''::text AS "Trimestre",
\n    e.codigo AS "Empresa",
\n    e.razaosocial AS "Razão Social da Empresa",
\n    e.raizcnpj::text || e.ordemcnpj::text AS "CNPJ da Empresa",
\n    est.codigo AS "Estabelecimento",
\n    est.nomefantasia AS "Nome do Estabelecimento",
\n    est.raizcnpj::text || est.ordemcnpj::text AS "CNPJ do Estabelecimento"
\n    FROM saldocentrodecusto s
\n     JOIN ns.empresas e ON s.empresa = e.empresa
\n     JOIN ns.estabelecimentos est ON e.empresa = est.empresa AND
\n         s.estabelecimento = est.estabelecimento
\n     JOIN contabil.vwcontas c ON s.conta = c.conta AND s.ano = c.ano AND
\n         est.empresa = c.empresa
\n    GROUP BY s.centrodecusto, s.nome, c.codigo, c.nome, s.data, s.ano, s.mes,
\n        s.dia, e.codigo, e.razaosocial, e.raizcnpj, e.ordemcnpj, est.codigo, est.nomefantasia, est.raizcnpj, est.ordemcnpj
\n    ORDER BY e.razaosocial, est.nomefantasia, s.centrodecusto, c.codigo, s.data;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('bc984504-d9ce-4995-b96f-9303ef1e7baf', 'nsview', 'vw_titulos_a_pagar', 'Títulos à pagar', 'Títulos à pagar', 4, 4, NULL, 'CREATE VIEW nsview.vw_titulos_a_pagar 
\nAS
\nSELECT tit.numero AS "Número do Título",
\n        CASE
\n            WHEN tit.adiantamento THEN ''Adiantamento''::text
\n            ELSE ''Normal''::text
\n        END::character varying AS "Tipo de Título",
\n        CASE
\n            WHEN tit.situacao = 0 THEN ''Aberto''::text
\n            WHEN tit.situacao = 1 THEN ''Quitado''::text
\n            WHEN tit.situacao = 2 THEN ''Em Débito''::text
\n            WHEN tit.situacao = 3 THEN ''Cancelado''::text
\n            WHEN tit.situacao = 4 THEN ''Protestado''::text
\n            WHEN tit.situacao = 5 THEN ''Estornado''::text
\n            WHEN tit.situacao = 6 THEN ''Agendado''::text
\n            ELSE NULL::text
\n        END::character varying AS "Situação do Título",
\n        CASE
\n            WHEN tit.dataprovisoria OR tit.valorprovisorio THEN ''Sim''::text
\n            ELSE ''Não''::text
\n        END::character varying AS "Título Provisório",
\n    tit.emissao AS "Data de Emissão",
\n    to_char(tit.emissao::timestamp with time zone, ''YYYY/MM''::text) AS
\n        "Ano/Mês da Emissão",
\n    date_part(''YEAR''::text, tit.emissao) AS "Ano da Emissão",
\n    lpad(date_part(''MONTH''::text, tit.emissao)::text, 2, ''0''::text) AS "Mês da Emissão",
\n    date_part(''DAY''::text, tit.emissao) AS "Dia da Emissão",
\n    tit.pessoa AS "Fornecedor",
\n    tit.razaosocial AS "Razão Social do Fornecedor",
\n    pessoas.nomefantasia AS "Nome do Fornecedor",
\n    c.codigo AS "Conta",
\n    c.nome AS "Nome da Conta",
\n    tit.valorbruto AS "Valor",
\n    tit.valorliquido AS "Valor Líquido",
\n    b.valor AS "Valor da Baixa",
\n    tit.saldoadiantamento AS "Saldo do Adiantamento",
\n    est.codigo AS "Estabelecimento",
\n    est.nomefantasia AS "Nome do Estabelecimento",
\n    emp.codigo AS "Empresa",
\n    emp.descricao AS "Nome da Empresa",
\n    ge.codigo AS "Grupo Empresarial",
\n    ge.descricao AS "Nome do Grupo Empresarial",
\n    tit.vencimento AS "Data do Vencimento",
\n    to_char(tit.vencimento::timestamp with time zone, ''YYYY/MM''::text) AS
\n        "Ano/Mês do Vencimento",
\n    date_part(''YEAR''::text, tit.vencimento) AS "Ano do Vencimento",
\n    date_part(''MONTH''::text, tit.vencimento) AS "Mês do Vencimento",
\n    date_part(''DAY''::text, tit.vencimento) AS "Dia do Vencimento",
\n    tit.previsaovencimento AS "Data Previsão do Vencimento",
\n    to_char(tit.previsaovencimento::timestamp with time zone, ''YYYY/MM''::text)
\n        AS "Ano/Mês da Previsão Venc.",
\n    date_part(''YEAR''::text, tit.previsaovencimento) AS "Ano da Previsão Venc.",
\n    date_part(''MONTH''::text, tit.previsaovencimento) AS "Mês da Previsão Venc.",
\n    date_part(''DAY''::text, tit.previsaovencimento) AS "Dia da Previsão Venc.",
\n    b.data AS "Data da Baixa",
\n    to_char(b.data::timestamp with time zone, ''YYYY/MM''::text) AS "Ano/Mês da Baixa",
\n    date_part(''YEAR''::text, b.data) AS "Ano da Baixa",
\n    date_part(''MONTH''::text, b.data) AS "Mês da Baixa",
\n    date_part(''DAY''::text, b.data) AS "Dia da Baixa",
\n    tit.percentualdesconto,
\n    tit.percentualmulta,
\n    tit.percentualjurosdiario,
\n    tit.observacao,
\n    tit.pisretido,
\n    tit.cofinsretido,
\n    tit.csllretido,
\n    tit.irretido,
\n        CASE
\n            WHEN tit.origem = 0 THEN ''Manutenção''::text
\n            WHEN tit.origem = 1 THEN ''Pedido''::text
\n            WHEN tit.origem = 2 THEN ''RPS''::text
\n            WHEN tit.origem = 3 THEN ''Contrato''::text
\n            WHEN tit.origem = 4 THEN ''Scritta''::text
\n            WHEN tit.origem = 5 THEN ''Nota Fiscal Serviço''::text
\n            WHEN tit.origem = 6 THEN ''Nota Fiscal Eletrônica''::text
\n            WHEN tit.origem = 7 THEN ''Lançamento Fiscal''::text
\n            WHEN tit.origem = 8 THEN ''Documentos''::text
\n            WHEN tit.origem = 9 THEN ''Nota Serviços Publicos''::text
\n            WHEN tit.origem = 10 THEN ''Nota Prestação Serviços''::text
\n            WHEN tit.origem = 11 THEN ''Conhecimento Transporte''::text
\n            WHEN tit.origem = 12 THEN ''GR ICMS''::text
\n            WHEN tit.origem = 13 THEN ''GR ISS''::text
\n            WHEN tit.origem = 14 THEN ''GNRE''::text
\n            WHEN tit.origem = 15 THEN ''DARF''::text
\n            WHEN tit.origem = 16 THEN ''GPS''::text
\n            WHEN tit.origem = 17 THEN ''Outros Documentos''::text
\n            WHEN tit.origem = 18 THEN ''Folha Persona''::text
\n            WHEN tit.origem = 19 THEN ''Pagamento Persona''::text
\n            WHEN tit.origem = 20 THEN ''Guia Persona''::text
\n            WHEN tit.origem = 21 THEN ''Nota Controller''::text
\n            WHEN tit.origem = 22 THEN ''Importação''::text
\n            WHEN tit.origem = 23 THEN ''Previsão''::text
\n            WHEN tit.origem = 24 THEN ''Fatura''::text
\n            ELSE NULL::text
\n        END::character varying AS "Origem",
\n    tit.inssretido AS "INSS Retido",
\n    tit.aliquotaiss AS "Aliquota ISS",
\n    tit.issretido AS "ISS Retido",
\n    tit.nossonumero AS "Nosso número",
\n    tit.irretidonf AS "IRRF Retido na Nota",
\n    tit.inssretidonf AS "INSS Retido na Nota",
\n    tit.parcela AS "Parcela",
\n    tit.totalparcelas AS "Total de Parcelas",
\n    tit.desconto AS "Desconto",
\n    tit.juros AS "Juros",
\n    tit.multa AS "Multa",
\n    tit.outrosacrescimos AS "Outros Acrescimos",
\n    tit.documentorateado AS "Documento Rateado",
\n    tit.numeronota AS "Número Nota"
\nFROM financas.vwtitulos tit
\n     JOIN ns.estabelecimentos est ON est.estabelecimento = tit.id_estabelecimento
\n     JOIN ns.empresas emp ON emp.empresa = est.empresa
\n     JOIN ns.gruposempresariais ge ON emp.grupoempresarial = ge.grupoempresarial
\n     JOIN ns.pessoas pessoas ON tit.id_pessoa = pessoas.id
\n     LEFT JOIN financas.baixas b ON b.id_titulo = tit.id
\n     LEFT JOIN financas.contas c ON c.conta = tit.conta
\nWHERE tit.sinal = 1
\nORDER BY tit.emissao, tit.numero;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('10291241-1598-4b73-8a37-16a7c38d3cf1', 'nsview', 'vw_servicos_prestados', 'Ordens de Serviços', 'Ordens de Serviços', 7, 0, NULL, 'CREATE OR REPLACE VIEW nsview.vw_servicos_prestados 
\nAS
\nSELECT os.data_criacao AS "Data de Criação",
\n    to_char(os.data_criacao::timestamp with time zone, ''YYYY/MM''::text) AS
\n        "Ano/Mês de Criação",
\n    date_part(''YEAR''::text, os.data_criacao) AS "Ano de Criação",
\n    lpad(date_part(''YEAR''::text, os.data_criacao)::text, 2, ''0''::text) AS
\n        "Mês de Criação",
\n    date_part(''YEAR''::text, os.data_criacao) AS "Dia de Criação",
\n        CASE os.situacao
\n            WHEN 0 THEN ''Preliminar''::text
\n            WHEN 1 THEN ''Agendada''::text
\n            WHEN 2 THEN ''Encerrada''::text
\n            WHEN 3 THEN ''Encerrada sem faturamento''::text
\n            WHEN 4 THEN ''Faturada''::text
\n            WHEN 5 THEN ''Cancelada''::text
\n            ELSE NULL::text
\n        END AS "Situação",
\n    os.referenciaexterna AS "Referência Externa",
\n    os.numero AS "Número",
\n    est.codigo AS "Estabelecimento",
\n    est.descricao AS "Descrição do Estabelecimento",
\n    cli.pessoa AS "Cliente",
\n    cli.nome AS "Nome do Cliente",
\n    os.valor_total AS "Valor Total",
\n    os.horimetro AS "Horímetro",
\n    st.codigo AS "Serviço Técnico",
\n    st.descricao AS "Descrição do Serviço Tec.",
\n    objs.codigo AS "Instância",
\n    objs.nome AS "Descrição da Instância"
\nFROM servicos.ordensservicos os
\n     JOIN ns.estabelecimentos est ON est.estabelecimento = os.estabelecimento_id
\n     JOIN ns.pessoas cli ON cli.id = os.cliente_id
\n     JOIN servicos.objetosservicos objs ON objs.objetoservico = os.objetoservico_id
\n     JOIN servicos.ordensservicositens os_st ON os_st.ordemservico = os.ordemservico
\n     JOIN servicos.servicostecnicos st ON st.servicotecnico = os_st.servicotecnico
\nORDER BY os.data_criacao;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('2ff807bf-0d49-4ef5-9627-50642a03159e', 'nsview', 'vw_processo_de_producao', 'vw_processo_de_producao', 'vw_processo_de_producao', 6, 3, NULL, 'CREATE VIEW nsview.vw_processo_de_producao 
\nAS
\nSELECT pmp.codigo AS "Modelo",
\n    pmp.descricao AS "Descrição do Modelo",
\n    (pmp.codigo::text || '' - ''::text) || pmp.descricao::text AS
\n        "Nome e Código do Processo",
\n        CASE
\n            WHEN pp.status = 0 THEN ''Em processo''::text
\n            WHEN pp.status = 1 THEN ''Finalizado''::text
\n            ELSE ''Cancelado''::text
\n        END AS "Status do Processo",
\n    pp.data_inicio AS "Data de início",
\n    u.nome AS "Nome do Usuário",
\n    pm.codigo AS "Etapa",
\n    pm.descricao AS "Descrição da Etapa",
\n    (pm.codigo::text || '' - ''::text) || pm.descricao::text AS "Nome e Código da Etapa",
\n        CASE
\n            WHEN ppe.status = 0 THEN ''Aguardando''::text
\n            ELSE ''Processado''::text
\n        END AS "Status da Etapa"
\nFROM estoque.producao_processos pp
\n     JOIN estoque.producao_modelos_processos pmp ON pp.producao_modelo_processo
\n         = pmp.producao_modelo_processo
\n     JOIN ns.usuarios u ON pp.usuario = u.usuario
\n     JOIN estoque.producao_processos_etapas ppe ON pp.producao_processo =
\n         ppe.producao_processo
\n     JOIN estoque.producao_modelos pm ON ppe.producao_modelo = pm.producao_modelo;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('6213b200-4dac-495f-b830-693748329a84', 'nsview', 'vw_rps', 'Recibos Provisórios de Serviços', 'Recibos Provisórios de Serviços', 7, 1, NULL, 'CREATE OR REPLACE VIEW nsview.vw_rps 
\nAS
\nSELECT rps.emissao AS "Data de Emissão",
\n    to_char(rps.emissao::timestamp with time zone, ''YYYY/MM''::text) AS
\n        "Ano/Mês de Emissão",
\n    date_part(''YEAR''::text, rps.emissao) AS "Ano de Emissão",
\n    lpad(date_part(''YEAR''::text, rps.emissao)::text, 2, ''0''::text) AS "Mês de Emissão",
\n    date_part(''YEAR''::text, rps.emissao) AS "Dia de Emissão",
\n    rps.numero AS "Número",
\n    rps.cfopservico AS "CFOP",
\n    p.pessoa AS "Cliente",
\n    p.nome AS "Nome do Cliente",
\n    COALESCE(rps.ir, 0::numeric) AS "Valor IR",
\n    COALESCE(rps.baseir, 0::numeric) AS "Base IR",
\n        CASE
\n            WHEN rps.retemir THEN '' Sim''::text
\n            ELSE '' Não''::text
\n        END AS "Retem IR?",
\n    COALESCE(rps.valoriss, 0::numeric) AS "Valor ISS",
\n    COALESCE(rps.baseiss, 0::numeric) AS "Base ISS",
\n        CASE
\n            WHEN rps.retemiss THEN '' Sim''::text
\n            ELSE '' Não''::text
\n        END AS "Retem ISS?",
\n    rps.valor AS "Valor"
\nFROM ns.df_docfis rps
\n     JOIN ns.pessoas p ON p.id = rps.id_pessoa
\nWHERE rps.situacao = ANY (ARRAY[0, 1, 3, 5])
\nORDER BY rps.emissao, p.pessoa;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('89be649f-6661-4a4d-a20c-e99a1bd41604', 'nsview', 'vw_notas_de_servicos', 'Notas de Serviços', 'Notas de Serviços', 7, 1, NULL, 'CREATE OR REPLACE VIEW nsview.vw_notas_de_servicos 
\nAS
\nSELECT rps.emissao AS "Data de Emissão",
\n    (date_part(''YEAR''::text, rps.emissao) || ''/''::text) ||
\n        date_part(''MONTH''::text, rps.emissao) AS "Ano/Mês de Emissão",
\n    rps.numero AS "Número",
\n    rps.cfopservico AS "CFOP",
\n    p.pessoa AS "Cliente",
\n    p.nome AS "Nome do Cliente",
\n    COALESCE(rps.ir, 0::numeric) AS "Valor IR",
\n    COALESCE(rps.baseir, 0::numeric) AS "Base IR",
\n        CASE
\n            WHEN rps.retemir THEN '' Sim''::text
\n            ELSE '' Não''::text
\n        END AS "Retem IR?",
\n    COALESCE(rps.valoriss, 0::numeric) AS "Valor ISS",
\n    COALESCE(rps.baseiss, 0::numeric) AS "Base ISS",
\n        CASE
\n            WHEN rps.retemiss THEN '' Sim''::text
\n            ELSE '' Não''::text
\n        END AS "Retem ISS?",
\n    rps.valor AS "Valor"
\nFROM ns.df_docfis rps
\n     JOIN ns.pessoas p ON p.id = rps.id_pessoa
\nWHERE rps.situacao = ANY (ARRAY[2, 4])
\nORDER BY rps.emissao, p.pessoa;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('177cc211-c5db-4932-a155-e911ce31ff04', 'nsview', 'vw_movimentacao_conta_contabil', 'Movimentação das Contas Contábeis', 'Movimentação das Contas Contábeis', 2, 0, NULL, 'CREATE VIEW nsview.vw_movimentacao_conta_contabil 
\nAS
\n WITH RECURSIVE saldocontascontabeis(empresa, estabelecimento, conta, nome,
\n     data, ano, mes, dia, totaldebito, totalcredito, totaldebitoantestransf, totalcreditoantestransf, contamae) AS (
\nSELECT ca.empresa,
\n            est_1.estabelecimento,
\n            ca.codigo AS conta,
\n            ca.nome,
\n            s_1.data,
\n            s_1.ano,
\n            s_1.mes,
\n            s_1.dia,
\n            s_1.totaldebito,
\n            s_1.totalcredito,
\n            s_1.totaldebitoantestransf,
\n            s_1.totalcreditoantestransf,
\n            ca.contamae
\nFROM contabil.saldos s_1
\n             JOIN contabil.vwcontasanaliticas ca ON s_1.conta = ca.conta AND
\n                 s_1.ano = ca.ano
\n             JOIN ns.estabelecimentos est_1 ON ca.empresa = est_1.empresa AND
\n                 s_1.estabelecimento = est_1.estabelecimento
\nWHERE s_1.centrodecusto IS NULL
\nUNION ALL
\nSELECT c.empresa,
\n            s_1.estabelecimento,
\n            c.codigo AS conta,
\n            c.nome,
\n            s_1.data,
\n            s_1.ano,
\n            s_1.mes,
\n            s_1.dia,
\n            s_1.totaldebito,
\n            s_1.totalcredito,
\n            s_1.totaldebitoantestransf,
\n            s_1.totalcreditoantestransf,
\n            c.contamae
\nFROM contabil.vwcontas c
\n             JOIN saldocontascontabeis s_1 ON c.conta = s_1.contamae AND c.ano
\n                 = s_1.ano AND c.empresa = s_1.empresa
\n        )
\n    SELECT cc_n1.classificacao AS "Classificação da Conta",
\n    s.conta AS "Conta",
\n    s.nome AS "Nome da Conta",
\n    s.data AS "Data",
\n    sum(s.totaldebitoantestransf) AS "Débito (Antes do Enc.)",
\n    sum(s.totalcreditoantestransf) AS "Crédito (Antes do Enc.)",
\n    sum(s.totalcreditoantestransf - s.totaldebitoantestransf) AS
\n        "Movimentação (Antes do Enc.)",
\n    sum(s.totaldebito) AS "Débito",
\n    sum(s.totalcredito) AS "Crédito",
\n    sum(s.totalcredito - s.totaldebito) AS "Movimentação",
\n    to_char(s.data::timestamp with time zone, ''YYYY/MM''::text) AS "Ano/Mês",
\n    s.ano AS "Ano",
\n    lpad(s.mes::text, 2, ''0''::text) AS "Mês",
\n    s.dia AS "Dia",
\n    to_char(s.data::timestamp with time zone, ''YYYY/Q''::text) || ''T''::text AS
\n        "Ano/Trimestre",
\n    date_part(''QUARTER''::text, s.data) || ''T''::text AS "Trimestre",
\n    e.codigo AS "Empresa",
\n    e.razaosocial AS "Razão Social da Empresa",
\n    e.raizcnpj::text || e.ordemcnpj::text AS "CNPJ da Empresa",
\n    est.codigo AS "Estabelecimento",
\n    est.nomefantasia AS "Nome do Estabelecimento",
\n    est.raizcnpj::text || est.ordemcnpj::text AS "CNPJ do Estabelecimento"
\n    FROM saldocontascontabeis s
\n     JOIN ns.empresas e ON s.empresa = e.empresa
\n     JOIN ns.estabelecimentos est ON e.empresa = est.empresa AND
\n         s.estabelecimento = est.estabelecimento
\n     LEFT JOIN (
\n        SELECT cc.empresa,
\n            cc.ano,
\n            c2.codigo AS codigoconta,
\n                CASE
\n                    WHEN cc.clacon = 1 THEN ''Ativo''::text
\n                    WHEN cc.clacon = 2 THEN ''Passivo''::text
\n                    WHEN cc.clacon = 3 THEN ''Receita''::text
\n                    WHEN cc.clacon = 4 THEN ''Despesa''::text
\n                    ELSE NULL::text
\n                END AS classificacao
\n        FROM contabil.classificacaocontas cc
\n             JOIN contabil.vwcontas c2 ON cc.conta = c2.contaanual AND
\n                 cc.empresa = c2.empresa AND cc.ano = c2.ano
\n        WHERE cc.clacon = ANY (ARRAY[1::bigint, 2::bigint, 3::bigint, 4::bigint])
\n        ) cc_n1 ON s.empresa = cc_n1.empresa AND s.ano = cc_n1.ano AND
\n            s.conta::text ~~ (cc_n1.codigoconta::text || ''%''::text)
\n    GROUP BY cc_n1.classificacao, s.conta, s.nome, s.data, s.ano, s.mes, s.dia,
\n        e.codigo, e.razaosocial, e.raizcnpj, e.ordemcnpj, est.codigo, est.nomefantasia, est.raizcnpj, est.ordemcnpj
\n    ORDER BY e.razaosocial, est.nomefantasia, s.conta, s.data;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('99038135-def8-4413-aaef-531ab4104d3e', 'nsview', 'vw_saldos_de_produtos_com_slot', 'vw_saldos_de_produtos_com_slot', 'vw_saldos_de_produtos_com_slot', 6, 1, NULL, 'CREATE VIEW nsview.vw_saldos_de_produtos_com_slot 
\nAS
\nSELECT l.nome AS "Nome do Local de Estoque",
\n    l.codigo AS "Local de Estoque",
\n    i.especificacao AS "Descrição do Produto",
\n    i.item AS "Item",
\n    e.codigo AS "Estabelecimento",
\n    sum(s.saidas) AS "Saídas",
\n    sum(s.entradas) AS "Entradas",
\n    sum(s.entradas) - sum(s.saidas) AS "Saldo",
\n    (i.item::text || '' - ''::text) || i.especificacao::text AS
\n        "Código e Nome do Produto",
\n    (l.nome::text || '' - ''::text) || l.codigo::text AS "Código e Nome do Local",
\n    s.slot AS "Slot"
\nFROM estoque.saldoslocaisdeestoques s
\n     JOIN estoque.itens i ON s.item = i.id
\n     JOIN estoque.locaisdeestoques l ON s.localdeestoque = l.localdeestoque
\n     JOIN ns.estabelecimentos e ON s.estabelecimento = e.estabelecimento
\nGROUP BY l.nome, l.codigo, i.item, i.especificacao, e.codigo, s.slot;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('e40bea57-6982-4d43-95c6-cb1ccbdb273c', 'nsview', 'vw_titulos_a_pagar_rateio', 'Títulos à pagar com Rateio', 'Títulos à pagar com Rateio', 4, 4, NULL, 'CREATE VIEW nsview.vw_titulos_a_pagar_rateio 
\nAS
\nSELECT tit."Número do Título",
\n    tit."Tipo de Título",
\n    tit."Situação do Título",
\n    tit."Título Provisório",
\n    tit."Data de Emissão",
\n    tit."Ano/Mês da Emissão",
\n    tit."Ano da Emissão",
\n    tit."Mês da Emissão",
\n    tit."Dia da Emissão",
\n    tit."Fornecedor",
\n    tit."Razão Social do Fornecedor",
\n    tit."Nome do Fornecedor",
\n    tit."Conta",
\n    tit."Nome da Conta",
\n    COALESCE(rf.valor, 0::double precision) AS "Valor",
\n    COALESCE(
\n        CASE
\n            WHEN tit."Documento Rateado" IS NULL THEN tit."Valor"::double precision
\n            ELSE round((rf.valor * (tit."Valor da Baixa" / tit."Valor")::double
\n                precision)::numeric, 2)::double precision
\n        END, 0::double precision) AS "Valor da Baixa",
\n    COALESCE(
\n        CASE
\n            WHEN tit."Documento Rateado" IS NULL THEN
\n                tit."Saldo do Adiantamento"::double precision
\n            ELSE rf.valor
\n        END, 0::double precision) AS "Saldo Adiantamento",
\n    tit."Estabelecimento",
\n    tit."Nome do Estabelecimento",
\n    tit."Empresa",
\n    tit."Nome da Empresa",
\n    tit."Grupo Empresarial",
\n    tit."Nome do Grupo Empresarial",
\n    tit."Data do Vencimento",
\n    tit."Ano/Mês do Vencimento",
\n    tit."Ano do Vencimento",
\n    tit."Mês do Vencimento",
\n    tit."Dia do Vencimento",
\n    tit."Data Previsão do Vencimento",
\n    tit."Ano/Mês da Previsão Venc.",
\n    tit."Ano da Previsão Venc.",
\n    tit."Mês da Previsão Venc.",
\n    tit."Dia da Previsão Venc.",
\n    tit."Data da Baixa",
\n    tit."Ano/Mês da Baixa",
\n    tit."Ano da Baixa",
\n    tit."Mês da Baixa",
\n    tit."Dia da Baixa",
\n    tit."Origem",
\n    cc."Ident. do CCusto",
\n    cc."Centro de Custo",
\n    cc."Descrição do CCusto",
\n    cc."Código Contábil do CCusto",
\n    cc."Resumo do CCusto",
\n    cc."Pai do CCusto",
\n    cc."Grupo Empresarial do CCusto",
\n    cf."Ident. da Clas. Fin.",
\n    cf."Classificação Financeira",
\n    cf."Descrição da Clas. Fin.",
\n    cf."Código Contábil da Clas. Fin.",
\n    cf."Resumo da Clas. Fin.",
\n    cf."Pai da Clas. Fin.",
\n    cf."Grupo Empresarial da Clas. Fin.",
\n    p."Ident. do Projeto",
\n    p."Projeto",
\n    p."Nome do Projeto",
\n    p."Projeto Finalizado?",
\n    p."Data Início do Projeto",
\n    p."Data Fim do Projeto",
\n    p."Grupo Empresarial do Projeto",
\n    rf.discriminacao AS "Discriminação do Rateio",
\n  tit.observacao AS "Observação",
\n    tit."Valor Líquido",
\n    tit."Número Nota"
\nFROM nsview.vw_titulos_a_pagar tit
\n     LEFT JOIN financas.rateiosfinanceiros rf ON rf.documentorateado =
\n         tit."Documento Rateado"
\n     LEFT JOIN nsview.vw_centro_de_custo_financeiro cc ON cc."Ident. do CCusto"
\n         = rf.centrocusto
\n     LEFT JOIN nsview.vw_classificacao_financeira cf ON
\n         cf."Ident. da Clas. Fin." = rf.classificacaofinanceira
\n     LEFT JOIN nsview.vw_projeto p ON p."Ident. do Projeto" = rf.projeto
\nORDER BY tit."Data de Emissão", tit."Número do Título";', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('6ef43dfa-15e7-44f9-9f44-8ea2cd72d13b', 'nsview', 'vw_classificacao_financeira', 'Listagem de Classificações Financeiras', 'Listagem de Classificações Financeiras', 4, 1, NULL, 'CREATE OR REPLACE VIEW nsview.vw_classificacao_financeira 
\nAS
\nSELECT cf.classificacaofinanceira AS "Ident. da Clas. Fin.",
\n    cf.codigo AS "Classificação Financeira",
\n    cf.descricao AS "Descrição da Clas. Fin.",
\n    cf.codigocontabil AS "Código Contábil da Clas. Fin.",
\n    cf.resumo AS "Resumo da Clas. Fin.",
\n    cf.paiid AS "Pai da Clas. Fin.",
\n    cf.grupoempresarial AS "Grupo Empresarial da Clas. Fin."
\nFROM financas.classificacoesfinanceiras cf
\n     JOIN nsview.vw_grupo_empresarial ge ON ge."Ident. do Grupo Emp." =
\n         cf.grupoempresarial;', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('5fd21167-b885-4b0e-87be-8b4d14b9007d', 'nsview', 'vw_titulos_a_receber_rateio', 'Títulos à Receber com Rateio', 'Títulos à Receber com Rateio', 4, 3, NULL, 'CREATE OR REPLACE VIEW nsview.vw_titulos_a_receber_rateio 
\nAS
\nSELECT tit."Número do Título",
\n    tit."Tipo de Título",
\n    tit."Situação do Título",
\n    tit."Título Provisório",
\n    tit."Data de Emissão",
\n    tit."Ano/Mês da Emissão",
\n    tit."Ano da Emissão",
\n    tit."Mês da Emissão",
\n    tit."Dia da Emissão",
\n    tit."Cliente",
\n    tit."Razão Social do Cliente",
\n    tit."Nome do Cliente",
\n    tit."Conta",
\n    tit."Nome da Conta",
\n    COALESCE(rf.valor, 0::double precision) AS "Valor",
\n    COALESCE(
\n        CASE
\n            WHEN tit."Documento Rateado" IS NULL THEN tit."Valor"::double precision
\n            ELSE round((rf.valor * (tit."Valor da Baixa" / tit."Valor")::double
\n                precision)::numeric, 2)::double precision
\n        END, 0::double precision) AS "Valor da Baixa",
\n    COALESCE(
\n        CASE
\n            WHEN tit."Documento Rateado" IS NULL THEN
\n                tit."Saldo do Adiantamento"::double precision
\n            ELSE rf.valor
\n        END, 0::double precision) AS "Saldo Adiantamento",
\n    tit."Estabelecimento",
\n    tit."Nome do Estabelecimento",
\n    tit."Empresa",
\n    tit."Nome da Empresa",
\n    tit."Grupo Empresarial",
\n    tit."Nome do Grupo Empresarial",
\n    tit."Data do Vencimento",
\n    tit."Ano/Mês do Vencimento",
\n    tit."Ano do Vencimento",
\n    tit."Mês do Vencimento",
\n    tit."Dia do Vencimento",
\n    tit."Data Previsão do Vencimento",
\n    tit."Ano/Mês da Previsão Venc.",
\n    tit."Ano da Previsão Venc.",
\n    tit."Mês da Previsão Venc.",
\n    tit."Dia da Previsão Venc.",
\n    tit."Data da Baixa",
\n    tit."Ano/Mês da Baixa",
\n    tit."Ano da Baixa",
\n    tit."Mês da Baixa",
\n    tit."Dia da Baixa",
\n    tit."Origem",
\n    cc."Ident. do CCusto",
\n    cc."Centro de Custo",
\n    cc."Descrição do CCusto",
\n    cc."Código Contábil do CCusto",
\n    cc."Resumo do CCusto",
\n    cc."Pai do CCusto",
\n    cc."Grupo Empresarial do CCusto",
\n    cf."Ident. da Clas. Fin.",
\n    cf."Classificação Financeira",
\n    cf."Descrição da Clas. Fin.",
\n    cf."Código Contábil da Clas. Fin.",
\n    cf."Resumo da Clas. Fin.",
\n    cf."Pai da Clas. Fin.",
\n    cf."Grupo Empresarial da Clas. Fin.",
\n    p."Ident. do Projeto",
\n    p."Projeto",
\n    p."Nome do Projeto",
\n    p."Projeto Finalizado?",
\n    p."Data Início do Projeto",
\n    p."Data Fim do Projeto",
\n    p."Grupo Empresarial do Projeto",
\n    rf.discriminacao AS "Discriminação do Rateio",
\n    tit.observacao AS "Observação",
\n    tit."Valor Líquido"
\nFROM nsview.vw_titulos_a_receber tit
\n     LEFT JOIN financas.rateiosfinanceiros rf ON rf.documentorateado =
         tit."Documento Rateado"
     LEFT JOIN nsview.vw_centro_de_custo_financeiro cc ON cc."Ident. do CCusto"
         = rf.centrocusto
     LEFT JOIN nsview.vw_classificacao_financeira cf ON
         cf."Ident. da Clas. Fin." = rf.classificacaofinanceira
     LEFT JOIN nsview.vw_projeto p ON p."Ident. do Projeto" = rf.projeto
ORDER BY tit."Data de Emissão", tit."Número do Título";', '2016-03-01 14:41:01.833');
INSERT INTO views VALUES ('7d1dbc20-1c9d-48c9-894e-14a3fd8db80c', 'nsview', 'vw_titulos_a_receber', 'Títulos à Receber', 'Títulos à Receber', 4, 3, NULL, 'CREATE OR REPLACE VIEW nsview.vw_titulos_a_receber
\nAS
\n  SELECT tit.numero AS "Número do Título",
\n         CASE
\n           WHEN tit.adiantamento THEN ''Adiantamento''::text
\n           ELSE ''Normal''::text
\n         END::character varying AS "Tipo de Título",
\n         CASE
\n           WHEN tit.situacao = 0 THEN ''Aberto''::text
\n           WHEN tit.situacao = 1 THEN ''Quitado''::text
\n           WHEN tit.situacao = 2 THEN ''Em Débito''::text
\n           WHEN tit.situacao = 3 THEN ''Cancelado''::text
\n           WHEN tit.situacao = 4 THEN ''Protestado''::text
\n           WHEN tit.situacao = 5 THEN ''Estornado''::text
\n           WHEN tit.situacao = 6 THEN ''Agendado''::text
\n           ELSE NULL::text
\n         END::character varying AS "Situação do Título",
\n         CASE
\n           WHEN tit.dataprovisoria OR tit.valorprovisorio THEN ''Sim''::text
\n           ELSE ''Não''::text
\n         END::character varying AS "Título Provisório",
\n         tit.emissao AS "Data de Emissão",
\n         to_char(tit.emissao::timestamp with time zone, ''YYYY/MM''::text) AS
\n           "Ano/Mês da Emissão",
\n         date_part(''YEAR''::text, tit.emissao) AS "Ano da Emissão",
\n         lpad(date_part(''MONTH''::text, tit.emissao)::text, 2, ''0''::text) AS
\n           "Mês da Emissão",
\n         date_part(''DAY''::text, tit.emissao) AS "Dia da Emissão",
\n         tit.pessoa AS "Cliente",
\n         tit.razaosocial AS "Razão Social do Cliente",
\n         pessoas.nomefantasia AS "Nome do Cliente",
\n         c.codigo AS "Conta",
\n         c.nome AS "Nome da Conta",
\n         tit.valorbruto AS "Valor",
\n         tit.valorliquido AS "Valor Líquido",
\n         b.valor AS "Valor da Baixa",
\n         tit.saldoadiantamento AS "Saldo do Adiantamento",
\n         est.codigo AS "Estabelecimento",
\n         est.nomefantasia AS "Nome do Estabelecimento",
\n         emp.codigo AS "Empresa",
\n         emp.descricao AS "Nome da Empresa",
\n         ge.codigo AS "Grupo Empresarial",
\n         ge.descricao AS "Nome do Grupo Empresarial",
\n         tit.vencimento AS "Data do Vencimento",
\n         to_char(tit.vencimento::timestamp with time zone, ''YYYY/MM''::text) AS
\n           "Ano/Mês do Vencimento",
\n         date_part(''YEAR''::text, tit.vencimento) AS "Ano do Vencimento",
\n         lpad(date_part(''MONTH''::text, tit.vencimento)::text, 2, ''0''::text) AS
\n           "Mês do Vencimento",
\n         date_part(''DAY''::text, tit.vencimento) AS "Dia do Vencimento",
\n         tit.previsaovencimento AS "Data Previsão do Vencimento",
\n         to_char(tit.previsaovencimento::timestamp with time zone, ''YYYY/MM''::
\n           text) AS "Ano/Mês da Previsão Venc.",
\n         date_part(''YEAR''::text, tit.previsaovencimento) AS
\n           "Ano da Previsão Venc.",
\n         date_part(''MONTH''::text, tit.previsaovencimento) AS
\n           "Mês da Previsão Venc.",
\n         date_part(''DAY''::text, tit.previsaovencimento) AS
\n           "Dia da Previsão Venc.",
\n         b.data AS "Data da Baixa",
\n         to_char(b.data::timestamp with time zone, ''YYYY/MM''::text) AS
\n           "Ano/Mês da Baixa",
\n         date_part(''YEAR''::text, b.data) AS "Ano da Baixa",
\n         date_part(''MONTH''::text, b.data) AS "Mês da Baixa",
\n         date_part(''DAY''::text, b.data) AS "Dia da Baixa",
\n         tit.percentualdesconto,
\n         tit.percentualmulta,
\n         tit.percentualjurosdiario,
\n         tit.observacao,
\n         tit.pisretido,
\n         tit.cofinsretido,
\n         tit.csllretido,
\n         tit.irretido,
\n         CASE
\n           WHEN tit.origem = 0 THEN ''Manutenção''::text
\n           WHEN tit.origem = 1 THEN ''Pedido''::text
\n           WHEN tit.origem = 2 THEN ''RPS''::text
\n           WHEN tit.origem = 3 THEN ''Contrato''::text
\n           WHEN tit.origem = 4 THEN ''Scritta''::text
\n           WHEN tit.origem = 5 THEN ''Nota Fiscal Serviço''::text
\n           WHEN tit.origem = 6 THEN ''Nota Fiscal Eletrônica''::text
\n           WHEN tit.origem = 7 THEN ''Lançamento Fiscal''::text
\n           WHEN tit.origem = 8 THEN ''Documentos''::text
\n           WHEN tit.origem = 9 THEN ''Nota Serviços Publicos''::text
\n           WHEN tit.origem = 10 THEN ''Nota Prestação Serviços''::text
\n           WHEN tit.origem = 11 THEN ''Conhecimento Transporte''::text
\n           WHEN tit.origem = 12 THEN ''GR ICMS''::text
\n           WHEN tit.origem = 13 THEN ''GR ISS''::text
\n           WHEN tit.origem = 14 THEN ''GNRE''::text
\n           WHEN tit.origem = 15 THEN ''DARF''::text
\n           WHEN tit.origem = 16 THEN ''GPS''::text
\n           WHEN tit.origem = 17 THEN ''Outros Documentos''::text
\n           WHEN tit.origem = 18 THEN ''Folha Persona''::text
\n           WHEN tit.origem = 19 THEN ''Pagamento Persona''::text
\n           WHEN tit.origem = 20 THEN ''Guia Persona''::text
\n           WHEN tit.origem = 21 THEN ''Nota Controller''::text
\n           WHEN tit.origem = 22 THEN ''Importação''::text
\n           WHEN tit.origem = 23 THEN ''Previsão''::text
\n           WHEN tit.origem = 24 THEN ''Fatura''::text
\n           ELSE NULL::text
\n         END::character varying AS "Origem",
\n         tit.inssretido AS "INSS Retido",
\n         tit.aliquotaiss AS "Aliquota ISS",
\n         tit.issretido AS "ISS Retido",
\n         tit.nossonumero AS "Nosso número",
\n         tit.irretidonf AS "IRRF Retido na Nota",
\n         tit.inssretidonf AS "INSS Retido na Nota",
\n         tit.parcela AS "Parcela",
\n         tit.totalparcelas AS "Total de Parcelas",
\n         tit.desconto AS "Desconto",
\n         tit.juros AS "Juros",
\n         tit.multa AS "Multa",
\n         tit.outrosacrescimos AS "Outros Acrescimos",
\n         tit.documentorateado AS "Documento Rateado",
\n		 case (financas.getperfilcontrato(tit.id)) 
\n         	when ''L'' then ''Locação''
\n         else CASE
\n                 WHEN tit.origem = 0 THEN ''Manutenção''::text
\n                 WHEN tit.origem = 1 THEN ''Pedido''::text
\n                 WHEN tit.origem = 2 THEN ''RPS''::text
\n                 WHEN tit.origem = 3 THEN ''Contrato''::text
\n                 WHEN tit.origem = 4 THEN ''Scritta''::text
\n                 WHEN tit.origem = 5 THEN ''Nota Fiscal Serviço''::text
\n                 WHEN tit.origem = 6 THEN ''Nota Fiscal Eletrônica''::text
\n                 WHEN tit.origem = 7 THEN ''Lançamento Fiscal''::text
\n                 WHEN tit.origem = 8 THEN ''Documentos''::text
\n                 WHEN tit.origem = 9 THEN ''Nota Serviços Publicos''::text
\n                 WHEN tit.origem = 10 THEN ''Nota Prestação Serviços''::text
\n                 WHEN tit.origem = 11 THEN ''Conhecimento Transporte''::text
\n                 WHEN tit.origem = 12 THEN ''GR ICMS''::text
\n                 WHEN tit.origem = 13 THEN ''GR ISS''::text
\n                 WHEN tit.origem = 14 THEN ''GNRE''::text
\n                 WHEN tit.origem = 15 THEN ''DARF''::text
\n                 WHEN tit.origem = 16 THEN ''GPS''::text
\n                 WHEN tit.origem = 17 THEN ''Outros Documentos''::text
\n                 WHEN tit.origem = 18 THEN ''Folha Persona''::text
\n                 WHEN tit.origem = 19 THEN ''Pagamento Persona''::text
\n                 WHEN tit.origem = 20 THEN ''Guia Persona''::text
\n                 WHEN tit.origem = 21 THEN ''Nota Controller''::text
\n                 WHEN tit.origem = 22 THEN ''Importação''::text
\n                 WHEN tit.origem = 23 THEN ''Previsão''::text
\n                 WHEN tit.origem = 24 THEN ''Fatura''::text
\n                 ELSE NULL::text
\n               END
\n         end::character varying as "Origem com locação"         	 
\n  FROM financas.vwtitulos tit
\n       JOIN ns.estabelecimentos est ON est.estabelecimento =
\n         tit.id_estabelecimento
\n       JOIN ns.empresas emp ON emp.empresa = est.empresa
\n       JOIN ns.gruposempresariais ge ON emp.grupoempresarial =
\n         ge.grupoempresarial
\n       JOIN ns.pessoas pessoas ON tit.id_pessoa = pessoas.id
\n       LEFT JOIN financas.baixas b ON b.id_titulo = tit.id
\n       LEFT JOIN financas.contas c ON c.conta = tit.conta;', '2016-03-01 14:41:01.833');

SET search_path = ns, pg_catalog;

INSERT INTO cadastros VALUES (1, '3cbd2706-d159-4320-8d6e-12a062f3c93c', '50e479e3-0706-4325-befb-974c16e8cf21', '2016-03-01 15:41:01.257');
INSERT INTO cadastros VALUES (2, '3cbd2706-d159-4320-8d6e-12a062f3c93c', '6bfd0208-4513-4c4f-a90a-03154f437840', '2016-03-01 15:41:01.257');

INSERT INTO formaspagamentos VALUES ('0e25403c-7e99-4b3d-895a-c738c76b6d4b', '001', 'Dinheiro', 6, true, '2016-03-01 14:41:01.833');
INSERT INTO formaspagamentos VALUES ('fc9c35b3-cdb1-4c29-86af-9946578126f2', '002', 'Cheque', 3, true, '2016-03-01 14:41:01.833');
INSERT INTO formaspagamentos VALUES ('69fb4409-113c-4f7f-a601-7a284861597f', '003', 'Cheque Pré-Datado', 4, true, '2016-03-01 14:41:01.833');
INSERT INTO formaspagamentos VALUES ('3ad7184c-77be-4a32-858f-ca2fbca5a050', '004', 'Vale Troca', 8, true, '2016-03-01 14:41:01.833');
INSERT INTO formaspagamentos VALUES ('5268b6fe-2309-482c-872c-d9378a2fd98a', '006', 'Cartão Crédito', 1, true, '2016-03-01 14:41:01.833');
INSERT INTO formaspagamentos VALUES ('44d9ac83-0ddd-4436-ab63-972da303d1de', '007', 'Cartão Débito', 2, true, '2016-03-01 14:41:01.833');
INSERT INTO formaspagamentos VALUES ('65c24121-faf9-40f6-9b8a-7f30453de150', '000', 'Boleto Bancário', 0, true, '2016-03-01 14:41:01.833');
INSERT INTO formaspagamentos VALUES ('83f526bf-13a5-4bc5-baac-4445eb5ffa5b', '008', 'Carnê', 5, true, '2016-03-01 14:41:01.833');
INSERT INTO formaspagamentos VALUES ('01114f86-0fc6-4bc3-bdb6-d4344841f1ce', '009', 'Débito Automático', 9, true, '2016-03-01 14:41:01.833');

SET search_path = ns, pg_catalog;

INSERT INTO pessoas VALUES ('001', NULL, NULL, 'BALCAO', 'BALCAO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '52dbe57e-4801-4feb-831d-3dc01cebe032', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO pessoas VALUES ('NSJTC01', '2016-03-01', NULL, 'Primeiro cliente do teste case (Razão Social)', 'Primeiro cliente do teste case', 0, '88657867000165', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'teste@teste.com.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1899-12-30', '1899-12-30', '1899-12-30', 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2ccbe5f0-622d-4db8-9738-fa0aa13c7a34', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, false, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, 0.0000, '2016-03-01 15:55:59.151');
INSERT INTO pessoas VALUES ('NSJTC002', '2016-03-01', NULL, 'Primeiro Fornecedor do TestCase (razão social)', 'Primeiro Fornecedor do TestCase', 0, '90325058000106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testeFornecedor@teste.com.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1899-12-30', '1899-12-30', '1899-12-30', 0, 0, 1, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '72c060d4-9655-4e26-9517-b0276f771413', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, false, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, 0.0000, '2016-03-01 15:57:51.106');

SET search_path = ns, pg_catalog;

INSERT INTO enderecos VALUES ('R', 'Rua do teste', '111', 'Teste', '20040020', 'Bairro Teste', 0, NULL, 1, 'RJ', '1058', '3304557', 'Rio de Janeiro', 'Teste de referência', 1, 'edc52c3a-25c9-4006-bbe6-534397541913', '2ccbe5f0-622d-4db8-9738-fa0aa13c7a34', '2016-03-01 15:55:59.151');
INSERT INTO enderecos VALUES ('R', 'Rua do teste', '111', 'Teste', '20040020', 'Bairro Teste', 2, NULL, 1, 'RJ', '1058', '3304557', 'Rio de Janeiro', 'Teste de referência', 1, '3c8498a6-4ad1-4fe9-9412-7952d1d1dd67', '2ccbe5f0-622d-4db8-9738-fa0aa13c7a34', '2016-03-01 15:55:59.151');
INSERT INTO enderecos VALUES ('R', 'Rua do teste 2', '222', 'Teste', '20040020', 'Bairro do teste', 0, NULL, 1, 'RJ', '1058', '3304557', 'Rio de Janeiro', 'Referência de teste 2', 1, '520537fb-b45a-460b-b554-f85660dd3b89', '72c060d4-9655-4e26-9517-b0276f771413', '2016-03-01 15:57:51.106');
INSERT INTO enderecos VALUES ('R', 'Rua do teste 2', '222', 'Teste', '20040020', 'Bairro do teste', 2, NULL, 1, 'RJ', '1058', '3304557', 'Rio de Janeiro', 'Referência de teste 2', 1, '51546e2e-4cc8-47d3-bbb8-e01cff83bd55', '72c060d4-9655-4e26-9517-b0276f771413', '2016-03-01 15:57:51.106');

SET search_path = estoque, pg_catalog;

INSERT INTO perfiltrib_est VALUES ('065f3677-8377-464d-83db-ee87180e26e5', 'NSJTC01', 'Primeiro Perfil Tributário do TestCase', 'RJ', 19.0000, '2016-03-01 16:02:40.066');

INSERT INTO perfiltrib_fed VALUES ('4c25f46e-f673-4cbe-8aa3-06b77f381165', 'NSJTC01', 'Primeiro Perfil Tributário do TestCase', '2016-03-01 16:03:16.605');

INSERT INTO figurastributarias VALUES ('2306e686-580b-4c24-af60-3224a7831850', 'NSJTC01', 'Primeira Figura Tributária do TestCase', '065f3677-8377-464d-83db-ee87180e26e5', '4c25f46e-f673-4cbe-8aa3-06b77f381165', '2016-03-01 16:04:40.371');

INSERT INTO perfil_importacao VALUES ('3f66c684-b8fe-4cca-91e4-5020535dd9ec', 'NSJTC01', 'Primeiro Perfil Tributário de Importação do TestCase', 2, 1, 1, 2, 1, 1, 1, '2016-03-01 16:03:50.978');

SET search_path = estoque, pg_catalog;

INSERT INTO familias VALUES ('bb5fa9ea-7746-4f18-bb00-d6888d1fbb78', 'NSJTC01', 'Primeira Família do TestCase', '2016-03-01 16:00:14.66');

INSERT INTO unidades VALUES ('KG', 2, 'Kilograma', '654e443e-035d-4536-b4db-80046a16aadd', NULL, '2016-03-01 15:58:28.341');

INSERT INTO produtos VALUES ('1c4eee6b-63a5-419b-badd-ac8e9c101cd0', NULL, 'NSJTC01', 'Primeiro produto do TestCase', 0, false, NULL, 0, '0123456789', NULL, NULL, NULL, 0, 0, 0, 0.00, 0.00, 0.00, NULL, false, false, '654e443e-035d-4536-b4db-80046a16aadd', 0, NULL, 0.00, NULL, 0, NULL, NULL, NULL, NULL, '01011090', NULL, 0, '2306e686-580b-4c24-af60-3224a7831850', 0.000000, NULL, true, NULL, NULL, NULL, false, NULL, NULL, 0.00, NULL, 0, NULL, NULL, NULL, '2016-03-01 16:10:35.939');
INSERT INTO produtos VALUES ('7d122fc4-0011-433c-b2f5-99d556c3e356', NULL, 'NSJTC02', 'Primeira EPI do TestCase', 0, false, NULL, 0, '789456123', NULL, NULL, NULL, 0, 0, 0, 0.00, 0.00, 0.00, NULL, false, false, '654e443e-035d-4536-b4db-80046a16aadd', 0, NULL, 0.00, NULL, 0, NULL, NULL, NULL, NULL, '01011090', 'bb5fa9ea-7746-4f18-bb00-d6888d1fbb78', 0, '2306e686-580b-4c24-af60-3224a7831850', 0.000000, NULL, true, NULL, NULL, NULL, false, NULL, NULL, 0.00, NULL, 1, NULL, 0, NULL, '2016-03-01 16:11:49.078');

INSERT INTO itens VALUES ('00000000000013', 'Primeiro produto do TestCase', '0123456789', NULL, NULL, '01011090', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 1, 2, 0, NULL, NULL, false, false, 19.00, 0.00, 0.00, 0.0000, 0.0000, 1.0000, 0.0000, 2.0000, 1.00, NULL, 0.00, 0.0000, NULL, 0.000000, 0.000000, NULL, NULL, 0.00, 0, 0, NULL, 0.000000, NULL, NULL, 'NSJTC01', '0935c511-1a91-49ab-80d6-13338d5b68bd', NULL, '654e443e-035d-4536-b4db-80046a16aadd', NULL, NULL, NULL, NULL, '1c4eee6b-63a5-419b-badd-ac8e9c101cd0', NULL, 0, 0, 0, NULL, NULL, false, '2016-03-01 16:10:35.939');
INSERT INTO itens VALUES ('00000000000014', 'Primeira EPI do TestCase', '789456123', NULL, NULL, '01011090', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 1, 2, 0, NULL, NULL, false, false, 19.00, 0.00, 0.00, 0.0000, 0.0000, 1.0000, 0.0000, 2.0000, 1.00, NULL, 0.00, 0.0000, NULL, 0.000000, 0.000000, NULL, NULL, 0.00, 0, 0, NULL, 0.000000, NULL, NULL, 'NSJTC02', '02cc5a86-65be-40fe-8f14-f74e027899f1', NULL, '654e443e-035d-4536-b4db-80046a16aadd', NULL, NULL, NULL, NULL, '7d122fc4-0011-433c-b2f5-99d556c3e356', NULL, 0, 0, 0, NULL, NULL, false, '2016-03-01 16:11:49.078');

INSERT INTO locaisdeestoques VALUES ('244d88a0-e6a0-4b3a-91e0-98a43f44b8bc', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'NSJTC01', 'Primeiro Local de Estoque do TestCase', 0, '2016-03-01 15:59:08.154');

SET search_path = compras, pg_catalog;

SELECT pg_catalog.setval('negociacoesfornecedores_ordem_seq', 1, false);

SELECT pg_catalog.setval('negociacoesitens_ordem_seq', 1, false);

SELECT pg_catalog.setval('requisicoesfornecedores_ordem_seq', 1, false);

SET search_path = contabil, pg_catalog;

SELECT pg_catalog.setval('bensocorrencias_ordem_seq', 1, false);

INSERT INTO configuracoeshistoricoslancamentos VALUES (5, 2, 'Depreciação no período do bem @BEM.', 'd0a3c38e-f933-4a41-bd22-1e394d6f1a87', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (5, 11, 'Acréscimo do bem @BEM.', 'a48ceeca-450b-4bcd-abdb-6f741644cf51', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (6, 12, 'Contabilização dos bens da conta @CONTA com o centro de custo @CCUSTO.', 'd5d02aca-a6b8-4148-b66a-4378a2dbcf1f', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (6, 13, 'Contabilização dos bens da conta @CONTA.', 'cadd2707-6a4b-42c9-a195-944803af53c5', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (6, 14, 'PIS a recuperar oriundo da depreciação/amortização dos bens da conta @CONTA.', '7f4148b3-4021-45e8-a89f-3f8c825f4178', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (6, 15, 'PIS a recuperar oriundo da depreciação/amortização dos bens da conta @CONTA com o centro de custo @CCUSTO.', '4fb80be2-d3ed-423d-aa51-98b2cefb966c', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (6, 16, 'COFINS a recuperar oriundo da depreciação/amortização dos bens da conta @CONTA.', '16aca954-f76f-4bf8-a56a-fbc0ccd76cee', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (6, 17, 'COFINS a recuperar oriundo da depreciação/amortização dos bens da conta @CONTA com o centro de custo @CCUSTO.', 'ef65b408-c0e5-4897-9c90-8f9c79ee619b', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (0, 0, 'Valor pago pela aquisição do bem @BEM.', '2b11b57e-9110-433a-a4e4-71c2c265699d', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (0, 1, 'Valor pago pela aquisição dos bens @BEM.', 'cfafa59f-bfff-4743-b5d5-9c490b3454cb', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (1, 4, 'Depreciação no período do bem @BEM.', 'a3879d59-ed4f-490e-bfd1-162382ec018d', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (1, 3, 'Valor da reavaliação do bem @BEM.', 'ddbbfa72-5d67-4e46-9727-082a505d296f', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (2, 4, 'Depreciação do bem @BEM.', 'd59a412b-9d27-4565-9fb6-f57d91cd8c76', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (2, 5, 'Valor atual do bem transferido @BEM.', '2e5c8d3b-467c-4e97-87a8-0f33861c6720', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (2, 6, 'Valor da depreciação acumulada do bem transferido @BEM.', '9006309b-9451-41ab-99e1-206e40f28e71', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (3, 7, 'Depreciação do bem @BEM até a data da baixa.', 'd5bd0249-6aa6-4c1a-8184-d3ad74f9f796', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (3, 8, 'Depreciação no período do bem @BEM até a data da baixa.', 'd3366811-0a55-4d63-8d6b-f9f625b65fa1', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (3, 9, 'Valor do bem @BEM até a data da baixa.', '08a11e0e-74b4-4e32-9ca3-7ac56cad4e3b', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (3, 10, 'Valor da baixa do bem @BEM.', '759a3f23-baa0-404d-9082-e891f04f390e', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (3, 29, 'Imposto de renda com alíquota de 15% sobre ganhos de capital na alienação do bem @BEM.', 'a413766c-9c62-45e0-9b1b-7e8bb5f88d01', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (4, 7, 'Depreciação do bem @BEM até a data da baixa.', '4a45d988-38ff-404d-b1d7-1d2316dbe9af', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (4, 8, 'Depreciação no período do bem @BEM até a data da baixa.', '0c5dc042-7057-4188-8e83-08b45a4ebcb0', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (4, 9, 'Valor do bem @BEM até a data da baixa.', 'b5e52a71-1a2e-4f7b-8d35-4493f07b5464', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (4, 10, 'Valor da baixa do bem @BEM.', '7620db12-f3c0-4435-8548-f15e11ecff4e', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (4, 29, 'Imposto de renda com alíquota de 15% sobre ganhos de capital na alienação do bem @BEM.', 'ce4e591c-c7a2-4844-82d5-b1b6b433670c', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (6, 28, 'PIS a recuperar oriundo da depreciação/amortização do bem @BEM.', '3d88e933-5303-4694-97fc-49895c4744e0', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (6, 27, 'COFINS a recuperar oriundo da depreciação/amortização do bem @BEM.', 'bb3cfbef-88da-4372-a79f-4239886182a2', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (7, 18, 'Lançamento referente a perda total do bem @BEM.', '706c7cc6-35e9-404a-9368-d20130798932', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (7, 2, 'Depreciação no período do bem @BEM.', '46a958af-faa5-49dd-8721-b4c28c285a08', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (8, 19, 'Lançamento referente a perda parcial do bem @BEM.', 'df7d6cbe-625f-4e1d-9ab4-6c0a1a63d7d3', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (8, 2, 'Depreciação no período do bem @BEM.', 'e226e2ea-a0fa-436f-816a-553f2d526d28', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (9, 20, 'Perda com desvalorização do bem @BEM.', '46dbb96d-dcb7-4efd-98a1-aa0881351d7d', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (9, 2, 'Depreciação no período do bem @BEM.', 'd860a47e-dc33-44f6-8a5a-4411812c05dc', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (10, 20, 'Reversão de perda com desvalorização do bem @BEM.', '49d1f99b-0e91-447b-9433-78136811fd2d', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (11, 21, 'Transferência da depreciação acumulada do bem @BEM para o custo do imobilizado.', '246bee26-55af-4681-8d1a-032931f40e4c', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (11, 22, 'Reconhecimento do valor justo do custo do bem @BEM no balanço.', 'd2e42e25-529c-4709-b0e9-d7c601804154', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (11, 23, 'Reconhecimento da CSLL diferida do bem @BEM.', '0b63ad21-18d1-4721-b772-24ac65f881c5', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (11, 24, 'Reconhecimento do IRPJ diferido do bem @BEM.', '13df7c90-24b2-47c5-9090-0381549935b4', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (11, 25, 'Reconhecimento do encargo de depreciação do bem @BEM.', '43cf4d6b-541b-4ed8-9075-81c2cff7eb40', '2016-03-01 14:41:01.833');
INSERT INTO configuracoeshistoricoslancamentos VALUES (11, 26, 'Ocasião da realização (pela depreciação) do custo do bem @BEM ajustado.', '94d12351-d6e7-4fea-9638-6bcabcfcbf80', '2016-03-01 14:41:01.833');

SET search_path = contabil, pg_catalog;

SELECT pg_catalog.setval('lancamentos_ordem_seq', 1, false);

SELECT pg_catalog.setval('loteslancamentos_ordem_seq', 1, false);

SET search_path = persona, pg_catalog;

INSERT INTO eventos VALUES ('0001', 'Multa Atraso Pagamento Rescisão', 0, 12, NULL, true, true, true, 75, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '1b6829fb-2fb2-4a5d-8818-eacec55afc54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0002', 'Valor Pago Na Rescisão', 1, 12, NULL, false, false, false, 79, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '0324af37-ee91-4574-8a7a-e11277d016f8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0003', 'Férias Vencidas em Dobro', 0, 12, NULL, false, false, false, 22, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 1, false, false, NULL, NULL, NULL, false, true, true, true, false, 1, false, false, false, false, false, false, false, true, true, '2f9f2f50-102d-44ef-96a2-26edc543341c', '2b87ec04-894a-4d61-9cdb-4a72d7711ea9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0004', 'Adicional de Férias Vencidas em Dobro', 0, 12, NULL, false, false, false, 97, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '472f8fef-c186-4ada-a049-8befeef3ad33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0005', 'Salário Maternidade 13º', 0, 12, NULL, false, false, false, 87, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, true, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'eb8cb5ea-e5c4-47c7-86e7-2e1c763f5130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0006', 'Desconto de Adiantamento Salarial', 1, 12, NULL, false, false, false, 28, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'a26a3399-11de-49b1-b928-6081a2ac9e18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0007', 'Adiantamento Salarial', 0, 12, NULL, false, false, false, 28, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '4ad9df7e-cddc-46c1-829e-a6dac0ae9eec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0008', 'Adicional de Férias Vencidas', 0, 12, NULL, false, false, false, 25, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '2ec716f3-e40c-478f-9989-35e91a7a0bdd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0009', 'Férias Vencidas', 0, 12, NULL, false, false, false, 21, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '5f5d98a5-eb9a-48bb-a865-cfe7a365f6be', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0010', 'Adicional de Férias sobre Aviso Indenizado', 0, 12, NULL, false, false, false, 26, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '45250597-bdbe-43c3-8d1f-0e230bc34b78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0011', 'Férias Sobre Aviso Indenizado', 0, 12, NULL, false, false, false, 23, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '91c463c8-f9a6-4a01-a869-be22af2b0229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0012', 'Adicional de Férias Proporcionais', 0, 12, NULL, false, false, false, 24, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '5beb53ed-f678-4af2-848b-1785ce486d7d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0013', 'Multa do FGTS', 0, 12, NULL, false, false, false, 74, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '18057fab-d4db-4c0f-a8a6-488507384ed4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0014', 'Multa por Antecipação de Fim de Contrato', 0, 12, NULL, true, true, true, 78, false, false, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, true, true, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'd53bc54c-90d8-4acb-a75c-a75b0516db96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0015', 'Desconto Multa Antecipação Fim de Contrato', 1, 12, NULL, true, true, true, 78, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, true, false, false, false, false, 0, false, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '6e889856-9d83-45c8-9301-45897c6a9dd3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0016', 'Indenização Não Optante FGTS', 0, 12, NULL, false, false, false, 77, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'd2814853-e0bc-401b-a8c6-a5bf20eb5ccf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0017', '13º Proporcional', 0, 12, NULL, true, true, true, 20, false, false, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'b37ba8b0-5b6d-424e-a3ab-9d9136879f87', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0018', '13º Indenizado', 0, 12, NULL, true, true, true, 23, false, false, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '795a515c-7e34-4d3e-b215-7f840eee41e0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0019', 'Multa Dissídio', 0, 12, NULL, true, true, true, 73, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '99e9d4d4-bb59-49b1-bb60-4de16a2bb17c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0020', 'Base de IRRF 13º', 2, 12, NULL, false, false, false, 18, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'cc382953-dfa1-4621-8893-4af8d8af385b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0021', 'Base de INSS 13º', 2, 12, NULL, false, false, false, 31, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '16db2365-cb71-470c-8019-fb9cf29450f3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0022', 'Base de FGTS 13º', 2, 12, NULL, false, false, false, 30, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'ff5c3eea-f6c7-488d-be5f-4b742e040bb7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0023', 'Base INSS 13º (Vinculo + Outros)', 2, 12, NULL, false, false, false, 89, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '3e7997f1-8e25-4951-9d95-ad7aa98e674c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0024', 'INSS 13º', 1, 12, NULL, false, true, false, 31, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'f60e40e7-c016-468c-a768-ff7426594ece', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0025', 'Base de INSS', 2, 12, NULL, false, false, false, 31, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'fda7e202-eb0d-40e5-991f-c4d388735302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0026', 'Base de INSS Acumulada', 2, 12, NULL, false, false, false, 96, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '7e495942-774e-4d31-b162-ee550da69020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0027', 'Base de IR Total', 2, 12, NULL, false, false, false, 90, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'c5af6782-971d-4a5e-b947-d86295001573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0028', 'Base de INSS 13º Acumulada', 2, 12, NULL, false, false, false, 96, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '2a6ca068-1a3c-4c33-b421-d0b8899289dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0029', 'Vale Transporte', 1, 12, 6, false, false, false, 36, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, true, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '34181f37-6b51-4145-a18b-6f50805efdbc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0030', 'Arredondamento Positivo', 0, 12, NULL, false, false, false, 86, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'aa5b8ec3-f82d-470e-909b-78038a8225fe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0031', 'FGTS 13º', 0, 12, NULL, false, false, false, 30, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '558a3175-0880-4988-8591-4a89cfe505bc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0032', 'IRRF 13º', 1, 12, NULL, false, false, false, 18, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '6374804a-e4f3-4dc7-b0aa-58f7c081418d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0033', 'Dedução de Dep. IR 13º', 1, 12, NULL, false, false, false, 88, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '2c2ee447-fe54-4bd7-a877-5ba36e7d64eb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0034', 'Multa FGTS empresa', 0, 12, NULL, false, false, false, 76, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'a52b210c-2384-4f14-b498-65f97294687d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0035', 'Base de IRRF 13º (Vínculo + Outros)', 2, 12, NULL, false, false, false, 90, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'b4f8cdd8-77db-4f94-8e12-96d91605d154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0036', 'Adiantamento de 13º', 0, 12, NULL, false, false, true, 28, false, false, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'd7470c96-9e6c-4050-864e-72515b94707d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0037', 'Desconto de Adiantamento de 13º Salário', 1, 12, NULL, false, false, true, 28, false, false, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '2afe87f2-a4a3-4a32-b4da-5a44872ac4a1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0038', 'Arredondamento Negativo', 1, 12, NULL, false, false, false, 86, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '873c73cf-d17e-4fca-b685-fe9d15ec70ee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0039', '13º Salário', 0, 12, NULL, true, true, true, 1, false, false, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'e7f71617-324e-4c8a-becc-297cd23ed571', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0040', 'SEST', 1, 12, NULL, false, false, false, 41, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, true, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '4515a346-6add-4003-a34e-5f452d9f93d0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0041', 'Férias No Mês', 0, 12, NULL, true, true, true, 16, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, true, false, false, false, false, 1, false, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'a4087821-4208-4d12-be7f-a0341d2dd157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0042', 'ISS', 1, 12, NULL, false, false, false, 40, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, true, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '5a3c07c9-1b01-4540-b6d4-c5896416ce5e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0043', 'Arredondamento Negativo 13º', 1, 12, NULL, false, false, false, 86, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '6b5c5943-e512-416b-8eb7-7e57c1b9c687', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0044', 'Base de INSS de Férias', 2, 12, NULL, false, false, false, 31, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'da96159c-141e-4a97-82cd-3ea38829e3e9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0045', 'Base de IRRF de Férias', 2, 12, NULL, false, false, false, 18, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '9a7db956-1608-4231-848f-cc437275d5af', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0046', 'Base de FGTS Férias', 2, 12, NULL, false, false, false, 30, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '4905025d-c842-4e8a-88b4-1d6e2f5d1749', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0047', 'Base INSS Acumulada Férias', 2, 12, NULL, false, false, false, 96, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'e50f171b-e49d-4606-8310-541d178d6019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0048', 'Base de INSS Total', 2, 12, NULL, false, false, false, 89, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '47856674-e0b3-457d-b8ff-67d944633907', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0049', 'Base de IRRF Total', 2, 12, NULL, false, false, false, 90, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'a2395b7e-bbff-4274-bf93-775ac58726b9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0050', 'Arredondamento Negativo Férias', 1, 12, NULL, false, false, false, 86, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'f3a28297-9803-4291-a415-f9ad94ef495a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0051', 'Arrendondamento Positivo 13º', 0, 12, NULL, false, false, false, 86, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'c338ec84-ae75-4b20-a4b9-39aabfe86629', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0052', 'Adicional de Férias no Mês', 0, 12, NULL, true, true, true, 10, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'a962d441-3a18-4810-8b2e-d843a1f6504f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0053', 'Férias no Próximo Mês', 0, 12, NULL, false, true, false, 17, false, false, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, true, false, false, false, false, 1, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'aeea79a3-2834-40f0-9db0-d04a4e7a31fc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0054', 'Adicional Férias Pago no Mês Anterior', 0, 12, NULL, true, false, true, 10, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, true, true, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'e584c6b4-02f5-49d1-9a42-b7b7244e5a47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0055', 'SENAT', 1, 12, NULL, false, false, false, 42, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, true, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'ed8182d7-827c-4beb-89e6-97688349932e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0056', 'INSS Sobre Férias', 1, 12, NULL, false, true, false, 31, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'c35d2595-822d-4f70-a4fd-46a88618b16e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0057', 'Licença Remunerada', 0, 12, NULL, true, true, true, 70, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, true, false, false, false, false, 0, false, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'bc39bf90-b3f2-4f67-8533-861567a56968', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0058', 'Valor Pago nas Férias', 1, 12, NULL, false, false, false, 19, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '0e84bbab-38d2-45a8-bd9f-a1ca1eac2ac5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0059', 'Adicional Abono Pecuniário', 0, 12, NULL, false, false, false, 13, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '2514c858-0191-44e4-b752-3c9adc3a6ad7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0060', 'Abono Pecuniário', 0, 12, NULL, false, false, false, 12, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '9a8ac8cc-f0bc-4866-95ed-4d0663deccb2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0061', 'Adicional de Férias no Próximo Mês', 0, 12, NULL, false, true, false, 11, false, false, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '31d7fc82-6dec-4641-9a9c-49bb2cb1dcc2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0062', 'IRRF de Férias', 1, 12, NULL, false, false, false, 18, false, false, false, 10, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'c37355e9-f038-4021-9386-60051fe1d06b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0063', 'Contribuição Social sobre Férias', 0, 12, NULL, false, false, false, 32, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'd9c43658-63ac-4a06-94ef-0cd4be654925', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0064', 'FGTS de Férias', 0, 12, NULL, false, false, false, 30, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '19e6ecdf-0bec-49f4-b1e2-4238c5c0bb2e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0065', 'Dedução de Dependentes', 1, 12, NULL, false, false, false, 88, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '23756f79-954a-43ed-8378-e2561eb68527', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0066', 'Arredondamento Positivo Férias', 0, 12, NULL, false, false, false, 86, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'e8b90265-84c1-4da3-8bfa-1b5eac4d5d78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0067', 'Férias Pagas no Mês Anterior', 0, 12, NULL, true, false, true, 16, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, true, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'ead1c5ff-798d-47c6-9b9a-fa1bed821f13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0068', 'Saldo Negativo', 1, 12, NULL, false, false, false, 85, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '95daf0ca-8561-491e-aa51-d79274ea1a0a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0069', 'Saldo Positivo', 0, 12, NULL, false, false, false, 85, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '795d6514-e069-4e75-9aa8-7e72f297b122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0070', 'Desconto de Férias Pagas no Mês Anterior', 1, 12, NULL, false, false, false, 16, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, true, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'd10d783f-5772-4ef0-8fc3-4cead13e7826', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0071', 'Desconto Adic. Férias Pagas Mês Anterior', 1, 12, NULL, false, false, false, 10, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, true, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '3edb9617-81dc-4a22-a662-8bec11706dbc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0072', 'Base de FGTS', 2, 12, NULL, false, false, false, 30, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '0e760313-84c7-4b4f-9d61-a671496ec5e9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0073', 'Base de IR', 2, 12, NULL, false, false, false, 18, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '619d560a-57bf-470d-a5dd-695160f5e792', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0074', 'Base INSS Total', 2, 12, NULL, false, false, false, 89, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'f970fb91-9e6d-4551-827f-b088806546bc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0075', 'Base Salário Família', 2, 12, NULL, false, false, false, 33, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '573686de-c1f2-4f1f-96af-0a1070cf45d3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0076', 'FGTS', 0, 12, NULL, false, false, false, 30, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '8427fd46-45db-4915-8231-a70474df30da', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0077', 'Dedução Dependentes', 1, 12, NULL, false, false, false, 88, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '6b4b5fbe-737d-4f4a-9811-8e0b08ef635a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0078', 'Aviso Prévio Indenizado', 0, 12, NULL, true, false, true, 72, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'b52654c9-9d05-441a-8635-c109489d6bc5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0079', 'FGTS empresa', 0, 12, NULL, false, false, false, 32, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, true, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'd4d603eb-dfc8-4049-bd37-b57d148e5b4a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0080', 'Desconto de Aviso Prévio Indenizado', 1, 12, NULL, true, false, false, 72, false, false, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'd20eae8f-b721-46a8-a982-9abfe0fd9144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0081', 'Férias Proporcionais', 0, 12, NULL, false, false, false, 20, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'b5980714-de61-4383-af3e-b344dc70465a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0082', 'DSR', 0, 12, NULL, true, true, true, 38, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 1, false, false, NULL, NULL, NULL, true, true, true, true, false, 0, false, false, true, false, false, false, false, true, true, '2f9f2f50-102d-44ef-96a2-26edc543341c', '29c5b86b-a440-45e7-a5b0-ed47030bd64b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0083', 'Férias em Dobro', 0, 12, NULL, true, true, true, 15, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, true, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'b53ec69e-3b0e-452e-a4e9-cff1dae2538e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0084', 'DSR Horista', 0, 12, NULL, true, true, true, 39, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, true, false, false, false, false, 0, false, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '95959a99-4deb-4c94-9084-02296a5c4a11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0085', 'Contribuição Sindical', 1, 12, NULL, false, false, false, 35, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '728ef1a7-7daa-42af-b93f-d6c950469b05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0086', 'Salário Familia', 0, 12, NULL, false, false, false, 33, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '6dc03ddd-da90-4e48-aefd-3ab32dc9904b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0087', 'Salário Maternidade', 0, 12, NULL, true, true, true, 87, true, true, true, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, true, false, false, false, false, 0, true, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '994d6ee3-2244-441b-8ccb-a74a9426ab72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0088', 'INSS', 1, 12, NULL, false, true, false, 31, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'b47e8654-a842-45d5-b588-a96a894efdea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0089', 'Imposto de Renda', 1, 12, NULL, false, false, false, 18, false, false, false, 10, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'a8a54701-ff72-46b1-9633-3edab0d78ead', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0090', 'Contribuição Social FGTS 13º', 0, 12, NULL, false, false, false, 32, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'b13971fd-7423-45f4-abaa-8bb2aedc0a47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0091', 'IRRF sobre PPLR', 1, 12, NULL, false, false, false, 18, false, false, false, 10, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 3, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'b1b2a2ec-4444-4f95-bbec-cc944ba84ce9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0092', 'Base IRRF sobre PPLR', 2, 12, NULL, false, false, false, 18, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 3, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'abe4af84-dd77-4d1b-8746-b8ebade707b9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0093', 'Base IRRF Total PPLR', 2, 12, NULL, false, false, false, 90, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 3, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '7cb0cacd-43a7-4f10-a375-dbcb5df751d4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0094', 'Arredondamento Negativo PPLR', 1, 12, NULL, false, false, false, 86, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 3, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'eb0e0d43-e1b4-429e-a7b2-3e3558573550', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0095', 'Arredondamento Positivo PPLR', 0, 12, NULL, false, false, false, 86, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 3, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'f8032ee1-dc13-41e2-9249-ed465bfdc2d7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0096', 'Dedução Dependente IR PPLR', 1, 12, NULL, false, false, false, 88, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 3, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'a7ccf527-0f43-4afd-b268-e5f241972b85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0097', 'Pensão Folha', 1, 12, NULL, false, true, false, 5, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '768ee612-16ec-4119-9d26-64583c1ab96e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0098', 'Pensão Férias', 1, 12, NULL, false, true, false, 5, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '9582839f-93df-47a5-9078-e0f6e00dbe1d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0099', 'Pensão 13º Salário', 1, 12, NULL, false, true, false, 5, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '768a9fda-2096-423d-91e5-3435fb8f530d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0100', 'Pensão PPLR', 1, 12, NULL, false, true, false, 5, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 3, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '9f6e1775-5525-492c-a4ff-7e0de3a90599', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0101', 'Pensão sobre RRA', 1, 12, NULL, false, true, false, 98, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '5525f117-354f-4213-90d2-123bc752385d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0102', 'Dedução sobre Dependentes para IR sobre RRA ', 1, 12, NULL, false, false, false, 99, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '04772a2f-9f13-4fef-8f42-9c65ee187a65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0103', 'IRRF sobre RRA', 1, 12, NULL, false, false, false, 100, false, false, false, 10, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'b7ba9642-25f4-4ce5-9c5e-07019ffc0e60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0104', 'Base de IRRF sobre RRA', 2, 12, NULL, false, false, false, 100, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'e5b6d930-412d-49e7-a1fc-c7072de17564', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0105', 'Hora Extra Normal', 0, 8, 50, true, true, true, 91, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 2, false, true, NULL, NULL, NULL, true, true, true, true, false, 0, false, false, true, false, false, false, false, true, true, '2f9f2f50-102d-44ef-96a2-26edc543341c', '6f025ae5-51dc-4217-ad66-91d8a39bd3cd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0106', 'Hora Extra Folgas', 0, 8, 100, true, true, true, 92, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 2, false, true, NULL, NULL, NULL, true, true, true, true, false, 0, false, false, true, false, false, false, false, true, true, '2f9f2f50-102d-44ef-96a2-26edc543341c', '47c73fd9-6af8-483a-9579-35930552a2ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0107', 'Hora Extra Sábados', 0, 8, 100, true, true, true, 93, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 2, false, true, NULL, NULL, NULL, true, true, true, true, false, 0, false, false, true, false, false, false, false, true, true, '2f9f2f50-102d-44ef-96a2-26edc543341c', '65f089dd-2d52-426a-bbc0-891a7817b13e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0108', 'Hora Extra Domingos', 0, 8, 100, true, true, true, 94, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 2, false, true, NULL, NULL, NULL, true, true, true, true, false, 0, false, false, true, false, false, false, false, true, true, '2f9f2f50-102d-44ef-96a2-26edc543341c', '2a2d71e4-f0c6-4b37-b04c-2307f396d18b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0109', 'Hora Extra Feriados', 0, 8, 100, true, true, true, 95, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 2, false, true, NULL, NULL, NULL, true, true, true, true, false, 0, false, false, true, false, false, false, false, true, true, '2f9f2f50-102d-44ef-96a2-26edc543341c', '437bd583-2106-42b0-9b2f-0e41302402a1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0110', 'Atrasos', 1, 0, NULL, true, true, true, 4, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '0a4d60af-ede0-4224-89ff-de0c7c34b41b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0111', 'Faltas', 1, 1, NULL, true, true, true, 3, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '6112f8c1-1375-4621-a92e-a49eda9af363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0112', 'Adicional Noturno', 0, 10, 20, true, true, true, 9, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'f774b7c3-8a81-4704-aba0-e4dacc8ddd2b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0113', 'Saída Antecipada', 1, 2, NULL, true, true, true, 4, true, true, false, NULL, NULL, NULL, true, false, true, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, true, false, false, false, false, 0, false, false, true, true, false, false, false, true, NULL, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'cd3e4ab4-1160-4826-b708-e6d3f9ad678c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0114', 'Pró-Labore', 0, 5, 100, true, true, true, 1, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, true, true, true, true, false, false, true, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'db6aa4db-f647-4d64-89cf-f87eecacd36e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0115', 'Salário Base', 0, 5, 100, true, true, true, 1, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, true, false, false, false, false, 0, false, false, true, true, false, true, true, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'ec698ce7-d364-414a-b63a-0016de4cb748', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0116', 'Salário Horista', 0, 0, NULL, true, true, true, 2, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, true, false, false, false, false, 0, true, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '23f6f773-f2b7-4ea7-9383-ddbee016a55f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0117', 'Salário Diarista', 0, 1, NULL, true, true, true, 1, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, true, false, false, false, false, 0, false, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'd00b4530-d34c-4a23-a69e-469ae743d074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0118', 'Salário Aula', 0, 2, NULL, true, true, true, 1, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, true, false, false, false, false, 0, false, false, true, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '5197f490-6bde-48e5-90e2-9f684ba6b72e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0119', 'Triênio', 0, 12, 5, true, true, true, 6, true, true, true, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, true, false, 3, NULL, NULL, true, false, false, false, true, 0, true, true, true, false, true, true, true, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'e0b0c488-836c-4cbe-9e53-74c4bde02f32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0120', 'Quinquênio', 0, 12, 2, true, true, true, 6, true, true, true, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, true, false, 5, NULL, NULL, true, false, false, false, true, 0, true, true, true, false, true, true, true, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'cde66d9e-3965-4993-ac99-505abe02eaed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0121', 'Comissão', 0, 2, NULL, true, true, true, 27, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 1, false, true, NULL, NULL, NULL, false, true, true, true, false, 0, false, false, true, false, false, false, false, true, true, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'e77d306c-3a14-4474-8970-ed24b4294c2c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0122', 'Gratificação', 0, 2, NULL, true, true, true, 63, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 1, false, true, NULL, NULL, NULL, false, true, true, true, false, 0, false, false, true, false, false, false, false, true, true, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'b8e0e5bd-d6ef-4a4e-a670-4edc4ae059c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0123', 'Empréstimo', 1, 12, NULL, false, false, false, 84, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 0, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '2d6a6260-f819-482b-9e0c-27bf138d1e25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0124', 'Complemento de 13º Salário', 0, 12, NULL, true, true, true, 102, false, false, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 2, false, false, false, false, false, false, false, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', '2529a1ee-38d4-44f8-8d60-6d9a593ebcb2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0125', 'Salário Base Somente Funcionários', 0, 3, NULL, true, true, true, 1, true, true, false, NULL, NULL, NULL, true, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, true, false, false, false, false, 0, false, false, true, true, false, true, true, true, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'fc05ca53-1d4e-4ef3-afd2-29ed75be0b5e', NULL, NULL, NULL, 0, '"É FUNCIONÁRIO"', '"SALÁRIO CONTRATUAL"', NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0126', 'Total Horas Extras', 0, 0, NULL, false, false, false, 91, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 2, false, false, NULL, NULL, NULL, false, true, true, true, false, 0, false, false, false, false, false, false, false, false, true, '2f9f2f50-102d-44ef-96a2-26edc543341c', '8eb16215-5a52-4a26-9f5f-52cd9bc87bbb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0127', 'Total Rendimentos Variáveis', 0, 12, NULL, false, false, false, 0, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 1, false, false, NULL, NULL, NULL, false, true, true, true, false, 0, false, false, false, false, false, false, false, false, true, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'b9afce62-8df5-466d-98b9-c0390429a6f7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');
INSERT INTO eventos VALUES ('0128', 'Média Salário Horista', 0, 0, NULL, false, false, false, 2, false, false, false, NULL, NULL, NULL, false, false, false, false, NULL, NULL, 0, false, false, NULL, NULL, NULL, false, false, false, false, false, 1, false, false, false, false, false, false, false, false, false, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'b6061e72-7a4f-4124-ade8-79b6171a11b8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:48:02.58');

SET search_path = persona, pg_catalog;

INSERT INTO cargos VALUES ('NSJT', 'Primeiro cargo do TestCase', NULL, NULL, NULL, '05', NULL, NULL, NULL, 30, 30, '2f9f2f50-102d-44ef-96a2-26edc543341c', NULL, '9bf488ff-3823-45ee-ad54-3db3c89c84d4', NULL, NULL, NULL, NULL, NULL, '2016-03-01 16:21:54.1');

SET search_path = contabilizacao, pg_catalog;

SELECT pg_catalog.setval('seq_contabilizacao_lancamentoscontabilizacao_ordenacao', 1, false);

SET search_path = crm, pg_catalog;

SELECT pg_catalog.setval('propostas_numero_seq', 1, false);

SET search_path = estoque, pg_catalog;

INSERT INTO figurastributarias_ncm VALUES ('08f036e3-2394-4ae3-b282-7584ce88ecc9', '2306e686-580b-4c24-af60-3224a7831850', '01011090', '2016-03-01 16:04:40.371');

INSERT INTO figurastributariastemplates VALUES ('9b55a4e9-0013-47ed-a857-233b485564f4', '2306e686-580b-4c24-af60-3224a7831850', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'a0c28905-bedc-4b49-a225-d6a804169767', '065f3677-8377-464d-83db-ee87180e26e5', '4c25f46e-f673-4cbe-8aa3-06b77f381165', '2016-03-01 16:04:40.371');
INSERT INTO figurastributariastemplates VALUES ('f5926abd-ca3a-4e05-b649-6c00bad3a79f', '2306e686-580b-4c24-af60-3224a7831850', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '6ed634f2-9245-48e2-8cbf-ed9e247a7d22', '065f3677-8377-464d-83db-ee87180e26e5', '4c25f46e-f673-4cbe-8aa3-06b77f381165', '2016-03-01 16:04:40.371');
INSERT INTO figurastributariastemplates VALUES ('08a7ae24-19bb-4d32-81ec-4a74f3a7a951', '2306e686-580b-4c24-af60-3224a7831850', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '13619bbc-b2b4-4309-a24e-56ef4b4bb697', '065f3677-8377-464d-83db-ee87180e26e5', '4c25f46e-f673-4cbe-8aa3-06b77f381165', '2016-03-01 16:04:40.371');
INSERT INTO figurastributariastemplates VALUES ('6f728564-2656-4e44-b70e-047ddbf686be', '2306e686-580b-4c24-af60-3224a7831850', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'f73642a0-a50c-4355-98a7-c8918bb4f4cf', '065f3677-8377-464d-83db-ee87180e26e5', '4c25f46e-f673-4cbe-8aa3-06b77f381165', '2016-03-01 16:04:40.371');

INSERT INTO inv_motivos VALUES ('336b8b28-d265-4244-b84d-9bd4e6f9248e', 'No final no período', 1, '2016-03-01 14:41:01.833');
INSERT INTO inv_motivos VALUES ('e0528d89-8609-4154-8919-43ec4b29febd', 'Na mudança de forma de tributação da mercadoria (ICMS)', 2, '2016-03-01 14:41:01.833');
INSERT INTO inv_motivos VALUES ('57920316-0cac-460e-98e3-82bc2e279471', 'Na solicitação da baixa cadastral, paralisação temporária e outras situações', 3, '2016-03-01 14:41:01.833');
INSERT INTO inv_motivos VALUES ('7c2dac59-b328-4904-902f-009c4a3b00c0', 'Na alteração de regime de pagamento - condição do contribuinte', 4, '2016-03-01 14:41:01.833');
INSERT INTO inv_motivos VALUES ('2ac84dbe-acb8-4afb-a8d9-daac368c12ce', 'Por determinação dos fiscos', 5, '2016-03-01 14:41:01.833');

SELECT pg_catalog.setval('item_codigoreduzido_seq', 14, true);

SET search_path = estoque, pg_catalog;

INSERT INTO locaisdeestoquesenderecos VALUES ('a735bdc5-6d52-4be0-aa65-1143dca57c09', '244d88a0-e6a0-4b3a-91e0-98a43f44b8bc', 'NSJTC01', '2016-03-01 15:59:08.154');

INSERT INTO locaisdeestoquesoperacoes VALUES ('baf39b36-474e-406d-875b-7c6526f0c37e', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '244d88a0-e6a0-4b3a-91e0-98a43f44b8bc', 'a0c28905-bedc-4b49-a225-d6a804169767', '2016-03-01 15:59:27.908');
INSERT INTO locaisdeestoquesoperacoes VALUES ('8e68603b-7027-4814-8eea-2d0c5f8b2da7', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '244d88a0-e6a0-4b3a-91e0-98a43f44b8bc', '6ed634f2-9245-48e2-8cbf-ed9e247a7d22', '2016-03-01 15:59:38.348');
INSERT INTO locaisdeestoquesoperacoes VALUES ('ec8ae354-11b6-43a1-b0d2-7b788aa51cd2', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '244d88a0-e6a0-4b3a-91e0-98a43f44b8bc', 'f73642a0-a50c-4355-98a7-c8918bb4f4cf', '2016-03-01 15:59:46.651');
INSERT INTO locaisdeestoquesoperacoes VALUES ('6b82e7b0-6089-49cf-b8e4-1f954bdfc85f', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '244d88a0-e6a0-4b3a-91e0-98a43f44b8bc', '13619bbc-b2b4-4309-a24e-56ef4b4bb697', '2016-03-01 15:59:53.291');

INSERT INTO perfiltrib_est_validades VALUES ('599340f7-139b-4a16-a6ea-e94e23eda149', '065f3677-8377-464d-83db-ee87180e26e5', NULL, '2016-03-01 16:02:40.066');

INSERT INTO perfiltrib_est_validades_impostos VALUES ('b1e0b51b-b0ec-4787-8fea-086fbbd120d1', '599340f7-139b-4a16-a6ea-e94e23eda149', 'PE', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('c00e03ff-3f45-4358-ba1a-f66cf94431b6', '599340f7-139b-4a16-a6ea-e94e23eda149', 'PA', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('25a6c708-4f46-4453-ae15-115f66db205a', '599340f7-139b-4a16-a6ea-e94e23eda149', 'AL', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('601ceec7-977f-4916-b774-3f165cb5733d', '599340f7-139b-4a16-a6ea-e94e23eda149', 'SP', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 12.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('234bf497-212d-4c19-ab57-2ef4236087c5', '599340f7-139b-4a16-a6ea-e94e23eda149', 'MA', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('6a20e1d8-bb58-4b58-86d7-4afb62f09d13', '599340f7-139b-4a16-a6ea-e94e23eda149', 'BA', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('e500649b-9e5c-4bb6-b3b5-baad955a3b1a', '599340f7-139b-4a16-a6ea-e94e23eda149', 'RJ', 1, 1.0000, 1.0000, 2.0000, 1.0000, 1, 0.0000, 12.0000, 12.0000, 1, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('e12e267e-b863-4527-8ec0-508809189b36', '599340f7-139b-4a16-a6ea-e94e23eda149', 'MS', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('5e3b869f-1e60-47ec-b5e1-1dbccba821f6', '599340f7-139b-4a16-a6ea-e94e23eda149', 'MT', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('aa1da6b7-fbb9-4c9d-9d1f-8c3bb768a3fd', '599340f7-139b-4a16-a6ea-e94e23eda149', 'AM', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('3d36de69-a3f2-4811-b02c-2adf7da8539a', '599340f7-139b-4a16-a6ea-e94e23eda149', 'SC', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 12.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('5f0a64c5-0ff2-4c7c-ad93-82860d276d35', '599340f7-139b-4a16-a6ea-e94e23eda149', 'RN', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('6e0d96c2-c1b6-4e4f-8ca2-19d2ef89954f', '599340f7-139b-4a16-a6ea-e94e23eda149', 'CE', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('5aef189a-23c6-4269-b274-7ed4f59a2976', '599340f7-139b-4a16-a6ea-e94e23eda149', 'PR', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 12.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('ee8a435b-a560-4f54-828c-a0f9bad47dde', '599340f7-139b-4a16-a6ea-e94e23eda149', 'DF', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('a4ad3659-faab-48e7-b4d2-b450cefa221e', '599340f7-139b-4a16-a6ea-e94e23eda149', 'RR', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('a66de560-e8d1-4fc9-8dd3-65a4e09068b8', '599340f7-139b-4a16-a6ea-e94e23eda149', 'SE', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('5620243d-36a7-462a-ad96-ce5ccb9b91c2', '599340f7-139b-4a16-a6ea-e94e23eda149', 'AC', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('76865de3-abd6-4fa6-b441-15ce4f0e4f27', '599340f7-139b-4a16-a6ea-e94e23eda149', 'GO', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('d7c2df25-db5d-4853-92aa-0ff87e0d0ac0', '599340f7-139b-4a16-a6ea-e94e23eda149', 'PB', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('a624f42f-a7fa-4974-acb0-90a6a2d81bb7', '599340f7-139b-4a16-a6ea-e94e23eda149', 'RS', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 12.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('3f31870a-2da7-4e95-9310-1d0fe4acfa1e', '599340f7-139b-4a16-a6ea-e94e23eda149', 'TO', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('dd370027-770f-4fd9-8d60-76df7ba61a82', '599340f7-139b-4a16-a6ea-e94e23eda149', 'MG', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 12.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('df4503c7-8e47-4dee-a0ac-a40440a4f7fd', '599340f7-139b-4a16-a6ea-e94e23eda149', 'RO', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('c728b127-74a5-403d-be6c-adbfefa5ad69', '599340f7-139b-4a16-a6ea-e94e23eda149', 'ES', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('dba2c991-a5f3-439f-9a01-a46cf5e40065', '599340f7-139b-4a16-a6ea-e94e23eda149', 'PI', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('0ff6f4c9-701e-4f4e-a5c1-ba397286c141', '599340f7-139b-4a16-a6ea-e94e23eda149', 'EX', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 18.0000, 18.0000, 0, '2016-03-01 16:02:40.066');
INSERT INTO perfiltrib_est_validades_impostos VALUES ('67888246-83e3-4573-8bf5-4f3fdaa99737', '599340f7-139b-4a16-a6ea-e94e23eda149', 'AP', 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0.0000, 7.0000, 12.0000, 0, '2016-03-01 16:02:40.066');

INSERT INTO perfiltrib_fed_validades VALUES ('2740568d-5090-486c-a881-99e0f97a7deb', '4c25f46e-f673-4cbe-8aa3-06b77f381165', NULL, '2016-03-01 16:03:16.605');

SET search_path = estoque, pg_catalog;

INSERT INTO perfiltrib_fed_validades_impostos VALUES ('b8bc7eb1-c5a0-417f-bde0-22a924e2a189', '2740568d-5090-486c-a881-99e0f97a7deb', 1, 0.0000, 1, 2.0000, 1, 1.0000, NULL, NULL, 0, NULL, 1, '2016-03-01 16:03:16.605');

SELECT pg_catalog.setval('producao_ordensdeproducoes_numero_seq', 1, false);

SELECT pg_catalog.setval('produtositensnumerosdeseriedocumentos_ordem_seq', 1, false);

SELECT pg_catalog.setval('ra_numero_seq', 1, false);

SELECT pg_catalog.setval('transformacoesordensdeproducoes_numero_seq', 1, false);

SET search_path = extensoes, pg_catalog;

SELECT pg_catalog.setval('clientessuporteestados_clientesuporteestado_seq', 1, false);

SET search_path = financas, pg_catalog;

SELECT pg_catalog.setval('ajustesseq', 1, false);

SET search_path = financas, pg_catalog;

SELECT pg_catalog.setval('aplicacoesseq', 1, false);

SELECT pg_catalog.setval('avisolancamentoseq', 1, false);

SELECT pg_catalog.setval('avisotituloseq', 1, false);

SELECT pg_catalog.setval('borderoeletronicoseq', 1, false);

SELECT pg_catalog.setval('contratos_numero_seq', 1, false);

SELECT pg_catalog.setval('faturas_numero_seq', 1, false);

SELECT pg_catalog.setval('investimentosseq', 1, false);

SELECT pg_catalog.setval('lotesfaturas_numero_seq', 1, false);

SELECT pg_catalog.setval('prestacaodeconta_numero_seq', 1, false);

SELECT pg_catalog.setval('previsoespagar_codigo_seq', 1, false);

SELECT pg_catalog.setval('previsoesreceber_codigo_seq', 1, false);

SELECT pg_catalog.setval('renegociacoestitulospagar_numero_seq', 1, false);

SELECT pg_catalog.setval('renegociacoestitulosreceber_numero_seq', 1, false);

SELECT pg_catalog.setval('resgatesseq', 1, false);

SELECT pg_catalog.setval('titulocobrancaseq', 1, false);

SELECT pg_catalog.setval('titulocontratopagarseq', 1, false);

SELECT pg_catalog.setval('titulospagar_identificadorbancario_seq', 1, false);

SELECT pg_catalog.setval('titulosreceber_identificadorbancario_seq', 1, false);

SET search_path = ns, pg_catalog;

SELECT pg_catalog.setval('analints_numero_seq', 1, false);

INSERT INTO atualizacoessistemas VALUES ('82e57c5b-825c-448e-b0a6-3f18b0e770be', '7506', '2016-03-01 14:43:22.608', '1139', '2016-03-01 14:43:22.608');

INSERT INTO configuracoes VALUES (2, 'C:\Nasajon Sistemas\Integratto2\', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ed590beb-bf66-4061-9e9d-91bee5bb499e', NULL, NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoes VALUES (1, '0', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '282babd4-ca95-4246-bd28-6f2cc8384bc3', NULL, NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoes VALUES (3, '285343-10722-175616-285343-10722-166375-285343-125-', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ce5d34b5-08a0-40fe-b34a-031470ae4b3f', NULL, NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoes VALUES (33, 'TESTES', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '732b8ec2-ecc7-4372-b209-68bc0f739bff', NULL, NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoes VALUES (34, '387430-10722-328509-387430-133412-156563-318734-729-387430-27-', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b468cbfc-ddde-465f-ad2a-5a97ce7323f0', NULL, NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoes VALUES (NULL, 'ProcessarPeriodoAnterior=1
RatearTitulosProcessamento=0
ValorMinimoProRata=0', NULL, 0, 10, NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'db387009-a14d-4cc0-8cb8-362f4eb01485', NULL, NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoes VALUES (43, 'f73642a0-a50c-4355-98a7-c8918bb4f4cf', NULL, NULL, NULL, NULL, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c5b0e643-53cf-4665-bad4-687cd8ecacbc', NULL, NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoes VALUES (44, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpbnN0YWxhY2FvIjoiOTQ4NWRmZTEtMGI4YS00YTc5LWJlNDQtZTgxZGNmYWI1MzVmIiwiY2xpZW50ZSI6IjhmODZiZTAyLWZiZTQtNDhiYy05ZGE2LTVhMWZlMDI1NGQ1OCIsInRpcG8iOiJpbnN0YWxhY2FvIn0.UZ6lii2Jg2km48Ur0qQBthWbKQcQg694JEKo90iLNB8', 0, 0, 0, '', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '008d84be-2f42-492b-96a9-56c64060237f', NULL, NULL, NULL, NULL, NULL, '2016-03-01 14:43:30.337');
INSERT INTO configuracoes VALUES (43, '{
 "Modulos": [
  {
   "Usuarios": 50,
   "Codigo": "nsjPersona"
  },{
   "Usuarios": 50,
   "Codigo": "nsjContabil"
  },{
   "Usuarios": 50,
   "Codigo": "nsjScritta"
  },{
   "Usuarios": 50,
   "Codigo": "nsjFinancas"
  },{
   "Usuarios": 50,
   "Codigo": "nsjCRM"
  },{
   "Usuarios": 50,
   "Codigo": "nsjEstoque"
  },{
   "Usuarios": 50,
   "Codigo": "nsjFamilyOffice"
  },{
   "Usuarios": 50,
   "Codigo": "nsjServicos"
  },{
   "Usuarios": 50,
   "Codigo": "nsjCompras"
  }],
 "DataUltimaVerificacaoLicenca": "2016-03-01 14:43:31",
 "Serial": "5RGU-D5XV-HU9T-UIA6",
 "IdInstalacao": "9485dfe1-0b8a-4a79-be44-e81dcfab535f",
 "NomeInstalacao": "Cenario Testes Automatizados"
}', 0, 0, 0, '', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5fd4b588-ba48-47e5-aaf8-49daf34c4898', NULL, NULL, NULL, NULL, NULL, '2016-03-01 14:43:31.658');
INSERT INTO configuracoes VALUES (36, '1', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '74f73668-1d9e-4707-adcb-7d88d3676dfd', NULL, NULL, NULL, NULL, NULL, '2016-03-01 15:39:51.494');

INSERT INTO configuracoesborderoordemdepagamentos VALUES ('a7ebea36-a297-4338-981a-6953a75239f8', 0, 'd217837e-d931-40e8-8fec-8ab299fcec6b', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('38d7b1bb-2da7-4452-a31b-7ba3e3a8d97e', 1, 'd217837e-d931-40e8-8fec-8ab299fcec6b', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('792e97b4-20cd-42d4-bd17-31fae2bdce6a', 2, 'd217837e-d931-40e8-8fec-8ab299fcec6b', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('774b1980-41fe-4cb6-b8ed-99d3bc9450ff', 3, 'd217837e-d931-40e8-8fec-8ab299fcec6b', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('628eef0a-657b-4944-bafe-1bc50a50daa5', 4, 'd217837e-d931-40e8-8fec-8ab299fcec6b', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('000e76bf-40ea-43dd-bf4e-6b5e7891e3ef', 5, 'd217837e-d931-40e8-8fec-8ab299fcec6b', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('cb9e6d98-a72e-4afa-8bb9-e5302c6d6e48', 6, 'd217837e-d931-40e8-8fec-8ab299fcec6b', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('556656c3-57c9-4787-941a-6dda87223864', 7, 'd217837e-d931-40e8-8fec-8ab299fcec6b', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('1f4899fe-5052-47c4-ba80-8a02a3c53fae', 8, 'd217837e-d931-40e8-8fec-8ab299fcec6b', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('5c6f6fec-a883-49f9-9f69-726dc6e70ab5', 9, 'd217837e-d931-40e8-8fec-8ab299fcec6b', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('bbea03dd-ba3e-47e0-afb7-67a3d3722e51', 10, 'd217837e-d931-40e8-8fec-8ab299fcec6b', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('b46bf6fe-7fac-4048-bfce-565f73d86a1b', 11, '417f8ec6-61c4-4338-b91f-9f5ac7039aa2', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('92041501-61f4-4e76-8925-461cc5fd307e', 12, '417f8ec6-61c4-4338-b91f-9f5ac7039aa2', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('344ced59-59d7-43b6-8646-709a08e4f79a', 13, '417f8ec6-61c4-4338-b91f-9f5ac7039aa2', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('113a1876-5d34-44f2-98b4-0bd92409c26e', 14, '417f8ec6-61c4-4338-b91f-9f5ac7039aa2', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('ea2b3f51-4312-40ae-aadf-d6239325f82d', 15, '417f8ec6-61c4-4338-b91f-9f5ac7039aa2', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('0aefc9a2-c8f9-4332-8f35-a640dd0cb17e', 16, '417f8ec6-61c4-4338-b91f-9f5ac7039aa2', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('3cb70de5-21f0-456f-b140-9c1dfa8e5def', 17, '417f8ec6-61c4-4338-b91f-9f5ac7039aa2', '97daf67c-1090-466b-861d-ef6fbfe35f90', '60a992df-0754-49de-b7a4-9969961d8a15', NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('884b6dd2-f9c9-4467-b6d8-99487534d2b5', 18, '5b708834-8425-4f69-ab5c-f0173c87cb55', '7f576db4-7ccc-40bb-83b0-03d564f421bd', NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('99651a65-31c9-4345-87e4-7286baf99010', 19, '5b708834-8425-4f69-ab5c-f0173c87cb55', '7f576db4-7ccc-40bb-83b0-03d564f421bd', NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('fd2fa120-baf1-4d2a-90a4-50919c6ef6f5', 20, '5b708834-8425-4f69-ab5c-f0173c87cb55', '7f576db4-7ccc-40bb-83b0-03d564f421bd', NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('82c95a9b-7de1-431f-85ca-568981e67470', 18, '2b289b5b-381c-448d-8e1d-bea194338bc2', '823e2111-ab73-46b0-8b6f-6065da521813', NULL, NULL, 3, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('6f339bae-bdc2-4fe8-9108-6c515d3ffd69', 19, '2b289b5b-381c-448d-8e1d-bea194338bc2', '823e2111-ab73-46b0-8b6f-6065da521813', NULL, NULL, 3, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('a8e20159-e431-47b7-a638-6f1ca3f9384c', 20, '2b289b5b-381c-448d-8e1d-bea194338bc2', '823e2111-ab73-46b0-8b6f-6065da521813', NULL, NULL, 3, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('d612a1ff-f106-4629-ae1c-a8d9e02b483c', 21, '5b708834-8425-4f69-ab5c-f0173c87cb55', NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('b536c115-9dd6-4559-9b55-166e4ac2855d', 22, '5b708834-8425-4f69-ab5c-f0173c87cb55', NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('2d3d9450-029b-42a2-ab84-3a6aa8aaadef', 23, '5b708834-8425-4f69-ab5c-f0173c87cb55', 'c220ae8d-33a2-47d6-9990-869098c94ef2', NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('8f6aa25e-6b00-47c2-9c5f-a08c84b6f41d', 24, '5b708834-8425-4f69-ab5c-f0173c87cb55', 'c220ae8d-33a2-47d6-9990-869098c94ef2', NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('9114ec89-bc27-4712-8bdd-0ecd3609d819', 25, '5b708834-8425-4f69-ab5c-f0173c87cb55', 'c220ae8d-33a2-47d6-9990-869098c94ef2', NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('77ae39ae-c865-4977-9926-ff127accae22', 26, '5b708834-8425-4f69-ab5c-f0173c87cb55', 'c220ae8d-33a2-47d6-9990-869098c94ef2', NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('2a59a437-dbc5-43ec-953b-6d6a34497cb7', 27, '5b708834-8425-4f69-ab5c-f0173c87cb55', NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('ee3cc613-99e3-4d0a-94f4-37c47dd8c7b6', 28, '5b708834-8425-4f69-ab5c-f0173c87cb55', NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('e4b365b0-a483-4688-a94e-6c990719a0a8', 29, '5b708834-8425-4f69-ab5c-f0173c87cb55', NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('57cc2abf-a45c-464c-a002-4ae454c0f8c6', 30, '5b708834-8425-4f69-ab5c-f0173c87cb55', NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');
INSERT INTO configuracoesborderoordemdepagamentos VALUES ('cd252e2a-29f0-4427-a727-c5d9ddb71ba9', 31, '5b708834-8425-4f69-ab5c-f0173c87cb55', NULL, NULL, NULL, NULL, '2016-03-01 14:41:01.833');

INSERT INTO conjuntos VALUES ('b0873014-8d38-4cbf-91de-3a3802cdd361', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 0, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('db935f22-2fed-43aa-85db-46ef5bb0a7a3', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 1, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('953c3466-1952-436e-815b-39b8ccd362a6', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 2, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('1e4b88a9-4af1-4cf1-8584-d850859075ab', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 3, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('dd2824e7-9e88-4cef-afc5-e7f86545fc59', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 4, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('ebc9f6a8-7034-4fea-9a70-6a75c0836a13', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 5, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('d2cac635-72b8-4034-9249-842813a58225', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 6, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('d3446e12-835c-451b-a915-2ba97e876e1c', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 7, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('f0a4a2bd-0dc9-4bd0-8426-874ff469d2bd', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 8, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('3322f4a6-ac56-437a-b361-0c7850b71969', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 9, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('68b37a76-0dae-4ff2-92ad-0461364d11d7', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 10, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('e4216df3-5ff5-4e89-aef9-9d523462201f', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 11, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('4b5ab86e-322a-4eeb-97b1-b27783d16ec8', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 12, '2016-03-01 15:48:02.58');
INSERT INTO conjuntos VALUES ('5bf803fd-df3c-44ce-bd93-cfabff7cb910', 'NSJTC01NSJTC01', 'NSJTC01NSJTC01', 13, '2016-03-01 15:48:02.58');

INSERT INTO conjuntosclientes VALUES ('d4d8ac98-dbb5-4107-86e6-815a98734446', '2ccbe5f0-622d-4db8-9738-fa0aa13c7a34', 'd2cac635-72b8-4034-9249-842813a58225', '2016-03-01 15:55:59.151');

SET search_path = ns, pg_catalog;

INSERT INTO conjuntosfichas VALUES ('650372df-f703-441e-9ad4-3db6f0b03e9c', '2ccbe5f0-622d-4db8-9738-fa0aa13c7a34', 'ebc9f6a8-7034-4fea-9a70-6a75c0836a13', '2016-03-01 15:55:59.151');
INSERT INTO conjuntosfichas VALUES ('6a2d807c-5161-4fec-a295-ee0eeac2ac2a', '72c060d4-9655-4e26-9517-b0276f771413', 'ebc9f6a8-7034-4fea-9a70-6a75c0836a13', '2016-03-01 15:57:51.106');

INSERT INTO conjuntosfornecedores VALUES ('32978a2c-76e7-4df3-b0a8-9139e01d179e', '72c060d4-9655-4e26-9517-b0276f771413', 'd3446e12-835c-451b-a915-2ba97e876e1c', '2016-03-01 15:57:51.106');

INSERT INTO conjuntosprodutos VALUES ('4b94b33a-6ebc-44ef-bbf2-0e94009d0783', '0935c511-1a91-49ab-80d6-13338d5b68bd', 'b0873014-8d38-4cbf-91de-3a3802cdd361', '2016-03-01 16:10:35.939');
INSERT INTO conjuntosprodutos VALUES ('67aae025-daef-4893-a201-fd8a8410c45b', '1c4eee6b-63a5-419b-badd-ac8e9c101cd0', 'b0873014-8d38-4cbf-91de-3a3802cdd361', '2016-03-01 16:10:35.939');
INSERT INTO conjuntosprodutos VALUES ('2cdcb9d9-03ef-4f07-a965-526d8590909a', '02cc5a86-65be-40fe-8f14-f74e027899f1', 'b0873014-8d38-4cbf-91de-3a3802cdd361', '2016-03-01 16:11:49.078');
INSERT INTO conjuntosprodutos VALUES ('164491d4-f7e3-4bca-aa79-fbd5f8d7c64e', '7d122fc4-0011-433c-b2f5-99d556c3e356', 'b0873014-8d38-4cbf-91de-3a3802cdd361', '2016-03-01 16:11:49.078');

INSERT INTO conjuntosrubricas VALUES ('feca3e75-ec35-4d42-99a8-279254f40b0e', '1b6829fb-2fb2-4a5d-8818-eacec55afc54', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('2a8fc8bd-7b76-4001-9f58-e79a8b617d7a', '0324af37-ee91-4574-8a7a-e11277d016f8', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('00c2c69b-6a07-4359-a9f1-25ee7685dd83', '2b87ec04-894a-4d61-9cdb-4a72d7711ea9', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('027fa585-caa5-4735-a432-5f91f43dd419', '472f8fef-c186-4ada-a049-8befeef3ad33', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('07fc419f-fe39-4995-8f8f-c8202151edc4', 'eb8cb5ea-e5c4-47c7-86e7-2e1c763f5130', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('9650ea17-1e00-4d63-8938-07ef432030aa', 'a26a3399-11de-49b1-b928-6081a2ac9e18', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('78676319-e6eb-49b5-a085-30dc97d5298c', '4ad9df7e-cddc-46c1-829e-a6dac0ae9eec', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('aa5900e0-2613-493b-9e81-a3bef953041c', '2ec716f3-e40c-478f-9989-35e91a7a0bdd', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('651f73bd-a6bd-4e5f-b238-32f436422cd0', '5f5d98a5-eb9a-48bb-a865-cfe7a365f6be', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('81d456ff-5197-47e7-a038-a71cd4107095', '45250597-bdbe-43c3-8d1f-0e230bc34b78', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('31c2ad84-42de-4ed1-b5c2-4995b434b48f', '91c463c8-f9a6-4a01-a869-be22af2b0229', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('30613bb9-28a3-4007-838a-07d457eaf58a', '5beb53ed-f678-4af2-848b-1785ce486d7d', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('c9d23b75-eb60-4d8d-a079-d378d6f77aa9', '18057fab-d4db-4c0f-a8a6-488507384ed4', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('5542b46f-6b05-4e67-bf8d-aa57f8efa53c', 'd53bc54c-90d8-4acb-a75c-a75b0516db96', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('cb269a36-7671-448c-b906-1673b31b1161', '6e889856-9d83-45c8-9301-45897c6a9dd3', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('5264036d-c593-46ae-a5b3-36c36ad99376', 'd2814853-e0bc-401b-a8c6-a5bf20eb5ccf', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('d479bd8b-e1f3-4651-b5ed-b23ebbf60f2d', 'b37ba8b0-5b6d-424e-a3ab-9d9136879f87', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('38dbd482-16d7-4aa2-bb38-4f56c44dfe08', '795a515c-7e34-4d3e-b215-7f840eee41e0', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('2ee28e0a-3c8c-4fe4-812c-78a0b3360d2f', '99e9d4d4-bb59-49b1-bb60-4de16a2bb17c', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('502c5b28-4928-4680-9b73-9dec6b15b5a0', 'cc382953-dfa1-4621-8893-4af8d8af385b', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('fc5e7b6a-234f-4998-b2eb-069ad2e316f7', '16db2365-cb71-470c-8019-fb9cf29450f3', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('ecafa101-997d-4aa2-84fb-0d337b797312', 'ff5c3eea-f6c7-488d-be5f-4b742e040bb7', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('ff2a2cf1-0422-4c16-94b6-556e5349aa7e', '3e7997f1-8e25-4951-9d95-ad7aa98e674c', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('031c27f8-bde7-4a92-bd1f-93275938e2ee', 'f60e40e7-c016-468c-a768-ff7426594ece', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('9d2d3366-418a-47d0-ac53-8ad35f1d17b7', 'fda7e202-eb0d-40e5-991f-c4d388735302', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('f3d3d046-a54f-427c-b8a0-140d93e71916', '7e495942-774e-4d31-b162-ee550da69020', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('dfe99645-f221-47b2-bd84-5b7e26c4c71e', 'c5af6782-971d-4a5e-b947-d86295001573', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('f9544d04-cd9c-4df2-a0ec-f89c989c26d1', '2a6ca068-1a3c-4c33-b421-d0b8899289dd', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('c02905db-aa57-4a3a-aa56-9b82dc3438de', '34181f37-6b51-4145-a18b-6f50805efdbc', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('c220fdcf-4495-4816-8fa0-840ba3833cf0', 'aa5b8ec3-f82d-470e-909b-78038a8225fe', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('3d8fd531-7b3f-4b0e-9398-5af05082d42b', '558a3175-0880-4988-8591-4a89cfe505bc', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('4049223f-630e-4a1c-8bbc-782573bd68da', '6374804a-e4f3-4dc7-b0aa-58f7c081418d', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('cc13c696-5e14-4e03-8fe5-6a21281cec39', '2c2ee447-fe54-4bd7-a877-5ba36e7d64eb', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('2c4e3f7e-b6b0-4d50-86b0-438b3aeaff4a', 'a52b210c-2384-4f14-b498-65f97294687d', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('c0465d46-34bd-48e2-bb6a-f0beb1ebc861', 'b4f8cdd8-77db-4f94-8e12-96d91605d154', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('3a4913b6-ec55-4bd3-9056-51ada234c75d', 'd7470c96-9e6c-4050-864e-72515b94707d', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('d28c0d01-9d5b-46bd-8c3b-25b6ed3cdd8f', '2afe87f2-a4a3-4a32-b4da-5a44872ac4a1', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('5d06df56-69b7-41e9-826e-07666f9fdc35', '873c73cf-d17e-4fca-b685-fe9d15ec70ee', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('772672fa-00e8-407b-8a71-843f26273eae', 'e7f71617-324e-4c8a-becc-297cd23ed571', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('fa3e5562-50df-4982-92d5-ff5bfded6ecb', '4515a346-6add-4003-a34e-5f452d9f93d0', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('00144814-1c1a-46d5-ade8-9eed4ebdcbc2', 'a4087821-4208-4d12-be7f-a0341d2dd157', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('36831f69-9979-436a-b92d-8f3aa819d1ec', '5a3c07c9-1b01-4540-b6d4-c5896416ce5e', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('51d4dbc2-0492-467a-8bdd-b772bd532c33', '6b5c5943-e512-416b-8eb7-7e57c1b9c687', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('01ab47e3-dd8c-4a2c-9418-7d0c2eff7c7f', 'da96159c-141e-4a97-82cd-3ea38829e3e9', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('84e2c154-e52a-4d2a-a8f3-380fe790cb54', '9a7db956-1608-4231-848f-cc437275d5af', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('f71fd4f9-718a-4ba3-aa10-f30c9b9287fc', '4905025d-c842-4e8a-88b4-1d6e2f5d1749', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('c5bb819b-e835-4cbb-bea5-e8bdef80fbda', 'e50f171b-e49d-4606-8310-541d178d6019', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('e3300c86-34ef-49cf-ad2f-0279f234cd80', '47856674-e0b3-457d-b8ff-67d944633907', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('b9dd98d9-aecf-4b7b-b8be-435a51a0ea78', 'a2395b7e-bbff-4274-bf93-775ac58726b9', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('559b56d2-08f7-4053-9f26-41169d1ddbfc', 'f3a28297-9803-4291-a415-f9ad94ef495a', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('89cd50b9-0315-4e00-8128-88018f069b5f', 'c338ec84-ae75-4b20-a4b9-39aabfe86629', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('5b6e7459-0ce3-4cf9-a639-31148b7a4b5d', 'a962d441-3a18-4810-8b2e-d843a1f6504f', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('43d354e9-45d3-4ed2-912e-3029bd12e93c', 'aeea79a3-2834-40f0-9db0-d04a4e7a31fc', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('b2094dda-e567-471a-9bd6-61bc6e9e0209', 'e584c6b4-02f5-49d1-9a42-b7b7244e5a47', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('7259acc4-b7bf-4384-87a7-b4b424bbf07b', 'ed8182d7-827c-4beb-89e6-97688349932e', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('f9385b31-48cb-430d-b6d2-de3753bcc411', 'c35d2595-822d-4f70-a4fd-46a88618b16e', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('52253f7d-af8a-4bc5-b6c3-e56dba409318', 'bc39bf90-b3f2-4f67-8533-861567a56968', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('3610310c-59d9-441c-a37e-b6b4769b7c7d', '0e84bbab-38d2-45a8-bd9f-a1ca1eac2ac5', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('db0a74cf-6088-4dd9-8dcf-ac3d8035e36f', '2514c858-0191-44e4-b752-3c9adc3a6ad7', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('eb85d953-f345-4dc3-b90b-55bb335ed0ef', '9a8ac8cc-f0bc-4866-95ed-4d0663deccb2', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('832f1e93-89ca-4a33-9d23-1e294c92b5ae', '31d7fc82-6dec-4641-9a9c-49bb2cb1dcc2', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('092689f9-c678-468e-aa54-2ad73b946f15', 'c37355e9-f038-4021-9386-60051fe1d06b', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('9ea89e82-fd8d-4334-a3e2-ef2feb8c6a29', 'd9c43658-63ac-4a06-94ef-0cd4be654925', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('7a712938-2adc-4c7a-a2d1-781d58f6934f', '19e6ecdf-0bec-49f4-b1e2-4238c5c0bb2e', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('4428d7cf-a16e-4c1f-b100-fd4ba5dc60b3', '23756f79-954a-43ed-8378-e2561eb68527', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('14db0d23-0d92-4331-aa32-4d1d8f32e660', 'e8b90265-84c1-4da3-8bfa-1b5eac4d5d78', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('c8f65621-14f3-4cf2-85b3-49fe4c0f833c', 'ead1c5ff-798d-47c6-9b9a-fa1bed821f13', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('21014c9a-f8f7-4650-b261-d5601c6e82c3', '95daf0ca-8561-491e-aa51-d79274ea1a0a', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('5c46810c-e7cc-4e41-82d1-9c2d0b8b7d34', '795d6514-e069-4e75-9aa8-7e72f297b122', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('68f0afa0-ec07-4d50-b746-e927cf282295', 'd10d783f-5772-4ef0-8fc3-4cead13e7826', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('2c9bdb42-92d1-445e-9a88-852389318a92', '3edb9617-81dc-4a22-a662-8bec11706dbc', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('2c6ebd8c-e8a8-4f49-97fa-eb0e7f50febb', '0e760313-84c7-4b4f-9d61-a671496ec5e9', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('5ac28bda-1cb1-45d1-abf8-88fe018963b8', '619d560a-57bf-470d-a5dd-695160f5e792', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('1027b318-6243-44b6-9801-868512abb2cc', 'f970fb91-9e6d-4551-827f-b088806546bc', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('bcd80ea1-277f-4023-ad6f-c1f76bec2a38', '573686de-c1f2-4f1f-96af-0a1070cf45d3', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('3138c240-9c8f-4781-bc17-f08f49086803', '8427fd46-45db-4915-8231-a70474df30da', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('30892ef1-da18-4d32-b9d5-ec2e8a2ffe1c', '6b4b5fbe-737d-4f4a-9811-8e0b08ef635a', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('1d4460b9-cc51-43ea-a087-50d5b9bb8517', 'b52654c9-9d05-441a-8635-c109489d6bc5', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('325dcd65-61b7-495f-8e6c-662b2e9c615c', 'd4d603eb-dfc8-4049-bd37-b57d148e5b4a', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('4478305d-f05f-453c-836d-ce6460fd526f', 'd20eae8f-b721-46a8-a982-9abfe0fd9144', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('7cd1e5f1-a89f-4a74-9805-4737b1525cf4', 'b5980714-de61-4383-af3e-b344dc70465a', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('3499e520-8d8e-4bf4-a595-99e6268b260f', '29c5b86b-a440-45e7-a5b0-ed47030bd64b', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('cdacb613-a8f6-4c93-bcd6-fa232e192c40', 'b53ec69e-3b0e-452e-a4e9-cff1dae2538e', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('ea4e7ce5-8037-4759-b0f1-7f55a5d379e9', '95959a99-4deb-4c94-9084-02296a5c4a11', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('c2c5629c-6eab-426a-8228-ef2317997ce7', '728ef1a7-7daa-42af-b93f-d6c950469b05', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('d8600886-7ca3-4e01-80f6-4d58ce1f56c9', '6dc03ddd-da90-4e48-aefd-3ab32dc9904b', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('8f970c21-1d20-4937-b722-0226267863df', '994d6ee3-2244-441b-8ccb-a74a9426ab72', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('a2986a56-ac1b-43f9-a394-aa4edbbd4fbf', 'b47e8654-a842-45d5-b588-a96a894efdea', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('79504925-0c3f-45a2-93ee-85c1507d46a1', 'a8a54701-ff72-46b1-9633-3edab0d78ead', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('6eeb78eb-7215-40d5-8e66-a5a0db26df63', 'b13971fd-7423-45f4-abaa-8bb2aedc0a47', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('3f589953-dd1d-4109-8ede-3864dd41892b', 'b1b2a2ec-4444-4f95-bbec-cc944ba84ce9', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('061fde32-7f98-4e55-bcf8-71df3bff6228', 'abe4af84-dd77-4d1b-8746-b8ebade707b9', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('80441ce8-4f38-42df-a7aa-f8a809a1305c', '7cb0cacd-43a7-4f10-a375-dbcb5df751d4', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('6b7fed0f-8231-4abc-8d3e-490b4a2e25f9', 'eb0e0d43-e1b4-429e-a7b2-3e3558573550', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('d26c6c66-3c60-4404-b3d5-ffd71c385275', 'f8032ee1-dc13-41e2-9249-ed465bfdc2d7', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('0a5ba9a6-8ed7-40ac-8188-b66b74838a42', 'a7ccf527-0f43-4afd-b268-e5f241972b85', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('aad10153-fdd9-4ea5-b301-062e49b89b7e', '768ee612-16ec-4119-9d26-64583c1ab96e', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('42003d72-bdf8-468b-9c3c-48bc77c4c2dc', '9582839f-93df-47a5-9078-e0f6e00dbe1d', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('eacd119f-742e-4eb3-9b65-0d84af53a9e5', '768a9fda-2096-423d-91e5-3435fb8f530d', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('e755f474-9876-43d5-be01-89df38517a90', '9f6e1775-5525-492c-a4ff-7e0de3a90599', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('2fc7f35a-e78c-4a5a-aab0-dedd6e7e0c98', '5525f117-354f-4213-90d2-123bc752385d', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('b783f79e-9ac7-4da5-a084-149683a03e77', '04772a2f-9f13-4fef-8f42-9c65ee187a65', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('65ceef97-af24-4c57-869e-eed7fb522290', 'b7ba9642-25f4-4ce5-9c5e-07019ffc0e60', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('aefac251-e946-40f0-a9c9-df5348503503', 'e5b6d930-412d-49e7-a1fc-c7072de17564', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('741b17f9-b673-4ed4-8c89-debd5eca044d', '6f025ae5-51dc-4217-ad66-91d8a39bd3cd', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('0fb8d09e-aa06-4826-a207-08785880c93e', '47c73fd9-6af8-483a-9579-35930552a2ad', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('aa270d96-fb66-4849-8885-788bf705a79d', '65f089dd-2d52-426a-bbc0-891a7817b13e', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('a6da7ef8-94f4-4953-8be4-b841a2622950', '2a2d71e4-f0c6-4b37-b04c-2307f396d18b', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('8234f0f0-fed0-4aa8-9400-be810df1dc19', '437bd583-2106-42b0-9b2f-0e41302402a1', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('be5f637c-3803-4748-b79b-9bb05c363dc6', '0a4d60af-ede0-4224-89ff-de0c7c34b41b', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('9766ef17-3505-425b-a2d8-1d907cc46325', '6112f8c1-1375-4621-a92e-a49eda9af363', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('3d1cf42d-9163-4519-8ca2-456eee343ff9', 'f774b7c3-8a81-4704-aba0-e4dacc8ddd2b', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('57a97cc9-8ae9-4ae8-81c3-d3def0bbb658', 'cd3e4ab4-1160-4826-b708-e6d3f9ad678c', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('86a8c888-3a7a-4aa5-b118-c45597db16fc', 'db6aa4db-f647-4d64-89cf-f87eecacd36e', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('705fac2a-fc0d-4d7a-ac7e-e7d08d143c6c', 'ec698ce7-d364-414a-b63a-0016de4cb748', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('80175250-b06d-4d0e-9fd9-fa566cedc017', '23f6f773-f2b7-4ea7-9383-ddbee016a55f', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('3559045d-ee96-4cfd-82de-d59eb2efd7e0', 'd00b4530-d34c-4a23-a69e-469ae743d074', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('3d590f6b-f9e0-41e6-9b7d-ee222e3d70ce', '5197f490-6bde-48e5-90e2-9f684ba6b72e', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('532dac3e-3c56-4f7a-8a57-f17021f88931', 'e0b0c488-836c-4cbe-9e53-74c4bde02f32', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('bade4a24-b226-4c2c-ba49-7837fa031794', 'cde66d9e-3965-4993-ac99-505abe02eaed', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('cbd71356-344c-40f3-b72c-7bd832d33998', 'e77d306c-3a14-4474-8970-ed24b4294c2c', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('c9841e42-7044-494e-83e5-969b18b030f7', 'b8e0e5bd-d6ef-4a4e-a670-4edc4ae059c4', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('9cef8f99-d69d-457f-ac32-faaa0c7f5ee6', '2d6a6260-f819-482b-9e0c-27bf138d1e25', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('043b334a-5bcf-4f1e-b02c-98bc5aa9df96', '2529a1ee-38d4-44f8-8d60-6d9a593ebcb2', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('b46d2067-3386-4c62-bdab-f7e6bd04d960', 'fc05ca53-1d4e-4ef3-afd2-29ed75be0b5e', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('8749a720-5408-4754-8a4a-239a1fce432c', '8eb16215-5a52-4a26-9f5f-52cd9bc87bbb', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('b2b44ce4-2149-445e-bb54-52df9e7f4f8a', 'b9afce62-8df5-466d-98b9-c0390429a6f7', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');
INSERT INTO conjuntosrubricas VALUES ('d6ed3205-2bc0-4c66-bedb-47d5d2f01e6e', 'b6061e72-7a4f-4124-ade8-79b6171a11b8', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', '2016-03-01 15:48:02.58');

INSERT INTO conjuntosunidades VALUES ('192fdff9-0acb-4a7c-af1c-7fbcc637a803', '654e443e-035d-4536-b4db-80046a16aadd', 'db935f22-2fed-43aa-85db-46ef5bb0a7a3', '2016-03-01 15:58:28.341');

SELECT pg_catalog.setval('consultaseditorrelatorios_consultaeditorrelatorio_seq', 1, false);

SELECT pg_catalog.setval('consultasxrelatorios_consultaxrelatorio_seq', 1, false);

SELECT pg_catalog.setval('contabilizacoeslancamentos_ordem_seq', 1, false);

SELECT pg_catalog.setval('contatosmaladireta_contatomaladireta_seq', 1, false);

SELECT pg_catalog.setval('dicionariodados_dicionariodado_seq', 9876, true);

SELECT pg_catalog.setval('dicionariodadostabelas_dicionariodadostabela_seq', 838, true);

INSERT INTO empresascadastros VALUES ('50e479e3-0706-4325-befb-974c16e8cf21', '2f9f2f50-102d-44ef-96a2-26edc543341c', 'ea169232-7eb4-416b-85d2-2391f11abf30', '2016-03-01 15:48:02.58');
INSERT INTO empresascadastros VALUES ('6bfd0208-4513-4c4f-a90a-03154f437840', '2f9f2f50-102d-44ef-96a2-26edc543341c', '3da7d6dc-50e0-4e98-97a8-0863b9641e08', '2016-03-01 15:48:02.58');

INSERT INTO estabelecimentoscadastros VALUES ('50e479e3-0706-4325-befb-974c16e8cf21', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'ed04b17c-643a-4b8a-a009-42f00308ffb9', '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentoscadastros VALUES ('6bfd0208-4513-4c4f-a90a-03154f437840', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '1185bcc8-d203-478b-9ba8-3e8b4435980d', '2016-03-01 15:48:02.58');

INSERT INTO estabelecimentosconjuntos VALUES ('b4a7999d-6e24-4342-8c74-92fc1ae447bf', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'b0873014-8d38-4cbf-91de-3a3802cdd361', 0, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('0932b15b-f601-44b7-9d63-d6fd58537b3d', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'db935f22-2fed-43aa-85db-46ef5bb0a7a3', 1, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('8992ad94-b3eb-490f-9d8e-268e8c6c755b', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '953c3466-1952-436e-815b-39b8ccd362a6', 2, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('7c3ecf33-20c8-4641-bced-6f4003738c17', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '1e4b88a9-4af1-4cf1-8584-d850859075ab', 3, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('30954ab6-807c-4976-997a-1b7ad80fcf5d', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'dd2824e7-9e88-4cef-afc5-e7f86545fc59', 4, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('bd69ab11-1b95-4c2e-a555-2cbbef5ee958', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'ebc9f6a8-7034-4fea-9a70-6a75c0836a13', 5, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('dfe32998-ba20-436e-93ec-ca356d1feb54', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'd2cac635-72b8-4034-9249-842813a58225', 6, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('bc0b5929-c0ee-4ef4-9b61-68df8a986e02', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'd3446e12-835c-451b-a915-2ba97e876e1c', 7, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('e003e54e-ddd7-483c-ad9b-82ddcda24f30', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'f0a4a2bd-0dc9-4bd0-8426-874ff469d2bd', 8, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('c4f7221b-37f0-486f-92a2-5585d3028438', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '3322f4a6-ac56-437a-b361-0c7850b71969', 9, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('44046d54-de32-483e-bcc7-28d95a162cd0', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '68b37a76-0dae-4ff2-92ad-0461364d11d7', 10, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('d5ebe20a-e3dc-440c-aa44-ca67f7300a96', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'e4216df3-5ff5-4e89-aef9-9d523462201f', 11, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('15824a26-1223-4eab-aedd-c4dc7d1c4c64', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '4b5ab86e-322a-4eeb-97b1-b27783d16ec8', 12, true, '2016-03-01 15:48:02.58');
INSERT INTO estabelecimentosconjuntos VALUES ('2f3ee4d0-28e5-4ea7-a3ca-bc9b1830476d', 'c4b6f567-792d-487a-8a82-9d6eb2f1b57c', '5bf803fd-df3c-44ce-bd93-cfabff7cb910', 13, true, '2016-03-01 15:48:02.58');

SET search_path = ns, pg_catalog;

INSERT INTO gruposdeusuariosacessos VALUES ('c4ae4824-4772-4ddc-9efd-71693a56d755', '9ca44501-722f-45f9-be4d-002574d8e60a', 0, 'beaa64b8-8e18-4905-b68f-32d8c923ebff', '2016-03-01 15:41:01.257');

INSERT INTO gruposempresariaiscadastros VALUES ('50e479e3-0706-4325-befb-974c16e8cf21', 'beaa64b8-8e18-4905-b68f-32d8c923ebff', 'f8427a6d-f4d2-4fb4-8b10-6f709f7a0d97', '2016-03-01 15:41:01.257');
INSERT INTO gruposempresariaiscadastros VALUES ('6bfd0208-4513-4c4f-a90a-03154f437840', 'beaa64b8-8e18-4905-b68f-32d8c923ebff', 'aabbb74a-e9b0-4c83-826e-00bdf19ccc9d', '2016-03-01 15:41:01.257');

SELECT pg_catalog.setval('historicospropostasged_historicopropostaged_seq', 1, false);

SELECT pg_catalog.setval('layoutseditorformularios_layoutformulario_seq', 1, false);

SELECT pg_catalog.setval('layoutseditorrelatorios_layoutrelatorio_seq', 30, true);

SELECT pg_catalog.setval('layoutsrelatorios_layoutrelatorio_seq', 1070, true);

SELECT pg_catalog.setval('layoutsrelatoriosfolders_layoutrelatoriofolder_seq', 18, true);

SELECT pg_catalog.setval('layoutsrelatoriosfoldersctl_layoutrelatoriofolder_seq', 162, true);

SELECT pg_catalog.setval('listasmaladireta_lista_seq', 1, false);

SELECT pg_catalog.setval('logs_log_seq', 1, false);

INSERT INTO nsormstatecolumns VALUES ('6f2b0820-5b36-4d6a-936b-58ecc44d0669', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_6', '{"Email":"0","RetemCSLL":"0","CNPJ":"0","Observação":"0","Pagamento Unificado":"0","Nacionaliadade":"0","Técnico?":"0","Ficha?":"0","id":"0","Nota antecipada":"0","Cliente?":"0","Vendedor?":"0","Enviar Nfe por email":"0","CPF/CNPJ":"1","Inscrição Estadual":"0","Bloqueado":"0","Dias do Vencimento do Faturamento":"0","RetemIRRF":"0","RetemCOFINS":"0","RetemISS":"0","Grupo":"0","Enviar boleto por email":"0","Data de Vendedor":"0","Cliente Fatura":"0","Nome Fantasia":"1","Data de Cadastro":"0","Inscrição Municipal":"0","Tipo Simples":"0","Dia de Faturamento":"0","Fornecedor?":"0","CPF":"0","Orgão Emissor":"0","ContribuinteICMS":"0","Data de Fornecedor":"0","Razão Social":"1","Identidade":"0","Data de Cliente":"0","Tipo Identificação":"0","Código":"1","Anotação":"0","Transportador?":"0","Vendedor":"0","Template de ordem de servico":"0","Faixa de Crédito":"0","Limite de Crédito":"0","Email cobrança":"0","RetemPIS":"0"}', '2016-03-01 16:12:45.243');
INSERT INTO nsormstatecolumns VALUES ('945e51fa-f063-48a2-b336-038181cc1f98', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_33', '{"Usa Tabela de Preço?":"0","Finalidade":"0","Código":"1","Associar Documento":"0","Operação":"1","Grupo de Operação":"0","ID do Documento":"0","Descrição":"1","Objetivo da Operação":"0","ID":"0","Afeta Custo?":"0","Associar Produto":"0"}', '2016-03-01 16:00:33.481');
INSERT INTO nsormstatecolumns VALUES ('ec311f6c-be5a-45ef-9735-2e42c6cf085c', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_17', '{"Tipo":"1","Código":"1","Estabelecimento":"0","Nome":"1","id":"0"}', '2016-03-01 16:00:35.95');
INSERT INTO nsormstatecolumns VALUES ('7cd18be7-3e0c-45f6-823f-f31e3c56e6dd', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_32', '{"Descrição":"1","id":"0","Código":"1"}', '2016-03-01 16:00:35.994');
INSERT INTO nsormstatecolumns VALUES ('e1d1e2c6-9148-489f-bf95-847edaec48f1', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_33NSJTC01', '{"Grupo":"0","Especificação Técnica":"0","Grade":"0","NCM":"1","Tipo do Produto":"0","Código Anterior":"0","id":"0","Figura Tributária":"0","Invisível":"0","Código":"1","Referência":"0","Código de Barras":"1","Descrição":"1","Categoria de Produto":"0","Categoria":"0","Anotações":"0"}', '2016-03-01 16:00:36.011');
INSERT INTO nsormstatecolumns VALUES ('e79fb4f0-6a89-4f9a-9208-3fd3cebe324f', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_GenericsNSJTC01', '{"Grupo":"0","Especificação Técnica":"0","Grade":"0","NCM":"1","Tipo do Produto":"0","Código Anterior":"0","id":"0","Figura Tributária":"0","Invisível":"0","Código":"1","Referência":"0","Código de Barras":"1","Descrição":"1","Categoria de Produto":"0","Categoria":"0","Anotações":"0"}', '2016-03-01 16:05:03.738');
INSERT INTO nsormstatecolumns VALUES ('801ffb09-93ed-4dbb-8397-d37be4e89f7e', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_16', '{"IncluirDeducoes":"0","AliquotaISS":"0","Código":"1","DiscriminacaoRPS":"0","% TaxaIPBMunicipal":"0","TaxaIbp":"0","tipo":"0","Descrição":"1","Serviço?":"0","% Redução Base":"0","id":"0","% TaxaIPBFederal":"0"}', '2016-03-01 16:05:03.982');
INSERT INTO nsormstatecolumns VALUES ('216f767e-253e-47dd-b9f0-68b77a573c83', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_19', '{"Descrição":"1","Código":"1"}', '2016-03-01 16:05:04.016');
INSERT INTO nsormstatecolumns VALUES ('bb54b6e2-422e-4bb9-a31b-58f9e9960061', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics', '{"Grupo":"0","Especificação Técnica":"0","ID Grade":"0","NCM":"0","Tipo do Produto":"0","ID da Categoria de Produto":"0","Código Anterior":"0","ID":"0","Invisível":"0","Figura Tributária":"0","Código":"1","Código de Barras":"1","Descrição":"1","Categoria":"0","Anotações":"0"}', '2016-03-01 16:13:13.598');
INSERT INTO nsormstatecolumns VALUES ('64247821-7e73-4ce2-b82f-8747aaf0b4d1', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_18', '{"Interna":"1","UF Destino":"1","Entrada":"1","Saída":"1","id":"0","UF ORIGEM":"1"}', '2016-03-01 16:05:03.999');
INSERT INTO nsormstatecolumns VALUES ('f7eb461a-18f2-4c41-946e-9abbb962fdb6', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_3NSJTC01', '{"Grupo":"0","Especificação Técnica":"0","Grade":"0","NCM":"1","Tipo do Produto":"0","Código Anterior":"0","id":"0","Figura Tributária":"0","Invisível":"0","Código":"1","Referência":"0","Código de Barras":"1","Descrição":"1","Categoria de Produto":"0","Categoria":"0","Anotações":"0"}', '2016-03-01 16:05:17.48');
INSERT INTO nsormstatecolumns VALUES ('48cffd6b-db5f-4c13-bf24-e8a3b154def3', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_13', '{"Tipo":"1","Código":"1","Estabelecimento":"0","Nome":"1","id":"0"}', '2016-03-01 16:12:45.166');
INSERT INTO nsormstatecolumns VALUES ('2721883b-a300-4971-b394-3197f07f41f4', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_5', '{"Descrição":"1","id":"0","Código":"1"}', '2016-03-01 16:10:45.775');
INSERT INTO nsormstatecolumns VALUES ('8e840418-c74c-4fa3-b326-ecd9d2e760ff', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_14', '{"Grupo Empresarial":"0","Código":"1","Empresa":"0","Nome Fantasia":"1","id":"0","Documento":"1"}', '2016-03-01 16:12:45.179');
INSERT INTO nsormstatecolumns VALUES ('28890d0b-1e8c-4f29-8e8c-a3b76603f42a', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_15', '{"ID Produto":"0","Código Produto":"1","Abaixo do Mínimo":"0","ID Saldo Estabelecimento":"0","ID Categoria de Produto":"0","Saldo Disponível":"1","Especificação":"1","ID Estabelecimento":"0","ID Item":"0","Estoque Máximo":"0","Situação":"1","Saldo Negativo":"0","Acima do Máximo":"0","Limite para Reposição":"0","Limite":"1","Estoque Mínimo":"0"}', '2016-03-01 16:12:45.189');
INSERT INTO nsormstatecolumns VALUES ('5e36bf9b-af06-4083-8385-2293915aaeda', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_12', '{"perfil_estadual":"0","perfil_federal":"0","Descrição":"1","Código":"1","ID":"0"}', '2016-03-01 16:12:45.198');
INSERT INTO nsormstatecolumns VALUES ('029f9676-1ddd-4907-ae5c-aa72ea7e9559', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_3', '{"NCM":"0","Controla Estoque":"0","Sigla":"0","Quantidade Alerta":"0","Quantidade Mínima":"0","Figura Tributária":"0","ID":"0","Código":"1","Quantidade Máxima":"0","Descrição":"1","Categoria Superior":"1","Completar Código do Produto":"0"}', '2016-03-01 16:12:45.21');
INSERT INTO nsormstatecolumns VALUES ('f30d8808-8dc0-4145-b4aa-ee3ae4152868', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_2', '{"Dimensão Horizontal":"1","Descrição":"1","Código":"1","Bloqueada":"1","id":"0","Dimensão Vertical":"1"}', '2016-03-01 16:12:45.219');
INSERT INTO nsormstatecolumns VALUES ('a32eb589-b2b2-4cda-921f-602de647d049', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_4', '{"Grupo":"0","Descrição":"1","Código":"1","Decimais":"1","id":"0"}', '2016-03-01 16:12:45.226');
INSERT INTO nsormstatecolumns VALUES ('af6c163f-ba79-47b8-9229-57878b7a819a', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_5', '{"Descrição":"1","id":"0","Código":"1"}', '2016-03-01 16:12:45.235');
INSERT INTO nsormstatecolumns VALUES ('37c9866f-f87a-4ef4-be1f-923ce579b91b', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_7', '{"Descrição":"1","id":"0","Código":"1"}', '2016-03-01 16:12:45.255');
INSERT INTO nsormstatecolumns VALUES ('b54e9132-ec71-4fde-83d1-3f10ebda136e', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_8', '{"Id":"0","Grupo CST":"0","Código":"1","Descrição":"1"}', '2016-03-01 16:12:45.261');
INSERT INTO nsormstatecolumns VALUES ('93537ede-5073-49f3-ace0-f4ca91dd5f73', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_9', '{"Id":"0","Grupo CST":"0","Código":"1","Descrição":"1"}', '2016-03-01 16:12:45.271');
INSERT INTO nsormstatecolumns VALUES ('08ce59c3-03c6-46e2-9061-ed628b897009', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_10', '{"Id":"0","Grupo CST":"0","Código":"1","Descrição":"1"}', '2016-03-01 16:12:45.277');
INSERT INTO nsormstatecolumns VALUES ('50138ff8-e680-4105-bc40-129c8ab1c7c2', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_11', '{"Id":"0","Grupo CST":"0","Código":"1","Descrição":"1"}', '2016-03-01 16:12:45.283');
INSERT INTO nsormstatecolumns VALUES ('f0ebc967-2769-4dfa-92f3-8de5b339a506', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 'Browser_Generics_1', '{"Usa Tabela de Preço?":"0","Finalidade":"0","Requisicao":"0","ID":"0","Afeta Custo?":"0","Associar Produto":"0","Código":"1","Associar Documento":"0","Operação":"1","Grupo de Operação":"0","ID do Documento":"0","Descrição":"1","Objetivo da Operação":"0"}', '2016-03-01 16:12:45.292');

SELECT pg_catalog.setval('pessoas_codigoautomatico_seq', 1, false);

SELECT pg_catalog.setval('pontosrestauracao_pontorestauracao_seq', 1, false);

INSERT INTO sistemasativos VALUES (2, '25e2e9cb-d183-4d66-8eeb-75ac02082978', '2016-03-01 14:41:01.833');
INSERT INTO sistemasativos VALUES (5, '06e0b133-8d03-4fd5-bae2-eaf89a823551', '2016-03-01 14:41:01.833');
INSERT INTO sistemasativos VALUES (4, '881cdff6-120a-422f-b52b-b419b34ea039', '2016-03-01 14:41:01.833');
INSERT INTO sistemasativos VALUES (1, '1f5fc263-ca71-4ec8-a82f-d828bf734d75', '2016-03-01 14:41:01.833');
INSERT INTO sistemasativos VALUES (3, '5d3fac3e-ecfd-45c7-900a-70110e31d3e4', '2016-03-01 14:41:01.833');
INSERT INTO sistemasativos VALUES (6, '3fd98b1b-cfa3-484f-afbd-8dd6e9dd6cca', '2016-03-01 14:41:01.833');
INSERT INTO sistemasativos VALUES (7, '67038a1f-1804-4c64-b13f-9d0c3f36f95d', '2016-03-01 14:41:01.833');
INSERT INTO sistemasativos VALUES (8, '087d7efc-9910-4f9e-84b7-ec8fdb30be42', '2016-03-01 14:41:01.833');
INSERT INTO sistemasativos VALUES (21, 'df3ad1a9-c311-401b-8ad0-d441bf065272', '2016-03-01 14:41:01.833');
INSERT INTO sistemasativos VALUES (22, '6b72ddf5-2f50-476b-9060-c51b99774624', '2016-03-01 14:41:01.833');

SELECT pg_catalog.setval('sync_sync_seq', 1, false);

SELECT pg_catalog.setval('synclogs_synclog_seq', 1, false);

SELECT pg_catalog.setval('telemetrias_sessao_seq', 10, false);

SELECT pg_catalog.setval('templatesconsultasmaladireta_templateconsultamaladireta_seq', 5, true);

SELECT pg_catalog.setval('tenants_tenant_seq', 1, true);

SELECT pg_catalog.setval('vinculosconsultas_vinculosconsulta_seq', 1, false);

SELECT pg_catalog.setval('vinculosconsultascampos_vinculosconsultascampo_seq', 1, false);

SET search_path = nsview, pg_catalog;

SELECT pg_catalog.setval('viewsmetadata_column_index_seq', 757, true);

SET search_path = pdv, pg_catalog;

SELECT pg_catalog.setval('lancamentos_seqcaixa_seq', 1, false);

SELECT pg_catalog.setval('saldoclientes_numerovaletroca_seq', 1, false);

SET search_path = persona, pg_catalog;

SELECT pg_catalog.setval('calculostrabalhadores_ordem_seq', 1, false);

SELECT pg_catalog.setval('guiasprevidenciasocialempresas_ordem_seq', 1, false);

SELECT pg_catalog.setval('guiasprevidenciasocialtrabalhadores_ordem_seq', 1, false);

INSERT INTO historicos VALUES ('Gerado através do módulo de Marcações Padrões', '031', '4dc5f4cf-0ef1-43d3-87f4-a5a178bb0faa', '2016-03-01 14:41:01.833');

SELECT pg_catalog.setval('movimentos_ordem_seq', 1, false);

INSERT INTO rubricasponto VALUES ('55858a58-f7e6-4b17-b80e-08affc2b855d', '000001', 'Hora Extras Normais', '6f025ae5-51dc-4217-ad66-91d8a39bd3cd', 0, '("Minutos Extras (Todos os Dias)" > 0)', '"Minutos Extras (Todos os Dias)"', NULL, '2f9f2f50-102d-44ef-96a2-26edc543341c', 6, '2016-03-01 15:48:02.58');
INSERT INTO rubricasponto VALUES ('6494605c-9dcf-4145-b644-8b7182c193c4', '000002', 'Hora Extra nas Folgas', '47c73fd9-6af8-483a-9579-35930552a2ad', 0, '("Minutos Extras em Folgas" > 0)', '"Minutos Extras em Folgas"', NULL, '2f9f2f50-102d-44ef-96a2-26edc543341c', 138, '2016-03-01 15:48:02.58');
INSERT INTO rubricasponto VALUES ('07910989-c7e8-419d-918c-b42356a7e665', '000003', 'Hora Extra aos Sábados', '65f089dd-2d52-426a-bbc0-891a7817b13e', 0, '("Minutos Extras aos Sábados" > 0)', '"Minutos Extras aos Sábados"', NULL, '2f9f2f50-102d-44ef-96a2-26edc543341c', 110, '2016-03-01 15:48:02.58');
INSERT INTO rubricasponto VALUES ('2b6fc468-bc35-46da-a3bf-a24d7557c80c', '000004', 'Hora Extra aos Domingos', '2a2d71e4-f0c6-4b37-b04c-2307f396d18b', 0, '("Minutos Extras aos Domingos" > 0)', '"Minutos Extras aos Domingos"', NULL, '2f9f2f50-102d-44ef-96a2-26edc543341c', 106, '2016-03-01 15:48:02.58');
INSERT INTO rubricasponto VALUES ('307ddafd-99ef-4ac1-99ac-e5445bcc7a97', '000005', 'Hora Extra aos Feriados', '437bd583-2106-42b0-9b2f-0e41302402a1', 0, '("Minutos Extras em Feriados" > 0)', '"Minutos Extras em Feriados"', NULL, '2f9f2f50-102d-44ef-96a2-26edc543341c', 134, '2016-03-01 15:48:02.58');
INSERT INTO rubricasponto VALUES ('5f2c8cef-cd9b-4a19-bb80-fccb51081edd', '000006', 'Atrasos', '0a4d60af-ede0-4224-89ff-de0c7c34b41b', 0, '("Minutos de Atrasos (Todos os Dias)" > 0)', '"Minutos de Atrasos (Todos os Dias)"', NULL, '2f9f2f50-102d-44ef-96a2-26edc543341c', 185, '2016-03-01 15:48:02.58');
INSERT INTO rubricasponto VALUES ('2568784d-7598-46d7-8896-4d52f39cf311', '000007', 'Faltas', '6112f8c1-1375-4621-a92e-a49eda9af363', 0, '("Dias de Falta" > 0)', '"Dias de Falta"', NULL, '2f9f2f50-102d-44ef-96a2-26edc543341c', 5, '2016-03-01 15:48:02.58');
INSERT INTO rubricasponto VALUES ('212c14dc-703f-48ca-9d32-4ae79a7f11d6', '000008', 'Adicional Noturno', 'f774b7c3-8a81-4704-aba0-e4dacc8ddd2b', 0, '("Minutos de Adicional Noturno" > 0)', '"Minutos de Adicional Noturno"', NULL, '2f9f2f50-102d-44ef-96a2-26edc543341c', 174, '2016-03-01 15:48:02.58');

INSERT INTO movimentosponto VALUES (3, '2f9f2f50-102d-44ef-96a2-26edc543341c', NULL, NULL, NULL, '3036aff7-4b05-4a59-bc40-abb0157bf586', '55858a58-f7e6-4b17-b80e-08affc2b855d', NULL, '2016-03-01 15:48:02.58');
INSERT INTO movimentosponto VALUES (3, '2f9f2f50-102d-44ef-96a2-26edc543341c', NULL, NULL, NULL, 'fafb04f5-9104-44ad-842d-3d2f1356bc23', '6494605c-9dcf-4145-b644-8b7182c193c4', NULL, '2016-03-01 15:48:02.58');
INSERT INTO movimentosponto VALUES (3, '2f9f2f50-102d-44ef-96a2-26edc543341c', NULL, NULL, NULL, '6ad426cc-e0be-4451-96d6-ca213d7078e6', '07910989-c7e8-419d-918c-b42356a7e665', NULL, '2016-03-01 15:48:02.58');
INSERT INTO movimentosponto VALUES (3, '2f9f2f50-102d-44ef-96a2-26edc543341c', NULL, NULL, NULL, 'fc76858f-b1b7-4aab-93a9-2b7163567c76', '2b6fc468-bc35-46da-a3bf-a24d7557c80c', NULL, '2016-03-01 15:48:02.58');
INSERT INTO movimentosponto VALUES (3, '2f9f2f50-102d-44ef-96a2-26edc543341c', NULL, NULL, NULL, 'bdc8e158-82eb-44c9-8db8-0011fa200440', '307ddafd-99ef-4ac1-99ac-e5445bcc7a97', NULL, '2016-03-01 15:48:02.58');
INSERT INTO movimentosponto VALUES (3, '2f9f2f50-102d-44ef-96a2-26edc543341c', NULL, NULL, NULL, '01f895ce-0746-4969-af89-44f84345e5e3', '5f2c8cef-cd9b-4a19-bb80-fccb51081edd', NULL, '2016-03-01 15:48:02.58');
INSERT INTO movimentosponto VALUES (3, '2f9f2f50-102d-44ef-96a2-26edc543341c', NULL, NULL, NULL, '05ad8a20-2a1c-4593-bd7c-963da923f43c', '2568784d-7598-46d7-8896-4d52f39cf311', NULL, '2016-03-01 15:48:02.58');
INSERT INTO movimentosponto VALUES (3, '2f9f2f50-102d-44ef-96a2-26edc543341c', NULL, NULL, NULL, 'd5a3ad59-ced5-4a32-8166-9d54f3f6dac6', '212c14dc-703f-48ca-9d32-4ae79a7f11d6', NULL, '2016-03-01 15:48:02.58');

SELECT pg_catalog.setval('situacoes_situacao_seq', 1, false);

SET search_path = public, pg_catalog;

SELECT pg_catalog.setval('scriptsversoes_scriptversao_seq', 3975, true);

SET search_path = servicos, pg_catalog;

SELECT pg_catalog.setval('atendimentos_numeroprotocolo_seq', 1, false);

SELECT pg_catalog.setval('atendimentosnegociacoes_numero', 1, false);

SELECT pg_catalog.setval('lotescobrancasordensservicos_numero_seq', 1, false);

SELECT pg_catalog.setval('ordensservicos_numero_seq', 1, false);

SELECT pg_catalog.setval('pedidosvendasservicos_numero_seq', 1, false);

SET search_path = workflow, pg_catalog;

insert into servicos.tiposprojetos(tipoprojeto, grupoempresarial_id, codigo, descricao)
values ('0315c50d-6105-4de3-8392-c76a865962b2', 'beaa64b8-8e18-4905-b68f-32d8c923ebff', 'NSJTIPOPROJETO0001', 'NSJTIPOPROJETO0001');
insert into servicos.tiposprojetos(tipoprojeto, grupoempresarial_id, codigo, descricao)
values ('c7d00cfc-b4c2-4507-b584-b3f9e7aac5f5','beaa64b8-8e18-4905-b68f-32d8c923ebff', 'NSJTIPOPROJETO0001EXCLUIR', 'NSJTIPOPROJETO0001EXCLUIR');
insert into financas.projetos(projeto, estabelecimento_id, grupoempresarial, cliente_id, tipoprojeto_id, codigo, nome, observacao, criado_por, situacao)
values ('9880080e-2588-44b2-b4c1-69f4440b795c','c4b6f567-792d-487a-8a82-9d6eb2f1b57c', 'beaa64b8-8e18-4905-b68f-32d8c923ebff', '2ccbe5f0-622d-4db8-9738-fa0aa13c7a34', '0315c50d-6105-4de3-8392-c76a865962b2', 'NSJPROJ0001', 'NSJPROJ0001 descricao', 'NSJPROJ0001 obs', '8498ff13-9f7b-42e1-bff0-9589ae20af14', 0);

INSERT INTO ns.gruposempresariais (codigo, descricao, usagrade, grupoempresarial, modogestaopatrimonial, tenant, lastupdate)
VALUES('NSJTC02EXCLUIR', '', 0, '6e23d85e-3a1f-40ef-8c5b-54b3a990e8cc', false, 0, now());

INSERT INTO financas.agencias
(codigo, nome, agencianumero, digitoverificador, logradouro, numero, complemento, bairro, cidade, estado, cep, contato, telefone, dddtel, agencia, banco, lastupdate)
VALUES('0204', 'agencia de teste', '0204', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0d740e6a-9d6f-4a9d-982e-55421c9b4dbf', '6c682123-50e2-4152-aee9-b5a658837e5b', TO_DATE('2016-03-21 16:44:56','YYYY-MM-DD HH24:MI:SS'));

INSERT INTO persona.sindicatos
(codigo, nome, logradouro, numero, complemento, bairro, cidade, cep, codigocontribuicao, cnpj, codigoentidadesindical, pisosalarial, calculoeacumulativo, estado, calculanofim, patronal, contato, telefone, dddtel, fax, dddfax, email, somentemaioranuenio, multafgts, mesesmediamaternidade, diadissidio, diasaviso, qtdemrre, qtdemrfe, qtdemr13, mesassistencial, mediaferiaspelomaiorvalor, media13pelomaiorvalor, mediarescisaopelomaiorvalor, mesdesconto, mesdissidio, mesesmediaferias, mesesmediarescisao, mesesmedia13, numeradorfracao, denominadorfracao, fpas, codigoterceiros, sindicato, lastupdate)
VALUES('000001', 'SIND TRAB TESTE API', 'RUA 1', '001', NULL, 'CENTRO', 'RIO DE JANEIRO ', '21360230', NULL, '33652629000175', '914556123081480', 1066.000000, false, 'RJ', false, false, 'JORGE', '34797500', '21', '34797500', '21', NULL, false, 50.0, 6, 1, 30, NULL, NULL, NULL, 9, false, false, false, 8, 6, 12, 12, 12, 1, 3, '507', NULL, '92eb0700-43a7-4b94-886e-91da417058a5', TO_DATE('2015-10-23 15:20:38','YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ns.estabelecimentos
(codigo, descricao, tipoidentificacao, raizcnpj, ordemcnpj, cpf, caepf, cidade, inscricaoestadual, inscricaomunicipal, nomefantasia, email, site, tipologradouro, logradouro, numero, complemento, bairro, cep, tiposimples, dddtel, telefone, dddfax, fax, bloqueado, selecionarcfop, ramoatividade, qualificacao, naturezapj, anofiscal, inicio_atividades, final_atividades, dataregistro, suframa, atividademunicipal, atividadeestadual, registro, representante, cpfrepresentante, dddtelrepresentante, telefonerepresentante, ramalrepresentante, dddfaxrepresentante, faxrepresentante, emailrepresentante, caixapostal, ufcaixapostal, cepcaixapostal, fpas, acidentetrabalho, numeroproprietarios, numerofamiliares, numeroconta, tipopagamento, codigoterceiros, porte, fazpartepat, aliquotafilantropica, capitalsocial, observacao, pagapis, tipoconta, inicioexercicio, cei, datanascimentorepresentante, sexorepresentante, contacorrentepagadora, ibge, cnae, identificacaoregistro, agencia, contador, empresa, estabelecimento, contribuinteipi, sindicato, tipocontroleponto, centralizacontribuicaosindical, nomecontato, cpfcontato, telefonefixocontato, dddtelfixocontato, telefonecelularcontato, dddtelcelularcontato, faxcontato, dddfaxcontato, emailcontato, classificado, excessosublimite, aliquotaaplicavel, logotipo, alelocodigopessoajuridica, alelonumerofilial, nisrepresentante, dataimplantacaosaldo, lastupdate)
VALUES('NSJTC01EXCLUIR', 'Nasajon Sistemas SA', 0, '27915735', '000100', '           ', NULL, NULL, '466760', '82448209', 'Nasajon Sistemas SA', NULL, NULL, 'AV', 'Rio Branco', '45', 'Sala 1801', 'Centro da Cidade', '20090908', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3304557', NULL, NULL, NULL, NULL, '2f9f2f50-102d-44ef-96a2-26edc543341c', 'c4b6f561-792d-487a-8a82-9d6eb2f1b57c', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 0.0, NULL, NULL, NULL, NULL, NULL, TO_DATE('2016-03-01 15:51:30','YYYY-MM-DD HH24:MI:SS'));
  
COMMIT;
select ns.ativar_trigger('TRG_ProcessamentoRastro');  
-- Integratto 2 - Termino do Script do Banco de Dados
  
