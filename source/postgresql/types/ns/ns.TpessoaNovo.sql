CREATE TYPE ns.TpessoaNovo AS (
     pessoa uuid
   , codigo character varying(30)
   , nome character varying(150)
   , nomefantasia character varying(150)
   , identidade character varying(20)
   , documento character varying(20)
   , cliente boolean
   , fornecedor boolean
   , vendedor boolean
   , transportador boolean
   , tecnico boolean
   , entidadescompartilhadoras ns.TEntidadeCompartilhadora[]
   , endereco ns.TEndereco[]
	
);
