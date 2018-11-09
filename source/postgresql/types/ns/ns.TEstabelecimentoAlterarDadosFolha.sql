CREATE TYPE ns.TEstabelecimentoAlterarDadosFolha AS (
     Estabelecimento text
   , Empresa text
   , CodigoFPAS character varying(6)
   , CodigoTerceiros character varying(4)
   , CodigoCNAE character varying(7)
   , NumeroProprietarios integer
   , NumeroFamiliares integer
   , Porte integer
   , CapitalSocial numeric(20,6)
   , FazPartePAT boolean
   , PagaPIS boolean
   , CentralizaContribuicaoSindical boolean
   , Sindicato text
   , NumeroContaDepositoFGTS character varying(14)
   , TipoContaDepositoFGTS integer
   , AgenciaDepositoFGTS text
   , BancoDepositoFGTS text
	
);
