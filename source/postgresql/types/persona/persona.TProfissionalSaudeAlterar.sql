CREATE TYPE persona.TProfissionalSaudeAlterar AS (
     Profissional text
   , Codigo character varying(6)
   , Nome character varying(40)
   , Conselho integer
   , NumeroConselho character varying(14)
   , UFConselho character varying(2)
   , NIT character varying(15)
   , TipoRegistro character varying(1)
   , Categoria integer
   , DDDTelefone character varying(2)
   , Telefone character varying(20)
	
);
