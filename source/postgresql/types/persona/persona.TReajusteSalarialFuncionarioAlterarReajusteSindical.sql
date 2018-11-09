CREATE TYPE persona.TReajusteSalarialFuncionarioAlterarReajusteSindical AS (
     IdReajuste uuid
   , Funcionario text
   , Empresa text
   , Data date
   , IdReajusteSindical uuid
   , DataReajusteSindical date
   , Sindicato text
	
);
