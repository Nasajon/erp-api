CREATE TYPE financas.TAgenciaAlterarDadosEndereco AS (
     Agencia text
   , Banco text
   , Logradouro character varying(150)
   , Numero character varying(10)
   , Complemento character varying(10)
   , Bairro character varying(60)
   , Cidade character varying(60)
   , Estado character varying(2)
   , CEP character varying(9)
   , Contato character varying(40)
   , Telefone character varying(20)
   , DDDTelefone character varying(2)
	
);
