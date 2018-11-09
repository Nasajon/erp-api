unit api.controller.persona.ItemFaixa;

interface

  uses
    System.SysUtils,

    api.model.persona.ItemFaixa,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIItemFaixa = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TItemFaixaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TItemFaixaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TItemFaixaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.ItemFaixa }

function TAPIItemFaixa.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ITEMFAIXANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ITEMFAIXAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ITEMFAIXAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIItemFaixa.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TItemFaixaNovo)
    then begin
       Result := Self.Novo(a_Param as TItemFaixaNovo);
       Exit();
    end;

  if (a_param is TItemFaixaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TItemFaixaAlterar);
       Exit();
    end;

  if (a_param is TItemFaixaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TItemFaixaExcluir);
       Exit();
    end;


end;

function TAPIItemFaixa.Novo(const a_Objeto: TItemFaixaNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ItemFaixaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemFaixa.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemFaixaNovo;

begin
  t_Modelo := TItemFaixaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIItemFaixa.Alterar(const a_Objeto: TItemFaixaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ItemFaixaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemFaixa.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemFaixaAlterar;

begin
  t_Modelo := TItemFaixaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIItemFaixa.Excluir(const a_Objeto: TItemFaixaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ItemFaixaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemFaixa.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemFaixaExcluir;

begin
  t_Modelo := TItemFaixaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
