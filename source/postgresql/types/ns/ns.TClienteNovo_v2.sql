CREATE TYPE ns.TClienteNovo_v2 AS (
     cliente uuid
   , codigo character varying(30)
   , nome character varying(150)
   , qualificacao integer
   , identidade character varying(20)
   , documento character varying(20)
   , orgaoemissor character varying(150)
   , inscricaoestadual character varying(150)
   , inscricaomunicipal character varying(150)
   , email character varying(250)
   , observacao character varying(250)
   , entidadescompartilhadoras ns.TEntidadeCompartilhadora[]
   , enderecoprincipal ns.TEndereco
   , enderecoentrega ns.TEndereco
   , enderecocobranca ns.TEndereco
	
);
