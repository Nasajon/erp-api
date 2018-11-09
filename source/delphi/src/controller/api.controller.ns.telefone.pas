unit api.controller.ns.Telefone;

interface

  uses
    System.SysUtils,

    api.model.ns.Telefone,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPITelefone = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TTelefoneNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TTelefoneAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TTelefoneExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Telefone }

function TAPITelefone.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'TELEFONENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TELEFONEALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TELEFONEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPITelefone.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TTelefoneNovo)
    then begin
       Result := Self.Novo(a_Param as TTelefoneNovo);
       Exit();
    end;

  if (a_param is TTelefoneAlterar)
    then begin
       Result := Self.Alterar(a_Param as TTelefoneAlterar);
       Exit();
    end;

  if (a_param is TTelefoneExcluir)
    then begin
       Result := Self.Excluir(a_Param as TTelefoneExcluir);
       Exit();
    end;


end;

function TAPITelefone.Novo(const a_Objeto: TTelefoneNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_TelefoneNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITelefone.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TTelefoneNovo;

begin
  t_Modelo := TTelefoneNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITelefone.Alterar(const a_Objeto: TTelefoneAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_TelefoneAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITelefone.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TTelefoneAlterar;

begin
  t_Modelo := TTelefoneAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITelefone.Excluir(const a_Objeto: TTelefoneExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_TelefoneExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITelefone.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TTelefoneExcluir;

begin
  t_Modelo := TTelefoneExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
