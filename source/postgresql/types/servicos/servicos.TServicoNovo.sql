CREATE TYPE servicos.TServicoNovo AS (
     Servico uuid
   , TipoServico text
   , Codigo character varying(30)
   , Descricao character varying(150)
   , Valor numeric(20,2)
   , CFOP servicos.TCFOPServico
   , entidadescompartilhadoras ns.TEntidadeCompartilhadora[]
	
);
