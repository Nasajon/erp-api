CREATE TYPE ns.TEstabelecimentoAlterarDadosRepresentante AS (
     Estabelecimento text
   , Empresa text
   , Nome character varying(60)
   , CPF character varying(11)
   , DDDTelefone character varying(2)
   , Telefone character varying(20)
   , Ramal character varying(5)
   , DDDFAX character varying(2)
   , FAX character varying(20)
   , Email character varying(100)
   , Sexo integer
   , DataNascimento date
	
);
