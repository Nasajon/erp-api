unit api.controller.servicos.ItemContratoReceber;

interface

  uses
    System.SysUtils,

    api.model.servicos.ItemContratoReceber,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIItemContratoReceber = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TItemContratoReceberNovo): TRecibo; overload;

        function Novo_Importacao(const a_Objeto: String): TRecibo; overload;
        function Novo_Importacao(const a_Objeto: TItemContratoReceberNovo_Importacao): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TItemContratoReceberExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.ItemContratoReceber }

function TAPIItemContratoReceber.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ITEMCONTRATORECEBERNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ITEMCONTRATORECEBERNOVO_IMPORTACAO')
    then begin
       Result := Self.Novo_Importacao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ITEMCONTRATORECEBEREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIItemContratoReceber.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TItemContratoReceberNovo)
    then begin
       Result := Self.Novo(a_Param as TItemContratoReceberNovo);
       Exit();
    end;

  if (a_param is TItemContratoReceberNovo_Importacao)
    then begin
       Result := Self.Novo_Importacao(a_Param as TItemContratoReceberNovo_Importacao);
       Exit();
    end;

  if (a_param is TItemContratoReceberExcluir)
    then begin
       Result := Self.Excluir(a_Param as TItemContratoReceberExcluir);
       Exit();
    end;


end;

function TAPIItemContratoReceber.Novo(const a_Objeto: TItemContratoReceberNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ItemContratoReceberNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemContratoReceber.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemContratoReceberNovo;

begin
  t_Modelo := TItemContratoReceberNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIItemContratoReceber.Novo_Importacao(const a_Objeto: TItemContratoReceberNovo_Importacao): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ItemContratoReceberNovo_Importacao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemContratoReceber.Novo_Importacao(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemContratoReceberNovo_Importacao;

begin
  t_Modelo := TItemContratoReceberNovo_Importacao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo_Importacao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIItemContratoReceber.Excluir(const a_Objeto: TItemContratoReceberExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ItemContratoReceberExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemContratoReceber.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemContratoReceberExcluir;

begin
  t_Modelo := TItemContratoReceberExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
