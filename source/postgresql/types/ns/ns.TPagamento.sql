CREATE TYPE ns.TPagamento AS (
     Pagamento uuid
   , FormaPagamento text
   , DocumentoFiscal ns.TDocumentoFiscalns
   , Conta text
   , RateioPadrao financas.TRateioPadrao
   , MeioEletronicoCartao text
   , LayoutCobranca financas.TLayoutCobranca
   , OperadoraCartao text
   , BandeiraCartao text
   , Parcelamento text
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
   , Parcelas ns.TParcela[]
	
);
