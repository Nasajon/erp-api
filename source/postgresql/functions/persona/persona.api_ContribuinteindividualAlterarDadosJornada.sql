CREATE OR REPLACE FUNCTION persona.api_ContribuinteindividualAlterarDadosJornada(a_objeto persona.TContribuinteindividualAlterarDadosJornada) RETURNS ns.TRecibo AS
$BODY$
DECLARE
  -- BEGIN DECLARE
  VAR_RETURN ns.TRecibo;
  -- END DECLARE
BEGIN      
  BEGIN
	-- VALIDACOES DOS CAMPOS NOTNULL
	IF (a_objeto.Contribuinte IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Contribuinte" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.Empresa IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Empresa" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.NumeroHorasMensais IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "NumeroHorasMensais" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.NumeroDiasPeriodo IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "NumeroDiasPeriodo" não pode ser nulo.');
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
