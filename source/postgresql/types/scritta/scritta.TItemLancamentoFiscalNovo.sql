CREATE TYPE scritta.TItemLancamentoFiscalNovo AS (
     id uuid
   , iditem text
   , idlancamentofiscal text
   , descricao character varying(150)
   , ordem integer
   , ano integer
   , incentivo boolean
   , ignorasoma boolean
   , semmovimento boolean
   , valor numeric(20,2)
   , quantidade numeric(20,4)
   , unidade character varying(6)
   , desconto numeric(20,2)
   , descontonaotributado numeric(20,2)
   , valorcontabil numeric(20,2)
   , situacaotributariaipi integer
   , tipoipi integer
   , aliquotaipi numeric(20,2)
   , baseipi numeric(20,2)
   , valoripi numeric(20,2)
   , baseipinaotributada numeric(20,2)
   , reducaoipi numeric(20,2)
   , valorreducaoipi numeric(20,2)
   , valorabatimentoipi numeric(20,2)
   , situacaotributariaicms integer
   , situacaosimplesnacional integer
   , aliquotaicms numeric(20,2)
   , baseicms numeric(20,2)
   , valoricms numeric(20,2)
   , baseicmsnaotributada numeric(20,2)
   , valoricmsnaotributada numeric(20,2)
   , reducaoicms numeric(20,2)
   , valorreducaoicms numeric(20,2)
   , valorabatimentoicms numeric(20,2)
   , valordificms numeric(20,2)
   , valorantecipacaoicms numeric(20,2)
   , valorciap numeric(20,2)
   , basesubstituicaotributaria numeric(20,2)
   , valorsubstituicaotributariapropria numeric(20,2)
   , valorsubstituicaotributariaterceiro numeric(20,2)
   , valorsubstituicaotributarianaoretida numeric(20,2)
   , valorstcomp numeric(20,2)
   , situacaotributariapis character varying(2)
   , aliquotapis numeric(20,2)
   , valorpis numeric(20,2)
   , situacaotributariacofins character varying(2)
   , aliquotacofins numeric(20,2)
   , valorcofins numeric(20,2)
   , fichaconteudoimportacao uuid
   , aliquotaicmsfcp numeric(20,2)
   , aliquotaicmspartint numeric(20,2)
   , aliquotaicmspartdest numeric(20,2)
   , valoricmsfcp numeric(20,2)
   , valoricmspartdest numeric(20,2)
   , valoricmspartorigem numeric(20,2)
	
);
