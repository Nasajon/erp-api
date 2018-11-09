CREATE TYPE servicos.TFuncaoDetalheNovoBeneficio AS (
     FuncaoDetalhe uuid
   , Funcao text
   , Registro text
   , Agrupador text
   , PeriodicidadeTipo integer
   , PeriodicidadeIntervalo numeric()
	
);
