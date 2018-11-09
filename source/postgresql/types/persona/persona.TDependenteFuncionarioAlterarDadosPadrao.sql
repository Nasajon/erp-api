CREATE TYPE persona.TDependenteFuncionarioAlterarDadosPadrao AS (
     Dependente text
   , Funcionario text
   , Empresa text
   , Codigo character varying(6)
   , Nome character varying(70)
   , CPF character varying(14)
   , DataInclusao date
   , TipoParentesco integer
   , Sexo integer
	
);
