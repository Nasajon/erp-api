CREATE TYPE contabil.TcontaanualAlterar AS (
     grupoempresarial text
   , empresa text
   , conta text
   , ano integer
   , codigoreduzido character varying(6)
   , nome character varying(100)
   , naturezaconta integer
   , naturezasaldo integer
   , permitecentrodecusto integer
	
);
