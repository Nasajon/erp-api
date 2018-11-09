unit api.controller.ns.Socios;

interface

  uses
    System.SysUtils,

    api.model.ns.Socios,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPISocios = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TSociosNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TSociosAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TSociosExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Socios }

function TAPISocios.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'SOCIOSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SOCIOSALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SOCIOSEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPISocios.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TSociosNovo)
    then begin
       Result := Self.Novo(a_Param as TSociosNovo);
       Exit();
    end;

  if (a_param is TSociosAlterar)
    then begin
       Result := Self.Alterar(a_Param as TSociosAlterar);
       Exit();
    end;

  if (a_param is TSociosExcluir)
    then begin
       Result := Self.Excluir(a_Param as TSociosExcluir);
       Exit();
    end;


end;

function TAPISocios.Novo(const a_Objeto: TSociosNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_SociosNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISocios.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TSociosNovo;

begin
  t_Modelo := TSociosNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISocios.Alterar(const a_Objeto: TSociosAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_SociosAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISocios.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TSociosAlterar;

begin
  t_Modelo := TSociosAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISocios.Excluir(const a_Objeto: TSociosExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_SociosExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISocios.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TSociosExcluir;

begin
  t_Modelo := TSociosExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
