CREATE TYPE servicos.TItemContratoPagarNovo_Importacao AS (
     Id uuid
   , IdContrato text
   , Descricao character varying(40)
   , ValorVariavel boolean
   , ValoresVariaveis servicos.TValorVariavelItemContrato[]
   , Observacao text
   , Valor numeric(20,2)
   , RateioFinanceiro financas.TItemRateioFinanceiro[]
   , UnidadeNatureza integer
   , UnidadeIntervaloNatureza integer
   , QuantidadeIntervaloNatureza integer
   , TipoVencimento integer
   , DiaVencimento integer
   , AdicaoMesesVencimento integer
   , QtdDiasParaInicio integer
   , QtdDiasParaFim integer
   , QtdMesesParaReajuste integer
   , PercentualDesconto numeric(15,4)
   , PercentualMulta numeric(15,4)
   , PercentualJurosDiarios numeric(15,4)
   , TipoCobranca integer
   , Indice text
   , ConsiderarDataInicio boolean
   , DataCobranca date
   , DataReajuste date
   , Autorizado boolean
   , Cancelado boolean
   , DataHoraCancelamento timestamp
	
);
