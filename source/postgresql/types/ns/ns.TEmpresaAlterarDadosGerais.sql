CREATE TYPE ns.TEmpresaAlterarDadosGerais AS (
     Empresa text
   , GrupoEmpresarial text
   , Codigo character varying(30)
   , Identificacao character varying(20)
   , RazaoSocial character varying(150)
   , Descricao character varying(150)
   , CodigoCNAE character varying(7)
   , InicioExercicio date
	
);
