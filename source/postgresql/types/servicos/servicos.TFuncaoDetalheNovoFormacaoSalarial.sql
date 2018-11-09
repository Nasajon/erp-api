CREATE TYPE servicos.TFuncaoDetalheNovoFormacaoSalarial AS (
     FuncaoDetalhe uuid
   , Funcao text
   , Registro text
   , Agrupador text
   , PeriodicidadeTipo integer
   , PeriodicidadeIntervalo numeric()
	
);
