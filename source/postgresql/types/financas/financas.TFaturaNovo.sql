CREATE TYPE financas.TFaturaNovo AS (
     Id uuid
   , Estabelecimento text
   , Cliente text
   , Usuario text
   , Numero character varying(30)
   , Emissao date
   , Processado boolean
   , ItensFaturas financas.TItemFaturaNovo[]
   , FormasPagamentosFaturas financas.TFormaPagamentoFaturaNovo[]
   , Parcelas financas.TParcelaFormaPagamentoFaturaNovo[]
   , Lote uuid
   , PercentualDesconto numeric(15,4)
   , Desconto numeric(15,2)
   , ModoExibicaoDesconto character varying(1)
	
);
