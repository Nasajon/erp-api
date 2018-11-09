unit api.controller.ns.configuracaoordempagamento;

interface

  uses
    System.SysUtils,

    api.model.ns.configuracaoordempagamento,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIconfiguracaoordempagamento = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TconfiguracaoordempagamentoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TconfiguracaoordempagamentoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TconfiguracaoordempagamentoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.configuracaoordempagamento }

function TAPIconfiguracaoordempagamento.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONFIGURACAOORDEMPAGAMENTONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACAOORDEMPAGAMENTOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACAOORDEMPAGAMENTOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIconfiguracaoordempagamento.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TconfiguracaoordempagamentoNovo)
    then begin
       Result := Self.Novo(a_Param as TconfiguracaoordempagamentoNovo);
       Exit();
    end;

  if (a_param is TconfiguracaoordempagamentoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TconfiguracaoordempagamentoAlterar);
       Exit();
    end;

  if (a_param is TconfiguracaoordempagamentoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TconfiguracaoordempagamentoExcluir);
       Exit();
    end;


end;

function TAPIconfiguracaoordempagamento.Novo(const a_Objeto: TconfiguracaoordempagamentoNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracaoordempagamentoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracaoordempagamento.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracaoordempagamentoNovo;

begin
  t_Modelo := TconfiguracaoordempagamentoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIconfiguracaoordempagamento.Alterar(const a_Objeto: TconfiguracaoordempagamentoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracaoordempagamentoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracaoordempagamento.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracaoordempagamentoAlterar;

begin
  t_Modelo := TconfiguracaoordempagamentoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIconfiguracaoordempagamento.Excluir(const a_Objeto: TconfiguracaoordempagamentoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracaoordempagamentoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracaoordempagamento.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracaoordempagamentoExcluir;

begin
  t_Modelo := TconfiguracaoordempagamentoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
