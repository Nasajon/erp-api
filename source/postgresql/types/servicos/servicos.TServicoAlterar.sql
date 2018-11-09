CREATE TYPE servicos.TServicoAlterar AS (
     Servico text
   , TipoServico text
   , Codigo character varying(30)
   , Descricao character varying(150)
   , Valor numeric(20,2)
   , CFOP servicos.TCFOPServico
   , entidadescompartilhadoras_anteriores ns.TEntidadeCompartilhadora[]
   , entidadescompartilhadoras_novas ns.TEntidadeCompartilhadora[]
	
);
