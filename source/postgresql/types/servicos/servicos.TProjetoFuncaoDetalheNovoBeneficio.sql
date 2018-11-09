CREATE TYPE servicos.TProjetoFuncaoDetalheNovoBeneficio AS (
     Identificador uuid
   , Funcao text
   , GrupoEmpresarial text
   , Empresa text
   , Registro text
   , Agrupador text
   , PeriodicidadeTipo integer
   , PeriodicidadeIntervalo numeric
	
);
