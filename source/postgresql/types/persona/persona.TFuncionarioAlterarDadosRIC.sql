CREATE TYPE persona.TFuncionarioAlterarDadosRIC AS (
     Funcionario text
   , Empresa text
   , Numero character varying(30)
   , OrgaoEmissor character varying(20)
   , UF character varying(2)
   , Cidade character varying(60)
   , DataExpedicao date
	
);
