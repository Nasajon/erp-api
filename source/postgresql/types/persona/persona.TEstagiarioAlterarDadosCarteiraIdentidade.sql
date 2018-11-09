CREATE TYPE persona.TEstagiarioAlterarDadosCarteiraIdentidade AS (
     Estagiario text
   , Empresa text
   , Numero character varying(30)
   , OrgaoEmissor character varying(20)
   , UF character varying(2)
   , DataExpedicao date
	
);
