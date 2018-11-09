CREATE TYPE ns.TLocalDeUsoNovo AS (
     id uuid
   , codigo character varying(30)
   , descricao character varying(150)
   , centrocusto uuid
   , projeto uuid
   , grupoempresarial uuid
   , agrega_solicitacoes boolean
	
);
