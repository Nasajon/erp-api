unit api.controller.persona.NivelCargo;

interface

  uses
    System.SysUtils,

    api.model.persona.NivelCargo,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPINivelCargo = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TNivelCargoNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TNivelCargoAlterarDadosGerais): TRecibo; overload;

        function AlterarDadosAnteriores(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosAnteriores(const a_Objeto: TNivelCargoAlterarDadosAnteriores): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TNivelCargoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.NivelCargo }

function TAPINivelCargo.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'NIVELCARGONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'NIVELCARGOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'NIVELCARGOALTERARDADOSANTERIORES')
    then begin
       Result := Self.AlterarDadosAnteriores(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'NIVELCARGOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPINivelCargo.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TNivelCargoNovo)
    then begin
       Result := Self.Novo(a_Param as TNivelCargoNovo);
       Exit();
    end;

  if (a_param is TNivelCargoAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TNivelCargoAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TNivelCargoAlterarDadosAnteriores)
    then begin
       Result := Self.AlterarDadosAnteriores(a_Param as TNivelCargoAlterarDadosAnteriores);
       Exit();
    end;

  if (a_param is TNivelCargoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TNivelCargoExcluir);
       Exit();
    end;


end;

function TAPINivelCargo.Novo(const a_Objeto: TNivelCargoNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_NivelCargoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPINivelCargo.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TNivelCargoNovo;

begin
  t_Modelo := TNivelCargoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPINivelCargo.AlterarDadosGerais(const a_Objeto: TNivelCargoAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_NivelCargoAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPINivelCargo.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TNivelCargoAlterarDadosGerais;

begin
  t_Modelo := TNivelCargoAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPINivelCargo.AlterarDadosAnteriores(const a_Objeto: TNivelCargoAlterarDadosAnteriores): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_NivelCargoAlterarDadosAnteriores', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPINivelCargo.AlterarDadosAnteriores(const a_Objeto: String): TRecibo;

  var t_Modelo: TNivelCargoAlterarDadosAnteriores;

begin
  t_Modelo := TNivelCargoAlterarDadosAnteriores.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosAnteriores(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPINivelCargo.Excluir(const a_Objeto: TNivelCargoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_NivelCargoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPINivelCargo.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TNivelCargoExcluir;

begin
  t_Modelo := TNivelCargoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
