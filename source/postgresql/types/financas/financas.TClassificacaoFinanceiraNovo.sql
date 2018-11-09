CREATE TYPE financas.TClassificacaoFinanceiraNovo AS (
     IdClassificacao uuid
   , ClassificacaoPai text
   , GrupoEmpresarial text
   , Codigo character varying(16)
   , Descricao character varying(150)
   , CodigoContabil character varying(20)
   , Resumo character varying(30)
   , Natureza integer
   , Transferencia boolean
   , Repasse_Deducao boolean
   , Rendimentos boolean
	
);
