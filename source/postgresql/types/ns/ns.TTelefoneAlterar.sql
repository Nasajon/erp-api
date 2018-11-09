CREATE TYPE ns.TTelefoneAlterar AS (
     id uuid
   , idPessoa uuid
   , idContato uuid
   , ddi character varying(5)
   , ddd character varying(5)
   , chaveTel character varying(50)
   , numero character varying(50)
   , ramal character varying(10)
   , descricao text
   , tipo integer
   , ordemImportancia integer
	
);
