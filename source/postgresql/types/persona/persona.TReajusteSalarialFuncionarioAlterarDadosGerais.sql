CREATE TYPE persona.TReajusteSalarialFuncionarioAlterarDadosGerais AS (
     IdReajuste uuid
   , Funcionario text
   , Empresa text
   , Data date
   , Descricao character varying(255)
   , Tipo integer
   , Percentual numeric(20,6)
   , SalarioAnterior numeric(20,6)
   , SalarioNovo numeric(20,6)
   , UnidadeSalarioNovo integer
	
);
