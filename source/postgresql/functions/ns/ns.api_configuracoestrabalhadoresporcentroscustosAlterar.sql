CREATE OR REPLACE FUNCTION ns.api_configuracoestrabalhadoresporcentroscustosAlterar(a_objeto ns.TconfiguracoestrabalhadoresporcentroscustosAlterar) RETURNS ns.TRecibo AS
$BODY$
DECLARE
  VAR_RETURN ns.TRecibo;
  VAR_ID UUID;
  VAR_ID_ESTABELECIMENTO UUID;
  VAR_ID_TRABALHADOR UUID;
  VAR_ID_CENTROCUSTO UUID;
BEGIN
  VAR_RETURN.MENSAGEM := ns.api_montamensagemok('');
  
  BEGIN
    SELECT ID INTO VAR_ID
    FROM ns.configuracoesordenspagamentos
    WHERE ID = a_objeto.id::UUID;
    
    IF VAR_ID IS NULL THEN

      VAR_ID_ESTABELECIMENTO = ns.api_locate_estabelecimento_v2(a_objeto.estabelecimento, a_objeto.empresa, a_objeto.grupoempresarial);
  
      IF VAR_ID_ESTABELECIMENTO IS NULL THEN
        RAISE EXCEPTION 'Estabelecimento não encontrado.';
      END IF;
      
      VAR_ID_TRABALHADOR = ns.api_locate_trabalhador(a_objeto.trabalhador, a_objeto.empresa, a_objeto.grupoempresarial);
      
      IF VAR_ID_TRABALHADOR IS NULL THEN
        RAISE EXCEPTION 'Trabalhador não encontrado.';
      END IF;

      SELECT ID INTO VAR_ID
      FROM ns.configuracoestrabalhadoresporcentroscustos
      WHERE ID_ESTABELECIMENTO = VAR_ID_ESTABELECIMENTO
        AND ID_TRABALHADOR = VAR_ID_TRABALHADOR;
      
    END IF;

    IF VAR_ID IS NULL THEN

      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro('NAOENCONTRADA');
      RETURN VAR_RETURN;
      
    END IF;
    
    VAR_ID_CENTROCUSTO = ns.api_locate_centrocustofinanceiro_v2(a_objeto.centrodecusto, a_objeto.grupoempresarial);
    
    IF VAR_ID_CENTROCUSTO IS NULL THEN
      RAISE EXCEPTION 'Centro de Custo não encontrado.';
    END IF;

    UPDATE ns.configuracoestrabalhadoresporcentroscustos
    SET id_centrodecusto = VAR_ID_CENTROCUSTO
    WHERE ID = VAR_ID;
    
  EXCEPTION
    WHEN OTHERS THEN 
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro(SQLERRM);
  END;	

  RETURN VAR_RETURN;
END;
$BODY$
LANGUAGE plpgsql VOLATILE
  COST 100;
