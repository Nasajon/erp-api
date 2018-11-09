CREATE TYPE persona.TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo AS (
     Lotacao text
   , Empresa text
   , CodigoFPAS character varying(6)
   , CodigoTerceiros character varying(4)
   , AliquotaTerceiros numeric(20,6)
	
);
