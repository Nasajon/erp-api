CREATE OR REPLACE FUNCTION ns.api_SociosParticipacoesNovo(a_objeto ns.TSociosParticipacoesNovo) RETURNS ns.TRecibo AS
$BODY$
DECLARE
  -- BEGIN DECLARE
  VAR_RETURN ns.TRecibo;
  -- END DECLARE
BEGIN      
  BEGIN
	-- VALIDACOES DOS CAMPOS NOTNULL
	IF (a_objeto.IdSocioParticipacao IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "IdSocioParticipacao" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.Socio IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Socio" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.Empresa IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Empresa" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.DataInicial IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "DataInicial" não pode ser nulo.');
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
