CREATE TYPE servicos.TCFOPServicoAlterar AS (
     CFOPServico text
   , IBGEMunicipio_Anterior integer
   , Codigo character varying(30)
   , IBGEMunicipio_Novo integer
   , Descricao character varying(255)
   , Discriminacao character varying(80)
   , RetemPIS boolean
   , RetemCOFINS boolean
   , RetemCSLL boolean
   , RetemIRRF boolean
   , IbpTaxa numeric(20,2)
	
);
