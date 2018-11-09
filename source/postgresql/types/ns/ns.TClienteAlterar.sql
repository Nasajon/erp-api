CREATE TYPE ns.TClienteAlterar AS (
     cliente text
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
   , entidadescompartilhadoras_anteriores ns.TEntidadeCompartilhadora[]
   , entidadescompartilhadoras_novas ns.TEntidadeCompartilhadora[]
   , endereco ns.TEndereco[]
	
);
