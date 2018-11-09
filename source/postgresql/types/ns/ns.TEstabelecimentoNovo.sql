CREATE TYPE ns.TEstabelecimentoNovo AS (
     IdEstabelecimento uuid
   , Empresa text
   , Codigo character varying(30)
   , Descricao character varying(150)
   , Identificacao character varying(20)
   , InscricaoEstadual character varying(20)
   , InscricaoMunicipal character varying(20)
   , NomeFantasia character varying(150)
   , CEI character varying(12)
   , DataInicioAtividades date
   , DataFinalAtividades date
	
);
