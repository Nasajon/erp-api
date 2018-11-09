CREATE TYPE persona.TFaltaFuncionarioAlterar AS (
     IdFalta uuid
   , Funcionario text
   , Empresa text
   , Data date
   , Descricao date
   , Tipo integer
   , AbateNoCalculoDoPonto boolean
	
);
