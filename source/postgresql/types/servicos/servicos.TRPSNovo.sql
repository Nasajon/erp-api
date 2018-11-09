CREATE TYPE servicos.TRPSNovo AS (
     Id uuid
   , Estabelecimento text
   , Pessoa text
   , Serie text
   , Emissao date
   , Lancamento date
   , TipoTributacao integer
   , RegimeEspecial integer
   , IncentivoCultural integer
   , BeneficioFiscal integer
   , Desconto numeric(20,2)
   , ItemRPS servicos.TItemRPSNovo[]
	
);
