CREATE TYPE financas.TBaixaTituloUnitariaBaixarTitulo AS (
     IdTitulo uuid
   , Conta text
   , Data date
   , PercentualDesconto numeric(20,4)
   , ValorDesconto numeric(20,2)
   , PercentualJuros numeric(20,4)
   , ValorJuros numeric(20,2)
   , PercentualMulta numeric(20,4)
   , ValorMulta numeric(20,2)
   , ValorAcrescimo numeric(20,2)
   , ValorTarifaBancaria numeric(20,2)
   , ValorPisRetido numeric(20,2)
   , ValorCofinsRetido numeric(20,2)
   , ValorCsllRetido numeric(20,2)
   , ValorIrrfRetido numeric(20,2)
   , ValorInssRetido numeric(20,2)
   , ValorissRetido numeric(20,2)
   , ValorIrrfRetidoNotaFiscal numeric(20,2)
   , ValorInssRetidoNotaFiscal numeric(20,2)
   , Valor numeric(20,2)
   , DataLancamento date
   , ImprimirCheque boolean
   , Documento character varying(20)
   , Historico text
   , VersoCheque text
   , Favorecido character varying(150)
   , Renegociacao boolean
   , FormasPagamentos financas.TFormaPagamentoRenegociacaoTitulosNovo[]
   , Parcelas financas.TParcelaFormaPagamentoRenegociacaoTitulosNovo[]
   , Usuario uuid
   , valorvariacaocambialativa numeric
   , valorvariacaocambialpassiva numeric
   , idlancamentoconta uuid
   , PrestacaoDeContas text
   , DataCompetencia date
   , RateioFinanceiro financas.TItemRateioFinanceiro[]
   , baixapermuta boolean
   , valorpermuta numeric
   , descricaopermuta character varying(1000)
   , OutrasRetencoes numeric(20,2)
   , DescricaoOutrasRetencoes character varying(255)
   , cotacao numeric
   , Origem integer
	
);
