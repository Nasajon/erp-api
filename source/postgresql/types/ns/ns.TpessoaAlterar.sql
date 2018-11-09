CREATE TYPE ns.TpessoaAlterar AS (
     pessoa text
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
   , entidadescompartilhadoras_anteriores ns.TEntidadeCompartilhadora[]
   , entidadescompartilhadoras_novas ns.TEntidadeCompartilhadora[]
   , endereco ns.TEndereco[]
	
);
