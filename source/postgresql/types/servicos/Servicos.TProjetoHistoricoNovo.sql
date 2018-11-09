CREATE TYPE Servicos.TProjetoHistoricoNovo AS (
     ProjetoHistorico uuid
   , Projeto text
   , Estabelecimento text
   , Empresa text
   , GrupoEmpresarial text
   , Data timestamp
   , Usuario text
   , Historico text
	
);
