CREATE TYPE ns.TFornecedorAlterar AS (
     fornecedor text
   , codigo character varying(30)
   , nome character varying(150)
   , nomefantasia character varying(150)
   , identidade character varying(20)
   , documento character varying(20)
   , entidadescompartilhadoras_anteriores ns.TEntidadeCompartilhadora[]
   , entidadescompartilhadoras_novas ns.TEntidadeCompartilhadora[]
   , endereco ns.TEndereco[]
	
);
