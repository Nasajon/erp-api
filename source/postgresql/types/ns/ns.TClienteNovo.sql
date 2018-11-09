CREATE TYPE ns.TClienteNovo AS (
     cliente uuid
   , codigo character varying(30)
   , nome character varying(150)
   , nomefantasia character varying(150)
   , identidade character varying(20)
   , documento character varying(20)
   , retemiss boolean
   , retemir boolean
   , retempis boolean
   , retemcofins boolean
   , retemcsll boolean
   , reteminss boolean
   , entidadescompartilhadoras ns.TEntidadeCompartilhadora[]
   , endereco ns.TEndereco[]
	
);
