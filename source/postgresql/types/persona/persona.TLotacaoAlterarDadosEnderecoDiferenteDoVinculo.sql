CREATE TYPE persona.TLotacaoAlterarDadosEnderecoDiferenteDoVinculo AS (
     Lotacao text
   , Empresa text
   , Tipologradouro character varying(10)
   , Logradouro character varying(150)
   , Numero character varying(10)
   , Complemento character varying(60)
   , Bairro character varying(60)
   , Cidade character varying(60)
   , CEP character varying(8)
   , CodigoMunicipio character varying(8)
   , UF character varying(2)
	
);
