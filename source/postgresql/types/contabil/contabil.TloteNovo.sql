CREATE TYPE contabil.TloteNovo AS (
     lote uuid
   , codigo character varying(8)
   , descricao character varying(50)
   , datainicial date
   , datafinal date
   , conta text
   , usuariocriacao uuid
   , ano integer
   , estabelecimento text
   , lancamento contabil.TlotelancamentoNovo[]
	
);
