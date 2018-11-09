CREATE TYPE persona.THorarioNovoDadosPadrao AS (
     IdHorario uuid
   , Empresa text
   , Codigo character varying(8)
   , Nome character varying(50)
   , Tipo integer
   , JornadaSegunda text
   , RepousoSabado boolean
   , JornadaSabado text
	
);
