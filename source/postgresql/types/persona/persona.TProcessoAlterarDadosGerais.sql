CREATE TYPE persona.TProcessoAlterarDadosGerais AS (
     Processo text
   , Empresa text
   , Numero character varying(20)
   , DataAbertura date
   , Descricao character varying(100)
   , CodigoMunicipioVara character varying(8)
   , CodigoVara character varying(2)
   , Tipo integer
   , Autor integer
   , Motivo integer
	
);
