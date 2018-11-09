CREATE TYPE servicos.TProjetoFuncaoDetalheNovoEPI AS (
     Identificador uuid
   , Funcao text
   , GrupoEmpresarial text
   , Registro text
   , Agrupador text
   , Unidade text
   , Quantidade numeric
   , ValorUnitario numeric
   , PeriodicidadeTipo integer
   , PeriodicidadeIntervalo numeric
	
);
