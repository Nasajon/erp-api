CREATE TYPE servicos.TAtivoHistoricoOfertaNovo AS (
     ativohistoricooferta uuid
   , id_objetoservico uuid
   , id_oferta uuid
   , ativa boolean
   , data date
	
);
