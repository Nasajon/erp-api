CREATE TYPE financas.TFormaPagamentoFaturaNovo AS (
     Id uuid
   , id_fatura text
   , Id_formapagamento uuid
   , id_conta text
   , Id_rateiopadrao uuid
   , id_meioeletronico text
   , Id_layoutcobranca uuid
   , id_operadora text
   , Id_bandeira uuid
   , id_parcelamento text
   , Valor numeric(13,2)
   , NumeroParcelas integer
   , DataFatura date
   , TipoOperacao integer
   , AutorizacaoCartao character varying(30)
   , dataautorizacaocartao date
   , documentocartao character varying(30)
   , irretido numeric(13,2)
   , pisretido numeric(13,2)
   , cofinsretido numeric(13,2)
   , csllretido numeric(13,2)
	
);
