CREATE TYPE servicos.TCatalogoDeOfertaNovo AS (
     catalogodeoferta uuid
   , codigo character varying(30)
   , descricao character varying(150)
   , id_grupoempresarial uuid
   , catalogodeoferta_pai uuid
   , tipo integer
	
);
