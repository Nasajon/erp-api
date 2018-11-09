CREATE TYPE ns.TEmpresaAlterarDadosFolha AS (
     Empresa text
   , CodigoCNAE character varying(7)
   , CodigoNaturezaJuridica character varying(4)
   , FormaPagamento character varying(1)
   , TipoCooperativa integer
   , Construtora integer
   , PontoEletronico integer
   , PossuiMultiplasTabelasRubrica boolean
   , SituacaoPJ integer
   , SituacaoPF integer
	
);
