CREATE TYPE ns.TContaAnualNovo AS (
     id uuid
   , grupoempresarial text
   , empresa text
   , codigoconta character varying(21)
   , codigoreduzido character varying(6)
   , ano character varying(6)
   , nome character varying(100)
   , naturezaconta character varying(100)
   , naturezasaldo character varying(100)
   , permitecentrodecusto character varying(100)
   , contamae text
	
);
