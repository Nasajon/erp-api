CREATE TYPE scritta.TLancamentoFiscalNovo AS (
     id uuid
   , iddocumentofiscal text
   , idpessoa text
   , idestabelecimento text
   , ano integer
   , tipo integer
   , datalancamento date
   , modelo character varying(3)
   , serie character varying(3)
   , subserie character varying(2)
   , numero character varying(15)
   , aliquotaicms numeric(20,2)
   , origem integer
   , cfop character varying(8)
   , emissao date
   , cancelado boolean
   , orgaopublico boolean
   , retemiss boolean
   , retemir boolean
   , reteminss boolean
   , ipipresumido boolean
   , dataretencaoiss date
   , crt integer
   , situacaosped integer
   , tipoicms integer
   , tipoipi integer
   , tipoiss integer
   , observacao character varying(255)
   , codigomunicipio character varying(8)
   , declaracaoimportacao character varying(12)
   , valorcontabil numeric(20,2)
   , baseicms numeric(20,2)
   , valoricms numeric(20,2)
   , isentaicms numeric(20,2)
   , outrasicms numeric(20,2)
   , baseicmsdiferencial numeric(20,2)
   , icmsnaocreditado numeric(20,2)
   , baseicmsreducao numeric(20,2)
   , valoricmsdiferencial numeric(20,2)
   , valoricmsantecipacao numeric(20,2)
   , valoricmsadicional numeric(20,2)
   , basesubstituicaotributaria numeric(20,2)
   , valorstPropria numeric(20,2)
   , valorstterceiro numeric(20,2)
   , valorstnaoretida numeric(20,2)
   , baseipi numeric(20,2)
   , valoripi numeric(20,2)
   , valoripiisento numeric(20,2)
   , valoripioutras numeric(20,2)
   , valoripinaocreditado numeric(20,2)
   , baseiss numeric(20,2)
   , valoriss numeric(20,2)
   , valorissisento numeric(20,2)
   , valorissoutras numeric(20,2)
   , valorissoutromunicipio numeric(20,2)
   , valormateriais numeric(20,2)
   , valorsubempreitada numeric(20,2)
   , valoroutrasdeducoes numeric(20,2)
   , valorcide numeric(20,2)
   , valordescontos numeric(20,2)
   , valordescontosnaotributavel numeric(20,2)
   , valorfrete numeric(20,2)
   , valorseguro numeric(20,2)
   , outrasdespesas numeric(20,2)
   , baseir numeric(20,2)
   , basecsll numeric(20,2)
   , basepis numeric(20,2)
   , basecofins numeric(20,2)
   , valorinssretido numeric(20,2)
   , valorirretido numeric(20,2)
   , valorcsllretido numeric(20,2)
   , valorpisretido numeric(20,2)
   , valorcofinsretido numeric(20,2)
   , deducaoir numeric(20,2)
   , deducaocsll numeric(20,2)
   , deducaopis numeric(20,2)
   , deducaocofins numeric(20,2)
   , valoricmsfcp numeric(20,2)
   , valoricmspartdest numeric(20,2)
   , valoricmspartorigem numeric(20,2)
   , itenslancamentofiscal scritta.TItemLancamentoFiscalNovo[]
	
);
