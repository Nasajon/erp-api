CREATE TYPE servicos.Timportacao_rps AS (
     Estabelecimento text
   , Cliente text
   , Serie character varying(38)
   , Numero character varying(9)
   , TipoTributacao integer
   , RegimeEspecial integer
   , IncentivoCultural boolean
   , ISSRetido boolean
   , CodigoServico text
   , DescontoCondicional numeric(20,2)
   , CodigoIBGEMunicipioPrestacao character varying(7)
   , Obra text
   , DiscriminacaoServicos character varying(5000)
   , OutrasDeducoes numeric(20,2)
   , OutrasRetencoes numeric(20,2)
   , Observacao character varying(5000)
   , CalcularImpostos boolean
   , ItensRPS timportacao_itemrpps.[]
   , Pagamentos timportacao_pagamento.[]
   , Rateios timportacao_rateio.[]
	
);
