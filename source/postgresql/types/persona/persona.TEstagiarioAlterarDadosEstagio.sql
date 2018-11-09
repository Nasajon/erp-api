CREATE TYPE persona.TEstagiarioAlterarDadosEstagio AS (
     Estagiario text
   , Empresa text
   , AreaAtuacao character varying(50)
   , ApoliceSeguro character varying(30)
   , NomeSupervisor character varying(60)
   , CPFSupervisor character varying(11)
   , Nivel integer
   , Obrigatorio boolean
   , InstituicaoEnsino text
   , InstituicaoIntegradora text
	
);
