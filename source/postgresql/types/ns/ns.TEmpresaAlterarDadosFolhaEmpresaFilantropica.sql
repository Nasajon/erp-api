CREATE TYPE ns.TEmpresaAlterarDadosFolhaEmpresaFilantropica AS (
     Empresa text
   , Filantropica boolean
   , NumeroCertificado character varying(40)
   , Ministerio character varying(8)
   , NumeroProtocoloRenovacao character varying(40)
   , NumeroPaginaDiarioOficialUniao character varying(6)
   , DataEmissaoCertificado date
   , DataVencimentoCertificado date
   , DataProtocoloRenovacaoIsencao date
   , DataPublicacaoDiarioOficialUniao date
	
);
