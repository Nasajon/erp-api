unit api.controller.financas.PrestacaoDeConta;

interface

  uses
    System.SysUtils,

    api.model.financas.PrestacaoDeConta,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIPrestacaoDeConta = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TPrestacaoDeContaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TPrestacaoDeContaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TPrestacaoDeContaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.PrestacaoDeConta }

function TAPIPrestacaoDeConta.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PRESTACAODECONTANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PRESTACAODECONTAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PRESTACAODECONTAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIPrestacaoDeConta.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TPrestacaoDeContaNovo)
    then begin
       Result := Self.Novo(a_Param as TPrestacaoDeContaNovo);
       Exit();
    end;

  if (a_param is TPrestacaoDeContaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TPrestacaoDeContaAlterar);
       Exit();
    end;

  if (a_param is TPrestacaoDeContaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TPrestacaoDeContaExcluir);
       Exit();
    end;


end;

function TAPIPrestacaoDeConta.Novo(const a_Objeto: TPrestacaoDeContaNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_PrestacaoDeContaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPrestacaoDeConta.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TPrestacaoDeContaNovo;

begin
  t_Modelo := TPrestacaoDeContaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIPrestacaoDeConta.Alterar(const a_Objeto: TPrestacaoDeContaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_PrestacaoDeContaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPrestacaoDeConta.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TPrestacaoDeContaAlterar;

begin
  t_Modelo := TPrestacaoDeContaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIPrestacaoDeConta.Excluir(const a_Objeto: TPrestacaoDeContaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_PrestacaoDeContaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPrestacaoDeConta.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TPrestacaoDeContaExcluir;

begin
  t_Modelo := TPrestacaoDeContaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
