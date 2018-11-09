CREATE TYPE ns.TLocalDeUsoAlterar AS (
     id text
   , descricao character varying(150)
   , centrocusto uuid
   , projeto uuid
   , grupoempresarial uuid
   , agrega_solicitacoes boolean
	
);
