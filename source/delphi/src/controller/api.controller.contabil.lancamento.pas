unit api.controller.contabil.lancamento;

interface

  uses
    System.SysUtils,

    api.model.contabil.lancamento,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIlancamento = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TlancamentoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TlancamentoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TlancamentoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIcontabil.lancamento }

function TAPIlancamento.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LANCAMENTONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LANCAMENTOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LANCAMENTOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIlancamento.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TlancamentoNovo)
    then begin
       Result := Self.Novo(a_Param as TlancamentoNovo);
       Exit();
    end;

  if (a_param is TlancamentoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TlancamentoAlterar);
       Exit();
    end;

  if (a_param is TlancamentoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TlancamentoExcluir);
       Exit();
    end;


end;

function TAPIlancamento.Novo(const a_Objeto: TlancamentoNovo): TRecibo;
begin
  Result := TDAO.callFunction('contabil.api_lancamentoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIlancamento.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TlancamentoNovo;

begin
  t_Modelo := TlancamentoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIlancamento.Alterar(const a_Objeto: TlancamentoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('contabil.api_lancamentoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIlancamento.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TlancamentoAlterar;

begin
  t_Modelo := TlancamentoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIlancamento.Excluir(const a_Objeto: TlancamentoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('contabil.api_lancamentoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIlancamento.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TlancamentoExcluir;

begin
  t_Modelo := TlancamentoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
