CREATE OR REPLACE FUNCTION persona.api_ReajusteSindicatoNovo(a_objeto persona.TReajusteSindicatoNovo) RETURNS ns.TRecibo AS
$BODY$
DECLARE
  -- BEGIN DECLARE
  VAR_RETURN ns.TRecibo;
  -- END DECLARE
BEGIN      
  BEGIN
	-- VALIDACOES DOS CAMPOS NOTNULL
	IF (a_objeto.IdReajuste IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "IdReajuste" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.Sindicato IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Sindicato" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.Data IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Data" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.DataDeveriaTerSidoConcedido IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "DataDeveriaTerSidoConcedido" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.Tipo IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Tipo" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.Percentual IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Percentual" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.Descricao IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Descricao" não pode ser nulo.');
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
