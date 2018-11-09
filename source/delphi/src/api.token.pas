unit api.token;

interface

  uses
    Uni,
    UniProvider,
    PostgreSQLUniProvider,

    System.SysUtils;

  type
    TToken = class sealed

      private

        type
          TConexao = class

            private

              var m_user: String;
              var m_password: String;
              var m_host: String;
              var m_dataBase: String;

              var m_connection: TUniConnection;
              var m_provider: TPostgreSQLUniProvider;

              function GetdataBase(): String;
              function Gethost(): String;
              function Getpassword(): String;
              function Getuser(): String;

              function getProvider(): TPostgreSQLUniProvider;

            public

              function connect(
                const a_user: String;
                const a_password: String;
                const a_host: String;
                const a_dataBase: String
              ): Boolean; overload;

              function connect(
                const a_conexao: TUniConnection
              ): Boolean; overload;

              function getConneciton(): TUniConnection;

              procedure closeConnection();

              property user: String read Getuser;
              property password: String read Getpassword;
              property host: String read Gethost;
              property dataBase: String read GetdataBase;

          end;

        class var m_instance: TConexao;

      public

        class function getInstance(): TConexao;

    end;

implementation

{ TToken }

class function TToken.getInstance: TConexao;
begin
  if not Assigned(Self.m_instance)
    then Self.m_instance := TConexao.Create();
  Result := Self.m_instance;
end;

{ TToken.TConexao }

procedure TToken.TConexao.closeConnection;
begin
  if Self.getConneciton().Connected
    then Self.getConneciton().Disconnect();
end;

function TToken.TConexao.Connect(
  const a_user: String;
  const a_password: String;
  const a_host: String;
  const a_dataBase: String
): Boolean;
begin
  Result := True;

  Self.m_user := a_user;
  Self.m_password := a_password;
  Self.m_host := a_host;
  Self.m_dataBase := a_dataBase;

  Self.closeConnection();

  Self.getConneciton().Username := Self.m_user;
  Self.getConneciton().Password := Self.m_password;
  Self.getConneciton().Server := Self.m_host;
  Self.getConneciton().Database := Self.m_dataBase;
  Self.getConneciton().ProviderName := 'PostgreSQL';
  try
    Self.getConneciton().Connect();
  except on E: Exception
    do Result := False;
  end;
end;

function TToken.TConexao.connect(const a_conexao: TUniConnection): Boolean;
begin
  Result := True;
  Self.m_connection := a_conexao;
end;

function TToken.TConexao.getConneciton: TUniConnection;
begin
  if not Assigned(Self.m_connection)
    then Self.m_connection := TUniConnection.Create(nil);
  Result := Self.m_connection;
end;

function TToken.TConexao.GetdataBase: String;
begin
  Result := Self.m_dataBase;
end;

function TToken.TConexao.Gethost: String;
begin
  Result := Self.m_host;
end;

function TToken.TConexao.Getpassword: String;
begin
  Result := Self.m_password;
end;

function TToken.TConexao.getProvider: TPostgreSQLUniProvider;
begin
  if not Assigned(Self.m_provider)
    then Self.m_provider := TPostgreSQLUniProvider.Create(nil);
  Result := Self.m_provider;
end;

function TToken.TConexao.Getuser: String;
begin
  Result := Self.m_user;
end;

end.
