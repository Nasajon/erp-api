CREATE TYPE persona.TSindicatoNovo AS (
     IdSindicato uuid
   , Codigo character varying(6)
   , CNPJ character varying(18)
   , CodigoContribuicao character varying(12)
   , CodigoEntidade character varying(15)
   , Patronal boolean
   , MesContribuicaoAssistencial integer
   , MesContribuicaoSindical integer
   , PisoSalarial numeric(20,6)
   , Nome character varying(60)
	
);
