CREATE TYPE ns.TParcela AS (
     Parcela uuid
   , Pagamento uuid
   , Numero character varying(30)
   , Valor numeric(13,2)
   , Vencimento date
   , Sequencial integer
   , Conta text
   , ValorCreditoaUtilizar numeric
   , UsarSaldoCredito boolean
   , id_owner uuid
   , competencia date
   , basevencimentoparcela uuid
   , percentual numeric
   , intervalo integer
   , sinal boolean
	
);
