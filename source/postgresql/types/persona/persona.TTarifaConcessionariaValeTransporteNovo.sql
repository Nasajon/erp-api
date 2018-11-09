CREATE TYPE persona.TTarifaConcessionariaValeTransporteNovo AS (
     IdTarifa uuid
   , Concessionaria text
   , Codigo character varying(4)
   , Descricao character varying(30)
   , Valor numeric(20,6)
   , Tipo integer
	
);
