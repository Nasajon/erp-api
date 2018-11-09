CREATE TYPE servicos.Timportacao_itemrps AS (
     Servico text
   , Descricao character varying(1500)
   , ValorUnitario numeric(20,2)
   , Quantidade numeric(20,2)
   , Desconto numeric(20,2)
   , BaseISS numeric(20,2)
   , ValorISS numeric(20,2)
   , BaseINSS numeric(20,2)
   , ValorINSS numeric(20,2)
   , BaseIR numeric(20,2)
   , ValorIR numeric(20,2)
   , BasePIS numeric(20,2)
   , ValorPIS numeric(20,2)
   , BaseCOFINS numeric(20,2)
   , ValorCOFINS numeric(20,2)
   , BaseCSLL numeric(20,2)
   , ValorCSLL numeric(20,2)
   , RetemISS boolean
   , RetemINSS boolean
   , RetemIR boolean
   , RetemPIS boolean
   , RetemCOFINS boolean
   , RetemCSLL boolean
	
);
