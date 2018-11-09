CREATE TYPE financas.TRenegociacaoTitulosNovo AS (
     Id uuid
   , Estabelecimento text
   , Pessoa text
   , DataRenegociacao date
   , Numero character varying(30)
   , Usuario text
   , Tipo integer
   , TitulosRenegociados financas.TTituloRenegociado[]
   , FormasPagamentos financas.TFormaPagamentoRenegociacaoTitulosNovo[]
   , Parcelas financas.TParcelaFormaPagamentoRenegociacaoTitulosNovo[]
   , QtdTitulosRenegociados integer
   , ValorTitulosRenegociados numeric(20,2)
   , AcaoImpostos integer
   , Desconto numeric(20,2)
   , Acrescimo numeric(20,2)
	
);
