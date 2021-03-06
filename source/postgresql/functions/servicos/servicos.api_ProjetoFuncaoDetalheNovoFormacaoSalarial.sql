CREATE OR REPLACE FUNCTION servicos.api_ProjetoFuncaoDetalheNovoFormacaoSalarial(a_objeto servicos.TProjetoFuncaoDetalheNovoFormacaoSalarial) RETURNS ns.TRecibo AS
$BODY$
DECLARE
  -- BEGIN DECLARE
  VAR_RETURN ns.TRecibo;
  -- END DECLARE
BEGIN      
  BEGIN
	-- VALIDACOES DOS CAMPOS NOTNULL
	IF (a_objeto.Funcao IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Funcao" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.GrupoEmpresarial IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "GrupoEmpresarial" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.Empresa IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Empresa" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.Registro IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Registro" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.PeriodicidadeTipo IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "PeriodicidadeTipo" não pode ser nulo.');
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
