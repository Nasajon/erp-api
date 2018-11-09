CREATE TYPE persona.TDependenteFuncionarioAlterarDadosCertidaoNascimento AS (
     Dependente text
   , Funcionario text
   , Empresa text
   , DataNascimento date
   , DataEntrega date
   , DataBaixa date
   , UF character varying(2)
   , Cidade character varying(60)
   , Cartorio character varying(30)
   , Numero character varying(40)
   , Livro character varying(10)
   , FolhaLivro character varying(5)
	
);
