unit api.dao;

interface

  uses
    api.token,
    api.model.recibo,

    Uni,
    uConst,

    System.SysUtils;

  type
    TDAO = class

      public

        class function callFunction(
          const a_Name: WideString;
          const a_Params: WideString
        ): TRecibo;

    end;

implementation

uses
{$IFDEF VER310}
  System.JSON,
  DB,
{$ENDIF}
  DATA.DBXJson;

{ TDAO }

class function TDAO.callFunction(
  const a_Name: WideString;
  const a_Params: WideString
): TRecibo;
var
  t_UniQuery: TUniQuery;
  t_mensagem : TJSONObject;
  t_aux: string;
  t_aux2: TJSONString;
begin
  Result := TRecibo.Create();

  t_UniQuery := TUniQuery.Create(nil);
  t_UniQuery.Connection := TToken.getInstance().getConneciton();

  try
    t_UniQuery.SQL.Add('SELECT (' + a_Name + '(' + a_Params + ')::ns.trecibo).mensagem AS RECIBO');

    try
      t_UniQuery.Open();

      (* Marlon Souza - 22/07/2015 (Conversado com Alexandre Almeida)
          Percebi que algumas funções não há um tratamento de retorno no TRecibo,
          fazendo com que a função retorne '' e com isso, no parse do JSON
          recibo.mensagem para o t_mensagem o objeto fica NIL, pois '' não é um
          JSON válido.
          Nas funções que observei, o Raise Exception era usado e o TRecibo só
          retornava '' quando a função era completada com SUCESSO, portanto, caso
          o retorno seja '' ou qualquer JSON não válido, a função será data como OK;
      *)

      t_mensagem := TJSONObject.ParseJSONValue(t_UniQuery.FieldByName('recibo').AsString) as TJSONObject;

      if Assigned(t_mensagem) then
      begin
        Result.codigo := t_mensagem.RemovePair('codigo').JsonValue.Value;
        Result.mensagem := t_mensagem.RemovePair('mensagem').JsonValue.Value;
        Result.tipo := t_mensagem.RemovePair('tipo').JsonValue.Value;
      end
      else
      begin
        Result.codigo := c_recibo_ok;
        Result.mensagem := '';
      end;
    except
      on E: Exception do
      begin
        Result.codigo := c_recibo_erro;
        Result.mensagem := E.Message;
      end;
    end;
  finally
    t_UniQuery.Free();
  end;
end;

end.
