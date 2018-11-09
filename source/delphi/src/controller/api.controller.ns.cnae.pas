unit api.controller.ns.CNAE;

interface

  uses
    System.SysUtils,

    api.model.ns.CNAE,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPICNAE = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TCNAENovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TCNAEAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TCNAEExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.CNAE }

function TAPICNAE.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CNAENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CNAEALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CNAEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPICNAE.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TCNAENovo)
    then begin
       Result := Self.Novo(a_Param as TCNAENovo);
       Exit();
    end;

  if (a_param is TCNAEAlterar)
    then begin
       Result := Self.Alterar(a_Param as TCNAEAlterar);
       Exit();
    end;

  if (a_param is TCNAEExcluir)
    then begin
       Result := Self.Excluir(a_Param as TCNAEExcluir);
       Exit();
    end;


end;

function TAPICNAE.Novo(const a_Objeto: TCNAENovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_CNAENovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICNAE.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TCNAENovo;

begin
  t_Modelo := TCNAENovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICNAE.Alterar(const a_Objeto: TCNAEAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_CNAEAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICNAE.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TCNAEAlterar;

begin
  t_Modelo := TCNAEAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICNAE.Excluir(const a_Objeto: TCNAEExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_CNAEExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICNAE.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TCNAEExcluir;

begin
  t_Modelo := TCNAEExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
