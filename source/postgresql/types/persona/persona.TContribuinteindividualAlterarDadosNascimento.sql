CREATE TYPE persona.TContribuinteindividualAlterarDadosNascimento AS (
     Contribuinte text
   , Empresa text
   , UF character varying(2)
   , Cidade character varying(60)
   , CodigoMunicipio character varying(8)
   , CodigoPais character varying(5)
   , NomePai character varying(80)
   , NomeMae character varying(80)
   , DataNascimento date
	
);
