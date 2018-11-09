CREATE TYPE persona.TFuncionarioAlterarDadosCarteiraHablilitacao AS (
     Funcionario text
   , Empresa text
   , Numero character varying(30)
   , OrgaoEmissor character varying(20)
   , DataExpedicao date
   , DataValidade date
   , DataPrimeiraHabilitacao date
   , Categoria integer
	
);
