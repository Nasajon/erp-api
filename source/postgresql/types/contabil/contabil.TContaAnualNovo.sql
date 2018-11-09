CREATE TYPE contabil.TcontaanualNovo AS (
     id uuid
   , grupoempresarial text
   , empresa text
   , codigoconta character varying(21)
   , codigoreduzido character varying(6)
   , ano integer
   , nome character varying(100)
   , naturezaconta integer
   , naturezasaldo integer
   , permitecentrodecusto integer
   , contamae text
	
);
