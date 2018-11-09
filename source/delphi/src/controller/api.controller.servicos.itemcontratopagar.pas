unit api.controller.servicos.ItemContratoPagar;

interface

  uses
    System.SysUtils,

    api.model.servicos.ItemContratoPagar,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIItemContratoPagar = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TItemContratoPagarNovo): TRecibo; overload;

        function Novo_Importacao(const a_Objeto: String): TRecibo; overload;
        function Novo_Importacao(const a_Objeto: TItemContratoPagarNovo_Importacao): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TItemContratoPagarExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.ItemContratoPagar }

function TAPIItemContratoPagar.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ITEMCONTRATOPAGARNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ITEMCONTRATOPAGARNOVO_IMPORTACAO')
    then begin
       Result := Self.Novo_Importacao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ITEMCONTRATOPAGAREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIItemContratoPagar.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TItemContratoPagarNovo)
    then begin
       Result := Self.Novo(a_Param as TItemContratoPagarNovo);
       Exit();
    end;

  if (a_param is TItemContratoPagarNovo_Importacao)
    then begin
       Result := Self.Novo_Importacao(a_Param as TItemContratoPagarNovo_Importacao);
       Exit();
    end;

  if (a_param is TItemContratoPagarExcluir)
    then begin
       Result := Self.Excluir(a_Param as TItemContratoPagarExcluir);
       Exit();
    end;


end;

function TAPIItemContratoPagar.Novo(const a_Objeto: TItemContratoPagarNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ItemContratoPagarNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemContratoPagar.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemContratoPagarNovo;

begin
  t_Modelo := TItemContratoPagarNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIItemContratoPagar.Novo_Importacao(const a_Objeto: TItemContratoPagarNovo_Importacao): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ItemContratoPagarNovo_Importacao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemContratoPagar.Novo_Importacao(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemContratoPagarNovo_Importacao;

begin
  t_Modelo := TItemContratoPagarNovo_Importacao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo_Importacao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIItemContratoPagar.Excluir(const a_Objeto: TItemContratoPagarExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ItemContratoPagarExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemContratoPagar.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemContratoPagarExcluir;

begin
  t_Modelo := TItemContratoPagarExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
