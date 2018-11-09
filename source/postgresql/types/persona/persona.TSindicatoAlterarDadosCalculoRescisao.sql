CREATE TYPE persona.TSindicatoAlterarDadosCalculoRescisao AS (
     Sindicato text
   , MesesParaCalculoMedia integer
   , MediaPelosMaioresValores boolean
   , QuantidadeMesesMaioresValores integer
   , DiasAvisoPrevio integer
   , PercentualMultaFGTS numeric(20,6)
	
);
