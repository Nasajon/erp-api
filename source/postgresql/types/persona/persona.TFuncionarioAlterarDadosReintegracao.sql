CREATE TYPE persona.TFuncionarioAlterarDadosReintegracao AS (
     Funcionario text
   , Empresa text
   , Tipo integer
   , DataRetroativa date
   , DataRetorno date
   , Processo text
   , NumeroLeiAnistia character varying(14)
	
);
