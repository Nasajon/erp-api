CREATE TYPE servicos.Timportacao_pagamento AS (
     FormaPagamento text
   , Banco character varying(3)
   , AgenciaNumero character varying(30)
   , AgenciaDigito character varying(5)
   , ContaNumero character varying(30)
   , ContaDigito character varying(5)
   , LayoutCobranca uuid
   , Parcelas timportacao_parcela.[]
	
);
