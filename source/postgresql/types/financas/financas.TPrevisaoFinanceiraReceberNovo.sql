CREATE TYPE financas.TPrevisaoFinanceiraReceberNovo AS (
     Id uuid
   , Codigo character varying(30)
   , Observacao character varying(120)
   , DefinicaoContratante character varying(20)
   , DefinicaoBeneficiario character varying(20)
   , DataInicial date
   , TerminoPrevisao integer
   , DataFinal date
   , NumeroOcorrencia integer
   , DataProximoLancamento date
   , Frequencia integer
   , Valor numeric(20,2)
   , DiasIntervalo integer
   , GrupoEmpresarial text
   , Empresa text
   , Estabelecimento text
   , Pessoa text
   , Conta text
   , FormaPagamento text
   , GeraTitulos boolean
   , QtdDiasDesconto integer
   , QtdDiasMulta integer
   , PercentualDesconto numeric(15,4)
   , PercentualMulta numeric(15,4)
   , PercentualJurosDiario numeric(15,4)
   , IDDocumentoRateado text
   , RateioFinanceiro financas.TItemRateioFinanceiro[]
	
);
