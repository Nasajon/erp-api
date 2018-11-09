CREATE TYPE ns.TSociosParticipacoesNovo AS (
     IdSocioParticipacao uuid
   , Socio text
   , Empresa text
   , DataInicial date
   , DataFinal date
   , PercentualCapitalTotal numeric(5,2)
   , PercentualCapitalVotante numeric(5,2)
	
);
