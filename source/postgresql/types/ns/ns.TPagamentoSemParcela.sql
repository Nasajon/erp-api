CREATE TYPE ns.TPagamentoSemParcela AS (
     Pagamento uuid
   , Id_formapagamento uuid
   , id_DocumentoFiscal uuid
   , id_conta text
   , Id_rateiopadrao uuid
   , id_meioeletronico text
   , Id_layoutcobranca uuid
   , id_operadora text
   , Id_bandeira uuid
   , id_parcelamento text
   , Valor numeric(13,2)
   , NomeFormaPagamento character varying(30)
   , NomeMeioEletronicoCartao character varying(30)
   , NomeBandeiraCartao character varying(30)
   , NomeOperadoraCartao character varying(30)
   , NomeConta character varying(30)
   , NumeroParcelas integer
   , DataFatura date
   , TipoOperacao integer
   , AutorizacaoCartao character varying(30)
   , DataAutorizacaoCartao date
   , DocumentoCartao character varying(30)
   , IrRetido numeric(13,2)
   , PisRetido numeric(13,2)
   , CofinsRetido numeric(13,2)
   , CsllRetido numeric(13,2)
   , Tipo integer
   , id_owner uuid
	
);
