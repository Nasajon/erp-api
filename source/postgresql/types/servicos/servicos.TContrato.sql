CREATE TYPE servicos.TContrato AS (
     Id uuid
   , Codigo character varying(30)
   , Descricao character varying(120)
   , TipoContrato integer
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
   , PercentualComissao numeric(20,2)
   , ValorComissao numeric(20,2)
   , PercentualRetencaoImposto numeric(20,2)
   , ValorRetencaoImposto numeric(20,2)
   , EmitirNotaFiscal boolean
   , TipoContabilizacao integer
   , Autorizado integer
   , Cancelado boolean
   , DataHoraCancelamento timestamp
   , TipoFuncao integer
   , Itens servicos.TItemContrato[]
	
);
