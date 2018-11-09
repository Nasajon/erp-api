CREATE TYPE persona.TFuncionarioAlterarDadosPassaporte AS (
     Funcionario text
   , Empresa text
   , CodigoPaisEmissor character varying(5)
   , Numero character varying(30)
   , OrgaoEmissor character varying(20)
   , UF character varying(2)
   , DataExpedicao date
   , DataValidade date
	
);
