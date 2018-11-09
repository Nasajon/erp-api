CREATE TYPE financas.TFatura_v2Novo AS (
     Fatura uuid
   , Estabelecimento ns.TEstabelecimento
   , Cliente ns.TClienteNovo
   , Usuario text
   , Numero character varying(30)
   , Emissao date
   , Processado boolean
   , ItensFaturas financas.TItemFatura_v2[]
   , Pagamentos ns.TPagamento[]
   , Lote text
   , PercentualDesconto numeric(15,4)
   , Desconto numeric(15,2)
   , ModoExibicaoDesconto character varying(1)
	
);
