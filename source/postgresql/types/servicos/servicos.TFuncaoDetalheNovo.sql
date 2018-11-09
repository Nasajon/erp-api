CREATE TYPE servicos.TFuncaoDetalheNovo AS (
     FuncaoDetalhe uuid
   , Funcao text
   , Registro text
   , RegistroTipo integer
   , FuncaoDetalhePai text
   , Codigo character varying(30)
   , Descricao character varying(150)
   , Unidade text
   , Quantidade numeric()
   , ValorUnitario numeric()
   , ValorTotal numeric()
   , PeriodicidadeTipo integer
   , PeriodicidadeIntervalo numeric()
	
);
