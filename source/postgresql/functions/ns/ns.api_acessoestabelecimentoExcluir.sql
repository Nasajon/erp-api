CREATE OR REPLACE FUNCTION ns.api_acessoestabelecimentoExcluir(a_objeto ns.TacessoestabelecimentoExcluir) RETURNS ns.TRecibo AS
$BODY$
DECLARE
  -- BEGIN DECLARE
  VAR_RETURN ns.TRecibo;
  -- END DECLARE
BEGIN      
  BEGIN
	-- VALIDACOES DOS CAMPOS NOTNULL
	IF (a_objeto.GrupoUsuario IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "GrupoUsuario" não pode ser nulo.');
	  RETURN VAR_RETURN;
	END IF;


	IF (a_objeto.Usuario IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Usuario" não pode ser nulo.');
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


	IF (a_objeto.Estabelecimento IS NULL) THEN
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('W0001#O campo "Estabelecimento" não pode ser nulo.');
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
