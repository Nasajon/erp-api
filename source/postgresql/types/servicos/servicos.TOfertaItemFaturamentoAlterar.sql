CREATE TYPE servicos.TOfertaItemFaturamentoAlterar AS (
     servicocatalogoitem uuid
   , servicocatalogo uuid
   , itemfaturamento uuid
   , quantidade numeric(20,2)
   , valorbase numeric(20,2)
   , finalidade integer
	
);
