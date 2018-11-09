CREATE TYPE financas.TLoteFatura_v2Novo AS (
     LoteFatura uuid
   , Estabelecimento ns.TEstabelecimento
   , Usuario text
   , Numero character varying(30)
   , Emissao date
   , DataCriacao date
   , Clientes ns.TCliente[]
   , DataInicio date
   , DataFim date
   , PorEmissao boolean
   , Mensagens financas.TMensagemLoteFatura_v2[]
   , TipoSelecaoCliente integer
   , DiaInicioSelecao integer
   , DiaFimSelecao integer
	
);
