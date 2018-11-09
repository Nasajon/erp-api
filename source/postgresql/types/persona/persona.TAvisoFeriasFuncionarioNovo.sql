CREATE TYPE persona.TAvisoFeriasFuncionarioNovo AS (
     IdAvisoFerias uuid
   , Funcionario text
   , Empresa text
   , Data date
   , Tipo integer
   , DataInicioGozo date
   , DataFimGozo date
   , DataInicioPeriodoAquisitivo date
   , DataFimPeriodoAquisitivo date
   , TemAbonoPecuniario boolean
   , Observacao text
   , DiasVendidos integer
   , DiasFeriasColetivas integer
	
);
