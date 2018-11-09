CREATE TYPE financas.TParcelaFormaPagamentoRenegociacaoTitulosNovo AS (
     parcela uuid
   , Id_pagamento uuid
   , Numero character varying(30)
   , Valor numeric(13,2)
   , Vencimento date
   , Sequencial integer
   , Conta text
	
);
