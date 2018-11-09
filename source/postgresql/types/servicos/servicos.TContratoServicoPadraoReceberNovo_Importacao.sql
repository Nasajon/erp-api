CREATE TYPE servicos.TContratoServicoPadraoReceberNovo_Importacao AS (
     Id uuid
   , Codigo character varying(30)
   , Descricao character varying(120)
   , DefinicaoContratante character varying(20)
   , DefinicaoBeneficiario character varying(20)
   , DataInicial date
   , Estabelecimento text
   , Pessoa text
   , Conta text
   , QtdDiasDesconto integer
   , QtdDiasMulta integer
   , QtdDiasJurosDiarios integer
   , EmitirNotaFiscal boolean
   , Autorizado integer
   , Cancelado boolean
   , DataHoraCancelamento timestamp
   , Itens servicos.TItemContratoReceberNovo_Importacao[]
	
);
