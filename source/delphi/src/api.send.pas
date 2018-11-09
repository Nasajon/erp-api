unit api.send;

interface

  uses
    Uni,

    api.token,
    api.command.client,
    api.command,
    api.model.recibo;

  type
    TAPISend = class sealed

      public

        class function send(
          const a_connection: TUniConnection;
          const a_object: TObject
        ): TRecibo;

    end;

implementation

{ TAPISend }

class function TAPISend.send(
  const a_connection: TUniConnection;
  const a_object: TObject
): TRecibo;

  var t_command: ICommandAPI;

begin
  t_command := TCommandClientAPI.Create();
  try
    TToken.getInstance().connect(a_connection);
    Result := t_command.execute(a_object);
  finally
    t_command := nil;
  end;
end;

end.
