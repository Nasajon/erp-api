CREATE TYPE financas.TLotesFaturaNovo AS (
     Id uuid
   , Estabelecimento text
   , Usuario text
   , Numero character varying(30)
   , Emissao date
   , DataCriacao date
   , Clientes ns.TCliente[]
   , DataInicio date
   , DataFim date
   , PorEmissao boolean
   , Mensagens financas.TMensagemLoteFaturaNovo[]
   , TipoSelecaoCliente integer
   , DiaInicioSelecao integer
   , DiaFimSelecao integer
	
);
