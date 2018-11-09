CREATE TYPE ns.TEnderecoAlterar AS (
     id uuid
   , tipoLogradouro character varying(50)
   , logradouro character varying(150)
   , numero character varying(50)
   , complemento character varying(100)
   , cep character varying(30)
   , bairro character varying(100)
   , municipio ns.TMunicipioAlterar
   , pais ns.TPaisNovo
   , uf character varying(2)
   , tipo integer
   , enderecopadrao integer
   , referencia character varying(150)
   , idpessoa uuid
	
);
