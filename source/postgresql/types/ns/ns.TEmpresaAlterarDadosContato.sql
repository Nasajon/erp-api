CREATE TYPE ns.TEmpresaAlterarDadosContato AS (
     Empresa text
   , Nome character varying(80)
   , CPF character varying(14)
   , DDDTelefonefixo character varying(2)
   , Telefonefixo character varying(20)
   , DDDTelefoneCelular character varying(2)
   , TelefoneCelular character varying(20)
   , DDDFAX character varying(2)
   , FAX character varying(20)
   , Email character varying(100)
	
);
