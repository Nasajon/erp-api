unit api.controller.contabil.lotelancamento;

interface

  uses
    System.SysUtils,

    api.model.contabil.lotelancamento,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIlotelancamento = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TlotelancamentoNovo): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TlotelancamentoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIcontabil.lotelancamento }

function TAPIlotelancamento.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LOTELANCAMENTONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTELANCAMENTOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIlotelancamento.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TlotelancamentoNovo)
    then begin
       Result := Self.Novo(a_Param as TlotelancamentoNovo);
       Exit();
    end;

  if (a_param is TlotelancamentoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TlotelancamentoExcluir);
       Exit();
    end;


end;

function TAPIlotelancamento.Novo(const a_Objeto: TlotelancamentoNovo): TRecibo;
begin
  Result := TDAO.callFunction('contabil.api_lotelancamentoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIlotelancamento.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TlotelancamentoNovo;

begin
  t_Modelo := TlotelancamentoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIlotelancamento.Excluir(const a_Objeto: TlotelancamentoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('contabil.api_lotelancamentoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIlotelancamento.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TlotelancamentoExcluir;

begin
  t_Modelo := TlotelancamentoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
