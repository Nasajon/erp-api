CREATE TYPE financas.TFaturaAlterar AS (
     Id uuid
   , Estabelecimento text
   , Cliente text
   , Numero character varying(30)
   , Emissao date
   , FormasPagamentosFaturas financas.TFormaPagamentoFaturaNovo[]
   , Parcelas financas.TParcelaFormaPagamentoFaturaNovo[]
   , PercentualDesconto numeric(15,4)
   , Desconto numeric(15,2)
   , ModoExibicaoDesconto character varying(1)
	
);
