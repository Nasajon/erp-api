CREATE TYPE servicos.TConfiguracaoRPSNovo AS (
     Estabelecimento ns.TEstabelecimento
   , TipoTributacao integer
   , RegimeEspecial integer
   , IncentivoCultural integer
   , BeneficioFiscal integer
   , AliquotaISS numeric(20,2)
   , AliquotaIRPessoaJuridica numeric(20,2)
   , AliquotaIROrgaoPublico numeric(20,2)
   , AliquotaPIS numeric(20,2)
   , AliquotaCOFINS numeric(20,2)
   , AliquotaCSLL numeric(20,2)
   , UsaDiscriminacaoDoCFOPNoRPS boolean
   , UsaWebServiceRPS boolean
   , CertificadoDigitalInstalado character varying(5000)
   , CaminhoCertificadoDigital character varying(5000)
   , SenhaCertificadoDigital character varying(5000)
   , IdentificacaoAmbiente integer
   , LoteDaEmpresa integer
   , UtilizarMesmoRPS boolean
   , IncluirObservacao boolean
   , IncluirInformacoesOS boolean
   , TemplateOS character varying(5000)
   , IncluirRetencoes boolean
   , PermitirMultiplosVendedores boolean
   , ParticipanteCertificado uuid
   , ServidorSMTP character varying(5000)
   , Porta integer
   , Usuario character varying(5000)
   , Senha character varying(5000)
   , RequerAutenticacao boolean
   , UtilizarConexaoSegura boolean
   , AssuntoEmail character varying(5000)
   , MensagemEmail character varying(5000)
   , IncluirProjetos boolean
	
);
