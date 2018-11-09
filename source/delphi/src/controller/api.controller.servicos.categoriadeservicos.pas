unit api.controller.servicos.CategoriaDeServicos;

interface

  uses
    System.SysUtils,

    api.model.servicos.CategoriaDeServicos,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPICategoriaDeServicos = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TCategoriaDeServicosNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TCategoriaDeServicosAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TCategoriaDeServicosExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.CategoriaDeServicos }

function TAPICategoriaDeServicos.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CATEGORIADESERVICOSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CATEGORIADESERVICOSALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CATEGORIADESERVICOSEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPICategoriaDeServicos.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TCategoriaDeServicosNovo)
    then begin
       Result := Self.Novo(a_Param as TCategoriaDeServicosNovo);
       Exit();
    end;

  if (a_param is TCategoriaDeServicosAlterar)
    then begin
       Result := Self.Alterar(a_Param as TCategoriaDeServicosAlterar);
       Exit();
    end;

  if (a_param is TCategoriaDeServicosExcluir)
    then begin
       Result := Self.Excluir(a_Param as TCategoriaDeServicosExcluir);
       Exit();
    end;


end;

function TAPICategoriaDeServicos.Novo(const a_Objeto: TCategoriaDeServicosNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_CategoriaDeServicosNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICategoriaDeServicos.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TCategoriaDeServicosNovo;

begin
  t_Modelo := TCategoriaDeServicosNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICategoriaDeServicos.Alterar(const a_Objeto: TCategoriaDeServicosAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_CategoriaDeServicosAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICategoriaDeServicos.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TCategoriaDeServicosAlterar;

begin
  t_Modelo := TCategoriaDeServicosAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICategoriaDeServicos.Excluir(const a_Objeto: TCategoriaDeServicosExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_CategoriaDeServicosExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICategoriaDeServicos.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TCategoriaDeServicosExcluir;

begin
  t_Modelo := TCategoriaDeServicosExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
