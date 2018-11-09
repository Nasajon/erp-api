CREATE TYPE servicos.TFuncaoDetalheNovoEPI AS (
     FuncaoDetalhe uuid
   , Funcao text
   , Registro text
   , Agrupador text
   , Unidade text
   , Quantidade numeric()
   , ValorUnitario numeric()
   , ValorTotal numeric()
   , PeriodicidadeTipo integer
   , PeriodicidadeIntervalo numeric()
	
);
