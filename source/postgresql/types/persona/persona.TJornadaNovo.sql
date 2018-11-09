CREATE TYPE persona.TJornadaNovo AS (
     IdJornada uuid
   , Empresa text
   , Codigo character varying(10)
   , Descricao character varying(100)
   , Entrada character varying(100)
   , Saida character varying(100)
   , Tipo integer
   , DescricaoTipo character varying(100)
   , Flexivel boolean
   , TipoIntervalo integer
   , DuracaoIntervalo integer
	
);
