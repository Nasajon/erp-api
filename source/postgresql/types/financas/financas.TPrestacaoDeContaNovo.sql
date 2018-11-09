CREATE TYPE financas.TPrestacaoDeContaNovo AS (
     ID uuid
   , Numero character varying(30)
   , Data date
   , ID_ContaEmprestimo text
   , Situacao integer
   , ID_GrupoEmpresarial text
   , ItensPrestacaoDeConta financas.TItemPrestacaoDeContaNovo[]
   , ItensEmprestimoPrestacao financas.TItemEmprestimoPrestacaoNovo[]
   , DocumentoRateado text
   , ValorEspecie numeric(20,2)
   , contaespecie text
   , Empresa text
   , Estabelecimento text
   , Fornecedor text
   , ValorPerdoado numeric(20,2)
   , DataLancamento date
   , Tipo integer
	
);
