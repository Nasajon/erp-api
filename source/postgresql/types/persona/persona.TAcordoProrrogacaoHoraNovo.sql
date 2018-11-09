CREATE TYPE persona.TAcordoProrrogacaoHoraNovo AS (
     IdAcordo uuid
   , Sindicato text
   , Empresa text
   , Codigo character varying(10)
   , Descricao character varying(100)
   , DataInicio date
   , DataFim date
   , QuantidadeHoras date
   , PercentualHoras numeric(20,6)
	
);
