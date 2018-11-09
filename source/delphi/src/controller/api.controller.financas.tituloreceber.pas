unit api.controller.financas.TituloReceber;

interface

  uses
    System.SysUtils,

    api.model.financas.TituloReceber,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPITituloReceber = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TTituloReceberNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TTituloReceberAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TTituloReceberExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.TituloReceber }

function TAPITituloReceber.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'TITULORECEBERNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TITULORECEBERALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TITULORECEBEREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPITituloReceber.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TTituloReceberNovo)
    then begin
       Result := Self.Novo(a_Param as TTituloReceberNovo);
       Exit();
    end;

  if (a_param is TTituloReceberAlterar)
    then begin
       Result := Self.Alterar(a_Param as TTituloReceberAlterar);
       Exit();
    end;

  if (a_param is TTituloReceberExcluir)
    then begin
       Result := Self.Excluir(a_Param as TTituloReceberExcluir);
       Exit();
    end;


end;

function TAPITituloReceber.Novo(const a_Objeto: TTituloReceberNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_TituloReceberNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITituloReceber.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TTituloReceberNovo;

begin
  t_Modelo := TTituloReceberNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITituloReceber.Alterar(const a_Objeto: TTituloReceberAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_TituloReceberAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITituloReceber.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TTituloReceberAlterar;

begin
  t_Modelo := TTituloReceberAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITituloReceber.Excluir(const a_Objeto: TTituloReceberExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_TituloReceberExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITituloReceber.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TTituloReceberExcluir;

begin
  t_Modelo := TTituloReceberExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
