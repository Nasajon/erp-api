CREATE TYPE ns.TSociosNovo AS (
     IdSocio uuid
   , Empresa text
   , Codigo character varying(30)
   , Nome character varying(50)
   , Cargo character varying(30)
   , Pais character varying(5)
   , UFCaixaPostal character varying(2)
   , Identidade character varying(20)
   , Documento character varying(20)
   , Telefone character varying(20)
   , Email character varying(100)
   , Imprimir boolean
   , IndicadorQualificacao character varying(25)
   , Qualificacao character varying(80)
	
);
