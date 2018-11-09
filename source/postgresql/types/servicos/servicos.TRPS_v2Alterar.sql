CREATE TYPE servicos.TRPS_v2Alterar AS (
     Id uuid
   , Estabelecimento text
   , Pessoa text
   , Serie text
   , Emissao date
   , Vencimento date
   , Lancamento date
   , LoteCobrancaId uuid
   , TipoTributacao integer
   , RegimeEspecial integer
   , IncentivoCultural integer
   , BeneficioFiscal integer
   , Desconto numeric(20,2)
   , ItemRPS servicos.TItemRPSNovo[]
   , FormasPagamentos ns.TPagamentoSemParcela[]
   , Parcelas ns.TParcela[]
   , RateioFinanceiro financas.TItemRateioFinanceiro[]
   , Observacao character varying(5000)
   , Vendedores servicos.TVendedorRPS[]
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
   , DescricaoServicos character varying(5000)
   , IdConjuntoAnexo uuid
   , ISS integer
   , PreRPS boolean
   , OutrasDeducoes numeric(20,2)
   , XML_RPS character varying(999999)
   , XML_NFSE character varying(999999)
   , XML_Cancelamento character varying(999999)
   , XML_DocEngine character varying(999999)
   , MunicipioPrestacao uuid
   , CFOPId uuid
   , Obra uuid
   , Contrato_ID uuid
   , NaoGerarFinanceiro boolean
   , NaoGerarTitulo boolean
   , OutrasRetencoes numeric(20,2)
   , DiscriminacaoServicos character varying(5000)
   , numero_titulo character varying(30)
   , TemplateDiscriminacaoRPS uuid
   , CalcularImpostos boolean
   , FaturamentoProvisorio boolean
	
);
