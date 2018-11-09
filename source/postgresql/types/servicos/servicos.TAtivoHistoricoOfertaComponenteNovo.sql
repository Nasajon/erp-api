CREATE TYPE servicos.TAtivoHistoricoOfertaComponenteNovo AS (
     ativohistoricoofertacomponente uuid
   , id_objetoservicohistoricooferta uuid
   , id_componente uuid
   , quantidade numeric(20,2)
   , ativa boolean
   , data date
	
);
