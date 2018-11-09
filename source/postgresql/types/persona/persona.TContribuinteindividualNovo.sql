CREATE TYPE persona.TContribuinteindividualNovo AS (
     IdContribuinte uuid
   , Empresa text
   , Estabelecimento text
   , Departamento text
   , Lotacao text
   , NivelCargo text
   , Cargo text
   , Codigo character varying(14)
   , Nome character varying(80)
   , CodigoCategoria character varying(3)
   , CPF character varying(11)
   , NIS character varying(11)
   , DataAdmissao date
   , UnidadeSalario integer
   , Sexo integer
   , CodigoCBO character varying(6)
	
);
