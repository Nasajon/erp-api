CREATE TYPE persona.TReajusteSindicatoAlterar AS (
     IdReajuste uuid
   , Sindicato text
   , Data date
   , DataDeveriaTerSidoConcedido date
   , Tipo integer
   , Percentual numeric(20,6)
   , Descricao character varying(50)
	
);
