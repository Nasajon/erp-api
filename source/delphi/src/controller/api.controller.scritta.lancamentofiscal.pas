unit api.controller.scritta.LancamentoFiscal;

interface

  uses
    System.SysUtils,

    api.model.scritta.LancamentoFiscal,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPILancamentoFiscal = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TLancamentoFiscalNovo): TRecibo; overload;

        function Cancelar(const a_Objeto: String): TRecibo; overload;
        function Cancelar(const a_Objeto: TLancamentoFiscalCancelar): TRecibo; overload;

        
    end;

implementation

{ TAPIscritta.LancamentoFiscal }

function TAPILancamentoFiscal.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LANCAMENTOFISCALNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LANCAMENTOFISCALCANCELAR')
    then begin
       Result := Self.Cancelar(a_Param);
       Exit();
    end;


end;

function TAPILancamentoFiscal.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TLancamentoFiscalNovo)
    then begin
       Result := Self.Novo(a_Param as TLancamentoFiscalNovo);
       Exit();
    end;

  if (a_param is TLancamentoFiscalCancelar)
    then begin
       Result := Self.Cancelar(a_Param as TLancamentoFiscalCancelar);
       Exit();
    end;


end;

function TAPILancamentoFiscal.Novo(const a_Objeto: TLancamentoFiscalNovo): TRecibo;
begin
  Result := TDAO.callFunction('scritta.api_LancamentoFiscalNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILancamentoFiscal.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLancamentoFiscalNovo;

begin
  t_Modelo := TLancamentoFiscalNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILancamentoFiscal.Cancelar(const a_Objeto: TLancamentoFiscalCancelar): TRecibo;
begin
  Result := TDAO.callFunction('scritta.api_LancamentoFiscalCancelar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILancamentoFiscal.Cancelar(const a_Objeto: String): TRecibo;

  var t_Modelo: TLancamentoFiscalCancelar;

begin
  t_Modelo := TLancamentoFiscalCancelar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Cancelar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
