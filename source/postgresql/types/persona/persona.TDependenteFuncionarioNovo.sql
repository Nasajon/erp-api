CREATE TYPE persona.TDependenteFuncionarioNovo AS (
     IdDependente uuid
   , Funcionario text
   , Empresa text
   , Codigo character varying(6)
   , Nome character varying(70)
   , CPF character varying(14)
   , DataInclusao date
   , TipoParentesco integer
   , Sexo integer
	
);
