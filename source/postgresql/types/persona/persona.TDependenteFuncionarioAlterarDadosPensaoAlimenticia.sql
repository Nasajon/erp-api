CREATE TYPE persona.TDependenteFuncionarioAlterarDadosPensaoAlimenticia AS (
     Dependente text
   , Funcionario text
   , Empresa text
   , PercentualFolha numeric(20,6)
   , PercentualMultaFGTS numeric(20,6)
   , TipoRecebimento integer
   , Agencia text
   , Banco text
   , NumeroContaRecebimento character varying(16)
   , DigitoVerificadorContaRecebimento character varying(5)
   , RubricaFolha text
   , RubricaFerias text
   , RubricaPPLR text
   , RubricaDecimoTerceiro text
   , Conjunto text
	
);
