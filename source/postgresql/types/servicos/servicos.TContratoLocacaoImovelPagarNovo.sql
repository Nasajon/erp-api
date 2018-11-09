CREATE TYPE servicos.TContratoLocacaoImovelPagarNovo AS (
     Id uuid
   , Codigo character varying(30)
   , Descricao character varying(120)
   , DefinicaoContratante character varying(20)
   , DefinicaoBeneficiario character varying(20)
   , DataInicial date
   , Administrador text
   , Estabelecimento text
   , Pessoa text
   , Fiador text
   , Conta text
   , Patrimonio text
   , QtdDiasDesconto integer
   , QtdDiasMulta integer
   , QtdDiasJurosDiarios integer
   , EmitirNotaFiscal boolean
   , TipoContabilizacao integer
   , Itens servicos.TItemContratoPagarNovo[]
	
);
