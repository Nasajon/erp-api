CREATE TYPE persona.TEstagiarioNovo AS (
     IdEstagiario uuid
   , Empresa text
   , Estabelecimento text
   , Departamento text
   , Horario text
   , Lotacao text
   , NivelCargo text
   , Cargo text
   , Codigo character varying(14)
   , Nome character varying(80)
   , CodigoCategoria character varying(3)
   , CPF character varying(11)
   , NIS character varying(11)
   , DataInicioContrato date
   , DataFimContrato date
   , UnidadeSalario integer
   , Sexo integer
   , CodigoCBO character varying(6)
	
);
