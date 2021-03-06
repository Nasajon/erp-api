CREATE TYPE financas.TBaixaTituloRenegociado AS (
     IdTitulo uuid
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
	
);
