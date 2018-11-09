CREATE TYPE persona.TFuncionarioAlterarDadosCertidao AS (
     Funcionario text
   , Empresa text
   , Numero character varying(30)
   , Livro character varying(15)
   , Folha character varying(5)
   , Cidade character varying(60)
   , UF character varying(2)
   , Cartorio character varying(30)
   , DataExpedicao date
   , Tipo integer
	
);
