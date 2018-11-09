unit api.controller.ns.pessoa;

interface

  uses
    System.SysUtils,

    api.model.ns.pessoa,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIpessoa = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TpessoaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TpessoaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TpessoaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.pessoa }

function TAPIpessoa.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PESSOANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PESSOAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PESSOAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIpessoa.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TpessoaNovo)
    then begin
       Result := Self.Novo(a_Param as TpessoaNovo);
       Exit();
    end;

  if (a_param is TpessoaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TpessoaAlterar);
       Exit();
    end;

  if (a_param is TpessoaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TpessoaExcluir);
       Exit();
    end;


end;

function TAPIpessoa.Novo(const a_Objeto: TpessoaNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_pessoaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIpessoa.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TpessoaNovo;

begin
  t_Modelo := TpessoaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIpessoa.Alterar(const a_Objeto: TpessoaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_pessoaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIpessoa.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TpessoaAlterar;

begin
  t_Modelo := TpessoaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIpessoa.Excluir(const a_Objeto: TpessoaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_pessoaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIpessoa.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TpessoaExcluir;

begin
  t_Modelo := TpessoaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
