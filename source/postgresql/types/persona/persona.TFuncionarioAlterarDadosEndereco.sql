CREATE TYPE persona.TFuncionarioAlterarDadosEndereco AS (
     Funcionario text
   , Empresa text
   , TipoLogradouro character varying(10)
   , CodigoMunicipio character varying(8)
   , CodigoPais character varying(5)
   , Logradouro character varying(150)
   , Numero character varying(10)
   , Complemento character varying(60)
   , Bairro character varying(60)
   , Cidade character varying(60)
   , CEP character varying(10)
   , DDD character varying(2)
   , Telefone character varying(20)
	
);
