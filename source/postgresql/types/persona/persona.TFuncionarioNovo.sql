CREATE TYPE persona.TFuncionarioNovo AS (
     IdFuncionario uuid
   , Empresa text
   , Codigo character varying(14)
   , Nome character varying(80)
   , CodigoCategoria character varying(3)
   , CPF character varying(14)
   , NIS character varying(11)
   , DataAdmissao date
   , UnidadeSalario integer
   , Sexo integer
   , CodigoCBO character varying(6)
	
);
