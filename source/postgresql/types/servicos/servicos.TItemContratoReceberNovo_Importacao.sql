CREATE TYPE servicos.TItemContratoReceberNovo_Importacao AS (
     Id uuid
   , IdContrato text
   , Servico text
   , ValorVariavel boolean
   , ValoresVariaveis servicos.TValorVariavelItemContrato[]
   , Observacao text
   , Valor numeric(20,2)
   , Quantidade integer
   , Instancia text
   , CodigoInstancia character varying(30)
   , NomeInstancia character varying(100)
   , TipoInstancia character varying(50)
   , DescontosNoPedido numeric(20,2)
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
