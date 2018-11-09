unit api.controller.persona.TarifaValeTransporteFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.TarifaValeTransporteFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPITarifaValeTransporteFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TTarifaValeTransporteFuncionarioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TTarifaValeTransporteFuncionarioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TTarifaValeTransporteFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.TarifaValeTransporteFuncionario }

function TAPITarifaValeTransporteFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'TARIFAVALETRANSPORTEFUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TARIFAVALETRANSPORTEFUNCIONARIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TARIFAVALETRANSPORTEFUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPITarifaValeTransporteFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TTarifaValeTransporteFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as TTarifaValeTransporteFuncionarioNovo);
       Exit();
    end;

  if (a_param is TTarifaValeTransporteFuncionarioAlterar)
    then begin
       Result := Self.Alterar(a_Param as TTarifaValeTransporteFuncionarioAlterar);
       Exit();
    end;

  if (a_param is TTarifaValeTransporteFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TTarifaValeTransporteFuncionarioExcluir);
       Exit();
    end;


end;

function TAPITarifaValeTransporteFuncionario.Novo(const a_Objeto: TTarifaValeTransporteFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TarifaValeTransporteFuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITarifaValeTransporteFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TTarifaValeTransporteFuncionarioNovo;

begin
  t_Modelo := TTarifaValeTransporteFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITarifaValeTransporteFuncionario.Alterar(const a_Objeto: TTarifaValeTransporteFuncionarioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TarifaValeTransporteFuncionarioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITarifaValeTransporteFuncionario.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TTarifaValeTransporteFuncionarioAlterar;

begin
  t_Modelo := TTarifaValeTransporteFuncionarioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITarifaValeTransporteFuncionario.Excluir(const a_Objeto: TTarifaValeTransporteFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TarifaValeTransporteFuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITarifaValeTransporteFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TTarifaValeTransporteFuncionarioExcluir;

begin
  t_Modelo := TTarifaValeTransporteFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
