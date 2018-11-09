CREATE TYPE financas.TAgenciaNovo AS (
     IdAgencia uuid
   , Banco text
   , Codigo character varying(7)
   , Nome character varying(20)
   , Numero character varying(20)
   , DigitoVerificador character varying(2)
	
);
