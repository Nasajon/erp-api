unit api.controller.ns.Municipio;

interface

  uses
    System.SysUtils,

    api.model.ns.Municipio,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIMunicipio = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TMunicipioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TMunicipioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TMunicipioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Municipio }

function TAPIMunicipio.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'MUNICIPIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MUNICIPIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'MUNICIPIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIMunicipio.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TMunicipioNovo)
    then begin
       Result := Self.Novo(a_Param as TMunicipioNovo);
       Exit();
    end;

  if (a_param is TMunicipioAlterar)
    then begin
       Result := Self.Alterar(a_Param as TMunicipioAlterar);
       Exit();
    end;

  if (a_param is TMunicipioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TMunicipioExcluir);
       Exit();
    end;


end;

function TAPIMunicipio.Novo(const a_Objeto: TMunicipioNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_MunicipioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMunicipio.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMunicipioNovo;

begin
  t_Modelo := TMunicipioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMunicipio.Alterar(const a_Objeto: TMunicipioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_MunicipioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMunicipio.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TMunicipioAlterar;

begin
  t_Modelo := TMunicipioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIMunicipio.Excluir(const a_Objeto: TMunicipioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_MunicipioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMunicipio.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TMunicipioExcluir;

begin
  t_Modelo := TMunicipioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
