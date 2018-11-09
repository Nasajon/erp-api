CREATE TYPE persona.THorarioAlterarDadosOutros AS (
     Horario text
   , Empresa text
   , Codigo character varying(8)
   , Nome character varying(50)
   , Tipo integer
   , JornadaSegunda text
   , JornadaTerca text
   , JornadaQuarta text
   , JornadaQuinta text
   , JornadaSexta text
   , JornadaSabado text
   , JornadaDomingo text
   , RepousoSegunda boolean
   , RepousoTerca boolean
   , RepousoQuarta boolean
   , RepousoQuinta boolean
   , RepousoSexta boolean
   , RepousoSabado boolean
   , RepousoDomingo boolean
	
);
