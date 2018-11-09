CREATE TYPE ns.TFornecedorNovo AS (
     fornecedor uuid
   , codigo character varying(30)
   , nome character varying(150)
   , nomefantasia character varying(150)
   , identidade character varying(20)
   , documento character varying(20)
   , entidadescompartilhadoras ns.TEntidadeCompartilhadora[]
   , endereco ns.TEndereco[]
	
);
