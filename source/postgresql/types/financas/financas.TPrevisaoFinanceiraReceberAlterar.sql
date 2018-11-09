CREATE TYPE financas.TPrevisaoFinanceiraReceberAlterar AS (
     Id uuid
   , Codigo character varying(30)
   , Observacao character varying(120)
   , DefinicaoContratante character varying(20)
   , DefinicaoBeneficiario character varying(20)
   , DataProximoLancamento date
   , Frequencia integer
   , Valor numeric(20,2)
   , DiasIntervalo integer
   , Conta text
   , FormaPagamento text
   , QtdDiasDesconto integer
   , QtdDiasMulta integer
   , PercentualDesconto numeric(15,4)
   , PercentualMulta numeric(15,4)
   , PercentualJurosDiario numeric(15,4)
   , IDDocumentoRateado text
   , RateioFinanceiro financas.TItemRateioFinanceiro[]
	
);
