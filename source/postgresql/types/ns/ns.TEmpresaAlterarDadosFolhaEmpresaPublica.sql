CREATE TYPE ns.TEmpresaAlterarDadosFolhaEmpresaPublica AS (
     Empresa text
   , CodigoMunicipioEnteFederativo character varying(7)
   , DescricaoLeiSeguradoDiferenciado character varying(50)
   , NumeroSIAFI character varying(6)
   , AnosMaioridadeDependenteExecutivo integer
   , AnosMaioridadeDependenteLegislativo integer
   , AnosMaioridadeDependenteJudiciario integer
   , AnosMaioridadeDependenteTodosPoderes integer
   , RegimeProprioPrevidenciaSocial boolean
   , ValorSubtetoINSSExecutivo numeric(20,6)
   , ValorSubtetoINSSLegislativo numeric(20,6)
   , ValorSubtetoINSSJudiciario numeric(20,6)
   , ValorSubtetoINSSTodosPoderes numeric(20,6)
	
);
