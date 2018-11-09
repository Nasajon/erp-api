CREATE OR REPLACE FUNCTION ns.api_configuracoestrabalhadoresporcentroscustosNovo(a_objeto ns.TconfiguracoestrabalhadoresporcentroscustosNovo) RETURNS ns.TRecibo AS
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
    VAR_ID = ns.api_retornaguid(a_objeto.id::UUID);

    VAR_ID_ESTABELECIMENTO = ns.api_locate_estabelecimento_v2(a_objeto.estabelecimento, a_objeto.empresa, a_objeto.grupoempresarial);

    IF VAR_ID_ESTABELECIMENTO IS NULL THEN
      RAISE EXCEPTION 'Estabelecimento não encontrado.';
    END IF;
    
    VAR_ID_TRABALHADOR = ns.api_locate_trabalhador(a_objeto.trabalhador, a_objeto.empresa, a_objeto.grupoempresarial);
    
    IF VAR_ID_TRABALHADOR IS NULL THEN
      RAISE EXCEPTION 'Trabalhador não encontrado.';
    END IF;
    
    VAR_ID_CENTROCUSTO = ns.api_locate_centrocustofinanceiro_v2(a_objeto.centrodecusto, a_objeto.grupoempresarial);
    
    IF VAR_ID_CENTROCUSTO IS NULL THEN
      RAISE EXCEPTION 'Centro de Custo não encontrado.';
    END IF;

    INSERT INTO ns.configuracoestrabalhadoresporcentroscustos
    (
      id,
      id_estabelecimento,
      id_trabalhador,
      id_centrodecusto
    )
    VALUES 
    (
      VAR_ID,
      VAR_ID_ESTABELECIMENTO,
      VAR_ID_TRABALHADOR,
      VAR_ID_CENTROCUSTO
    );
    
  EXCEPTION
    WHEN OTHERS THEN 
      VAR_RETURN.MENSAGEM := ns.api_montamensagemerro(SQLERRM);
  END;	

  RETURN VAR_RETURN;
END;
$BODY$
LANGUAGE plpgsql VOLATILE
  COST 100;
