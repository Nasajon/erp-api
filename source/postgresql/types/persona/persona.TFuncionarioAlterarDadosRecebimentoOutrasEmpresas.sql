CREATE TYPE persona.TFuncionarioAlterarDadosRecebimentoOutrasEmpresas AS (
     Funcionario text
   , Empresa text
   , OrdemCalculoINSSFolha integer
   , OrdemCalculoINSSDecimoTerceiro integer
   , TemVinculoComOutraEmpresa boolean
   , MesesTrabalhadosOutrasEmpresas integer
	
);
