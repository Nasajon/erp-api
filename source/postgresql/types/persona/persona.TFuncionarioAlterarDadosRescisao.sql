CREATE TYPE persona.TFuncionarioAlterarDadosRescisao AS (
     Funcionario text
   , Empresa text
   , DataRescisao date
   , NumeroRecibo character varying(15)
   , CodigoMotivo character varying(2)
   , FGTSMesAnteriorRecolhido boolean
   , AvisoIndenizadoPago boolean
   , TinhaEmpregoDuranteAvisoPrevio boolean
   , JornadaCumpridaNaSemanaDaRescisao boolean
   , JornadaSabadoCompensadaNaSemanaDaRescisao boolean
   , DataProjecaoAvisoPrevioIndenizado date
   , Processo text
	
);
