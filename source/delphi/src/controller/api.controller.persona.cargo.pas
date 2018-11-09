unit api.controller.persona.Cargo;

interface

  uses
    System.SysUtils,

    api.model.persona.Cargo,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPICargo = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TCargoNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TCargoAlterarDadosGerais): TRecibo; overload;

        function AlterarDadosSugestao(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosSugestao(const a_Objeto: TCargoAlterarDadosSugestao): TRecibo; overload;

        function AlterarDadosComplementares(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosComplementares(const a_Objeto: TCargoAlterarDadosComplementares): TRecibo; overload;

        function AlterarDadosMercado(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosMercado(const a_Objeto: TCargoAlterarDadosMercado): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TCargoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Cargo }

function TAPICargo.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CARGONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CARGOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CARGOALTERARDADOSSUGESTAO')
    then begin
       Result := Self.AlterarDadosSugestao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CARGOALTERARDADOSCOMPLEMENTARES')
    then begin
       Result := Self.AlterarDadosComplementares(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CARGOALTERARDADOSMERCADO')
    then begin
       Result := Self.AlterarDadosMercado(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CARGOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPICargo.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TCargoNovo)
    then begin
       Result := Self.Novo(a_Param as TCargoNovo);
       Exit();
    end;

  if (a_param is TCargoAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TCargoAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TCargoAlterarDadosSugestao)
    then begin
       Result := Self.AlterarDadosSugestao(a_Param as TCargoAlterarDadosSugestao);
       Exit();
    end;

  if (a_param is TCargoAlterarDadosComplementares)
    then begin
       Result := Self.AlterarDadosComplementares(a_Param as TCargoAlterarDadosComplementares);
       Exit();
    end;

  if (a_param is TCargoAlterarDadosMercado)
    then begin
       Result := Self.AlterarDadosMercado(a_Param as TCargoAlterarDadosMercado);
       Exit();
    end;

  if (a_param is TCargoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TCargoExcluir);
       Exit();
    end;


end;

function TAPICargo.Novo(const a_Objeto: TCargoNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_CargoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICargo.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TCargoNovo;

begin
  t_Modelo := TCargoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICargo.AlterarDadosGerais(const a_Objeto: TCargoAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_CargoAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICargo.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TCargoAlterarDadosGerais;

begin
  t_Modelo := TCargoAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICargo.AlterarDadosSugestao(const a_Objeto: TCargoAlterarDadosSugestao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_CargoAlterarDadosSugestao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICargo.AlterarDadosSugestao(const a_Objeto: String): TRecibo;

  var t_Modelo: TCargoAlterarDadosSugestao;

begin
  t_Modelo := TCargoAlterarDadosSugestao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosSugestao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICargo.AlterarDadosComplementares(const a_Objeto: TCargoAlterarDadosComplementares): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_CargoAlterarDadosComplementares', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICargo.AlterarDadosComplementares(const a_Objeto: String): TRecibo;

  var t_Modelo: TCargoAlterarDadosComplementares;

begin
  t_Modelo := TCargoAlterarDadosComplementares.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosComplementares(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICargo.AlterarDadosMercado(const a_Objeto: TCargoAlterarDadosMercado): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_CargoAlterarDadosMercado', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICargo.AlterarDadosMercado(const a_Objeto: String): TRecibo;

  var t_Modelo: TCargoAlterarDadosMercado;

begin
  t_Modelo := TCargoAlterarDadosMercado.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosMercado(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICargo.Excluir(const a_Objeto: TCargoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_CargoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICargo.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TCargoExcluir;

begin
  t_Modelo := TCargoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
