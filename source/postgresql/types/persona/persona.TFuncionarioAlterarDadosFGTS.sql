CREATE TYPE persona.TFuncionarioAlterarDadosFGTS AS (
     Funcionario text
   , Empresa text
   , NumeroConta character varying(16)
   , Optante boolean
   , DataOpcao date
   , Saldo numeric(20,6)
	
);
