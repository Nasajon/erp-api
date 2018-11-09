CREATE TYPE ns.TSociosParticipacoesAlterar AS (
     SocioParticipacao text
   , Socio text
   , Empresa text
   , DataInicial date
   , DataInicial_Anterior date
   , DataFinal date
   , PercentualCapitalTotal numeric(5,2)
   , PercentualCapitalVotante numeric(5,2)
	
);
