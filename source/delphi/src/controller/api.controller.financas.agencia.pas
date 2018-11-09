unit api.controller.financas.Agencia;

interface

  uses
    System.SysUtils,

    api.model.financas.Agencia,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIAgencia = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TAgenciaNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TAgenciaAlterarDadosGerais): TRecibo; overload;

        function AlterarDadosEndereco(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEndereco(const a_Objeto: TAgenciaAlterarDadosEndereco): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TAgenciaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.Agencia }

function TAPIAgencia.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'AGENCIANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'AGENCIAALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'AGENCIAALTERARDADOSENDERECO')
    then begin
       Result := Self.AlterarDadosEndereco(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'AGENCIAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIAgencia.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TAgenciaNovo)
    then begin
       Result := Self.Novo(a_Param as TAgenciaNovo);
       Exit();
    end;

  if (a_param is TAgenciaAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TAgenciaAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TAgenciaAlterarDadosEndereco)
    then begin
       Result := Self.AlterarDadosEndereco(a_Param as TAgenciaAlterarDadosEndereco);
       Exit();
    end;

  if (a_param is TAgenciaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TAgenciaExcluir);
       Exit();
    end;


end;

function TAPIAgencia.Novo(const a_Objeto: TAgenciaNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_AgenciaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAgencia.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TAgenciaNovo;

begin
  t_Modelo := TAgenciaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAgencia.AlterarDadosGerais(const a_Objeto: TAgenciaAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_AgenciaAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAgencia.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TAgenciaAlterarDadosGerais;

begin
  t_Modelo := TAgenciaAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAgencia.AlterarDadosEndereco(const a_Objeto: TAgenciaAlterarDadosEndereco): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_AgenciaAlterarDadosEndereco', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAgencia.AlterarDadosEndereco(const a_Objeto: String): TRecibo;

  var t_Modelo: TAgenciaAlterarDadosEndereco;

begin
  t_Modelo := TAgenciaAlterarDadosEndereco.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEndereco(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAgencia.Excluir(const a_Objeto: TAgenciaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_AgenciaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAgencia.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TAgenciaExcluir;

begin
  t_Modelo := TAgenciaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
