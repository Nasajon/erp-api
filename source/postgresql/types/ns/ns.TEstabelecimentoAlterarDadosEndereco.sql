CREATE TYPE ns.TEstabelecimentoAlterarDadosEndereco AS (
     Estabelecimento text
   , Empresa text
   , CodigoMunicipio character varying(8)
   , TipoLogradouro character varying(10)
   , Logradouro character varying(150)
   , Numero character varying(10)
   , Complemento character varying(60)
   , Bairro character varying(60)
   , CEP character varying(8)
   , Cidade character varying(60)
   , CaixaPostal character varying(6)
   , UFCaixaPostal character varying(2)
   , CEPCaixaPostal character varying(8)
   , Email character varying(100)
   , Site character varying(100)
   , DDDTelefone character varying(2)
   , Telefone character varying(20)
   , DDDFAX character varying(2)
   , FAX character varying(20)
	
);
