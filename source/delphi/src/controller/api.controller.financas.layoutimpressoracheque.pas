unit api.controller.financas.LayoutImpressoraCheque;

interface

  uses
    System.SysUtils,

    api.model.financas.LayoutImpressoraCheque,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPILayoutImpressoraCheque = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TLayoutImpressoraChequeNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TLayoutImpressoraChequeAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TLayoutImpressoraChequeExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.LayoutImpressoraCheque }

function TAPILayoutImpressoraCheque.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LAYOUTIMPRESSORACHEQUENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LAYOUTIMPRESSORACHEQUEALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LAYOUTIMPRESSORACHEQUEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPILayoutImpressoraCheque.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TLayoutImpressoraChequeNovo)
    then begin
       Result := Self.Novo(a_Param as TLayoutImpressoraChequeNovo);
       Exit();
    end;

  if (a_param is TLayoutImpressoraChequeAlterar)
    then begin
       Result := Self.Alterar(a_Param as TLayoutImpressoraChequeAlterar);
       Exit();
    end;

  if (a_param is TLayoutImpressoraChequeExcluir)
    then begin
       Result := Self.Excluir(a_Param as TLayoutImpressoraChequeExcluir);
       Exit();
    end;


end;

function TAPILayoutImpressoraCheque.Novo(const a_Objeto: TLayoutImpressoraChequeNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_LayoutImpressoraChequeNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILayoutImpressoraCheque.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLayoutImpressoraChequeNovo;

begin
  t_Modelo := TLayoutImpressoraChequeNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILayoutImpressoraCheque.Alterar(const a_Objeto: TLayoutImpressoraChequeAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_LayoutImpressoraChequeAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILayoutImpressoraCheque.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TLayoutImpressoraChequeAlterar;

begin
  t_Modelo := TLayoutImpressoraChequeAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILayoutImpressoraCheque.Excluir(const a_Objeto: TLayoutImpressoraChequeExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_LayoutImpressoraChequeExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILayoutImpressoraCheque.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TLayoutImpressoraChequeExcluir;

begin
  t_Modelo := TLayoutImpressoraChequeExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
