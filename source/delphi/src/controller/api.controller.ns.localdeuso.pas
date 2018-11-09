unit api.controller.ns.LocalDeUso;

interface

  uses
    System.SysUtils,

    api.model.ns.LocalDeUso,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPILocalDeUso = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TLocalDeUsoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TLocalDeUsoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TLocalDeUsoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.LocalDeUso }

function TAPILocalDeUso.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LOCALDEUSONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOCALDEUSOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOCALDEUSOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPILocalDeUso.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TLocalDeUsoNovo)
    then begin
       Result := Self.Novo(a_Param as TLocalDeUsoNovo);
       Exit();
    end;

  if (a_param is TLocalDeUsoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TLocalDeUsoAlterar);
       Exit();
    end;

  if (a_param is TLocalDeUsoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TLocalDeUsoExcluir);
       Exit();
    end;


end;

function TAPILocalDeUso.Novo(const a_Objeto: TLocalDeUsoNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_LocalDeUsoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILocalDeUso.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLocalDeUsoNovo;

begin
  t_Modelo := TLocalDeUsoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILocalDeUso.Alterar(const a_Objeto: TLocalDeUsoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_LocalDeUsoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILocalDeUso.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TLocalDeUsoAlterar;

begin
  t_Modelo := TLocalDeUsoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILocalDeUso.Excluir(const a_Objeto: TLocalDeUsoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_LocalDeUsoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILocalDeUso.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TLocalDeUsoExcluir;

begin
  t_Modelo := TLocalDeUsoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
