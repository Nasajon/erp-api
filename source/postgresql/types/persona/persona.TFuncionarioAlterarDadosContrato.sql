CREATE TYPE persona.TFuncionarioAlterarDadosContrato AS (
     Funcionario text
   , Empresa text
   , TipoAdmissao integer
   , RegimeTrabalhista integer
   , RegimeINSS integer
   , Atividade integer
   , Prazo integer
   , CodigoVinculo character varying(3)
   , DiasExperiencia integer
   , DiasProrrogacao integer
   , MotivoAdmissao integer
   , MotivoContratacaoTemporaria integer
   , DataFimcontrato date
   , FuncionarioSubstituido text
   , ProcessoAdmissao text
   , PrimeiroEmprego boolean
	
);
