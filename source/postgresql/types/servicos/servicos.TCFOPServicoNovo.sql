CREATE TYPE servicos.TCFOPServicoNovo AS (
     CFOPServico uuid
   , Codigo character varying(30)
   , IBGEMunicipio integer
   , Descricao character varying(255)
   , Discriminacao character varying(80)
   , RetemPIS boolean
   , RetemCOFINS boolean
   , RetemCSLL boolean
   , RetemIRRF boolean
   , IbpTaxa numeric(20,2)
	
);
