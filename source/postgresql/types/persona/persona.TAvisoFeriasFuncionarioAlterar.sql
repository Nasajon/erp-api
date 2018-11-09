CREATE TYPE persona.TAvisoFeriasFuncionarioAlterar AS (
     IdAvisoFerias uuid
   , Data date
   , Funcionario text
   , Empresa text
   , DataNova date
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
