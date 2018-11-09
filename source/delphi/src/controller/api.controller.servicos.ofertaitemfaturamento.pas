unit api.controller.servicos.OfertaItemFaturamento;

interface

  uses
    System.SysUtils,

    api.model.servicos.OfertaItemFaturamento,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIOfertaItemFaturamento = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TOfertaItemFaturamentoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TOfertaItemFaturamentoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TOfertaItemFaturamentoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.OfertaItemFaturamento }

function TAPIOfertaItemFaturamento.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'OFERTAITEMFATURAMENTONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'OFERTAITEMFATURAMENTOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'OFERTAITEMFATURAMENTOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIOfertaItemFaturamento.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TOfertaItemFaturamentoNovo)
    then begin
       Result := Self.Novo(a_Param as TOfertaItemFaturamentoNovo);
       Exit();
    end;

  if (a_param is TOfertaItemFaturamentoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TOfertaItemFaturamentoAlterar);
       Exit();
    end;

  if (a_param is TOfertaItemFaturamentoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TOfertaItemFaturamentoExcluir);
       Exit();
    end;


end;

function TAPIOfertaItemFaturamento.Novo(const a_Objeto: TOfertaItemFaturamentoNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_OfertaItemFaturamentoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIOfertaItemFaturamento.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TOfertaItemFaturamentoNovo;

begin
  t_Modelo := TOfertaItemFaturamentoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIOfertaItemFaturamento.Alterar(const a_Objeto: TOfertaItemFaturamentoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_OfertaItemFaturamentoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIOfertaItemFaturamento.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TOfertaItemFaturamentoAlterar;

begin
  t_Modelo := TOfertaItemFaturamentoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIOfertaItemFaturamento.Excluir(const a_Objeto: TOfertaItemFaturamentoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_OfertaItemFaturamentoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIOfertaItemFaturamento.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TOfertaItemFaturamentoExcluir;

begin
  t_Modelo := TOfertaItemFaturamentoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
