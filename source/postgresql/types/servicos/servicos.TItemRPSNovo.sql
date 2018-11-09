CREATE TYPE servicos.TItemRPSNovo AS (
     Id_RPS uuid
   , CodigoServico text
   , Quantidade numeric(20,2)
   , ValorUnitario numeric(20,2)
   , Descricao character varying(1500)
   , BaseISS numeric(20,2)
   , ValorISS numeric(20,2)
   , BaseIRRf numeric(20,2)
   , ValorIRRF numeric(20,2)
   , BaseINSS numeric(20,2)
   , ValorINSS numeric(20,2)
   , BasePIS numeric(20,2)
   , ValorPIS numeric(20,2)
   , BaseCOFINS numeric(20,2)
   , ValorCOFINS numeric(20,2)
   , BaseCSLL numeric(20,2)
   , ValorCSLL numeric(20,2)
   , RetemISS boolean
   , RetemIRRF boolean
   , RetemINSS boolean
   , RetemPIS boolean
   , RetemCOFINS boolean
   , RetemCSLL boolean
   , Contrato_ID uuid
   , ItemContrato_ID uuid
   , ProcessamentoContrato_ID uuid
   , Pessoa_ID uuid
   , id_origem uuid
   , desconto numeric(20,2)
   , Tipo integer
   , valor_total numeric(20,2)
   , item_faturamento_id uuid
	
);
