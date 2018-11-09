CREATE OR REPLACE FUNCTION contabil.api_contaanualNovo(a_objeto contabil.TcontaanualNovo) RETURNS ns.TRecibo AS
$BODY$
DECLARE
  -- BEGIN DECLARE
  VAR_RETURN ns.TRecibo;
  -- END DECLARE
BEGIN      
  BEGIN
	-- VALIDACOES DOS CAMPOS NOTNULL
	IF (a_objeto.id IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "id" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.grupoempresarial IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "grupoempresarial" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.empresa IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "empresa" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.codigoconta IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "codigoconta" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.codigoreduzido IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "codigoreduzido" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.ano IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "ano" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.nome IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "nome" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.naturezaconta IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "naturezaconta" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.naturezasaldo IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "naturezasaldo" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.permitecentrodecusto IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "permitecentrodecusto" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.contamae IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "contamae" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;



	
    -- BEGIN CODE    
    VAR_RETURN.MENSAGEM := ns.api_montamensagemok('<<SUCCESS MESSAGE>>');
    -- END CODE
  EXCEPTION
    WHEN OTHERS THEN 
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro(SQLERRM);
  END;	

  RETURN VAR_RETURN;
END;
$BODY$
LANGUAGE plpgsql VOLATILE
  COST 100;
