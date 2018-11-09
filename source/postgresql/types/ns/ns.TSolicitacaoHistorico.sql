CREATE TYPE ns.TSolicitacaoHistorico AS (
     SolicitacaoHistorico uuid
   , Solicitacao uuid
   , Usuario character varying(64)
   , Comentario character varying(64)
   , Data character varying(64)
   , Status integer
   , UsuarioDestino character varying(64)
	
);
