CREATE TYPE persona.TSindicatoAlterarDadosEndereco AS (
     Sindicato text
   , Logradouro character varying(150)
   , Numero character varying(10)
   , complemento character varying(60)
   , Bairro character varying(60)
   , Cidade character varying(60)
   , CEP character varying(8)
   , Estado character varying(2)
	
);
