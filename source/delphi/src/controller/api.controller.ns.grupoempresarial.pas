unit api.controller.ns.GrupoEmpresarial;

interface

  uses
    System.SysUtils,

    api.model.ns.GrupoEmpresarial,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIGrupoEmpresarial = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TGrupoEmpresarialNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TGrupoEmpresarialAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TGrupoEmpresarialExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.GrupoEmpresarial }

function TAPIGrupoEmpresarial.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'GRUPOEMPRESARIALNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'GRUPOEMPRESARIALALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'GRUPOEMPRESARIALEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIGrupoEmpresarial.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TGrupoEmpresarialNovo)
    then begin
       Result := Self.Novo(a_Param as TGrupoEmpresarialNovo);
       Exit();
    end;

  if (a_param is TGrupoEmpresarialAlterar)
    then begin
       Result := Self.Alterar(a_Param as TGrupoEmpresarialAlterar);
       Exit();
    end;

  if (a_param is TGrupoEmpresarialExcluir)
    then begin
       Result := Self.Excluir(a_Param as TGrupoEmpresarialExcluir);
       Exit();
    end;


end;

function TAPIGrupoEmpresarial.Novo(const a_Objeto: TGrupoEmpresarialNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_GrupoEmpresarialNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIGrupoEmpresarial.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TGrupoEmpresarialNovo;

begin
  t_Modelo := TGrupoEmpresarialNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIGrupoEmpresarial.Alterar(const a_Objeto: TGrupoEmpresarialAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_GrupoEmpresarialAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIGrupoEmpresarial.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TGrupoEmpresarialAlterar;

begin
  t_Modelo := TGrupoEmpresarialAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIGrupoEmpresarial.Excluir(const a_Objeto: TGrupoEmpresarialExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_GrupoEmpresarialExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIGrupoEmpresarial.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TGrupoEmpresarialExcluir;

begin
  t_Modelo := TGrupoEmpresarialExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
