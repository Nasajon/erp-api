CREATE TYPE ns.TUsuarioAlterar AS (
     Usuario text
   , Nome character varying(60)
   , Email character varying(100)
   , Telefone character varying(20)
   , Login character varying(20)
   , Senha character varying(300)
   , PerfilUsuario text
   , GrupoDeUsuario text
   , representante uuid
   , vendedor uuid
	
);
