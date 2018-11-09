CREATE TYPE financas.TRateioPadrao AS (
     RateioPadrao uuid
   , Nome character varying(100)
   , GrupoEmpresarial ns.TGrupoEmpresarial
	
);
